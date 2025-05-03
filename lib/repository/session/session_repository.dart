import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:path/path.dart' as path;
import 'package:http_parser/http_parser.dart'; // Add this import

class SessionRepository {
  final String _apiBaseUrl =
      'https://speakup-backend-689756285639.asia-southeast1.run.app/api';

  final FirebaseFirestore _firestore;

  SessionRepository({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  /// Helper function to get the MIME type from file extension
  MediaType _getAudioContentType(String filePath) {
    final extension = path.extension(filePath).toLowerCase().replaceFirst('.', '');
    MediaType mediaType;

    switch (extension) {
      case 'm4a':
        mediaType = MediaType('audio', 'mp4'); // m4a files use audio/mp4 MIME type
      case 'aac':
        mediaType = MediaType('audio', 'aac');
      case 'mp3':
        mediaType = MediaType('audio', 'mpeg');
      case 'wav':
      case 'wave':
        mediaType = MediaType('audio', 'wav');
      default:
        // Default fallback
        mediaType = MediaType('audio', 'mpeg');
    }

    Logger().i('Audio file MIME type: ${mediaType.mimeType} for extension: $extension');
    return mediaType;
  }

  /// Uploads audio file to the server for processing
  Future<bool> uploadAudioFile({
    required String audioFilePath,
    required String userID,
    required String sessionID,
    required String exerciseID,
  }) async {
    // Create file object from path
    final file = File(audioFilePath);
    if (!await file.exists()) {
      throw Exception('Audio file not found');
    }

    // Create multipart request
    final request = http.MultipartRequest('POST', Uri.parse('$_apiBaseUrl/upload-audio'));

    // Set headers
    request.headers['Content-Type'] = 'application/json';
    request.headers['Accept'] = 'application/json';

    // Add required fields
    request.fields['userID'] = userID;
    request.fields['sessionID'] = sessionID;
    request.fields['exerciseID'] = exerciseID;

    // Add the audio file with proper content type
    final fileStream = http.ByteStream(file.openRead());
    final fileLength = await file.length();
    final fileName = path.basename(audioFilePath);

    final multipartFile = http.MultipartFile(
      'audio',
      fileStream,
      fileLength,
      filename: fileName,
      contentType: _getAudioContentType(audioFilePath), // Set the proper content type
    );

    request.files.add(multipartFile);

    try {
      // Reference to the document in Firestore
      final docRef = _firestore
          .collection('users')
          .doc(userID)
          .collection('sessions')
          .doc(sessionID);

      // Create an empty document with metadata
      await docRef.set({'exerciseID': sessionID});

      // Send the request
      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);

      // Log response for debugging
      Logger().i('Upload response: ${response.statusCode} - ${response.body}');

      // Handle response
      if (response.statusCode == 200) {
        return true;
      } else if (response.statusCode == 400) {
        throw Exception('File too large or corrupt');
      } else if (response.statusCode == 403) {
        throw Exception('Authentication failed');
      } else {
        throw Exception('Server error occurred: ${response.body}');
      }
    } catch (e) {
      Logger().e('Error uploading file: $e');
      rethrow;
    }
  }
}

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:speakup_final/model/session/session.dart';

class AiRepository {
  final FirebaseFirestore _firestore;

  AiRepository({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<Stream<Session>> subscribeResult({
    required String userID,
    required String exerciseID,
    required String sessionID,
    Duration timeout = const Duration(minutes: 3),
  }) async {
    try {
      final docRef = _firestore
          .collection('users')
          .doc(userID)
          .collection('sessions')
          .doc(sessionID);

      final resultStream = docRef.snapshots();

      // Create a controller to handle the output stream with timeout capability
      final streamController = StreamController<Session>();
      
      // Track if we've received a valid session
      bool receivedValidSession = false;
      
      // Set up timeout
      final timer = Timer(timeout, () {
        if (!streamController.isClosed && !receivedValidSession) {
          Logger().e('Timeout waiting for valid Session data');
          streamController.addError('Timeout: No valid Session data received within $timeout');
          streamController.close();
        }
      });
      
      // Subscribe to Firestore updates
      final subscription = resultStream
          .where((snapshot) {
            // Only proceed when the document exists
            if (!snapshot.exists) {
              Logger().d('Document does not exist yet');
              return false;
            }
            
            final data = snapshot.data();
            if (data == null) {
              Logger().d('Document exists but has no data');
              return false;
            }
            
            // Check if the document has all required fields to construct a Session object
            try {
              // Attempt to parse the data - if it succeeds, we have a valid Session
              Session.fromJson(data);
              return true;
            } catch (e) {
              // Log which fields might be missing for debugging
              Logger().d('Document exists but cannot be converted to Session yet: $e');
              
              // List expected fields from Session class
              final expectedFields = [
                'id', 'timestamp', 'exerciseID', 'audioURL', 
                'filler', 'grammar', 'pitchResult', 'formality', 'transcript'
              ];
              
              // Check which fields are missing
              final missingFields = expectedFields.where((field) => !data.containsKey(field));
              Logger().d('Missing fields: $missingFields');
              
              return false;
            }
          })
          .listen(
            (snapshot) {
              try {
                final data = snapshot.data()!;
                final session = Session.fromJson(data);
                receivedValidSession = true;
                
                // Cancel the timeout timer since we got valid data
                timer.cancel();
                
                if (!streamController.isClosed) {
                  streamController.add(session);
                  // Note: We don't close the stream controller here as we may 
                  // receive updates to the session document
                }
              } catch (e) {
                // This should never happen due to the filter above
                Logger().e('Error converting document to Session: $e');
                if (!streamController.isClosed) {
                  streamController.addError('Failed to convert document to Session: $e');
                }
              }
            },
            onError: (error) {
              Logger().e('Error in Firestore stream: $error');
              if (!streamController.isClosed) {
                streamController.addError(error);
                streamController.close();
              }
            },
            onDone: () {
              if (!streamController.isClosed) {
                streamController.close();
              }
            },
          );
      
      // Handle cleanup when the stream controller is closed
      streamController.onCancel = () {
        timer.cancel();
        subscription.cancel();
      };
      
      return streamController.stream;
    } catch (e) {
      Logger().e('Failed to subscribe to result: $e');
      throw Exception('Failed to subscribe to result: $e');
    }
  }
}

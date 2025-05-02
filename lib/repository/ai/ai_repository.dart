import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:speakup_final/model/session/session.dart';

class AiRepository {
  final FirebaseFirestore _firestore;

  AiRepository({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<Stream<Session>> subscribeResult({
    required String userID,
    required String exerciseID,
    required String sessionID,
  }) async {
    try {
      final docRef = _firestore
          .collection('users')
          .doc(userID)
          .collection('sessions')
          .doc(sessionID);

      final resultStream = docRef.snapshots();

      return resultStream.map((snapshot) {
        if (snapshot.exists) {
          final data = snapshot.data();
          if (data != null) {
            return Session.fromJson(data);
          } else {
            throw Exception('No data found in the document');
          }
        } else {
          throw Exception('Document does not exist');
        }
      });
    } catch (e) {
      throw Exception('Failed to subscribe to result: $e');
    }
  }
}

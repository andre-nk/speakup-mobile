import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:speakup_final/model/session/session.dart';

class ExerciseRepository {
  final FirebaseFirestore _firebaseFirestore;

  ExerciseRepository() : _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<String>> getCompletedExercises(String userID) async {
    try {
      final docSnapshot = await _firebaseFirestore.collection('users').doc(userID).get();

      if (docSnapshot.exists && docSnapshot.data() != null) {
        final userData = docSnapshot.data()!;
        return List<String>.from(userData['completedExercises'] ?? []);
      }

      throw Exception('User document does not exist or is empty');
    } catch (e) {
      rethrow;
    }
  }

  Future<void> addCompletedExercise(String userID, String exerciseID) async {
    try {
      final docSnapshot = await _firebaseFirestore.collection('users').doc(userID).get();

      if (docSnapshot.exists && docSnapshot.data() != null) {
        final userData = docSnapshot.data()!;
        final completedExercises = List<String>.from(
          userData['completedExercises'] ?? [],
        );

        if (!completedExercises.contains(exerciseID)) {
          completedExercises.add(exerciseID);
          await _firebaseFirestore.collection('users').doc(userID).update({
            'completedExercises': completedExercises,
          });
        }
      } else {
        throw Exception('User document does not exist or is empty');
      }
    } catch (e) {
      // Handle errors here
      rethrow;
    }
  }

  Future<List<Session>> getSessions(String userID) async {
    try {
      final docSnapshot =
          await _firebaseFirestore
              .collection('users')
              .doc(userID)
              .collection('sessions')
              .get();

      if (docSnapshot.docs.isNotEmpty) {
        return docSnapshot.docs.map((doc) => Session.fromJson(doc.data())).toList();
      }

      throw Exception('User document does not exist or is empty');
    } catch (e) {
      // Handle errors here
      rethrow;
    }
  }
}

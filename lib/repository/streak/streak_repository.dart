import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:speakup_final/model/streak/streak.dart';

class ActivityRepository {
  final FirebaseFirestore _firebaseFirestore;

  ActivityRepository() : _firebaseFirestore = FirebaseFirestore.instance;

  Future<Streak> getStreak(String userID) async {
    try {
      final docSnapshot = await _firebaseFirestore.collection('users').doc(userID).get();

      if (docSnapshot.exists && docSnapshot.data() != null) {
        final userData = docSnapshot.data()!;
        return Streak.fromJson({
          'currentStreak': userData['currentStreak'] ?? 0,
          'longestStreak': userData['longestStreak'] ?? 0,
        });
      }

      throw Exception('User document does not exist or is empty');
    } catch (e) {
      // Handle errors here
      rethrow;
    }
  }

  Future<void> setStreak(String userID) async {
    try {
      // Get current streak
      final streak = await getStreak(userID);

      // Increment current streak
      final updatedCurrentStreak = streak.currentStreak + 1;

      // Compare with longest streak and update if needed
      final updatedLongestStreak =
          updatedCurrentStreak > streak.longestStreak
              ? updatedCurrentStreak
              : streak.longestStreak;

      // Create updated streak object
      final updatedStreak = Streak(
        currentStreak: updatedCurrentStreak,
        longestStreak: updatedLongestStreak,
      );

      // Update Firestore
      await _firebaseFirestore.collection('users').doc(userID).update({
        'currentStreak': updatedStreak.currentStreak,
        'longestStreak': updatedStreak.longestStreak,
      });
    } catch (e) {
      rethrow;
    }
  }
}

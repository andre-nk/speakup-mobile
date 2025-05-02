import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum EnglishMastery { beginner, intermediate, advanced }

@freezed
class User with _$User {
  const factory User({
    required String uid,
    required String email,
    required String displayName,
    String? photoURL,
    String? nativeLanguage,
    EnglishMastery? englishMastery,
    required String goal,
    DateTime? goalDeadline,
    @Default(0) int longestStreak,
    @Default(0) int currentStreak,
    @Default([]) List<String> completedExercises,
    @Default([]) List<String> completedMaterials,
    required DateTime createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // Factory constructor to create User from Firebase User
  factory User.fromFirebaseUser(DocumentSnapshot<Map<String, dynamic>> firebaseUser) {
    return User(
      uid: firebaseUser.id,
      email: firebaseUser.data()?['email'] ?? '',
      displayName: firebaseUser.data()?['displayName'] ?? '',
      photoURL: firebaseUser.data()?['photoURL'],
      nativeLanguage: firebaseUser.data()?['nativeLanguage'],
      englishMastery: EnglishMastery.values.firstWhere(
        (e) => e.toString() == 'EnglishMastery.${firebaseUser.data()?['englishMastery']}',
        orElse: () => EnglishMastery.beginner,
      ),
      goal: firebaseUser.data()?['goal'] ?? '',
      goalDeadline: firebaseUser.data()?['goalDeadline'] != null
          ? _parseCreatedAt(firebaseUser.data()?['goalDeadline'])
          : null,
      longestStreak: firebaseUser.data()?['longestStreak'] ?? 0,
      currentStreak: firebaseUser.data()?['currentStreak'] ?? 0,
      completedExercises: List<String>.from(
        firebaseUser.data()?['completedExercises'] ?? [],
      ),
      completedMaterials: List<String>.from(
        firebaseUser.data()?['completedMaterials'] ?? [],
      ),
      createdAt: _parseCreatedAt(firebaseUser.data()?['createdAt']),
    );
  }

  // Helper method to parse createdAt value which could be a Timestamp or String
  static DateTime _parseCreatedAt(dynamic value) {
    if (value is Timestamp) {
      return value.toDate();
    } else if (value is String) {
      // Try to parse string as a timestamp
      try {
        return DateTime.parse(value);
      } catch (e) {
        // Return current time if parsing fails
        return DateTime.now();
      }
    }
    // Default to current time if value is null or of unexpected type
    return DateTime.now();
  }
}

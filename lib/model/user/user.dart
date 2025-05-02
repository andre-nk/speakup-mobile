import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum EnglishMastery {
  beginner,
  intermediate,
  advanced,
}

enum Goal {
  casual, // For casual learners
  academic, // For academic purposes
  business, // For business/professional development
  travel, // For travel purposes
  social, // For social interactions
  fluency, // For achieving general fluency
}

@freezed
class User with _$User {
  const factory User({
    required String uid,
    required String email,
    required String displayName,
    String? photoURL,
    String? nativeLanguage,
    EnglishMastery? englishMastery,
    Goal? goal,
    @Default(0) int longestStreak,
    @Default(0) int currentStreak,
    @Default([]) List<String> completedExercises,
    @Default([]) List<String> completedMaterials,
    required DateTime createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // Factory constructor to create User from Firebase User
  factory User.fromFirebaseUser(dynamic firebaseUser) {
    return User(
      uid: firebaseUser.uid,
      email: firebaseUser.email,
      displayName: firebaseUser.displayName ?? 'User',
      photoURL: firebaseUser.photoURL,
      createdAt: DateTime.now(),
    );
  }
}

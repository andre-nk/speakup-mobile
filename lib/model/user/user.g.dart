// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  uid: json['uid'] as String,
  email: json['email'] as String,
  displayName: json['displayName'] as String,
  photoURL: json['photoURL'] as String?,
  nativeLanguage: json['nativeLanguage'] as String?,
  englishMastery: $enumDecodeNullable(
    _$EnglishMasteryEnumMap,
    json['englishMastery'],
  ),
  goal: $enumDecodeNullable(_$GoalEnumMap, json['goal']),
  longestStreak: (json['longestStreak'] as num?)?.toInt() ?? 0,
  currentStreak: (json['currentStreak'] as num?)?.toInt() ?? 0,
  completedExercises:
      (json['completedExercises'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  completedMaterials:
      (json['completedMaterials'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
      'nativeLanguage': instance.nativeLanguage,
      'englishMastery': _$EnglishMasteryEnumMap[instance.englishMastery],
      'goal': _$GoalEnumMap[instance.goal],
      'longestStreak': instance.longestStreak,
      'currentStreak': instance.currentStreak,
      'completedExercises': instance.completedExercises,
      'completedMaterials': instance.completedMaterials,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$EnglishMasteryEnumMap = {
  EnglishMastery.beginner: 'beginner',
  EnglishMastery.intermediate: 'intermediate',
  EnglishMastery.advanced: 'advanced',
};

const _$GoalEnumMap = {
  Goal.casual: 'casual',
  Goal.academic: 'academic',
  Goal.business: 'business',
  Goal.travel: 'travel',
  Goal.social: 'social',
  Goal.fluency: 'fluency',
};

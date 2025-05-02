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
  goal: json['goal'] as String,
  goalDeadline:
      json['goalDeadline'] == null
          ? null
          : DateTime.parse(json['goalDeadline'] as String),
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
  customCurriculum:
      (json['customCurriculum'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  customExercises:
      (json['customExercises'] as List<dynamic>?)
          ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  customMaterials:
      (json['customMaterials'] as List<dynamic>?)
          ?.map((e) => Material.fromJson(e as Map<String, dynamic>))
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
      'goal': instance.goal,
      'goalDeadline': instance.goalDeadline?.toIso8601String(),
      'longestStreak': instance.longestStreak,
      'currentStreak': instance.currentStreak,
      'completedExercises': instance.completedExercises,
      'completedMaterials': instance.completedMaterials,
      'customCurriculum': instance.customCurriculum,
      'customExercises': instance.customExercises,
      'customMaterials': instance.customMaterials,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$EnglishMasteryEnumMap = {
  EnglishMastery.beginner: 'beginner',
  EnglishMastery.intermediate: 'intermediate',
  EnglishMastery.advanced: 'advanced',
};

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

/// Common enum for difficulty levels used across the app
enum DifficultyLevel {
  @JsonValue('beginner')
  beginner,

  @JsonValue('intermediate')
  intermediate,

  @JsonValue('advanced')
  advanced,
}

/// Extension to get the display title for a difficulty level
extension DifficultyLevelExtension on DifficultyLevel {
  String get title {
    switch (this) {
      case DifficultyLevel.beginner:
        return 'Beginner';
      case DifficultyLevel.intermediate:
        return 'Intermediate';
      case DifficultyLevel.advanced:
        return 'Advanced';
    }
  }
}

/// Exercise model based on the Sanity schema
@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    String? id,

    /// Order of exercise
    required int sequence,

    /// Title of the exercise
    required String title,

    /// Estimated duration in minutes
    @JsonKey(name: 'estimatedDuration') required double estimatedDuration,

    /// Difficulty level (beginner, intermediate, advanced)
    required String level,

    /// Exercise instructions
    List<dynamic>? instructions,

    /// References to related materials
    @JsonKey(name: 'relatedMaterials') List<String>? relatedMaterialIds,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}

/// Type alias for backward compatibility
/// Use DifficultyLevel from common package for new code
typedef ExerciseLevel = DifficultyLevel;

/// Extension alias for backward compatibility
/// Use DifficultyLevelExtension for new code
extension ExerciseLevelExtension on ExerciseLevel {
  String get title => toString().split('.').last.toLowerCase();
}

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/model/exercise/exercise.dart';
import 'package:speakup_final/model/section/section.dart';

part 'level.freezed.dart';
part 'level.g.dart';

/// Level model based on the Sanity schema
@freezed
class Level with _$Level {
  const factory Level({
    String? id,
    
    /// Title of the level
    required String? title,
    
    /// Level difficulty (beginner, intermediate, advanced)
    required String? level,
    
    /// References to sections in this level
    List<String>? sectionIds,

    /// Actual sections
    List<Section>? sectionObjects,
  }) = _Level;

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);
}

/// Type alias for backward compatibility
/// Use DifficultyLevel from common package for new code
typedef LevelDifficulty = DifficultyLevel;

/// Extension to get the display title for a level difficulty
extension LevelDifficultyExtension on LevelDifficulty {
  String get title {
    switch (this) {
      case LevelDifficulty.beginner:
        return 'Beginner';
      case LevelDifficulty.intermediate:
        return 'Intermediate';
      case LevelDifficulty.advanced:
        return 'Advanced';
    }
  }
}

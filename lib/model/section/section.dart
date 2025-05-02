// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/model/exercise/exercise.dart';
import 'package:speakup_final/model/material/material.dart';

part 'section.freezed.dart';
part 'section.g.dart';

/// Section model based on the Sanity schema
@freezed
class Section with _$Section {
  const factory Section({
    String? id,
    
    /// Order of section
    required int sequence,
    
    /// Title of the section
    required String title,
    
    /// References to materials in this section
    @JsonKey(name: 'materialIds')
    List<String>? materialIds,

    /// Actual materials
    List<Material>? materialObjects,
    
    /// References to exercises in this section
    @JsonKey(name: 'exerciseIds')
    List<String>? exerciseIds,

    /// Actual exercises
    List<Exercise>? exerciseObjects,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);
}

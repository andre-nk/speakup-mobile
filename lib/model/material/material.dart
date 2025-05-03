// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'material.freezed.dart';
part 'material.g.dart';

/// Material model based on the Sanity schema
@freezed
class Material with _$Material {
  const factory Material({
    String? id,
    
    /// Order of material
    required int sequence,
    
    /// Title of the material
    required String? title,
    
    /// Subtitle of the material (optional)
    String? subtitle,
    
    /// Content of the material as block content
    List<dynamic>? content,
    
    /// References to related exercises
    @JsonKey(name: 'relatedExercises')
    List<String>? relatedExerciseIds,
  }) = _Material;

  factory Material.fromJson(Map<String, dynamic> json) => _$MaterialFromJson(json);
}

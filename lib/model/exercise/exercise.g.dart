// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      id: json['id'] as String?,
      sequence: (json['sequence'] as num).toInt(),
      title: json['title'] as String,
      estimatedDuration: (json['estimatedDuration'] as num).toDouble(),
      level: json['level'] as String,
      instructions: json['instructions'] as List<dynamic>?,
      relatedMaterialIds:
          (json['relatedMaterials'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sequence': instance.sequence,
      'title': instance.title,
      'estimatedDuration': instance.estimatedDuration,
      'level': instance.level,
      'instructions': instance.instructions,
      'relatedMaterials': instance.relatedMaterialIds,
    };

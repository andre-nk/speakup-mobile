// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaterialImpl _$$MaterialImplFromJson(Map<String, dynamic> json) =>
    _$MaterialImpl(
      id: json['id'] as String?,
      sequence: (json['sequence'] as num).toInt(),
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      content: json['content'] as List<dynamic>?,
      relatedExerciseIds:
          (json['relatedExercises'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$MaterialImplToJson(_$MaterialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sequence': instance.sequence,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'content': instance.content,
      'relatedExercises': instance.relatedExerciseIds,
    };

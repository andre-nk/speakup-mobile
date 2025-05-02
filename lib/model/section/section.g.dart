// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SectionImpl _$$SectionImplFromJson(
  Map<String, dynamic> json,
) => _$SectionImpl(
  id: json['id'] as String?,
  sequence: (json['sequence'] as num).toInt(),
  title: json['title'] as String,
  materialIds:
      (json['materialIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
  materialObjects:
      (json['materialObjects'] as List<dynamic>?)
          ?.map((e) => Material.fromJson(e as Map<String, dynamic>))
          .toList(),
  exerciseIds:
      (json['exerciseIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
  exerciseObjects:
      (json['exerciseObjects'] as List<dynamic>?)
          ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$SectionImplToJson(_$SectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sequence': instance.sequence,
      'title': instance.title,
      'materialIds': instance.materialIds,
      'materialObjects': instance.materialObjects,
      'exerciseIds': instance.exerciseIds,
      'exerciseObjects': instance.exerciseObjects,
    };

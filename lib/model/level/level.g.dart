// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LevelImpl _$$LevelImplFromJson(Map<String, dynamic> json) => _$LevelImpl(
  id: json['id'] as String?,
  title: json['title'] as String?,
  level: json['level'] as String?,
  sectionIds:
      (json['sectionIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
  sectionObjects:
      (json['sectionObjects'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$LevelImplToJson(_$LevelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'level': instance.level,
      'sectionIds': instance.sectionIds,
      'sectionObjects': instance.sectionObjects,
    };

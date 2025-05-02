// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_recommendation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentRecommendationImpl _$$ContentRecommendationImplFromJson(
  Map<String, dynamic> json,
) => _$ContentRecommendationImpl(
  title: json['title'] as String,
  link: json['link'] as String,
  coverImage: json['coverImage'] as String?,
  coverImageAlt: json['coverImageAlt'] as String?,
);

Map<String, dynamic> _$$ContentRecommendationImplToJson(
  _$ContentRecommendationImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'link': instance.link,
  'coverImage': instance.coverImage,
  'coverImageAlt': instance.coverImageAlt,
};

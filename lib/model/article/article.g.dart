// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      title: json['title'] as String,
      author: json['author'] as String,
      datetime: DateTime.parse(json['datetime'] as String),
      content: json['content'] as List<dynamic>?,
      coverImage: json['coverImage'] as String?,
      coverImageAlt: json['coverImageAlt'] as String?,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'datetime': instance.datetime.toIso8601String(),
      'content': instance.content,
      'coverImage': instance.coverImage,
      'coverImageAlt': instance.coverImageAlt,
    };

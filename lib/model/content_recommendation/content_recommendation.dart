import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_recommendation.freezed.dart';
part 'content_recommendation.g.dart';

@freezed
class ContentRecommendation with _$ContentRecommendation {
  const factory ContentRecommendation({
    required String title,
    required String link,
    String? coverImage,
    String? coverImageAlt,
  }) = _ContentRecommendation;

  factory ContentRecommendation.fromJson(Map<String, dynamic> json) => 
      _$ContentRecommendationFromJson(json);
}
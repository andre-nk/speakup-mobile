import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/model/content_recommendation/content_recommendation.dart';

part 'content_recommendation_state.freezed.dart';

@freezed
class ContentRecommendationState with _$ContentRecommendationState {
  const factory ContentRecommendationState.initial() = _Initial;
  const factory ContentRecommendationState.loading() = _Loading;
  const factory ContentRecommendationState.loaded(List<ContentRecommendation> recommendations) = _Loaded;
  const factory ContentRecommendationState.error(String message) = _Error;
}
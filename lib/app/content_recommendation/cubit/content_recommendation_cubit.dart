import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speakup_final/app/content_recommendation/cubit/content_recommendation_state.dart';
import 'package:speakup_final/repository/content_recommendation/content_recommendation_repository.dart';

/// Cubit for managing content recommendation data
class ContentRecommendationCubit extends Cubit<ContentRecommendationState> {
  final ContentRecommendationRepository _repository;
  
  ContentRecommendationCubit({ContentRecommendationRepository? repository})
      : _repository = repository ?? ContentRecommendationRepository(),
        super(const ContentRecommendationState.initial());
  
  /// Fetches all content recommendations from the repository
  Future<void> getAllContentRecommendations() async {
    try {
      emit(const ContentRecommendationState.loading());
      
      final recommendations = await _repository.getAllContentRecommendations();
      
      emit(ContentRecommendationState.loaded(recommendations));
    } catch (e) {
      emit(ContentRecommendationState.error(e.toString()));
    }
  }
}
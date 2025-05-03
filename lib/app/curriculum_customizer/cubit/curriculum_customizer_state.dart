part of 'curriculum_customizer_cubit.dart';

@freezed
class CurriculumCustomizerState with _$CurriculumCustomizerState {
  /// Initial state - no data has been loaded yet
  const factory CurriculumCustomizerState.initial() = _Initial;

  /// Loading state - request is in progress
  const factory CurriculumCustomizerState.loading() = _Loading;

  /// Loaded state - exercise has been successfully loaded
  const factory CurriculumCustomizerState.loaded({required SpeechFeedback exercise}) = _Loaded;

  /// Error state - an error occurred while loading the exercise
  const factory CurriculumCustomizerState.error({required String message}) = _Error;
}

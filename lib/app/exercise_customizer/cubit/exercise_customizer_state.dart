part of 'exercise_customizer_cubit.dart';

@freezed
class ExerciseCustomizerState with _$ExerciseCustomizerState {
  /// Initial state - no data has been loaded yet
  const factory ExerciseCustomizerState.initial() = _Initial;

  /// Loading state - request is in progress
  const factory ExerciseCustomizerState.loading() = _Loading;

  /// Loaded state - exercise has been successfully loaded
  const factory ExerciseCustomizerState.loaded({
    required Exercise exercise,
  }) = _Loaded;

  /// Error state - an error occurred while loading the exercise
  const factory ExerciseCustomizerState.error({
    required String message,
  }) = _Error;
}

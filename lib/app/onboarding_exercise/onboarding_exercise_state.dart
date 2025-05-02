import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/model/exercise/exercise.dart';

part 'onboarding_exercise_state.freezed.dart';

@freezed
class OnboardingExerciseState with _$OnboardingExerciseState {
  /// Initial state - no data has been loaded yet
  const factory OnboardingExerciseState.initial() = _Initial;

  /// Loading state - request is in progress
  const factory OnboardingExerciseState.loading() = _Loading;

  /// Loaded state - exercise has been successfully loaded
  const factory OnboardingExerciseState.loaded({
    required Exercise exercise,
  }) = _Loaded;

  /// Error state - an error occurred while loading the exercise
  const factory OnboardingExerciseState.error({
    required String message,
  }) = _Error;
}
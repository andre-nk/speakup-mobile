import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speakup_final/app/onboarding_exercise/onboarding_exercise_state.dart';
import 'package:speakup_final/repository/exercise_customizer/exercise_customizer_repository.dart';

/// Cubit for handling the state of onboarding exercises
class OnboardingExerciseCubit extends Cubit<OnboardingExerciseState> {
  final ExerciseCustomizerRepository _repository;

  OnboardingExerciseCubit()
    : _repository = ExerciseCustomizerRepository(),
      super(const OnboardingExerciseState.initial());

  Future<void> fetchFirstExerciseByLevel({
    required String userID,
    required String nativeLanguage,
    required String goal,
    required String level,
  }) async {
    try {
      // Emit loading state
      emit(const OnboardingExerciseState.loading());

      // Fetch exercise from repository
      final exercise = await _repository.customizeAndStoreExercise(
        userID,
        nativeLanguage,
        goal,
        level,
      );
      emit(OnboardingExerciseState.loaded(exercise: exercise));
    } catch (e) {
      // Emit error state with the error message
      emit(
        OnboardingExerciseState.error(
          message: 'Failed to load exercise: ${e.toString()}',
        ),
      );
    }
  }

  /// Resets the state to initial
  void reset() {
    emit(const OnboardingExerciseState.initial());
  }
}

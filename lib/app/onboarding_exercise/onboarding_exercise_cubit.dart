import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speakup_final/app/onboarding_exercise/onboarding_exercise_state.dart';
import 'package:speakup_final/model/exercise/exercise.dart';
import 'package:speakup_final/repository/exercise/exercise_repository.dart';

/// Cubit for handling the state of onboarding exercises
class OnboardingExerciseCubit extends Cubit<OnboardingExerciseState> {
  final ExerciseRepository _repository;

  /// Creates a new OnboardingExerciseCubit
  /// 
  /// [repository] is used to fetch exercises from the backend
  OnboardingExerciseCubit({
    required ExerciseRepository repository,
  })  : _repository = repository,
        super(const OnboardingExerciseState.initial());

  /// Fetches the first exercise for the given difficulty level
  /// 
  /// Emits a [OnboardingExerciseState.loading] state while the request is in progress,
  /// followed by [OnboardingExerciseState.loaded] if successful or
  /// [OnboardingExerciseState.error] if there was an error.
  Future<void> fetchFirstExerciseByLevel(ExerciseLevel level) async {
    try {
      // Emit loading state
      emit(const OnboardingExerciseState.loading());

      // Fetch exercise from repository
      final exercise = await _repository.getFirstExerciseByLevel(level);

      // Check if exercise was found
      if (exercise != null) {
        // Emit loaded state with the fetched exercise
        emit(OnboardingExerciseState.loaded(exercise: exercise));
      } else {
        // Emit error state if no exercise was found
        emit(const OnboardingExerciseState.error(
          message: 'No exercise found for the selected level',
        ));
      }
    } catch (e) {
      // Emit error state with the error message
      emit(OnboardingExerciseState.error(
        message: 'Failed to load exercise: ${e.toString()}',
      ));
    }
  }

  /// Resets the state to initial
  void reset() {
    emit(const OnboardingExerciseState.initial());
  }
}
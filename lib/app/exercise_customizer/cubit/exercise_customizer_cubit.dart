import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/model/exercise/exercise.dart';
import 'package:speakup_final/repository/exercise_customizer/exercise_customizer_repository.dart';

part 'exercise_customizer_state.dart';
part 'exercise_customizer_cubit.freezed.dart';

class ExerciseCustomizerCubit extends Cubit<ExerciseCustomizerState> {
  final ExerciseCustomizerRepository _repository;

  ExerciseCustomizerCubit()
    : _repository = ExerciseCustomizerRepository(),
      super(const ExerciseCustomizerState.initial());

  Future<void> fetchFirstExerciseByLevel({
    required String userID,
    required String nativeLanguage,
    required String goal,
    required String level,
    required Exercise exercise,
  }) async {
    try {
      // Emit loading state
      emit(const ExerciseCustomizerState.loading());

      // Fetch exercise from repository
      final exercise = await _repository.customizeAndStoreExercise(
        userID,
        nativeLanguage,
        goal,
        level,
      );
      emit(ExerciseCustomizerState.loaded(exercise: exercise));
    } catch (e) {
      // Emit error state with the error message
      emit(
        ExerciseCustomizerState.error(
          message: 'Failed to load exercise: ${e.toString()}',
        ),
      );
    }
  }
}

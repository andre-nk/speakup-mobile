import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/model/session/session.dart';
import 'package:speakup_final/repository/exercise/exercise_repository.dart';

part 'exercise_state.dart';
part 'exercise_cubit.freezed.dart';

class ExerciseCubit extends Cubit<ExerciseState> {
  final ExerciseRepository _exerciseRepository;
  
  ExerciseCubit({ExerciseRepository? exerciseRepository}) 
    : _exerciseRepository = exerciseRepository ?? ExerciseRepository(),
      super(const ExerciseState.initial());
      
  Future<void> getCompletedExercises(String userID) async {
    try {
      emit(const ExerciseState.loading());
      final completedExercises = await _exerciseRepository.getCompletedExercises(userID);
      emit(ExerciseState.completedExercisesLoaded(completedExerciseIDs: completedExercises));
    } catch (e) {
      emit(ExerciseState.error(message: e.toString()));
    }
  }
  
  Future<void> addCompletedExercise(String userID, String exerciseID) async {
    try {
      emit(const ExerciseState.loading());
      await _exerciseRepository.addCompletedExercise(userID, exerciseID);
      final updatedExercises = await _exerciseRepository.getCompletedExercises(userID);
      emit(ExerciseState.completedExercisesLoaded(completedExerciseIDs: updatedExercises));
    } catch (e) {
      emit(ExerciseState.error(message: e.toString()));
    }
  }
  
  Future<void> getSessions(String userID) async {
    try {
      emit(const ExerciseState.loading());
      final sessions = await _exerciseRepository.getSessions(userID);
      emit(ExerciseState.sessionsLoaded(sessions: sessions));
    } catch (e) {
      emit(ExerciseState.error(message: e.toString()));
    }
  }
}

// filepath: /Users/andreasnotokusumo/Documents/Flutter Projects/speakup-final/speakup/lib/app/exercise/cubit/exercise_state.dart
part of 'exercise_cubit.dart';

@freezed
class ExerciseState with _$ExerciseState {
  const factory ExerciseState.initial() = _Initial;
  const factory ExerciseState.loading() = _Loading;
  
  const factory ExerciseState.completedExercisesLoaded({
    required List<String> completedExerciseIDs,
  }) = _CompletedExercisesLoaded;
  
  const factory ExerciseState.sessionsLoaded({
    required List<Session> sessions,
  }) = _SessionsLoaded;
  
  const factory ExerciseState.error({
    required String message,
  }) = _Error;
}

part of 'curriculum_cubit.dart';

@freezed
class CurriculumState with _$CurriculumState {
  const factory CurriculumState.initial() = _Initial;
  
  // Loading state
  const factory CurriculumState.loading() = _Loading;
  
  // Loaded state
  const factory CurriculumState.materialLoaded({
    required MaterialCurriculumData materialCurriculumData,
  }) = _MaterialLoaded;

  const factory CurriculumState.exerciseLoaded({
    required ExerciseCurriculumData exerciseCurriculumData,
  }) = _ExerciseLoaded;
  
  // Error state
  const factory CurriculumState.error({
    required String message,
  }) = _Error;
}

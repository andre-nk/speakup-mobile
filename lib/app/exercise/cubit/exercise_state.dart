import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_state.freezed.dart';

@freezed
class ExerciseState with _$ExerciseState {
  const factory ExerciseState.initial() = _Initial;
  const factory ExerciseState.loading() = _Loading;
  const factory ExerciseState.loaded(List<dynamic> exercises) = _Loaded;
  const factory ExerciseState.error(String message) = _Error;
}
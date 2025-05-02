import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/repository/curriculum/curriculum_repository.dart';

part 'curriculum_state.dart';
part 'curriculum_cubit.freezed.dart';

class CurriculumCubit extends Cubit<CurriculumState> {
  final CurriculumRepository _repository;

  CurriculumCubit({CurriculumRepository? repository}) 
    : _repository = repository ?? CurriculumRepository(),
      super(const CurriculumState.initial());

  Future<void> fetchExerciseCurriculum() async {
    emit(const CurriculumState.loading());
    try {
      final curriculumData = await _repository.fetchExerciseCurriculum();
      
      emit(CurriculumState.exerciseLoaded(
        exerciseCurriculumData: curriculumData,
      ));
    } catch (e) {
      emit(CurriculumState.error(message: e.toString()));
    }
  }
}

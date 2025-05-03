import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/model/session_summary/session_summary.dart';
import 'package:speakup_final/repository/curriculum_customizer/gemini_client.dart';

part 'curriculum_customizer_state.dart';
part 'curriculum_customizer_cubit.freezed.dart';

class CurriculumCustomizerCubit extends Cubit<CurriculumCustomizerState> {
  CurriculumCustomizerCubit() : super(CurriculumCustomizerState.initial());

  Future<void> customizeMaterial({
    required SpeechAnalysisFeedback speechAnalysisFeedback,
  }) async {
    try {
      final client = GeminiClient(apiKey: 'AIzaSyCbfpX1QtbZ_cr5x_kqt12Xj4IOoar0yso');

      // Emit loading state
      emit(const CurriculumCustomizerState.loading());

      final response = await client.generateSpeechFeedback(
        speechAnalysisFeedback
      );

      emit(
        CurriculumCustomizerState.loaded(
          exercise: response,
        ),
      );
    } catch (e) {
      // Emit error state with the error message
      emit(
        CurriculumCustomizerState.error(
          message: 'Failed to load material: ${e.toString()}',
        ),
      );
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:speakup_final/model/session/session.dart';
import 'package:speakup_final/model/session_summary/session_summary.dart';
import 'package:speakup_final/repository/summary/summary_repository.dart';

part 'summary_state.dart';
part 'summary_cubit.freezed.dart';

class SummaryCubit extends Cubit<SummaryState> {
  final SummaryRepository _summaryRepository;

  SummaryCubit({required SummaryRepository summaryRepository})
      : _summaryRepository = summaryRepository,
        super(const SummaryState.initial());

  /// Generates detailed feedback for a speaking session using Gemini AI
  Future<void> generateSessionFeedback(Session session) async {
    emit(const SummaryState.loading());

    try {
      final feedback = await _summaryRepository.generateSessionFeedback(session);
      emit(SummaryState.success(feedback: feedback));
    } catch (e) {
      Logger().e('Error generating session feedback: $e');
      emit(SummaryState.error(e.toString()));
    }
  }

  /// Resets the cubit to its initial state
  void reset() {
    emit(const SummaryState.initial());
  }
}
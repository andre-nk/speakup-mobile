part of 'summary_cubit.dart';

@freezed
class SummaryState with _$SummaryState {
  const factory SummaryState.initial() = _Initial;
  const factory SummaryState.loading() = _Loading;
  const factory SummaryState.success({
    required String feedback,
    @Default(false) bool isQuickFeedback,
  }) = _Success;
  const factory SummaryState.error(String message) = _Error;
}
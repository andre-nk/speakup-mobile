// filepath: /Users/andreasnotokusumo/Documents/Flutter Projects/speakup-final/speakup/lib/app/ai/cubit/ai_state.dart
part of 'ai_cubit.dart';

@freezed
class AiState with _$AiState {
  const factory AiState.initial() = _Initial;
  const factory AiState.uploading() = _Uploading;
  const factory AiState.processing() = _Processing;
  const factory AiState.completed({
    @Default(null) Session? session,
  }) = _Completed;
  const factory AiState.error({required String message}) = _Error;
}

part of 'recorder_cubit.dart';

@freezed
class RecorderState with _$RecorderState {
  const factory RecorderState.initial({@Default(false) bool isInitialized}) =
      _Initial;
  const factory RecorderState.recording(
    int elapsedSeconds,
    bool isPaused,
    RecorderController recorderController,
  ) = _Recording;
  const factory RecorderState.stopped(String filePath) = _Stopped;
  const factory RecorderState.error(String message) = _Error;
}

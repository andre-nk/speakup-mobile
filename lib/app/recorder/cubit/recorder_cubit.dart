import 'dart:async';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

part 'recorder_state.dart';
part 'recorder_cubit.freezed.dart';

class RecorderCubit extends Cubit<RecorderState> {
  RecorderCubit() : super(RecorderState.initial(isInitialized: false));

  late final RecorderController _recorderController;
  final playerController = PlayerController();

  String? _filePath;
  Timer? _timer;
  int _elapsedSeconds = 0;
  static const int maxDuration = 180; // 3 minutes

  // Recording specifications
  Future<void> initRecorder() async {
    try {
      // First check microphone permission explicitly
      final status = await Permission.microphone.status;
      if (!status.isGranted) {
        final requested = await Permission.microphone.request();
        if (!requested.isGranted) {
          emit(const RecorderState.error("Microphone permission denied"));
          return;
        }
      }

      _recorderController =
          RecorderController()
            ..androidEncoder = AndroidEncoder.aac
            ..androidOutputFormat = AndroidOutputFormat.mpeg4
            ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
            ..sampleRate = 44100;
      emit(const RecorderState.initial(isInitialized: true));
    } catch (e) {
      emit(RecorderState.error("Failed to initialize recorder: $e"));
    }
  }

  Future<void> startRecording() async {
    try {
      // First check if recorder is initialized
      final isInitialized = state.maybeWhen(
        initial: (isInitialized) => isInitialized,
        orElse: () => false,
      );

      if (isInitialized) {
        final dir = await getApplicationDocumentsDirectory();
        _filePath = '${dir.path}/recording_${DateTime.now().millisecondsSinceEpoch}.m4a';

        // Start recording
        await _recorderController.record(
          path: _filePath!,
          androidEncoder: AndroidEncoder.aac,
          iosEncoder: IosEncoder.kAudioFormatMPEG4AAC,
          sampleRate: 44100,
          bitRate: 192000,
        );

        Logger().i("Recording started at $_filePath");

        // Reset timer and start counting
        _elapsedSeconds = 0;
        _timer?.cancel(); // Cancel any existing timer
        _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          _elapsedSeconds++;
          emit(
            RecorderState.recording(_elapsedSeconds, false, _recorderController),
          );

          if (_elapsedSeconds >= maxDuration) {
            stopRecording();
          }
        });

        // Emit initial recording state
        emit(RecorderState.recording(_elapsedSeconds, false, _recorderController));
      } else {
        Logger().i("Initializing recorder first...");
        await initRecorder();

        // Check if initialization was successful
        final isNowInitialized = state.maybeWhen(
          initial: (isInitialized) => isInitialized,
          orElse: () => false,
        );

        if (!isNowInitialized) {
          Logger().e("Failed to initialize recorder");
          return; // Don't proceed if initialization failed
        }
      }
    } catch (e) {
      emit(RecorderState.error("Failed to start recording: $e"));
    }
  }

  Future<void> stopRecording() async {
    try {
      await _recorderController.stop();
      _timer?.cancel();
      _timer = null;

      if (_filePath != null) {
        emit(RecorderState.stopped(_filePath!));
      } else {
        emit(const RecorderState.error("No file path available"));
      }
    } catch (e) {
      emit(RecorderState.error("Failed to stop recording: $e"));
    }
  }
}

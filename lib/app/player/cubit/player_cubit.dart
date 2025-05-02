import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_state.dart';
part 'player_cubit.freezed.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(const PlayerState.initial());

  late final PlayerController _playerController;
  int playbackPosition = 0;

  Future<void> initPlayer({required String filePath}) async {
    try {
      _playerController = PlayerController();
      await _playerController.preparePlayer(path: filePath, shouldExtractWaveform: true);
      
      // Listen for player completion
      _playerController.onCompletion.listen((_) {
        emit(PlayerState.stopped(_playerController));
      });

      emit(const PlayerState.initial(isInitialized: true));
    } catch (e) {
      emit(PlayerState.error("Failed to initialize player: $e"));
    }
  }

  Future<void> play() async {
    try {
      await _playerController.startPlayer();
      emit(PlayerState.playing(true, _playerController));
    } catch (e) {
      emit(PlayerState.error("Failed to play audio: $e"));
    }
  }

  Future<void> pause() async {
    try {
      await _playerController.pausePlayer();
      emit(PlayerState.playing(false, _playerController));
    } catch (e) {
      emit(PlayerState.error("Failed to pause audio: $e"));
    }
  }

  Future<void> stop() async {
    try {
      await _playerController.stopPlayer();
      emit(PlayerState.stopped(_playerController));
    } catch (e) {
      emit(PlayerState.error("Failed to stop audio: $e"));
    }
  }

  Future<void> seekTo(int position) async {
    try {
      await _playerController.seekTo(position);
      playbackPosition = position;
    } catch (e) {
      emit(PlayerState.error("Failed to seek audio: $e"));
    }
  }
}

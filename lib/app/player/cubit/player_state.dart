part of 'player_cubit.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.initial({@Default(false) bool isInitialized}) = _Initial;
  const factory PlayerState.playing(
    bool isPlaying,
    PlayerController playerController,
  ) = _Playing;
  const factory PlayerState.stopped(PlayerController? playerController) = _Stopped;
  const factory PlayerState.error(String message) = _Error;
}

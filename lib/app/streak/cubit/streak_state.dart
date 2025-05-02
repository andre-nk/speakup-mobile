part of 'streak_cubit.dart';

@freezed
class StreakState with _$StreakState {
  const factory StreakState.initial() = _Initial;
  const factory StreakState.loading() = _Loading;
  const factory StreakState.loaded({
    required int longestStreak,
    required int currentStreak,
  }) = _Loaded;
  const factory StreakState.error({
    required String message,
  }) = _Error;
}

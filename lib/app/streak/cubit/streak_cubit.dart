import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/repository/streak/streak_repository.dart';

part 'streak_state.dart';
part 'streak_cubit.freezed.dart';

class StreakCubit extends Cubit<StreakState> {
  final ActivityRepository _activityRepository;

  StreakCubit({ActivityRepository? activityRepository, FirebaseAuth? firebaseAuth})
    : _activityRepository = activityRepository ?? ActivityRepository(),
      super(const StreakState.initial());

  Future<void> fetchStreak(String userID) async {
    try {
      emit(const StreakState.loading());

      final streak = await _activityRepository.getStreak(userID);

      emit(
        StreakState.loaded(
          longestStreak: streak.longestStreak,
          currentStreak: streak.currentStreak,
        ),
      );
    } catch (e) {
      // On error, return zero values
      emit(const StreakState.loaded(longestStreak: 0, currentStreak: 0));
    }
  }

  /// Increments the user's streak and updates it in Firestore
  Future<void> incrementStreak(String userID) async {
    try {
      emit(const StreakState.loading());
      await _activityRepository.setStreak(userID);

      final streak = await _activityRepository.getStreak(userID);
      emit(
        StreakState.loaded(
          longestStreak: streak.longestStreak,
          currentStreak: streak.currentStreak,
        ),
      );
    } catch (e) {
      emit(StreakState.error(message: e.toString()));
    }
  }
}

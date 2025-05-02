import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:speakup_final/model/user/user.dart';
import 'package:speakup_final/repository/onboarding/onboarding_repository.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final OnboardingRepository _onboardingRepository;
  OnboardingCubit(this._onboardingRepository) : super(OnboardingState.initial());

  String? _selectedLanguageCode;
  EnglishMastery? _selectedEnglishMastery;
  Goal? _selectedGoal;

  String? get selectedLanguageCode => _selectedLanguageCode;
  EnglishMastery? get selectedEnglishMastery => _selectedEnglishMastery;
  Goal? get selectedGoal => _selectedGoal;

  /// Selects a language without saving it to the database
  void selectLanguage(String languageCode) {
    _selectedLanguageCode = languageCode;
    emit(
      OnboardingState.languageSelected(
        languageCode: languageCode,
        message: 'Language selected',
      ),
    );
  }

  void selectEnglishMastery(EnglishMastery englishMastery) {
    _selectedEnglishMastery = englishMastery;
    emit(
      OnboardingState.englishMasterySelected(
        englishMastery: englishMastery,
        message: 'English mastery level selected',
      ),
    );
  }

  void selectGoal(Goal goal) {
    _selectedGoal = goal;
    emit(OnboardingState.goalSelected(goal: goal, message: 'Learning goal selected'));
  }

  Future<void> updateNativeLanguage(String nativeLanguage) async {
    emit(const OnboardingState.loading());

    try {
      await _onboardingRepository.updateUserField('nativeLanguage', nativeLanguage);

      emit(
        const OnboardingState.success(
          message: 'Native language updated successfully',
          updatedField: OnboardingField.nativeLanguage,
        ),
      );
    } catch (e) {
      Logger().e('Error updating native language: $e');
      emit(OnboardingState.error(e.toString()));
    }
  }

  Future<void> updateEnglishMastery(EnglishMastery englishMastery) async {
    emit(const OnboardingState.loading());

    try {
      await _onboardingRepository.updateUserField(
        'englishMastery',
        englishMastery.toString().split('.').last,
      );

      emit(
        const OnboardingState.success(
          message: 'English mastery level updated successfully',
          updatedField: OnboardingField.englishMastery,
        ),
      );
    } catch (e) {
      Logger().e('Error updating English mastery: $e');
      emit(OnboardingState.error(e.toString()));
    }
  }

  Future<void> updateGoal(Goal goal) async {
    emit(const OnboardingState.loading());

    try {
      await _onboardingRepository.updateUserField(
        'goal',
        goal.toString().split('.').last,
      );

      emit(
        const OnboardingState.success(
          message: 'Learning goal updated successfully',
          updatedField: OnboardingField.goal,
        ),
      );
    } catch (e) {
      Logger().e('Error updating learning goal: $e');
      emit(OnboardingState.error(e.toString()));
    }
  }
}

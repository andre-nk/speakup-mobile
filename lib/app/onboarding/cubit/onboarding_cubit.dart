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
  String? _filledGoal;
  DateTime? _goalDeadline;

  String? get selectedLanguageCode => _selectedLanguageCode;
  EnglishMastery? get selectedEnglishMastery => _selectedEnglishMastery;
  String? get filledGoal => _filledGoal;
  DateTime? get goalDeadline => _goalDeadline;

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

  void selectGoal(String goal, {DateTime? goalDeadline}) {
    _filledGoal = goal;
    _goalDeadline = goalDeadline;
    emit(OnboardingState.goalFilled(goal: goal, goalDeadline: goalDeadline));
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

  Future<void> updateGoal(String goal, {DateTime? goalDeadline}) async {
    emit(const OnboardingState.loading());

    try {
      await _onboardingRepository.updateUserField('goal', goal);
      if (goalDeadline != null) {
        await _onboardingRepository.updateUserField('goalDeadline', goalDeadline);
      }

      emit(
        const OnboardingState.success(
          message: 'Goal updated successfully',
          updatedField: OnboardingField.goal,
        ),
      );
    } catch (e) {
      Logger().e('Error updating goal: $e');
      emit(OnboardingState.error(e.toString()));
    }
  }
}

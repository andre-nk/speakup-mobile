part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.loading() = _Loading;
  const factory OnboardingState.success({
    String? message,
    OnboardingField? updatedField,
  }) = _Success;
  const factory OnboardingState.error(String message) = _Error;
  const factory OnboardingState.languageSelected({
    required String languageCode,
    String? message,
  }) = _LanguageSelected;
  const factory OnboardingState.englishMasterySelected({
    required EnglishMastery englishMastery,
    String? message,
  }) = _EnglishMasterySelected;
  const factory OnboardingState.goalFilled({
    required String goal,
    DateTime? goalDeadline,
  }) = _GoalSelected;
}

enum OnboardingField {
  nativeLanguage,
  englishMastery,
  goal,
}

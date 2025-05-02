import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:igris/components/selectable_list_tile.dart';
import 'package:igris/components/selectable_list_view.dart';
import 'package:igris/components/topsheet.dart';
import 'package:igris/components/wide_fab.dart';
import 'package:speakup_final/app/onboarding/cubit/onboarding_cubit.dart';
import 'package:speakup_final/repository/onboarding/onboarding_repository.dart';
import 'package:speakup_final/view/screens/onboarding/english_mastery_picker_page.dart';

class NativeLanguagePickerPage extends StatelessWidget {
  const NativeLanguagePickerPage({super.key});

  final List<Map<String, dynamic>> languages = const [
    {'englishName': 'English', 'code': 'en_US', 'nativeName': 'English'},
    {'englishName': 'Spanish', 'code': 'es_ES', 'nativeName': 'Español'},
    {'englishName': 'French', 'code': 'fr_FR', 'nativeName': 'Français'},
    {'englishName': 'German', 'code': 'de_DE', 'nativeName': 'Deutsch'},
    {'englishName': 'Italian', 'code': 'it_IT', 'nativeName': 'Italiano'},
    {'englishName': 'Portuguese', 'code': 'pt_PT', 'nativeName': 'Português'},
    {'englishName': 'Russian', 'code': 'ru_RU', 'nativeName': 'Русский'},
    {'englishName': 'Japanese', 'code': 'ja_JP', 'nativeName': '日本語'},
    {'englishName': 'Korean', 'code': 'ko_KR', 'nativeName': '한국어'},
    {'englishName': 'Chinese', 'code': 'zh_CN', 'nativeName': '中文'},
    {'englishName': 'Arabic', 'code': 'ar_SA', 'nativeName': 'العربية'},
    {'englishName': 'Hindi', 'code': 'hi_IN', 'nativeName': 'हिन्दी'},
    {'englishName': 'Indonesian', 'code': 'id_ID', 'nativeName': 'Bahasa Indonesia'},
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(OnboardingRepository()),
      child: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          state.mapOrNull(
            error: (errorState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(errorState.message)));
            },
            success: (successState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(successState.message ?? "")));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const EnglishMasteryPickerPage()),
              );
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            floatingActionButton:
                context.read<OnboardingCubit>().selectedLanguageCode == null
                    ? null
                    : WideFAB(
                      label: "Next",
                      onPressed: () {
                        if (context.read<OnboardingCubit>().selectedLanguageCode !=
                            null) {
                          context.read<OnboardingCubit>().updateNativeLanguage(
                            context.read<OnboardingCubit>().selectedLanguageCode!,
                          );
                        }
                      },
                    ),
            body: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Topsheet(
                    greetingIconPath: "assets/icons/greeting.svg",
                    greetingText: FlutterI18n.translate(
                      context,
                      "native_language_picker.greeting",
                    ),
                    headerText: FlutterI18n.translate(
                      context,
                      "native_language_picker.heading",
                    ),
                    subheaderText: FlutterI18n.translate(
                      context,
                      "native_language_picker.subheading",
                    ),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                SelectableListView(
                  itemCount: languages.length,
                  itemBuilder: (context, index) {
                    final language = languages[index];
                    final isSelected =
                        language['code'] ==
                        context.read<OnboardingCubit>().selectedLanguageCode;

                    return SelectableListTile(
                      title: language['englishName'],
                      trailing: Text(language['nativeName']),
                      isSelected: isSelected,
                      variant: SelectableListTileVariant.defaultVariant,
                      onTap: () {
                        context.read<OnboardingCubit>().selectLanguage(
                          language['code'],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

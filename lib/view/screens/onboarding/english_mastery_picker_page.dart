import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:igris/components/selectable_list_tile.dart';
import 'package:igris/components/selectable_list_view.dart';
import 'package:igris/components/topsheet.dart';
import 'package:igris/components/wide_fab.dart';
import 'package:speakup_final/app/onboarding/cubit/onboarding_cubit.dart';
import 'package:speakup_final/model/user/user.dart';
import 'package:speakup_final/repository/onboarding/onboarding_repository.dart';

class EnglishMasteryPickerPage extends StatelessWidget {
  const EnglishMasteryPickerPage({super.key});

  final List<EnglishMastery> masteryLevels = const [
    EnglishMastery.beginner,
    EnglishMastery.intermediate,
    EnglishMastery.advanced,
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
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: WideFAB(
              label: "Next",
              onPressed: () {
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
                  itemCount: masteryLevels.length,
                  itemBuilder: (context, index) {
                    final masteryLevel = masteryLevels[index];
                    final isSelected =
                        masteryLevel ==
                        context.read<OnboardingCubit>().selectedEnglishMastery;

                    return SelectableListTile(
                      title:
                          masteryLevel == EnglishMastery.beginner
                              ? FlutterI18n.translate(
                                context,
                                "english_mastery_picker.beginner",
                              )
                              : masteryLevel == EnglishMastery.intermediate
                              ? FlutterI18n.translate(
                                context,
                                "english_mastery_picker.intermediate",
                              )
                              : FlutterI18n.translate(
                                context,
                                "english_mastery_picker.advanced",
                              ),
                      subtitle:
                          masteryLevel == EnglishMastery.beginner
                              ? FlutterI18n.translate(
                                context,
                                "english_mastery_picker.beginner_subtitle",
                              )
                              : masteryLevel == EnglishMastery.intermediate
                              ? FlutterI18n.translate(
                                context,
                                "english_mastery_picker.intermediate_subtitle",
                              )
                              : FlutterI18n.translate(
                                context,
                                "english_mastery_picker.advanced_subtitle",
                              ),
                      isSelected: isSelected,
                      variant: SelectableListTileVariant.defaultVariant,
                      onTap:
                          () => context.read<OnboardingCubit>().selectEnglishMastery(
                            masteryLevel,
                          ),
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

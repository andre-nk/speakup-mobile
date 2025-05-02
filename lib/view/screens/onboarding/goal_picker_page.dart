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
import 'package:speakup_final/view/screens/wrapper/wrapper_page.dart';

class GoalPickerPage extends StatelessWidget {
  const GoalPickerPage({super.key});

  final List<Goal> learningGoals = const [
    Goal.academic,
    Goal.business,
    Goal.travel,
    Goal.social,
    Goal.fluency,
    Goal.casual,
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
                MaterialPageRoute(builder: (context) => const WrapperPage()),
              );
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            floatingActionButton:
                context.read<OnboardingCubit>().selectedGoal == null
                    ? null
                    : WideFAB(
                      label: "Next",
                      onPressed: () {
                        if (context.read<OnboardingCubit>().selectedGoal != null) {
                          context.read<OnboardingCubit>().updateGoal(
                            context.read<OnboardingCubit>().selectedGoal!,
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
                      "goal_picker.greeting",
                    ),
                    headerText: FlutterI18n.translate(
                      context,
                      "goal_picker.heading",
                    ),
                    subheaderText: FlutterI18n.translate(
                      context,
                      "goal_picker.subheading",
                    ),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                SelectableListView(
                  itemCount: learningGoals.length,
                  itemBuilder: (context, index) {
                    final learningGoal = learningGoals[index];
                    final isSelected =
                        learningGoal == context.read<OnboardingCubit>().selectedGoal;

                    return SelectableListTile(
                      title:
                          learningGoal == Goal.academic
                              ? FlutterI18n.translate(context, "goal_picker.academic")
                              : learningGoal == Goal.business
                              ? FlutterI18n.translate(context, "goal_picker.business")
                              : learningGoal == Goal.travel
                              ? FlutterI18n.translate(context, "goal_picker.travel")
                              : learningGoal == Goal.social
                              ? FlutterI18n.translate(context, "goal_picker.social")
                              : learningGoal == Goal.fluency
                              ? FlutterI18n.translate(context, "goal_picker.fluency")
                              : FlutterI18n.translate(context, "goal_picker.casual"),
                      subtitle:
                          learningGoal == Goal.academic
                              ? FlutterI18n.translate(
                                context,
                                "goal_picker.academic_subtitle",
                              )
                              : learningGoal == Goal.business
                              ? FlutterI18n.translate(
                                context,
                                "goal_picker.business_subtitle",
                              )
                              : learningGoal == Goal.travel
                              ? FlutterI18n.translate(
                                context,
                                "goal_picker.travel_subtitle",
                              )
                              : learningGoal == Goal.social
                              ? FlutterI18n.translate(
                                context,
                                "goal_picker.social_subtitle",
                              )
                              : learningGoal == Goal.fluency
                              ? FlutterI18n.translate(
                                context,
                                "goal_picker.fluency_subtitle",
                              )
                              : FlutterI18n.translate(
                                context,
                                "goal_picker.casual_subtitle",
                              ),
                      isSelected: isSelected,
                      variant: SelectableListTileVariant.large,
                      onTap:
                          () => context.read<OnboardingCubit>().selectGoal(learningGoal),
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


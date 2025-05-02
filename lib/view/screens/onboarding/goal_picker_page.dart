import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:igris/components/topsheet.dart';
import 'package:igris/components/wide_fab.dart';
import 'package:speakup_final/app/onboarding/cubit/onboarding_cubit.dart';
import 'package:speakup_final/repository/onboarding/onboarding_repository.dart';
import 'package:speakup_final/view/screens/wrapper/wrapper_page.dart';
import 'package:intl/intl.dart';

class GoalPickerPage extends StatefulWidget {
  const GoalPickerPage({super.key});

  @override
  State<GoalPickerPage> createState() => _GoalPickerPageState();
}

class _GoalPickerPageState extends State<GoalPickerPage> {
  late TextEditingController goalController;

  @override
  void initState() {
    super.initState();
    goalController = TextEditingController();
  }

  @override
  void dispose() {
    goalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(OnboardingRepository()),
      child: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          state.mapOrNull(
            goalFilled: (value) {
              if (goalController.text != value.goal) {
                final currentPosition = goalController.selection.start;
                goalController.text = value.goal;
                // Restore cursor position after text update
                if (currentPosition >= 0 && currentPosition <= value.goal.length) {
                  goalController.selection = TextSelection.fromPosition(
                    TextPosition(offset: currentPosition),
                  );
                }
              }
            },
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
          final cubit = context.read<OnboardingCubit>();

          // Set initial text if needed but don't recreate the controller
          if (goalController.text.isEmpty && cubit.filledGoal != null) {
            goalController.text = cubit.filledGoal!;
          }

          return Scaffold(
            floatingActionButton:
                context.read<OnboardingCubit>().filledGoal == null ||
                        context.read<OnboardingCubit>().filledGoal == ""
                    ? null
                    : WideFAB(
                      label: "Next",
                      onPressed: () {
                        if (context.read<OnboardingCubit>().filledGoal != null) {
                          context.read<OnboardingCubit>().updateGoal(
                            context.read<OnboardingCubit>().filledGoal!,
                            goalDeadline: context.read<OnboardingCubit>().goalDeadline,
                          );
                        }
                      },
                    ),
            body: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Topsheet(
                    greetingIconPath: "assets/icons/greeting.svg",
                    greetingText: FlutterI18n.translate(context, "goal_picker.greeting"),
                    headerText: FlutterI18n.translate(context, "goal_picker.heading"),
                    subheaderText: FlutterI18n.translate(
                      context,
                      "goal_picker.subheading",
                    ),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                ),

                SliverPadding(
                  padding: const EdgeInsets.all(24.0).copyWith(top: 48.0),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Goal TextField
                        TextField(
                          controller: goalController,
                          style: Theme.of(context).textTheme.bodyMedium,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            floatingLabelAlignment: FloatingLabelAlignment.center,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            labelText: 'What is your English learning goal?',
                            hintText: 'Enter your goal here',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.onSecondary,
                          ),
                          onChanged: (value) {
                            cubit.selectGoal(value, goalDeadline: cubit.goalDeadline);
                          },
                        ),

                        const SizedBox(height: 28),

                        // Suggestion chips
                        Text(
                          'Suggested goals:',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),

                        const SizedBox(height: 8),

                        // Goal chips
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            _buildGoalChip(
                              context,
                              'Travel abroad',
                              goalController,
                              cubit,
                            ),
                            _buildGoalChip(
                              context,
                              'Business communication',
                              goalController,
                              cubit,
                            ),
                            _buildGoalChip(
                              context,
                              'Make friends',
                              goalController,
                              cubit,
                            ),
                            _buildGoalChip(
                              context,
                              'Academic studies',
                              goalController,
                              cubit,
                            ),
                            _buildGoalChip(
                              context,
                              'Public speaking',
                              goalController,
                              cubit,
                            ),
                            _buildGoalChip(
                              context,
                              'Job interviews',
                              goalController,
                              cubit,
                            ),
                            _buildGoalChip(
                              context,
                              'Daily conversations',
                              goalController,
                              cubit,
                            ),
                            _buildGoalChip(
                              context,
                              'Watch movies without subtitles',
                              goalController,
                              cubit,
                            ),
                          ],
                        ),

                        const SizedBox(height: 32),

                        // Deadline picker
                        Text(
                          'Set a deadline (optional):',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),

                        const SizedBox(height: 8),

                        // Date display and picker button
                        InkWell(
                          onTap: () => _selectDate(context, cubit),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).colorScheme.surface,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  cubit.goalDeadline != null
                                      ? DateFormat(
                                        'MMMM d, y',
                                      ).format(cubit.goalDeadline!)
                                      : 'No deadline set',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Icon(
                                  Icons.calendar_today,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ],
                            ),
                          ),
                        ),

                        if (cubit.goalDeadline != null)
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                cubit.selectGoal(
                                  cubit.filledGoal ?? '',
                                  goalDeadline: null,
                                );
                              },
                              child: const Text('Clear deadline'),
                            ),
                          ),

                        SizedBox(height: 72),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildGoalChip(
    BuildContext context,
    String goalText,
    TextEditingController controller,
    OnboardingCubit cubit,
  ) {
    return ActionChip(
      label: Text(goalText, style: Theme.of(context).textTheme.labelMedium),
      backgroundColor: Theme.of(context).colorScheme.surface,
      side: BorderSide(color: Theme.of(context).colorScheme.outline),
      labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      onPressed: () {
        controller.text = goalText;
        cubit.selectGoal(goalText, goalDeadline: cubit.goalDeadline);
      },
    );
  }

  Future<void> _selectDate(BuildContext context, OnboardingCubit cubit) async {
    final DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: cubit.goalDeadline ?? DateTime(now.year, now.month, now.day + 30),
      firstDate: now,
      lastDate: DateTime(now.year + 5),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.primary,
              onPrimary: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      cubit.selectGoal(cubit.filledGoal ?? '', goalDeadline: picked);
    }
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_svg/svg.dart';
import 'package:igris/components/button.dart';
import 'package:igris/components/collapsible.dart';
import 'package:igris/components/greeting.dart';
import 'package:igris/components/headline.dart';
import 'package:igris/components/tile.dart';
import 'package:speakup_final/app/curriculum/cubit/curriculum_cubit.dart';
import 'package:speakup_final/view/screens/session/session_page.dart';

class ExerciseListPage extends StatelessWidget {
  const ExerciseListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CurriculumCubit>(
          create: (context) => CurriculumCubit()..fetchExerciseCurriculum(),
        ),
      ],
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Greeting(
                      iconPath: "assets/icons/greeting.svg",
                      message: FlutterI18n.translate(
                        context,
                        "exercise_list.title",
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.history),
                          color: Theme.of(context).primaryColor,
                          iconSize: 28.0,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                BlocBuilder<CurriculumCubit, CurriculumState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading:
                          () => const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 32.0),
                              child: CircularProgressIndicator(),
                            ),
                          ),
                      exerciseLoaded: (exerciseCurriculumData) {
                        final randomIndex = Random().nextInt(
                          exerciseCurriculumData.exercises.length,
                        );
                        final randomExercise =
                            exerciseCurriculumData.exercises[randomIndex];

                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FlutterI18n.translate(
                                  context,
                                  "exercise_list.ai",
                                ),
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineLarge!.copyWith(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Tile(
                                onTap: () {},
                                title: randomExercise.title,
                                subtitle:
                                    '${randomExercise.estimatedDuration.toInt()} mins - ${randomExercise.level.substring(0, 1).toUpperCase()}${randomExercise.level.substring(1)}',
                                backgroundColor:
                                    Theme.of(context).colorScheme.onSecondary,
                                iconBackgroundColor:
                                    Theme.of(context).colorScheme.tertiaryContainer,
                              ),
                            ],
                          ),
                        );
                      },
                      orElse: () {
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FlutterI18n.translate(
                                  context,
                                  "exercise_list.ai",
                                ),
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineLarge!.copyWith(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                FlutterI18n.translate(
                                  context,
                                  "exercise_list.ai_description",
                                ),
                                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                  letterSpacing: 0.1,
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Tile(
                                title: FlutterI18n.translate(
                                  context,
                                  "exercise_list.ai_title",
                                ),
                                subtitle: FlutterI18n.translate(
                                  context,
                                  "exercise_list.ai_details",
                                ),

                                backgroundColor:
                                    Theme.of(context).colorScheme.onSecondary,
                                iconBackgroundColor:
                                    Theme.of(context).colorScheme.tertiaryContainer,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/grammar_variant.svg"),
                          const SizedBox(width: 16),
                          Text(
                            FlutterI18n.translate(context, "exercise_list.vocab_title"),
                            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        FlutterI18n.translate(context, "exercise_list.vocab_description"),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          letterSpacing: 0.1,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Button(
                          text: FlutterI18n.translate(
                            context,
                            "exercise_list.vocab_button",
                          ),
                          onPressed: () {},
                          backgroundColor: Theme.of(context).colorScheme.onSecondary,
                          textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Headline(
                  title: FlutterI18n.translate(context, "exercise_list.practice_heading"),
                  isDividerEnabled: false,
                ),

                // Use BlocBuilder to display curriculum-based exercises
                BlocBuilder<CurriculumCubit, CurriculumState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      initial: () => const Center(child: Text("Loading...")),
                      loading:
                          () => const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 32.0),
                              child: CircularProgressIndicator(),
                            ),
                          ),
                      exerciseLoaded: (exerciseCurriculumData) {
                        final widgets = <Widget>[];

                        // Global section counter for continuous numbering across levels
                        var globalSectionCounter = 1;

                        // Process each level (already sorted in repository)
                        for (final level in exerciseCurriculumData.levels) {
                          // Skip levels without sections
                          if (level.sectionObjects == null ||
                              level.sectionObjects!.isEmpty) {
                            continue;
                          }

                          // Create collapsibles for each section (already sorted in repository)
                          for (var i = 0; i < level.sectionObjects!.length; i++) {
                            final section = level.sectionObjects![i];
                            final sectionIndex =
                                globalSectionCounter; // Use global counter instead of i + 1

                            // Skip sections without exercises
                            if (section.exerciseObjects == null ||
                                section.exerciseObjects!.isEmpty) {
                              continue;
                            }

                            // Create exercise tiles (exercises already sorted in repository)
                            final exerciseTiles = <Widget>[];

                            for (var j = 0; j < section.exerciseObjects!.length; j++) {
                              final exercise = section.exerciseObjects![j];

                              // Format duration as minutes
                              final durationText =
                                  "${exercise.estimatedDuration.toInt()} mins";

                              // Format level text with first letter capitalized
                              final levelText =
                                  exercise.level.substring(0, 1).toUpperCase() +
                                  exercise.level.substring(1);

                              exerciseTiles.add(
                                Tile(
                                  title: exercise.title,
                                  subtitle: "$durationText - $levelText",
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return SessionPage(exercise: exercise);
                                        },
                                      ),
                                    );
                                  },
                                  icon: Icons.circle_outlined,
                                ),
                              );

                              // Add spacing between tiles except for the last one
                              if (j < section.exerciseObjects!.length - 1) {
                                exerciseTiles.add(const SizedBox(height: 16));
                              }
                            }

                            // Create section collapsible
                            widgets.add(
                              Collapsible(
                                sectionNumber: "$sectionIndex",
                                title: section.title,
                                children: exerciseTiles,
                              ),
                            );

                            globalSectionCounter++;
                          }
                        }

                        return widgets.isEmpty
                            ? const Center(child: Text("No exercises available"))
                            : Column(children: widgets);
                      },
                      error:
                          (message) => Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 32.0),
                              child: Text("Error loading exercises: $message"),
                            ),
                          ),
                      orElse: () => const Center(child: Text("Unknown state")),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:audio_waveforms/audio_waveforms.dart' as aw;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sanity_portable_text/flutter_sanity_portable_text.dart';
import 'package:igris/components/bottomsheet.dart';
import 'package:igris/components/fab.dart';
import 'package:igris/components/greeting.dart';
import 'package:igris/components/outlined_card.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';
import 'package:speakup_final/app/onboarding_exercise/onboarding_exercise_cubit.dart';
import 'package:speakup_final/app/onboarding_exercise/onboarding_exercise_state.dart';
import 'package:speakup_final/app/recorder/cubit/recorder_cubit.dart';
import 'package:speakup_final/model/exercise/exercise.dart';
import 'package:speakup_final/repository/exercise/exercise_repository.dart';

class OnboardingSessionPage extends StatelessWidget {
  const OnboardingSessionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create:
                (context) =>
                    OnboardingExerciseCubit(repository: ExerciseRepository())
                      ..fetchFirstExerciseByLevel(
                        context.read<AuthCubit>().state.whenOrNull(
                              authenticated: (user) {
                                if (user.englishMastery != null) {
                                  return ExerciseLevel.values.firstWhere(
                                    (level) => level.name == user.englishMastery!.name,
                                  );
                                } else {
                                  return ExerciseLevel.beginner;
                                }
                              },
                            ) ??
                            ExerciseLevel.beginner,
                      ),
          ),
          BlocProvider(create: (context) => RecorderCubit()..initRecorder()),
        ],
        child: BlocConsumer<RecorderCubit, RecorderState>(
          listener: (context, state) {
            state.whenOrNull(
              stopped: (filePath) {
                //TODO: Handle the file path
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Error: "), backgroundColor: Colors.red),
                );
              },
            );
          },
          builder: (context, state) {
            return state.when(
              initial: (isInitialized) {
                return _buildRecordingUI(
                  context,
                  timerText: "00:00",
                  recorderController: null,
                );
              },
              recording: (elapsedSeconds, isPlaying, recorderController) {
                return _buildRecordingUI(
                  context,
                  timerText:
                      "0${elapsedSeconds ~/ 60}:${(elapsedSeconds % 60).toString().padLeft(2, '0')}",
                  recorderController: recorderController,
                );
              },
              stopped: (filePath) {
                return SizedBox();
              },
              error: (message) {
                return Center(
                  child: Text('Error: $message', style: TextStyle(color: Colors.red)),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildRecordingUI(
    BuildContext context, {
    required String timerText,
    aw.RecorderController? recorderController,
  }) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0).copyWith(bottom: 0),
            child: const Greeting(
              iconPath: "assets/icons/greeting.svg",
              message: "now, let's try SpeakUp!",
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 5,
            child: OutlinedCard(
              child: BlocBuilder<OnboardingExerciseCubit, OnboardingExerciseState>(
                builder: (context, state) {
                  return state.maybeMap(
                    loading: (_) => const Center(child: Text("Loading...")),
                    loaded: (value) {
                      if (value.exercise.instructions == null) {
                        return const Center(child: Text("No instructions available"));
                      }

                      // Process the instructions data for PortableText
                      final blocks =
                          value.exercise.instructions!.map((block) {
                            if (block is Map<String, dynamic>) {
                              try {
                                return TextBlockItem.fromJson(block);
                              } catch (e) {
                                // Fallback if JSON parsing fails
                                return TextBlockItem(
                                  children: [Span(text: "Error parsing content")],
                                );
                              }
                            }

                            // Fallback for non-map types
                            return TextBlockItem(
                              children: [Span(text: block.toString())],
                            );
                          }).toList();

                      return Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: PortableText(blocks: blocks),
                      );
                    },
                    error: (error) => Center(child: Text("Error: ${error.message}")),
                    orElse: () => const Center(child: Text("Loading...")),
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Bottomsheet(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  recorderController != null
                      ? Text(
                        '$timerText / 03:00',
                        style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      )
                      : Column(
                        children: [
                          Text(
                            "Tap the mic to start!",
                            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Start speaking and we will evaluate your English Proficiency!",
                              style: Theme.of(
                                context,
                              ).textTheme.labelLarge!.copyWith(height: 1.65),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),

                  const SizedBox(height: 16),
                  if (recorderController != null)
                    Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: aw.AudioWaveforms(
                        enableGesture: true,
                        size: Size(MediaQuery.of(context).size.width - 48, 100),
                        recorderController: recorderController,
                        waveStyle: aw.WaveStyle(
                          waveColor: Theme.of(context).colorScheme.primary,
                          extendWaveform: true,
                          showMiddleLine: false,
                          showDurationLabel: false,
                          spacing: 4.0,
                          waveCap: StrokeCap.round,
                        ),
                      ),
                    ),
                  SizedBox(height: recorderController != null ? 20 : 40),

                  FAB(
                    onPressed: () async {
                      if (recorderController != null) {
                        context.read<RecorderCubit>().stopRecording();
                      } else {
                        context.read<RecorderCubit>().startRecording();
                      }
                    },
                    icon: recorderController != null ? Icons.stop : Icons.mic,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

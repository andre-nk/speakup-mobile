import 'package:audio_waveforms/audio_waveforms.dart' as aw;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:igris/components/bottomsheet.dart';
import 'package:igris/components/fab.dart';
import 'package:igris/components/greeting.dart';
import 'package:igris/components/outlined_card.dart';
import 'package:igris/components/button.dart';
import 'package:speakup_final/app/ai/cubit/ai_cubit.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';
import 'package:speakup_final/app/onboarding_exercise/onboarding_exercise_cubit.dart';
import 'package:speakup_final/app/onboarding_exercise/onboarding_exercise_state.dart';
import 'package:speakup_final/app/recorder/cubit/recorder_cubit.dart';
import 'package:speakup_final/app/player/cubit/player_cubit.dart';
import 'package:speakup_final/utils/format_duration.dart';

class OnboardingSessionPage extends StatelessWidget {
  const OnboardingSessionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              final authState = context.read<AuthCubit>().state;


              return OnboardingExerciseCubit()..fetchFirstExerciseByLevel(
                userID: authState.maybeWhen(
                  authenticated: (user) => user.uid,
                  orElse: () => "",
                ),
                nativeLanguage: authState.maybeWhen(
                  authenticated: (user) => user.nativeLanguage ?? "en_US",
                  orElse: () => "",
                ),
                goal: authState.maybeWhen(
                  authenticated: (user) => user.goal,
                  orElse: () => "",
                ),
                level: authState.maybeWhen(
                  authenticated: (user) => user.englishMastery.toString().split('.').first,
                  orElse: () => "",
                ),
              );
            },
          ),
          BlocProvider(create: (context) => RecorderCubit()..initRecorder()),
          BlocProvider(create: (context) => PlayerCubit()),
          BlocProvider(create: (context) => AiCubit()),
        ],
        child: BlocConsumer<RecorderCubit, RecorderState>(
          listener: (context, state) {
            state.whenOrNull(
              stopped: (filePath) {
                context.read<PlayerCubit>().initPlayer(filePath: filePath);
                context.read<AiCubit>().uploadAudio(
                  audioFilePath: filePath,
                  userID: context.read<AuthCubit>().state.maybeWhen(
                    authenticated: (user) => user.uid,
                    orElse: () => "",
                  ),
                  exerciseID: context.read<OnboardingExerciseCubit>().state.maybeWhen(
                    loaded: (value) => value.id!,
                    orElse: () => "",
                  ),
                );
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
                return BlocBuilder<PlayerCubit, PlayerState>(
                  builder: (context, state) {
                    return state.when(
                      initial: (isInitialized) {
                        return _buildResultUI(
                          context,
                          isPlaying: false,
                          isStopped: true,
                          playerController: null,
                          filePath: filePath,
                        );
                      },
                      playing: (isPlaying, playerController) {
                        return _buildResultUI(
                          context,
                          isPlaying: isPlaying,
                          isStopped: false,
                          playerController: playerController,
                          filePath: filePath,
                        );
                      },
                      stopped: (playerController) {
                        return _buildResultUI(
                          context,
                          isPlaying: false,
                          isStopped: true,
                          playerController: playerController,
                          filePath: filePath,
                        );
                      },
                      error: (message) {
                        return const Center(
                          child: Text("Error: ", style: TextStyle(color: Colors.red)),
                        );
                      },
                    );
                  },
                );
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
                      return Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: SingleChildScrollView(child: Text(value.exercise.instructions![0]['content'].toString())),
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

  Widget _buildResultUI(
    BuildContext context, {
    required String filePath,
    required bool isPlaying,
    required bool isStopped,
    aw.PlayerController? playerController,
  }) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0).copyWith(bottom: 0),
            child: const Greeting(
              iconPath: "assets/images/greeting_icon.svg",
              message: "we've recorded your speech!",
              color: Colors.black,
            ),
          ),
          BlocConsumer<AiCubit, AiState>(
            listener: (context, state) {
              state.maybeMap(
                error: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Error: ${error.message}"),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return Expanded(
                flex: 5,
                child: OutlinedCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: state.maybeMap(
                      completed: (value) {
                        return [
                          SvgPicture.asset(
                            "assets/images/penguin.svg",
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(height: 24),

                          Text(
                            "Your results are here!",
                            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Button(
                            text: "View",
                            onPressed: () {},
                            icon: Icons.chevron_right_rounded,
                          ),
                        ];
                      },
                      error: (error) {
                        return [
                          Text(
                            "Error: ${error.message}",
                            style: Theme.of(
                              context,
                            ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
                          ),
                        ];
                      },
                      orElse: () {
                        return [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: CircularProgressIndicator(
                              strokeWidth: 5,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            "AI is analyzing your exercise...",
                            style: Theme.of(
                              context,
                            ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
                          ),
                        ];
                      },
                    ),
                  ),
                ),
              );
            },
          ),
          Expanded(
            flex: 4,
            child: Bottomsheet(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  playerController != null
                      ? StreamBuilder(
                        stream: playerController.onCurrentDurationChanged,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            final duration = snapshot.data!;
                            return Text(
                              '${formatDuration(duration)} / ${formatDuration(playerController.maxDuration)}',
                              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      )
                      : Text(
                        '00:00 / 03:00',
                        style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                  const SizedBox(height: 24),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child:
                        playerController != null
                            ? aw.AudioFileWaveforms(
                              size: Size(MediaQuery.of(context).size.width - 48, 100),
                              playerController: playerController,
                              enableSeekGesture: true,
                              onDragEnd: (p0) {
                                // Calculate position relative to waveform width
                                final width =
                                    MediaQuery.of(context).size.width -
                                    48; // Width of waveform
                                final dragPosition = p0.globalPosition.dx;
                                final dragPercentage = dragPosition / width;

                                // Calculate the position in milliseconds based on total duration
                                final seekPosition =
                                    (dragPercentage * playerController.maxDuration)
                                        .toInt();

                                // Ensure position is within valid range
                                final clampedPosition = seekPosition.clamp(
                                  0,
                                  playerController.maxDuration,
                                );

                                // Seek to the calculated position
                                context.read<PlayerCubit>().seekTo(clampedPosition);
                              },
                              playerWaveStyle: aw.PlayerWaveStyle(
                                liveWaveColor: Theme.of(context).colorScheme.primary,
                                seekLineColor: Theme.of(
                                  context,
                                ).colorScheme.primary.withOpacity(0.5),
                                waveCap: StrokeCap.round,
                                spacing: 4.0,
                              ),
                            )
                            : const SizedBox.shrink(), // Don't show anything if controller is null
                  ),
                  const SizedBox(height: 40),

                  FAB(
                    onPressed: () async {
                      if (isPlaying) {
                        context.read<PlayerCubit>().pause();
                      } else {
                        context.read<PlayerCubit>().play();
                      }
                    },
                    icon: isPlaying ? Icons.pause : Icons.play_arrow,
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

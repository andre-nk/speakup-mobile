import 'package:audio_waveforms/audio_waveforms.dart' as audio_waveforms;
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:igris/components/bottomsheet.dart';
import 'package:igris/components/button.dart';
import 'package:igris/components/greeting.dart';
import 'package:igris/components/mini_fab.dart';
import 'package:speakup_final/app/player/cubit/player_cubit.dart';
import 'package:speakup_final/app/summary/cubit/summary_cubit.dart';
import 'package:speakup_final/model/session/session.dart';
import 'package:speakup_final/model/session_summary/session_summary.dart';
import 'package:speakup_final/repository/summary/summary_repository.dart';
import 'package:speakup_final/utils/format_duration.dart';
import 'package:speakup_final/view/screens/suggested_learning_path/suggested_learning_path_page.dart';

class SessionResultPage extends StatelessWidget {
  final Session session;
  final String audioFilePath;
  final String? audioNetworkPath;
  final bool? isHistory;

  const SessionResultPage({
    super.key,
    required this.session,
    required this.audioFilePath,
    this.audioNetworkPath,
    this.isHistory,
  });

  @override
  Widget build(BuildContext context) {
    // Create pitch fluctuation spots
    List<FlSpot> pitchSpots = [];
    if (session.pitchResult.pitchFluctuation.isNotEmpty) {
      for (int i = 0; i < session.pitchResult.pitchFluctuation.length; i++) {
        final entry = session.pitchResult.pitchFluctuation[i];
        pitchSpots.add(FlSpot(entry.timestamp, entry.pitch));
      }
    }

    // Calculate WPM data spots from the session's filler data
    List<FlSpot> wpmSpots = [];
    final wpmData = session.calculateWPMSpots();
    for (var dataPoint in wpmData) {
      wpmSpots.add(FlSpot(dataPoint['x']!, dataPoint['y']!));
    }

    // Calculate WPM min/max values for chart scaling
    double wpmMin =
        wpmSpots.isEmpty
            ? 100
            : wpmSpots
                    .map((spot) => spot.y)
                    .reduce((curr, next) => curr < next ? curr : next) -
                20;
    double wpmMax =
        wpmSpots.isEmpty
            ? 150
            : wpmSpots
                    .map((spot) => spot.y)
                    .reduce((curr, next) => curr > next ? curr : next) +
                20;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BackButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(height: 16),
                    Greeting(
                      iconPath: "assets/icons/greeting.svg",
                      message: FlutterI18n.translate(context, "session_result.greeting"),
                      color: Colors.black,
                    ),

                    _audioPlayerProvider(audioFilePath),
                    const SizedBox(height: 32),
                    _transcriptSection(session.transcript, context),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 32.0),
                      child: Divider(thickness: 2.0),
                    ),

                    // Grammar
                    Column(
                      children: [
                        _subHeader(
                          context,
                          "assets/icons/grammar.svg",
                          FlutterI18n.translate(context, "session_result.grammar"),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: const Color(0xFFE3E8EF), width: 2),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child:
                              session.grammar.sentencePairs.isEmpty
                                  ? SizedBox()
                                  : ListView.separated(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: session.grammar.sentencePairs.length,
                                    separatorBuilder:
                                        (context, index) => const Divider(thickness: 1.5),
                                    itemBuilder: (context, index) {
                                      final sentencePair =
                                          session.grammar.sentencePairs[index];
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 12.0,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Icon(
                                                  Icons.remove_circle_outline_rounded,
                                                  color: Colors.red,
                                                ),
                                                const SizedBox(width: 8),
                                                Expanded(
                                                  child: Text(sentencePair.original),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 12.0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Icon(
                                                  Icons.check_circle_outline_outlined,
                                                  color: Colors.green,
                                                ),
                                                const SizedBox(width: 8),
                                                Expanded(
                                                  child: Text(sentencePair.corrected),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                        ),
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 32.0, bottom: 20.0),
                      child: Divider(thickness: 2.0),
                    ),

                    // Filler
                    Column(
                      children: [
                        _subHeader(
                          context,
                          "assets/icons/filler.svg",
                          FlutterI18n.translate(context, "session_result.filler"),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: const Color(0xFFE3E8EF), width: 2),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 12.0,
                          ),
                          child:
                              session.filler.chunks.isEmpty
                                  ? SizedBox()
                                  : Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      for (var chunk in session.filler.chunks)
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 12.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(chunk.text),
                                              Text("${chunk.timestamp.length}x"),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    //Common
                    Column(
                      children: [
                        _subHeader(
                          context,
                          "assets/icons/common.svg",
                          FlutterI18n.translate(context, "session_result.common"),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: const Color(0xFFE3E8EF), width: 2),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 12.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                session.mostCommonWordsWithCount.map((wordCount) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(wordCount.keys.first),
                                      Text("${wordCount.values.first}x"),
                                    ],
                                  );
                                }).toList(),
                          ),
                        ),
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Divider(thickness: 2.0),
                    ),

                    // Formailty
                    Column(
                      children: [
                        _subHeader(
                          context,
                          "assets/icons/formality.svg",
                          FlutterI18n.translate(context, "session_result.formality"),
                        ),
                        const SizedBox(height: 16),
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 12.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                                gradient: LinearGradient(
                                  colors: [Colors.blue.shade300, Colors.blue.shade700],
                                ),
                              ),
                            ),
                            Positioned(
                              left:
                                  MediaQuery.of(context).size.width *
                                  session.formality.formalityScore,
                              bottom: -6.0,
                              child: Container(height: 24, width: 4, color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(height: 28),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: const Color(0xFFE3E8EF), width: 2),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 16.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${FlutterI18n.translate(context, "session_result.formality_score")} ${session.formality.formalityScore * 100}/100",
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "${FlutterI18n.translate(context, "session_result.formality_classification")} ${session.formality.classification}",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Divider(thickness: 2.0),
                    ),

                    // WPM
                    Column(
                      children: [
                        _subHeader(
                          context,
                          "assets/icons/wpm.svg",
                          FlutterI18n.translate(context, "session_result.wpm"),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0, top: 16.0),
                            child: LineChart(
                              LineChartData(
                                gridData: const FlGridData(show: true),
                                titlesData: FlTitlesData(
                                  topTitles: const AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 22,
                                      getTitlesWidget: (value, meta) {
                                        return Text(
                                          '${(value * 15).toInt()}s',
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  rightTitles: const AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 36,
                                      getTitlesWidget: (value, meta) {
                                        return Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            value.toInt().toString(),
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                borderData: FlBorderData(
                                  show: true,
                                  border: Border.all(
                                    color: const Color(0xff37434d),
                                    width: 1,
                                  ),
                                ),
                                minX: 0,
                                maxX:
                                    wpmSpots.isEmpty
                                        ? 0
                                        : (wpmSpots.length - 1).toDouble(),
                                minY: wpmMin,
                                maxY: wpmMax,
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: wpmSpots,
                                    isCurved: true,
                                    color: Theme.of(context).colorScheme.primary,
                                    barWidth: 3,
                                    dotData: const FlDotData(show: false),
                                    belowBarData: BarAreaData(
                                      show: true,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.secondary.withOpacity(0.3),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Divider(thickness: 2.0),
                    ),

                    // Pitch
                    Column(
                      children: [
                        _subHeader(
                          context,
                          "assets/icons/pitch.svg",
                          FlutterI18n.translate(context, "session_result.pitch"),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0, top: 16.0),
                            child: LineChart(
                              LineChartData(
                                gridData: const FlGridData(show: true),
                                titlesData: FlTitlesData(
                                  topTitles: const AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 22,
                                      getTitlesWidget: (value, meta) {
                                        return Text(
                                          '${(value).toInt()}s',
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  rightTitles: const AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 36,
                                      getTitlesWidget: (value, meta) {
                                        return Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            value.toInt().toString(),
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                borderData: FlBorderData(
                                  show: true,
                                  border: Border.all(
                                    color: Theme.of(context).colorScheme.outline,
                                    width: 1,
                                  ),
                                ),
                                minX: 0,
                                maxX:
                                    pitchSpots.isEmpty
                                        ? 0
                                        : pitchSpots
                                            .map((spot) => spot.x)
                                            .reduce((a, b) => a > b ? a : b),
                                minY:
                                    pitchSpots.isEmpty
                                        ? 0
                                        : pitchSpots
                                                .map((spot) => spot.y)
                                                .reduce((a, b) => a < b ? a : b) -
                                            20,
                                maxY:
                                    pitchSpots.isEmpty
                                        ? 100
                                        : pitchSpots
                                                .map((spot) => spot.y)
                                                .reduce((a, b) => a > b ? a : b) +
                                            20,
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: pitchSpots,
                                    isCurved: true,
                                    color: Theme.of(context).colorScheme.primary,
                                    barWidth: 3,
                                    dotData: const FlDotData(show: false),
                                    belowBarData: BarAreaData(
                                      show: true,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.secondary.withOpacity(0.3),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
              Bottomsheet(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: BlocProvider(
                    create:
                        (context) =>
                            SummaryCubit(summaryRepository: SummaryRepository())
                              ..generateSessionFeedback(session),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          FlutterI18n.translate(context, "session_result.summary"),
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 16),
                        BlocBuilder<SummaryCubit, SummaryState>(
                          builder: (context, state) {
                            return state.when(
                              initial: () => const SizedBox(),
                              loading:
                                  () => const Center(child: CircularProgressIndicator()),
                              success: (summary) {
                                return MarkdownBody(
                                  data: summary.part1,
                                  styleSheet: MarkdownStyleSheet(
                                    h2: Theme.of(context).textTheme.titleLarge!.copyWith(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                    strong: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                );
                              },
                              error: (message) {
                                return Text(
                                  message,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(height: 48),
                        isHistory != null && isHistory!
                            ? BlocBuilder<SummaryCubit, SummaryState>(
                              builder: (context, state) {
                                return SizedBox(
                                  width: double.infinity,
                                  child: Button(
                                    text: FlutterI18n.translate(
                                      context,
                                      "session_result.button",
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return SuggestedLearningPathPage(
                                              speechAnalysisFeedback:
                                                  SpeechAnalysisFeedback(
                                                    wordsPerMinute:
                                                        session
                                                            .calculateOverallWPM()
                                                            .toInt(),
                                                    isMonotone:
                                                        session
                                                                .pitchResult
                                                                .pitchAnalysis
                                                                .isMonotone
                                                            ? true
                                                            : false,
                                                    silentRatio:
                                                        session.pitchResult.silentRatio,
                                                    mostCommonWords:
                                                        session.mostCommonWords,
                                                    fillerWords:
                                                        session.filler.chunks.length,
                                                    formalityScore:
                                                        session.formality.formalityScore
                                                            .toInt(),
                                                    grammarMistakes:
                                                        session.grammarMistakes,
                                                    transcript: session.transcript,
                                                  ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _audioPlayerProvider(String filepath) {
    return SizedBox(
      width: double.infinity,
      child: BlocProvider(
        create: (context) => PlayerCubit()..initPlayer(filePath: filepath),
        child: BlocBuilder<PlayerCubit, PlayerState>(
          builder: (context, state) {
            return state.when(
              initial: (isInitialized) {
                return _audioPlayer(context, isPlaying: false, playerController: null);
              },
              playing: (isPlaying, playerController) {
                return _audioPlayer(
                  context,
                  isPlaying: isPlaying,
                  playerController: playerController,
                );
              },
              stopped: (playerController) {
                return _audioPlayer(
                  context,
                  isPlaying: false,
                  playerController: playerController,
                );
              },
              error: (message) {
                return const SizedBox();
              },
            );
          },
        ),
      ),
    );
  }

  Widget _audioPlayer(
    BuildContext context, {
    required audio_waveforms.PlayerController? playerController,
    required bool isPlaying,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child:
              playerController != null
                  ? audio_waveforms.AudioFileWaveforms(
                    size: Size(MediaQuery.of(context).size.width - 48, 100),
                    playerController: playerController,
                    enableSeekGesture: true,
                    onDragEnd: (p0) {
                      // Calculate position relative to waveform width
                      final width =
                          MediaQuery.of(context).size.width - 48; // Width of waveform
                      final dragPosition = p0.globalPosition.dx;
                      final dragPercentage = dragPosition / width;

                      // Calculate the position in milliseconds based on total duration
                      final seekPosition =
                          (dragPercentage * playerController.maxDuration).toInt();

                      // Ensure position is within valid range
                      final clampedPosition = seekPosition.clamp(
                        0,
                        playerController.maxDuration,
                      );

                      // Seek to the calculated position
                      context.read<PlayerCubit>().seekTo(clampedPosition);
                    },
                    playerWaveStyle: audio_waveforms.PlayerWaveStyle(
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
        const SizedBox(height: 24),
        Column(
          children: [
            playerController != null
                ? StreamBuilder(
                  stream: playerController.onCurrentDurationChanged,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final duration = snapshot.data!;
                      return Text(
                        '${formatDuration(duration)} / ${formatDuration(playerController.maxDuration)}',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                )
                : Text(
                  '00:00 / 03:00',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
            const SizedBox(height: 16),
            MiniFAB(
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
      ],
    );
  }

  Widget _transcriptSection(String transcript, BuildContext context) {
    return Column(
      children: [
        _subHeader(
          context,
          "assets/icons/transcript.svg",
          FlutterI18n.translate(context, "session_result.transcription"),
        ),
        const SizedBox(height: 16),
        Text(transcript, style: Theme.of(context).textTheme.bodyMedium!),
      ],
    );
  }

  Widget _subHeader(BuildContext context, String iconPath, String title) {
    return Row(
      children: [
        SvgPicture.asset(iconPath, width: 36, height: 36),
        const SizedBox(width: 8),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w600,
            color: const Color(0xFF0040C1),
          ),
        ),
      ],
    );
  }
}

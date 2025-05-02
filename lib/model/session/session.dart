// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String timestamp,
    required String exerciseID,
    required String audioURL,
    required FillerResult filler,
    required GrammarResult grammar,
    required PitchResult pitchResult,
    required FormalityResult formality,
    required String transcript,
    @Default([]) List<TranscriptionEntry> transcription,
    @Default([]) List<int> wpmHistory,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);
}

extension SessionWPMCalculator on Session {
  /// Calculates WPM data points from filler chunks
  /// Returns a list of FlSpot-compatible points (x: timestamp, y: WPM value)
  List<Map<String, double>> calculateWPMSpots() {
    if (filler.chunks.isEmpty) return [];

    final List<Map<String, double>> result = [];

    // Group words by their start time (rounded to nearest second)
    final Map<int, int> wordCountBySecond = {};

    for (final chunk in filler.chunks) {
      if (chunk.timestamp.length >= 2) {
        final startTime = chunk.timestamp[0];
        final secondKey = startTime.round();

        // Count words in this chunk (simple estimate: split by spaces)
        final wordCount = chunk.text.split(' ').length;

        // Add to the appropriate second bucket
        wordCountBySecond[secondKey] = (wordCountBySecond[secondKey] ?? 0) + wordCount;
      }
    }

    // Convert word counts to WPM
    for (final entry in wordCountBySecond.entries) {
      // WPM = words × (60 / time measured in seconds)
      // For a 1-second window, WPM = words × 60
      final wpm = entry.value * 60;
      result.add({'x': entry.key.toDouble(), 'y': wpm.toDouble()});
    }

    // Sort by timestamp
    result.sort((a, b) => a['x']!.compareTo(b['x']!));

    return result;
  }

  //Calculate overall WPM
  double calculateOverallWPM() {
    if (wpmHistory.isEmpty) return 0.0;

    // Calculate the average WPM from the history
    final totalWPM = wpmHistory.reduce((a, b) => a + b);
    return totalWPM / wpmHistory.length;
  }
}

extension CommonWords on Session {
  /// Returns a list of the most common words in the transcript field
  List<String> get mostCommonWords {
    final words = transcript.split(RegExp(r'\s+'));

    return words
        .fold<Map<String, int>>({}, (acc, word) {
          final cleanedWord = word.toLowerCase().replaceAll(RegExp(r'[^\w]'), '');
          if (cleanedWord.isNotEmpty) {
            acc[cleanedWord] = (acc[cleanedWord] ?? 0) + 1;
          }
          return acc;
        })
        .entries
        .where((entry) => entry.value > 1)
        .map((entry) => entry.key)
        .toList();
  }

  List<Map<String, int>> get mostCommonWordsWithCount {
    final words = transcript.split(RegExp(r'\s+'));

    return words
        .fold<Map<String, int>>({}, (acc, word) {
          final cleanedWord = word.toLowerCase().replaceAll(RegExp(r'[^\w]'), '');
          if (cleanedWord.isNotEmpty) {
            acc[cleanedWord] = (acc[cleanedWord] ?? 0) + 1;
          }
          return acc;
        })
        .entries
        .where((entry) => entry.value > 1)
        .map((entry) => <String, int>{entry.key: entry.value})
        .toList();
  }
}

extension GrammarMistakes on Session {
  List<String> get grammarMistakes {
    // Assuming grammar.sentencePairs contains the mistakes, find the differences, and slice it (word)
    return grammar.sentencePairs
        .map(
          (pair) =>
              pair.original
                  .split(' ')
                  .where((word) => !pair.corrected.contains(word))
                  .toList(),
        )
        .expand((words) => words)
        .toList();
  }
}

@freezed
class FillerResult with _$FillerResult {
  const factory FillerResult({required List<FillerChunk> chunks}) = _FillerResult;

  factory FillerResult.fromJson(Map<String, dynamic> json) =>
      _$FillerResultFromJson(json);
}

@freezed
class FillerChunk with _$FillerChunk {
  const factory FillerChunk({required String text, required List<double> timestamp}) =
      _FillerChunk;

  factory FillerChunk.fromJson(Map<String, dynamic> json) => _$FillerChunkFromJson(json);
}

@freezed
class GrammarResult with _$GrammarResult {
  const factory GrammarResult({
    @JsonKey(name: 'sentence_pairs') required List<SentencePair> sentencePairs,
    required GrammarStats stats,
  }) = _GrammarResult;

  factory GrammarResult.fromJson(Map<String, dynamic> json) =>
      _$GrammarResultFromJson(json);
}

@freezed
class SentencePair with _$SentencePair {
  const factory SentencePair({
    required String corrected,
    required int distance,
    required String original,
  }) = _SentencePair;

  factory SentencePair.fromJson(Map<String, dynamic> json) =>
      _$SentencePairFromJson(json);
}

@freezed
class GrammarStats with _$GrammarStats {
  const factory GrammarStats({
    @JsonKey(name: 'average_distance') required double averageDistance,
    @JsonKey(name: 'sentences_corrected') required int sentencesCorrected,
    @JsonKey(name: 'total_sentences') required int totalSentences,
  }) = _GrammarStats;

  factory GrammarStats.fromJson(Map<String, dynamic> json) =>
      _$GrammarStatsFromJson(json);
}

@freezed
class PitchResult with _$PitchResult {
  const factory PitchResult({
    required PitchAnalysis pitchAnalysis,
    required List<PitchEntry> pitchFluctuation,
    required double silentRatio,
  }) = _PitchResult;

  factory PitchResult.fromJson(Map<String, dynamic> json) => _$PitchResultFromJson(json);
}

@freezed
class PitchAnalysis with _$PitchAnalysis {
  const factory PitchAnalysis({
    @JsonKey(name: 'fluctuation_score') required double fluctuationScore,
    @JsonKey(name: 'is_monotone') required bool isMonotone,
    @JsonKey(name: 'pitch_range') required double pitchRange,
  }) = _PitchAnalysis;

  factory PitchAnalysis.fromJson(Map<String, dynamic> json) =>
      _$PitchAnalysisFromJson(json);
}

@freezed
class PitchEntry with _$PitchEntry {
  const factory PitchEntry({required double pitch, required double timestamp}) =
      _PitchEntry;

  factory PitchEntry.fromJson(Map<String, dynamic> json) => _$PitchEntryFromJson(json);
}

@freezed
class FormalityResult with _$FormalityResult {
  const factory FormalityResult({
    @JsonKey(name: 'formality_score') required double formalityScore,
    @JsonKey(name: 'formal_percent') required int formalPercent,
    @JsonKey(name: 'informal_percent') required int informalPercent,
    required String classification,
  }) = _FormalityResult;

  factory FormalityResult.fromJson(Map<String, dynamic> json) =>
      _$FormalityResultFromJson(json);
}

@freezed
class SuccessResponse with _$SuccessResponse {
  const factory SuccessResponse({required String message}) = _SuccessResponse;

  factory SuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessResponseFromJson(json);
}

@freezed
class TranscriptionEntry with _$TranscriptionEntry {
  const factory TranscriptionEntry({required String word, required double timestamp}) =
      _TranscriptionEntry;

  factory TranscriptionEntry.fromJson(Map<String, dynamic> json) =>
      _$TranscriptionEntryFromJson(json);
}

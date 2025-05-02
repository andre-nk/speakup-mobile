import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_summary.freezed.dart';
part 'session_summary.g.dart';

@freezed
class Struggles with _$Struggles {
  const factory Struggles({
    required String issue1,
    required String issue2,
    required String issue3,
  }) = _Struggles;

  factory Struggles.fromJson(Map<String, dynamic> json) => _$StrugglesFromJson(json);
}

@freezed
class SpeechFeedback with _$SpeechFeedback {
  const factory SpeechFeedback({
    required String part1,
    required Struggles part2,
  }) = _SpeechFeedback;

  factory SpeechFeedback.fromJson(Map<String, dynamic> json) => _$SpeechFeedbackFromJson(json);
}

@freezed
class SpeechAnalysisFeedback with _$SpeechAnalysisFeedback {
  const factory SpeechAnalysisFeedback({
    required int wordsPerMinute,
    required bool isMonotone,
    required double silentRatio,
    required List<String> mostCommonWords,
    required int fillerWords,
    required int formalityScore,
    required List<String> grammarMistakes,
    required String transcript,
  }) = _SpeechAnalysisFeedback;

  factory SpeechAnalysisFeedback.fromJson(Map<String, dynamic> json) => 
      _$SpeechAnalysisFeedbackFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_summary.freezed.dart';
part 'session_summary.g.dart';

class Struggles {
  final String? speakingRate;
  final String? speakingRateId;
  final String? speakingRateTitle;
  final String? vocalVariation;
  final String? vocalVariationId;
  final String? vocalVariationTitle;
  final String? silentRatio;
  final String? wordTheme;
  final String? wordThemeId;
  final String? wordThemeTitle;
  final String? fillerWords;
  final String? fillerWordsId;
  final String? fillerWordsTitle;
  final String? formalityScore;
  final String? formalityScoreId;
  final String? formalityScoreTitle;
  final String? grammarMistakes;
  final String? grammarMistakesId;
  final String? grammarMistakesTitle;
  final String? goalAlignment;

  Struggles({
    this.speakingRate,
    this.speakingRateId = '325c5505-fead-478d-b732-54f7a8685e9e',
    this.speakingRateTitle = 'WPM',
    this.vocalVariation,
    this.vocalVariationId = '72b207c7-e476-4fe0-a64e-c7c69aa685f3',
    this.vocalVariationTitle = 'Pitch Fluctuation',
    this.silentRatio,
    this.wordTheme,
    this.wordThemeId = 'd2be0b48-a567-42cb-b4d2-350543202209',
    this.wordThemeTitle = 'Common Words',
    this.fillerWords,
    this.fillerWordsId = '39337dce-6eb5-424b-a9d0-4020909a663b',
    this.fillerWordsTitle = 'Speech Fluency',
    this.formalityScore,
    this.formalityScoreId = '25a44f07-9330-44d1-847d-c9d35cb9b998',
    this.formalityScoreTitle = 'Formality',
    this.grammarMistakes,
    this.grammarMistakesId = '1ff8d974-46fd-4edc-84d2-f1cc85bd6948',
    this.grammarMistakesTitle = 'Grammar',
    this.goalAlignment,
  });

  Map<String, dynamic> toJson() => {
    'speakingRate': speakingRate,
    'speakingRateId': speakingRateId,
    'speakingRateTitle': speakingRateTitle,
    'vocalVariation': vocalVariation,
    'vocalVariationId': vocalVariationId,
    'vocalVariationTitle': vocalVariationTitle,
    'silentRatio': silentRatio,
    'wordTheme': wordTheme,
    'wordThemeId': wordThemeId,
    'wordThemeTitle': wordThemeTitle,
    'fillerWords': fillerWords,
    'fillerWordsId': fillerWordsId,
    'fillerWordsTitle': fillerWordsTitle,
    'formalityScore': formalityScore,
    'formalityScoreId': formalityScoreId,
    'formalityScoreTitle': formalityScoreTitle,
    'grammarMistakes': grammarMistakes,
    'grammarMistakesId': grammarMistakesId,
    'grammarMistakesTitle': grammarMistakesTitle,
    'goalAlignment': goalAlignment,
  };
}

@freezed
class SpeechFeedback with _$SpeechFeedback {
  const factory SpeechFeedback({
    required String part1,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: _strugglesFromJson, toJson: _strugglesToJson)
    required Struggles part2,
  }) = _SpeechFeedback;

  factory SpeechFeedback.fromJson(Map<String, dynamic> json) => _$SpeechFeedbackFromJson(json);
}

// Helper functions for Struggles JSON conversion
Struggles _strugglesFromJson(Map<String, dynamic> json) {
  return Struggles(
    speakingRate: json['speakingRate'],
    speakingRateId: json['speakingRateId'],
    speakingRateTitle: json['speakingRateTitle'],
    vocalVariation: json['vocalVariation'],
    vocalVariationId: json['vocalVariationId'],
    vocalVariationTitle: json['vocalVariationTitle'],
    silentRatio: json['silentRatio'],
    wordTheme: json['wordTheme'],
    wordThemeId: json['wordThemeId'],
    wordThemeTitle: json['wordThemeTitle'],
    fillerWords: json['fillerWords'],
    fillerWordsId: json['fillerWordsId'],
    fillerWordsTitle: json['fillerWordsTitle'],
    formalityScore: json['formalityScore'],
    formalityScoreId: json['formalityScoreId'],
    formalityScoreTitle: json['formalityScoreTitle'],
    grammarMistakes: json['grammarMistakes'],
    grammarMistakesId: json['grammarMistakesId'],
    grammarMistakesTitle: json['grammarMistakesTitle'],
    goalAlignment: json['goalAlignment'],
  );
}

Map<String, dynamic> _strugglesToJson(Struggles struggles) => struggles.toJson();

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
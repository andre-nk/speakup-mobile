// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeechFeedbackImpl _$$SpeechFeedbackImplFromJson(Map<String, dynamic> json) =>
    _$SpeechFeedbackImpl(
      part1: json['part1'] as String,
      part2: _strugglesFromJson(json['part2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpeechFeedbackImplToJson(
  _$SpeechFeedbackImpl instance,
) => <String, dynamic>{
  'part1': instance.part1,
  'part2': _strugglesToJson(instance.part2),
};

_$SpeechAnalysisFeedbackImpl _$$SpeechAnalysisFeedbackImplFromJson(
  Map<String, dynamic> json,
) => _$SpeechAnalysisFeedbackImpl(
  wordsPerMinute: (json['wordsPerMinute'] as num).toInt(),
  isMonotone: json['isMonotone'] as bool,
  silentRatio: (json['silentRatio'] as num).toDouble(),
  mostCommonWords:
      (json['mostCommonWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  fillerWords: (json['fillerWords'] as num).toInt(),
  formalityScore: (json['formalityScore'] as num).toInt(),
  grammarMistakes:
      (json['grammarMistakes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  transcript: json['transcript'] as String,
);

Map<String, dynamic> _$$SpeechAnalysisFeedbackImplToJson(
  _$SpeechAnalysisFeedbackImpl instance,
) => <String, dynamic>{
  'wordsPerMinute': instance.wordsPerMinute,
  'isMonotone': instance.isMonotone,
  'silentRatio': instance.silentRatio,
  'mostCommonWords': instance.mostCommonWords,
  'fillerWords': instance.fillerWords,
  'formalityScore': instance.formalityScore,
  'grammarMistakes': instance.grammarMistakes,
  'transcript': instance.transcript,
};

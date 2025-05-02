// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      id: json['id'] as String,
      timestamp: json['timestamp'] as String,
      exerciseID: json['exerciseID'] as String,
      audioURL: json['audioURL'] as String,
      filler: FillerResult.fromJson(json['filler'] as Map<String, dynamic>),
      grammar: GrammarResult.fromJson(json['grammar'] as Map<String, dynamic>),
      pitchResult: PitchResult.fromJson(
        json['pitchResult'] as Map<String, dynamic>,
      ),
      formality: FormalityResult.fromJson(
        json['formality'] as Map<String, dynamic>,
      ),
      transcript: json['transcript'] as String,
      transcription:
          (json['transcription'] as List<dynamic>?)
              ?.map(
                (e) => TranscriptionEntry.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      wpmHistory:
          (json['wpmHistory'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp,
      'exerciseID': instance.exerciseID,
      'audioURL': instance.audioURL,
      'filler': instance.filler,
      'grammar': instance.grammar,
      'pitchResult': instance.pitchResult,
      'formality': instance.formality,
      'transcript': instance.transcript,
      'transcription': instance.transcription,
      'wpmHistory': instance.wpmHistory,
    };

_$FillerResultImpl _$$FillerResultImplFromJson(Map<String, dynamic> json) =>
    _$FillerResultImpl(
      chunks:
          (json['chunks'] as List<dynamic>)
              .map((e) => FillerChunk.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$FillerResultImplToJson(_$FillerResultImpl instance) =>
    <String, dynamic>{'chunks': instance.chunks};

_$FillerChunkImpl _$$FillerChunkImplFromJson(Map<String, dynamic> json) =>
    _$FillerChunkImpl(
      text: json['text'] as String,
      timestamp:
          (json['timestamp'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
    );

Map<String, dynamic> _$$FillerChunkImplToJson(_$FillerChunkImpl instance) =>
    <String, dynamic>{'text': instance.text, 'timestamp': instance.timestamp};

_$GrammarResultImpl _$$GrammarResultImplFromJson(Map<String, dynamic> json) =>
    _$GrammarResultImpl(
      sentencePairs:
          (json['sentence_pairs'] as List<dynamic>)
              .map((e) => SentencePair.fromJson(e as Map<String, dynamic>))
              .toList(),
      stats: GrammarStats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GrammarResultImplToJson(_$GrammarResultImpl instance) =>
    <String, dynamic>{
      'sentence_pairs': instance.sentencePairs,
      'stats': instance.stats,
    };

_$SentencePairImpl _$$SentencePairImplFromJson(Map<String, dynamic> json) =>
    _$SentencePairImpl(
      corrected: json['corrected'] as String,
      distance: (json['distance'] as num).toInt(),
      original: json['original'] as String,
    );

Map<String, dynamic> _$$SentencePairImplToJson(_$SentencePairImpl instance) =>
    <String, dynamic>{
      'corrected': instance.corrected,
      'distance': instance.distance,
      'original': instance.original,
    };

_$GrammarStatsImpl _$$GrammarStatsImplFromJson(Map<String, dynamic> json) =>
    _$GrammarStatsImpl(
      averageDistance: (json['average_distance'] as num).toDouble(),
      sentencesCorrected: (json['sentences_corrected'] as num).toInt(),
      totalSentences: (json['total_sentences'] as num).toInt(),
    );

Map<String, dynamic> _$$GrammarStatsImplToJson(_$GrammarStatsImpl instance) =>
    <String, dynamic>{
      'average_distance': instance.averageDistance,
      'sentences_corrected': instance.sentencesCorrected,
      'total_sentences': instance.totalSentences,
    };

_$PitchResultImpl _$$PitchResultImplFromJson(Map<String, dynamic> json) =>
    _$PitchResultImpl(
      pitchAnalysis: PitchAnalysis.fromJson(
        json['pitchAnalysis'] as Map<String, dynamic>,
      ),
      pitchFluctuation:
          (json['pitchFluctuation'] as List<dynamic>)
              .map((e) => PitchEntry.fromJson(e as Map<String, dynamic>))
              .toList(),
      silentRatio: (json['silentRatio'] as num).toDouble(),
    );

Map<String, dynamic> _$$PitchResultImplToJson(_$PitchResultImpl instance) =>
    <String, dynamic>{
      'pitchAnalysis': instance.pitchAnalysis,
      'pitchFluctuation': instance.pitchFluctuation,
      'silentRatio': instance.silentRatio,
    };

_$PitchAnalysisImpl _$$PitchAnalysisImplFromJson(Map<String, dynamic> json) =>
    _$PitchAnalysisImpl(
      fluctuationScore: (json['fluctuation_score'] as num).toDouble(),
      isMonotone: json['is_monotone'] as bool,
      pitchRange: (json['pitch_range'] as num).toDouble(),
    );

Map<String, dynamic> _$$PitchAnalysisImplToJson(_$PitchAnalysisImpl instance) =>
    <String, dynamic>{
      'fluctuation_score': instance.fluctuationScore,
      'is_monotone': instance.isMonotone,
      'pitch_range': instance.pitchRange,
    };

_$PitchEntryImpl _$$PitchEntryImplFromJson(Map<String, dynamic> json) =>
    _$PitchEntryImpl(
      pitch: (json['pitch'] as num).toDouble(),
      timestamp: (json['timestamp'] as num).toDouble(),
    );

Map<String, dynamic> _$$PitchEntryImplToJson(_$PitchEntryImpl instance) =>
    <String, dynamic>{'pitch': instance.pitch, 'timestamp': instance.timestamp};

_$FormalityResultImpl _$$FormalityResultImplFromJson(
  Map<String, dynamic> json,
) => _$FormalityResultImpl(
  formalityScore: (json['formality_score'] as num).toDouble(),
  formalPercent: (json['formal_percent'] as num).toInt(),
  informalPercent: (json['informal_percent'] as num).toInt(),
  classification: json['classification'] as String,
);

Map<String, dynamic> _$$FormalityResultImplToJson(
  _$FormalityResultImpl instance,
) => <String, dynamic>{
  'formality_score': instance.formalityScore,
  'formal_percent': instance.formalPercent,
  'informal_percent': instance.informalPercent,
  'classification': instance.classification,
};

_$SuccessResponseImpl _$$SuccessResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SuccessResponseImpl(message: json['message'] as String);

Map<String, dynamic> _$$SuccessResponseImplToJson(
  _$SuccessResponseImpl instance,
) => <String, dynamic>{'message': instance.message};

_$TranscriptionEntryImpl _$$TranscriptionEntryImplFromJson(
  Map<String, dynamic> json,
) => _$TranscriptionEntryImpl(
  word: json['word'] as String,
  timestamp: (json['timestamp'] as num).toDouble(),
);

Map<String, dynamic> _$$TranscriptionEntryImplToJson(
  _$TranscriptionEntryImpl instance,
) => <String, dynamic>{'word': instance.word, 'timestamp': instance.timestamp};

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get exerciseID => throw _privateConstructorUsedError;
  String get audioURL => throw _privateConstructorUsedError;
  FillerResult get filler => throw _privateConstructorUsedError;
  GrammarResult get grammar => throw _privateConstructorUsedError;
  PitchResult get pitchResult => throw _privateConstructorUsedError;
  FormalityResult get formality => throw _privateConstructorUsedError;
  List<TranscriptionEntry> get transcription =>
      throw _privateConstructorUsedError;
  List<int> get wpmHistory => throw _privateConstructorUsedError;

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call({
    String id,
    String timestamp,
    String exerciseID,
    String audioURL,
    FillerResult filler,
    GrammarResult grammar,
    PitchResult pitchResult,
    FormalityResult formality,
    List<TranscriptionEntry> transcription,
    List<int> wpmHistory,
  });

  $FillerResultCopyWith<$Res> get filler;
  $GrammarResultCopyWith<$Res> get grammar;
  $PitchResultCopyWith<$Res> get pitchResult;
  $FormalityResultCopyWith<$Res> get formality;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? exerciseID = null,
    Object? audioURL = null,
    Object? filler = null,
    Object? grammar = null,
    Object? pitchResult = null,
    Object? formality = null,
    Object? transcription = null,
    Object? wpmHistory = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as String,
            exerciseID:
                null == exerciseID
                    ? _value.exerciseID
                    : exerciseID // ignore: cast_nullable_to_non_nullable
                        as String,
            audioURL:
                null == audioURL
                    ? _value.audioURL
                    : audioURL // ignore: cast_nullable_to_non_nullable
                        as String,
            filler:
                null == filler
                    ? _value.filler
                    : filler // ignore: cast_nullable_to_non_nullable
                        as FillerResult,
            grammar:
                null == grammar
                    ? _value.grammar
                    : grammar // ignore: cast_nullable_to_non_nullable
                        as GrammarResult,
            pitchResult:
                null == pitchResult
                    ? _value.pitchResult
                    : pitchResult // ignore: cast_nullable_to_non_nullable
                        as PitchResult,
            formality:
                null == formality
                    ? _value.formality
                    : formality // ignore: cast_nullable_to_non_nullable
                        as FormalityResult,
            transcription:
                null == transcription
                    ? _value.transcription
                    : transcription // ignore: cast_nullable_to_non_nullable
                        as List<TranscriptionEntry>,
            wpmHistory:
                null == wpmHistory
                    ? _value.wpmHistory
                    : wpmHistory // ignore: cast_nullable_to_non_nullable
                        as List<int>,
          )
          as $Val,
    );
  }

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FillerResultCopyWith<$Res> get filler {
    return $FillerResultCopyWith<$Res>(_value.filler, (value) {
      return _then(_value.copyWith(filler: value) as $Val);
    });
  }

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GrammarResultCopyWith<$Res> get grammar {
    return $GrammarResultCopyWith<$Res>(_value.grammar, (value) {
      return _then(_value.copyWith(grammar: value) as $Val);
    });
  }

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PitchResultCopyWith<$Res> get pitchResult {
    return $PitchResultCopyWith<$Res>(_value.pitchResult, (value) {
      return _then(_value.copyWith(pitchResult: value) as $Val);
    });
  }

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormalityResultCopyWith<$Res> get formality {
    return $FormalityResultCopyWith<$Res>(_value.formality, (value) {
      return _then(_value.copyWith(formality: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
    _$SessionImpl value,
    $Res Function(_$SessionImpl) then,
  ) = __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String timestamp,
    String exerciseID,
    String audioURL,
    FillerResult filler,
    GrammarResult grammar,
    PitchResult pitchResult,
    FormalityResult formality,
    List<TranscriptionEntry> transcription,
    List<int> wpmHistory,
  });

  @override
  $FillerResultCopyWith<$Res> get filler;
  @override
  $GrammarResultCopyWith<$Res> get grammar;
  @override
  $PitchResultCopyWith<$Res> get pitchResult;
  @override
  $FormalityResultCopyWith<$Res> get formality;
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
    _$SessionImpl _value,
    $Res Function(_$SessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? exerciseID = null,
    Object? audioURL = null,
    Object? filler = null,
    Object? grammar = null,
    Object? pitchResult = null,
    Object? formality = null,
    Object? transcription = null,
    Object? wpmHistory = null,
  }) {
    return _then(
      _$SessionImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as String,
        exerciseID:
            null == exerciseID
                ? _value.exerciseID
                : exerciseID // ignore: cast_nullable_to_non_nullable
                    as String,
        audioURL:
            null == audioURL
                ? _value.audioURL
                : audioURL // ignore: cast_nullable_to_non_nullable
                    as String,
        filler:
            null == filler
                ? _value.filler
                : filler // ignore: cast_nullable_to_non_nullable
                    as FillerResult,
        grammar:
            null == grammar
                ? _value.grammar
                : grammar // ignore: cast_nullable_to_non_nullable
                    as GrammarResult,
        pitchResult:
            null == pitchResult
                ? _value.pitchResult
                : pitchResult // ignore: cast_nullable_to_non_nullable
                    as PitchResult,
        formality:
            null == formality
                ? _value.formality
                : formality // ignore: cast_nullable_to_non_nullable
                    as FormalityResult,
        transcription:
            null == transcription
                ? _value._transcription
                : transcription // ignore: cast_nullable_to_non_nullable
                    as List<TranscriptionEntry>,
        wpmHistory:
            null == wpmHistory
                ? _value._wpmHistory
                : wpmHistory // ignore: cast_nullable_to_non_nullable
                    as List<int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionImpl implements _Session {
  const _$SessionImpl({
    required this.id,
    required this.timestamp,
    required this.exerciseID,
    required this.audioURL,
    required this.filler,
    required this.grammar,
    required this.pitchResult,
    required this.formality,
    final List<TranscriptionEntry> transcription = const [],
    final List<int> wpmHistory = const [],
  }) : _transcription = transcription,
       _wpmHistory = wpmHistory;

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

  @override
  final String id;
  @override
  final String timestamp;
  @override
  final String exerciseID;
  @override
  final String audioURL;
  @override
  final FillerResult filler;
  @override
  final GrammarResult grammar;
  @override
  final PitchResult pitchResult;
  @override
  final FormalityResult formality;
  final List<TranscriptionEntry> _transcription;
  @override
  @JsonKey()
  List<TranscriptionEntry> get transcription {
    if (_transcription is EqualUnmodifiableListView) return _transcription;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transcription);
  }

  final List<int> _wpmHistory;
  @override
  @JsonKey()
  List<int> get wpmHistory {
    if (_wpmHistory is EqualUnmodifiableListView) return _wpmHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wpmHistory);
  }

  @override
  String toString() {
    return 'Session(id: $id, timestamp: $timestamp, exerciseID: $exerciseID, audioURL: $audioURL, filler: $filler, grammar: $grammar, pitchResult: $pitchResult, formality: $formality, transcription: $transcription, wpmHistory: $wpmHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.exerciseID, exerciseID) ||
                other.exerciseID == exerciseID) &&
            (identical(other.audioURL, audioURL) ||
                other.audioURL == audioURL) &&
            (identical(other.filler, filler) || other.filler == filler) &&
            (identical(other.grammar, grammar) || other.grammar == grammar) &&
            (identical(other.pitchResult, pitchResult) ||
                other.pitchResult == pitchResult) &&
            (identical(other.formality, formality) ||
                other.formality == formality) &&
            const DeepCollectionEquality().equals(
              other._transcription,
              _transcription,
            ) &&
            const DeepCollectionEquality().equals(
              other._wpmHistory,
              _wpmHistory,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    timestamp,
    exerciseID,
    audioURL,
    filler,
    grammar,
    pitchResult,
    formality,
    const DeepCollectionEquality().hash(_transcription),
    const DeepCollectionEquality().hash(_wpmHistory),
  );

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(this);
  }
}

abstract class _Session implements Session {
  const factory _Session({
    required final String id,
    required final String timestamp,
    required final String exerciseID,
    required final String audioURL,
    required final FillerResult filler,
    required final GrammarResult grammar,
    required final PitchResult pitchResult,
    required final FormalityResult formality,
    final List<TranscriptionEntry> transcription,
    final List<int> wpmHistory,
  }) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  String get id;
  @override
  String get timestamp;
  @override
  String get exerciseID;
  @override
  String get audioURL;
  @override
  FillerResult get filler;
  @override
  GrammarResult get grammar;
  @override
  PitchResult get pitchResult;
  @override
  FormalityResult get formality;
  @override
  List<TranscriptionEntry> get transcription;
  @override
  List<int> get wpmHistory;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FillerResult _$FillerResultFromJson(Map<String, dynamic> json) {
  return _FillerResult.fromJson(json);
}

/// @nodoc
mixin _$FillerResult {
  List<FillerChunk> get chunks => throw _privateConstructorUsedError;

  /// Serializes this FillerResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FillerResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FillerResultCopyWith<FillerResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillerResultCopyWith<$Res> {
  factory $FillerResultCopyWith(
    FillerResult value,
    $Res Function(FillerResult) then,
  ) = _$FillerResultCopyWithImpl<$Res, FillerResult>;
  @useResult
  $Res call({List<FillerChunk> chunks});
}

/// @nodoc
class _$FillerResultCopyWithImpl<$Res, $Val extends FillerResult>
    implements $FillerResultCopyWith<$Res> {
  _$FillerResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FillerResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chunks = null}) {
    return _then(
      _value.copyWith(
            chunks:
                null == chunks
                    ? _value.chunks
                    : chunks // ignore: cast_nullable_to_non_nullable
                        as List<FillerChunk>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FillerResultImplCopyWith<$Res>
    implements $FillerResultCopyWith<$Res> {
  factory _$$FillerResultImplCopyWith(
    _$FillerResultImpl value,
    $Res Function(_$FillerResultImpl) then,
  ) = __$$FillerResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FillerChunk> chunks});
}

/// @nodoc
class __$$FillerResultImplCopyWithImpl<$Res>
    extends _$FillerResultCopyWithImpl<$Res, _$FillerResultImpl>
    implements _$$FillerResultImplCopyWith<$Res> {
  __$$FillerResultImplCopyWithImpl(
    _$FillerResultImpl _value,
    $Res Function(_$FillerResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FillerResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chunks = null}) {
    return _then(
      _$FillerResultImpl(
        chunks:
            null == chunks
                ? _value._chunks
                : chunks // ignore: cast_nullable_to_non_nullable
                    as List<FillerChunk>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FillerResultImpl implements _FillerResult {
  const _$FillerResultImpl({required final List<FillerChunk> chunks})
    : _chunks = chunks;

  factory _$FillerResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FillerResultImplFromJson(json);

  final List<FillerChunk> _chunks;
  @override
  List<FillerChunk> get chunks {
    if (_chunks is EqualUnmodifiableListView) return _chunks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chunks);
  }

  @override
  String toString() {
    return 'FillerResult(chunks: $chunks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FillerResultImpl &&
            const DeepCollectionEquality().equals(other._chunks, _chunks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chunks));

  /// Create a copy of FillerResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FillerResultImplCopyWith<_$FillerResultImpl> get copyWith =>
      __$$FillerResultImplCopyWithImpl<_$FillerResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FillerResultImplToJson(this);
  }
}

abstract class _FillerResult implements FillerResult {
  const factory _FillerResult({required final List<FillerChunk> chunks}) =
      _$FillerResultImpl;

  factory _FillerResult.fromJson(Map<String, dynamic> json) =
      _$FillerResultImpl.fromJson;

  @override
  List<FillerChunk> get chunks;

  /// Create a copy of FillerResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FillerResultImplCopyWith<_$FillerResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FillerChunk _$FillerChunkFromJson(Map<String, dynamic> json) {
  return _FillerChunk.fromJson(json);
}

/// @nodoc
mixin _$FillerChunk {
  String get text => throw _privateConstructorUsedError;
  List<double> get timestamp => throw _privateConstructorUsedError;

  /// Serializes this FillerChunk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FillerChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FillerChunkCopyWith<FillerChunk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillerChunkCopyWith<$Res> {
  factory $FillerChunkCopyWith(
    FillerChunk value,
    $Res Function(FillerChunk) then,
  ) = _$FillerChunkCopyWithImpl<$Res, FillerChunk>;
  @useResult
  $Res call({String text, List<double> timestamp});
}

/// @nodoc
class _$FillerChunkCopyWithImpl<$Res, $Val extends FillerChunk>
    implements $FillerChunkCopyWith<$Res> {
  _$FillerChunkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FillerChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? timestamp = null}) {
    return _then(
      _value.copyWith(
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as List<double>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FillerChunkImplCopyWith<$Res>
    implements $FillerChunkCopyWith<$Res> {
  factory _$$FillerChunkImplCopyWith(
    _$FillerChunkImpl value,
    $Res Function(_$FillerChunkImpl) then,
  ) = __$$FillerChunkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, List<double> timestamp});
}

/// @nodoc
class __$$FillerChunkImplCopyWithImpl<$Res>
    extends _$FillerChunkCopyWithImpl<$Res, _$FillerChunkImpl>
    implements _$$FillerChunkImplCopyWith<$Res> {
  __$$FillerChunkImplCopyWithImpl(
    _$FillerChunkImpl _value,
    $Res Function(_$FillerChunkImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FillerChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? timestamp = null}) {
    return _then(
      _$FillerChunkImpl(
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
        timestamp:
            null == timestamp
                ? _value._timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as List<double>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FillerChunkImpl implements _FillerChunk {
  const _$FillerChunkImpl({
    required this.text,
    required final List<double> timestamp,
  }) : _timestamp = timestamp;

  factory _$FillerChunkImpl.fromJson(Map<String, dynamic> json) =>
      _$$FillerChunkImplFromJson(json);

  @override
  final String text;
  final List<double> _timestamp;
  @override
  List<double> get timestamp {
    if (_timestamp is EqualUnmodifiableListView) return _timestamp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timestamp);
  }

  @override
  String toString() {
    return 'FillerChunk(text: $text, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FillerChunkImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(
              other._timestamp,
              _timestamp,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    text,
    const DeepCollectionEquality().hash(_timestamp),
  );

  /// Create a copy of FillerChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FillerChunkImplCopyWith<_$FillerChunkImpl> get copyWith =>
      __$$FillerChunkImplCopyWithImpl<_$FillerChunkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FillerChunkImplToJson(this);
  }
}

abstract class _FillerChunk implements FillerChunk {
  const factory _FillerChunk({
    required final String text,
    required final List<double> timestamp,
  }) = _$FillerChunkImpl;

  factory _FillerChunk.fromJson(Map<String, dynamic> json) =
      _$FillerChunkImpl.fromJson;

  @override
  String get text;
  @override
  List<double> get timestamp;

  /// Create a copy of FillerChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FillerChunkImplCopyWith<_$FillerChunkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GrammarResult _$GrammarResultFromJson(Map<String, dynamic> json) {
  return _GrammarResult.fromJson(json);
}

/// @nodoc
mixin _$GrammarResult {
  @JsonKey(name: 'sentence_pairs')
  List<SentencePair> get sentencePairs => throw _privateConstructorUsedError;
  GrammarStats get stats => throw _privateConstructorUsedError;

  /// Serializes this GrammarResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrammarResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrammarResultCopyWith<GrammarResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrammarResultCopyWith<$Res> {
  factory $GrammarResultCopyWith(
    GrammarResult value,
    $Res Function(GrammarResult) then,
  ) = _$GrammarResultCopyWithImpl<$Res, GrammarResult>;
  @useResult
  $Res call({
    @JsonKey(name: 'sentence_pairs') List<SentencePair> sentencePairs,
    GrammarStats stats,
  });

  $GrammarStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$GrammarResultCopyWithImpl<$Res, $Val extends GrammarResult>
    implements $GrammarResultCopyWith<$Res> {
  _$GrammarResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrammarResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sentencePairs = null, Object? stats = null}) {
    return _then(
      _value.copyWith(
            sentencePairs:
                null == sentencePairs
                    ? _value.sentencePairs
                    : sentencePairs // ignore: cast_nullable_to_non_nullable
                        as List<SentencePair>,
            stats:
                null == stats
                    ? _value.stats
                    : stats // ignore: cast_nullable_to_non_nullable
                        as GrammarStats,
          )
          as $Val,
    );
  }

  /// Create a copy of GrammarResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GrammarStatsCopyWith<$Res> get stats {
    return $GrammarStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GrammarResultImplCopyWith<$Res>
    implements $GrammarResultCopyWith<$Res> {
  factory _$$GrammarResultImplCopyWith(
    _$GrammarResultImpl value,
    $Res Function(_$GrammarResultImpl) then,
  ) = __$$GrammarResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'sentence_pairs') List<SentencePair> sentencePairs,
    GrammarStats stats,
  });

  @override
  $GrammarStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$GrammarResultImplCopyWithImpl<$Res>
    extends _$GrammarResultCopyWithImpl<$Res, _$GrammarResultImpl>
    implements _$$GrammarResultImplCopyWith<$Res> {
  __$$GrammarResultImplCopyWithImpl(
    _$GrammarResultImpl _value,
    $Res Function(_$GrammarResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GrammarResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sentencePairs = null, Object? stats = null}) {
    return _then(
      _$GrammarResultImpl(
        sentencePairs:
            null == sentencePairs
                ? _value._sentencePairs
                : sentencePairs // ignore: cast_nullable_to_non_nullable
                    as List<SentencePair>,
        stats:
            null == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                    as GrammarStats,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GrammarResultImpl implements _GrammarResult {
  const _$GrammarResultImpl({
    @JsonKey(name: 'sentence_pairs')
    required final List<SentencePair> sentencePairs,
    required this.stats,
  }) : _sentencePairs = sentencePairs;

  factory _$GrammarResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrammarResultImplFromJson(json);

  final List<SentencePair> _sentencePairs;
  @override
  @JsonKey(name: 'sentence_pairs')
  List<SentencePair> get sentencePairs {
    if (_sentencePairs is EqualUnmodifiableListView) return _sentencePairs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentencePairs);
  }

  @override
  final GrammarStats stats;

  @override
  String toString() {
    return 'GrammarResult(sentencePairs: $sentencePairs, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrammarResultImpl &&
            const DeepCollectionEquality().equals(
              other._sentencePairs,
              _sentencePairs,
            ) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_sentencePairs),
    stats,
  );

  /// Create a copy of GrammarResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrammarResultImplCopyWith<_$GrammarResultImpl> get copyWith =>
      __$$GrammarResultImplCopyWithImpl<_$GrammarResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrammarResultImplToJson(this);
  }
}

abstract class _GrammarResult implements GrammarResult {
  const factory _GrammarResult({
    @JsonKey(name: 'sentence_pairs')
    required final List<SentencePair> sentencePairs,
    required final GrammarStats stats,
  }) = _$GrammarResultImpl;

  factory _GrammarResult.fromJson(Map<String, dynamic> json) =
      _$GrammarResultImpl.fromJson;

  @override
  @JsonKey(name: 'sentence_pairs')
  List<SentencePair> get sentencePairs;
  @override
  GrammarStats get stats;

  /// Create a copy of GrammarResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrammarResultImplCopyWith<_$GrammarResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentencePair _$SentencePairFromJson(Map<String, dynamic> json) {
  return _SentencePair.fromJson(json);
}

/// @nodoc
mixin _$SentencePair {
  String get corrected => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  String get original => throw _privateConstructorUsedError;

  /// Serializes this SentencePair to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentencePair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentencePairCopyWith<SentencePair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentencePairCopyWith<$Res> {
  factory $SentencePairCopyWith(
    SentencePair value,
    $Res Function(SentencePair) then,
  ) = _$SentencePairCopyWithImpl<$Res, SentencePair>;
  @useResult
  $Res call({String corrected, int distance, String original});
}

/// @nodoc
class _$SentencePairCopyWithImpl<$Res, $Val extends SentencePair>
    implements $SentencePairCopyWith<$Res> {
  _$SentencePairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentencePair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corrected = null,
    Object? distance = null,
    Object? original = null,
  }) {
    return _then(
      _value.copyWith(
            corrected:
                null == corrected
                    ? _value.corrected
                    : corrected // ignore: cast_nullable_to_non_nullable
                        as String,
            distance:
                null == distance
                    ? _value.distance
                    : distance // ignore: cast_nullable_to_non_nullable
                        as int,
            original:
                null == original
                    ? _value.original
                    : original // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SentencePairImplCopyWith<$Res>
    implements $SentencePairCopyWith<$Res> {
  factory _$$SentencePairImplCopyWith(
    _$SentencePairImpl value,
    $Res Function(_$SentencePairImpl) then,
  ) = __$$SentencePairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String corrected, int distance, String original});
}

/// @nodoc
class __$$SentencePairImplCopyWithImpl<$Res>
    extends _$SentencePairCopyWithImpl<$Res, _$SentencePairImpl>
    implements _$$SentencePairImplCopyWith<$Res> {
  __$$SentencePairImplCopyWithImpl(
    _$SentencePairImpl _value,
    $Res Function(_$SentencePairImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SentencePair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corrected = null,
    Object? distance = null,
    Object? original = null,
  }) {
    return _then(
      _$SentencePairImpl(
        corrected:
            null == corrected
                ? _value.corrected
                : corrected // ignore: cast_nullable_to_non_nullable
                    as String,
        distance:
            null == distance
                ? _value.distance
                : distance // ignore: cast_nullable_to_non_nullable
                    as int,
        original:
            null == original
                ? _value.original
                : original // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SentencePairImpl implements _SentencePair {
  const _$SentencePairImpl({
    required this.corrected,
    required this.distance,
    required this.original,
  });

  factory _$SentencePairImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentencePairImplFromJson(json);

  @override
  final String corrected;
  @override
  final int distance;
  @override
  final String original;

  @override
  String toString() {
    return 'SentencePair(corrected: $corrected, distance: $distance, original: $original)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentencePairImpl &&
            (identical(other.corrected, corrected) ||
                other.corrected == corrected) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, corrected, distance, original);

  /// Create a copy of SentencePair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentencePairImplCopyWith<_$SentencePairImpl> get copyWith =>
      __$$SentencePairImplCopyWithImpl<_$SentencePairImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentencePairImplToJson(this);
  }
}

abstract class _SentencePair implements SentencePair {
  const factory _SentencePair({
    required final String corrected,
    required final int distance,
    required final String original,
  }) = _$SentencePairImpl;

  factory _SentencePair.fromJson(Map<String, dynamic> json) =
      _$SentencePairImpl.fromJson;

  @override
  String get corrected;
  @override
  int get distance;
  @override
  String get original;

  /// Create a copy of SentencePair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentencePairImplCopyWith<_$SentencePairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GrammarStats _$GrammarStatsFromJson(Map<String, dynamic> json) {
  return _GrammarStats.fromJson(json);
}

/// @nodoc
mixin _$GrammarStats {
  @JsonKey(name: 'average_distance')
  double get averageDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentences_corrected')
  int get sentencesCorrected => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_sentences')
  int get totalSentences => throw _privateConstructorUsedError;

  /// Serializes this GrammarStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrammarStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrammarStatsCopyWith<GrammarStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrammarStatsCopyWith<$Res> {
  factory $GrammarStatsCopyWith(
    GrammarStats value,
    $Res Function(GrammarStats) then,
  ) = _$GrammarStatsCopyWithImpl<$Res, GrammarStats>;
  @useResult
  $Res call({
    @JsonKey(name: 'average_distance') double averageDistance,
    @JsonKey(name: 'sentences_corrected') int sentencesCorrected,
    @JsonKey(name: 'total_sentences') int totalSentences,
  });
}

/// @nodoc
class _$GrammarStatsCopyWithImpl<$Res, $Val extends GrammarStats>
    implements $GrammarStatsCopyWith<$Res> {
  _$GrammarStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrammarStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageDistance = null,
    Object? sentencesCorrected = null,
    Object? totalSentences = null,
  }) {
    return _then(
      _value.copyWith(
            averageDistance:
                null == averageDistance
                    ? _value.averageDistance
                    : averageDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            sentencesCorrected:
                null == sentencesCorrected
                    ? _value.sentencesCorrected
                    : sentencesCorrected // ignore: cast_nullable_to_non_nullable
                        as int,
            totalSentences:
                null == totalSentences
                    ? _value.totalSentences
                    : totalSentences // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GrammarStatsImplCopyWith<$Res>
    implements $GrammarStatsCopyWith<$Res> {
  factory _$$GrammarStatsImplCopyWith(
    _$GrammarStatsImpl value,
    $Res Function(_$GrammarStatsImpl) then,
  ) = __$$GrammarStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'average_distance') double averageDistance,
    @JsonKey(name: 'sentences_corrected') int sentencesCorrected,
    @JsonKey(name: 'total_sentences') int totalSentences,
  });
}

/// @nodoc
class __$$GrammarStatsImplCopyWithImpl<$Res>
    extends _$GrammarStatsCopyWithImpl<$Res, _$GrammarStatsImpl>
    implements _$$GrammarStatsImplCopyWith<$Res> {
  __$$GrammarStatsImplCopyWithImpl(
    _$GrammarStatsImpl _value,
    $Res Function(_$GrammarStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GrammarStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageDistance = null,
    Object? sentencesCorrected = null,
    Object? totalSentences = null,
  }) {
    return _then(
      _$GrammarStatsImpl(
        averageDistance:
            null == averageDistance
                ? _value.averageDistance
                : averageDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        sentencesCorrected:
            null == sentencesCorrected
                ? _value.sentencesCorrected
                : sentencesCorrected // ignore: cast_nullable_to_non_nullable
                    as int,
        totalSentences:
            null == totalSentences
                ? _value.totalSentences
                : totalSentences // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GrammarStatsImpl implements _GrammarStats {
  const _$GrammarStatsImpl({
    @JsonKey(name: 'average_distance') required this.averageDistance,
    @JsonKey(name: 'sentences_corrected') required this.sentencesCorrected,
    @JsonKey(name: 'total_sentences') required this.totalSentences,
  });

  factory _$GrammarStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrammarStatsImplFromJson(json);

  @override
  @JsonKey(name: 'average_distance')
  final double averageDistance;
  @override
  @JsonKey(name: 'sentences_corrected')
  final int sentencesCorrected;
  @override
  @JsonKey(name: 'total_sentences')
  final int totalSentences;

  @override
  String toString() {
    return 'GrammarStats(averageDistance: $averageDistance, sentencesCorrected: $sentencesCorrected, totalSentences: $totalSentences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrammarStatsImpl &&
            (identical(other.averageDistance, averageDistance) ||
                other.averageDistance == averageDistance) &&
            (identical(other.sentencesCorrected, sentencesCorrected) ||
                other.sentencesCorrected == sentencesCorrected) &&
            (identical(other.totalSentences, totalSentences) ||
                other.totalSentences == totalSentences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    averageDistance,
    sentencesCorrected,
    totalSentences,
  );

  /// Create a copy of GrammarStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrammarStatsImplCopyWith<_$GrammarStatsImpl> get copyWith =>
      __$$GrammarStatsImplCopyWithImpl<_$GrammarStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrammarStatsImplToJson(this);
  }
}

abstract class _GrammarStats implements GrammarStats {
  const factory _GrammarStats({
    @JsonKey(name: 'average_distance') required final double averageDistance,
    @JsonKey(name: 'sentences_corrected') required final int sentencesCorrected,
    @JsonKey(name: 'total_sentences') required final int totalSentences,
  }) = _$GrammarStatsImpl;

  factory _GrammarStats.fromJson(Map<String, dynamic> json) =
      _$GrammarStatsImpl.fromJson;

  @override
  @JsonKey(name: 'average_distance')
  double get averageDistance;
  @override
  @JsonKey(name: 'sentences_corrected')
  int get sentencesCorrected;
  @override
  @JsonKey(name: 'total_sentences')
  int get totalSentences;

  /// Create a copy of GrammarStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrammarStatsImplCopyWith<_$GrammarStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PitchResult _$PitchResultFromJson(Map<String, dynamic> json) {
  return _PitchResult.fromJson(json);
}

/// @nodoc
mixin _$PitchResult {
  PitchAnalysis get pitchAnalysis => throw _privateConstructorUsedError;
  List<PitchEntry> get pitchFluctuation => throw _privateConstructorUsedError;
  double get silentRatio => throw _privateConstructorUsedError;

  /// Serializes this PitchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PitchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PitchResultCopyWith<PitchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PitchResultCopyWith<$Res> {
  factory $PitchResultCopyWith(
    PitchResult value,
    $Res Function(PitchResult) then,
  ) = _$PitchResultCopyWithImpl<$Res, PitchResult>;
  @useResult
  $Res call({
    PitchAnalysis pitchAnalysis,
    List<PitchEntry> pitchFluctuation,
    double silentRatio,
  });

  $PitchAnalysisCopyWith<$Res> get pitchAnalysis;
}

/// @nodoc
class _$PitchResultCopyWithImpl<$Res, $Val extends PitchResult>
    implements $PitchResultCopyWith<$Res> {
  _$PitchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PitchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pitchAnalysis = null,
    Object? pitchFluctuation = null,
    Object? silentRatio = null,
  }) {
    return _then(
      _value.copyWith(
            pitchAnalysis:
                null == pitchAnalysis
                    ? _value.pitchAnalysis
                    : pitchAnalysis // ignore: cast_nullable_to_non_nullable
                        as PitchAnalysis,
            pitchFluctuation:
                null == pitchFluctuation
                    ? _value.pitchFluctuation
                    : pitchFluctuation // ignore: cast_nullable_to_non_nullable
                        as List<PitchEntry>,
            silentRatio:
                null == silentRatio
                    ? _value.silentRatio
                    : silentRatio // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }

  /// Create a copy of PitchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PitchAnalysisCopyWith<$Res> get pitchAnalysis {
    return $PitchAnalysisCopyWith<$Res>(_value.pitchAnalysis, (value) {
      return _then(_value.copyWith(pitchAnalysis: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PitchResultImplCopyWith<$Res>
    implements $PitchResultCopyWith<$Res> {
  factory _$$PitchResultImplCopyWith(
    _$PitchResultImpl value,
    $Res Function(_$PitchResultImpl) then,
  ) = __$$PitchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PitchAnalysis pitchAnalysis,
    List<PitchEntry> pitchFluctuation,
    double silentRatio,
  });

  @override
  $PitchAnalysisCopyWith<$Res> get pitchAnalysis;
}

/// @nodoc
class __$$PitchResultImplCopyWithImpl<$Res>
    extends _$PitchResultCopyWithImpl<$Res, _$PitchResultImpl>
    implements _$$PitchResultImplCopyWith<$Res> {
  __$$PitchResultImplCopyWithImpl(
    _$PitchResultImpl _value,
    $Res Function(_$PitchResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PitchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pitchAnalysis = null,
    Object? pitchFluctuation = null,
    Object? silentRatio = null,
  }) {
    return _then(
      _$PitchResultImpl(
        pitchAnalysis:
            null == pitchAnalysis
                ? _value.pitchAnalysis
                : pitchAnalysis // ignore: cast_nullable_to_non_nullable
                    as PitchAnalysis,
        pitchFluctuation:
            null == pitchFluctuation
                ? _value._pitchFluctuation
                : pitchFluctuation // ignore: cast_nullable_to_non_nullable
                    as List<PitchEntry>,
        silentRatio:
            null == silentRatio
                ? _value.silentRatio
                : silentRatio // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PitchResultImpl implements _PitchResult {
  const _$PitchResultImpl({
    required this.pitchAnalysis,
    required final List<PitchEntry> pitchFluctuation,
    required this.silentRatio,
  }) : _pitchFluctuation = pitchFluctuation;

  factory _$PitchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PitchResultImplFromJson(json);

  @override
  final PitchAnalysis pitchAnalysis;
  final List<PitchEntry> _pitchFluctuation;
  @override
  List<PitchEntry> get pitchFluctuation {
    if (_pitchFluctuation is EqualUnmodifiableListView)
      return _pitchFluctuation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pitchFluctuation);
  }

  @override
  final double silentRatio;

  @override
  String toString() {
    return 'PitchResult(pitchAnalysis: $pitchAnalysis, pitchFluctuation: $pitchFluctuation, silentRatio: $silentRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PitchResultImpl &&
            (identical(other.pitchAnalysis, pitchAnalysis) ||
                other.pitchAnalysis == pitchAnalysis) &&
            const DeepCollectionEquality().equals(
              other._pitchFluctuation,
              _pitchFluctuation,
            ) &&
            (identical(other.silentRatio, silentRatio) ||
                other.silentRatio == silentRatio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    pitchAnalysis,
    const DeepCollectionEquality().hash(_pitchFluctuation),
    silentRatio,
  );

  /// Create a copy of PitchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PitchResultImplCopyWith<_$PitchResultImpl> get copyWith =>
      __$$PitchResultImplCopyWithImpl<_$PitchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PitchResultImplToJson(this);
  }
}

abstract class _PitchResult implements PitchResult {
  const factory _PitchResult({
    required final PitchAnalysis pitchAnalysis,
    required final List<PitchEntry> pitchFluctuation,
    required final double silentRatio,
  }) = _$PitchResultImpl;

  factory _PitchResult.fromJson(Map<String, dynamic> json) =
      _$PitchResultImpl.fromJson;

  @override
  PitchAnalysis get pitchAnalysis;
  @override
  List<PitchEntry> get pitchFluctuation;
  @override
  double get silentRatio;

  /// Create a copy of PitchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PitchResultImplCopyWith<_$PitchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PitchAnalysis _$PitchAnalysisFromJson(Map<String, dynamic> json) {
  return _PitchAnalysis.fromJson(json);
}

/// @nodoc
mixin _$PitchAnalysis {
  @JsonKey(name: 'fluctuation_score')
  double get fluctuationScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_monotone')
  bool get isMonotone => throw _privateConstructorUsedError;
  @JsonKey(name: 'pitch_range')
  double get pitchRange => throw _privateConstructorUsedError;

  /// Serializes this PitchAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PitchAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PitchAnalysisCopyWith<PitchAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PitchAnalysisCopyWith<$Res> {
  factory $PitchAnalysisCopyWith(
    PitchAnalysis value,
    $Res Function(PitchAnalysis) then,
  ) = _$PitchAnalysisCopyWithImpl<$Res, PitchAnalysis>;
  @useResult
  $Res call({
    @JsonKey(name: 'fluctuation_score') double fluctuationScore,
    @JsonKey(name: 'is_monotone') bool isMonotone,
    @JsonKey(name: 'pitch_range') double pitchRange,
  });
}

/// @nodoc
class _$PitchAnalysisCopyWithImpl<$Res, $Val extends PitchAnalysis>
    implements $PitchAnalysisCopyWith<$Res> {
  _$PitchAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PitchAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fluctuationScore = null,
    Object? isMonotone = null,
    Object? pitchRange = null,
  }) {
    return _then(
      _value.copyWith(
            fluctuationScore:
                null == fluctuationScore
                    ? _value.fluctuationScore
                    : fluctuationScore // ignore: cast_nullable_to_non_nullable
                        as double,
            isMonotone:
                null == isMonotone
                    ? _value.isMonotone
                    : isMonotone // ignore: cast_nullable_to_non_nullable
                        as bool,
            pitchRange:
                null == pitchRange
                    ? _value.pitchRange
                    : pitchRange // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PitchAnalysisImplCopyWith<$Res>
    implements $PitchAnalysisCopyWith<$Res> {
  factory _$$PitchAnalysisImplCopyWith(
    _$PitchAnalysisImpl value,
    $Res Function(_$PitchAnalysisImpl) then,
  ) = __$$PitchAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'fluctuation_score') double fluctuationScore,
    @JsonKey(name: 'is_monotone') bool isMonotone,
    @JsonKey(name: 'pitch_range') double pitchRange,
  });
}

/// @nodoc
class __$$PitchAnalysisImplCopyWithImpl<$Res>
    extends _$PitchAnalysisCopyWithImpl<$Res, _$PitchAnalysisImpl>
    implements _$$PitchAnalysisImplCopyWith<$Res> {
  __$$PitchAnalysisImplCopyWithImpl(
    _$PitchAnalysisImpl _value,
    $Res Function(_$PitchAnalysisImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PitchAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fluctuationScore = null,
    Object? isMonotone = null,
    Object? pitchRange = null,
  }) {
    return _then(
      _$PitchAnalysisImpl(
        fluctuationScore:
            null == fluctuationScore
                ? _value.fluctuationScore
                : fluctuationScore // ignore: cast_nullable_to_non_nullable
                    as double,
        isMonotone:
            null == isMonotone
                ? _value.isMonotone
                : isMonotone // ignore: cast_nullable_to_non_nullable
                    as bool,
        pitchRange:
            null == pitchRange
                ? _value.pitchRange
                : pitchRange // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PitchAnalysisImpl implements _PitchAnalysis {
  const _$PitchAnalysisImpl({
    @JsonKey(name: 'fluctuation_score') required this.fluctuationScore,
    @JsonKey(name: 'is_monotone') required this.isMonotone,
    @JsonKey(name: 'pitch_range') required this.pitchRange,
  });

  factory _$PitchAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$PitchAnalysisImplFromJson(json);

  @override
  @JsonKey(name: 'fluctuation_score')
  final double fluctuationScore;
  @override
  @JsonKey(name: 'is_monotone')
  final bool isMonotone;
  @override
  @JsonKey(name: 'pitch_range')
  final double pitchRange;

  @override
  String toString() {
    return 'PitchAnalysis(fluctuationScore: $fluctuationScore, isMonotone: $isMonotone, pitchRange: $pitchRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PitchAnalysisImpl &&
            (identical(other.fluctuationScore, fluctuationScore) ||
                other.fluctuationScore == fluctuationScore) &&
            (identical(other.isMonotone, isMonotone) ||
                other.isMonotone == isMonotone) &&
            (identical(other.pitchRange, pitchRange) ||
                other.pitchRange == pitchRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fluctuationScore, isMonotone, pitchRange);

  /// Create a copy of PitchAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PitchAnalysisImplCopyWith<_$PitchAnalysisImpl> get copyWith =>
      __$$PitchAnalysisImplCopyWithImpl<_$PitchAnalysisImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PitchAnalysisImplToJson(this);
  }
}

abstract class _PitchAnalysis implements PitchAnalysis {
  const factory _PitchAnalysis({
    @JsonKey(name: 'fluctuation_score') required final double fluctuationScore,
    @JsonKey(name: 'is_monotone') required final bool isMonotone,
    @JsonKey(name: 'pitch_range') required final double pitchRange,
  }) = _$PitchAnalysisImpl;

  factory _PitchAnalysis.fromJson(Map<String, dynamic> json) =
      _$PitchAnalysisImpl.fromJson;

  @override
  @JsonKey(name: 'fluctuation_score')
  double get fluctuationScore;
  @override
  @JsonKey(name: 'is_monotone')
  bool get isMonotone;
  @override
  @JsonKey(name: 'pitch_range')
  double get pitchRange;

  /// Create a copy of PitchAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PitchAnalysisImplCopyWith<_$PitchAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PitchEntry _$PitchEntryFromJson(Map<String, dynamic> json) {
  return _PitchEntry.fromJson(json);
}

/// @nodoc
mixin _$PitchEntry {
  double get pitch => throw _privateConstructorUsedError;
  double get timestamp => throw _privateConstructorUsedError;

  /// Serializes this PitchEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PitchEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PitchEntryCopyWith<PitchEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PitchEntryCopyWith<$Res> {
  factory $PitchEntryCopyWith(
    PitchEntry value,
    $Res Function(PitchEntry) then,
  ) = _$PitchEntryCopyWithImpl<$Res, PitchEntry>;
  @useResult
  $Res call({double pitch, double timestamp});
}

/// @nodoc
class _$PitchEntryCopyWithImpl<$Res, $Val extends PitchEntry>
    implements $PitchEntryCopyWith<$Res> {
  _$PitchEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PitchEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pitch = null, Object? timestamp = null}) {
    return _then(
      _value.copyWith(
            pitch:
                null == pitch
                    ? _value.pitch
                    : pitch // ignore: cast_nullable_to_non_nullable
                        as double,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PitchEntryImplCopyWith<$Res>
    implements $PitchEntryCopyWith<$Res> {
  factory _$$PitchEntryImplCopyWith(
    _$PitchEntryImpl value,
    $Res Function(_$PitchEntryImpl) then,
  ) = __$$PitchEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double pitch, double timestamp});
}

/// @nodoc
class __$$PitchEntryImplCopyWithImpl<$Res>
    extends _$PitchEntryCopyWithImpl<$Res, _$PitchEntryImpl>
    implements _$$PitchEntryImplCopyWith<$Res> {
  __$$PitchEntryImplCopyWithImpl(
    _$PitchEntryImpl _value,
    $Res Function(_$PitchEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PitchEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pitch = null, Object? timestamp = null}) {
    return _then(
      _$PitchEntryImpl(
        pitch:
            null == pitch
                ? _value.pitch
                : pitch // ignore: cast_nullable_to_non_nullable
                    as double,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PitchEntryImpl implements _PitchEntry {
  const _$PitchEntryImpl({required this.pitch, required this.timestamp});

  factory _$PitchEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PitchEntryImplFromJson(json);

  @override
  final double pitch;
  @override
  final double timestamp;

  @override
  String toString() {
    return 'PitchEntry(pitch: $pitch, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PitchEntryImpl &&
            (identical(other.pitch, pitch) || other.pitch == pitch) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pitch, timestamp);

  /// Create a copy of PitchEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PitchEntryImplCopyWith<_$PitchEntryImpl> get copyWith =>
      __$$PitchEntryImplCopyWithImpl<_$PitchEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PitchEntryImplToJson(this);
  }
}

abstract class _PitchEntry implements PitchEntry {
  const factory _PitchEntry({
    required final double pitch,
    required final double timestamp,
  }) = _$PitchEntryImpl;

  factory _PitchEntry.fromJson(Map<String, dynamic> json) =
      _$PitchEntryImpl.fromJson;

  @override
  double get pitch;
  @override
  double get timestamp;

  /// Create a copy of PitchEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PitchEntryImplCopyWith<_$PitchEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormalityResult _$FormalityResultFromJson(Map<String, dynamic> json) {
  return _FormalityResult.fromJson(json);
}

/// @nodoc
mixin _$FormalityResult {
  @JsonKey(name: 'formality_score')
  double get formalityScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'formal_percent')
  int get formalPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'informal_percent')
  int get informalPercent => throw _privateConstructorUsedError;
  String get classification => throw _privateConstructorUsedError;

  /// Serializes this FormalityResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormalityResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormalityResultCopyWith<FormalityResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormalityResultCopyWith<$Res> {
  factory $FormalityResultCopyWith(
    FormalityResult value,
    $Res Function(FormalityResult) then,
  ) = _$FormalityResultCopyWithImpl<$Res, FormalityResult>;
  @useResult
  $Res call({
    @JsonKey(name: 'formality_score') double formalityScore,
    @JsonKey(name: 'formal_percent') int formalPercent,
    @JsonKey(name: 'informal_percent') int informalPercent,
    String classification,
  });
}

/// @nodoc
class _$FormalityResultCopyWithImpl<$Res, $Val extends FormalityResult>
    implements $FormalityResultCopyWith<$Res> {
  _$FormalityResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormalityResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formalityScore = null,
    Object? formalPercent = null,
    Object? informalPercent = null,
    Object? classification = null,
  }) {
    return _then(
      _value.copyWith(
            formalityScore:
                null == formalityScore
                    ? _value.formalityScore
                    : formalityScore // ignore: cast_nullable_to_non_nullable
                        as double,
            formalPercent:
                null == formalPercent
                    ? _value.formalPercent
                    : formalPercent // ignore: cast_nullable_to_non_nullable
                        as int,
            informalPercent:
                null == informalPercent
                    ? _value.informalPercent
                    : informalPercent // ignore: cast_nullable_to_non_nullable
                        as int,
            classification:
                null == classification
                    ? _value.classification
                    : classification // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FormalityResultImplCopyWith<$Res>
    implements $FormalityResultCopyWith<$Res> {
  factory _$$FormalityResultImplCopyWith(
    _$FormalityResultImpl value,
    $Res Function(_$FormalityResultImpl) then,
  ) = __$$FormalityResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'formality_score') double formalityScore,
    @JsonKey(name: 'formal_percent') int formalPercent,
    @JsonKey(name: 'informal_percent') int informalPercent,
    String classification,
  });
}

/// @nodoc
class __$$FormalityResultImplCopyWithImpl<$Res>
    extends _$FormalityResultCopyWithImpl<$Res, _$FormalityResultImpl>
    implements _$$FormalityResultImplCopyWith<$Res> {
  __$$FormalityResultImplCopyWithImpl(
    _$FormalityResultImpl _value,
    $Res Function(_$FormalityResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FormalityResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formalityScore = null,
    Object? formalPercent = null,
    Object? informalPercent = null,
    Object? classification = null,
  }) {
    return _then(
      _$FormalityResultImpl(
        formalityScore:
            null == formalityScore
                ? _value.formalityScore
                : formalityScore // ignore: cast_nullable_to_non_nullable
                    as double,
        formalPercent:
            null == formalPercent
                ? _value.formalPercent
                : formalPercent // ignore: cast_nullable_to_non_nullable
                    as int,
        informalPercent:
            null == informalPercent
                ? _value.informalPercent
                : informalPercent // ignore: cast_nullable_to_non_nullable
                    as int,
        classification:
            null == classification
                ? _value.classification
                : classification // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FormalityResultImpl implements _FormalityResult {
  const _$FormalityResultImpl({
    @JsonKey(name: 'formality_score') required this.formalityScore,
    @JsonKey(name: 'formal_percent') required this.formalPercent,
    @JsonKey(name: 'informal_percent') required this.informalPercent,
    required this.classification,
  });

  factory _$FormalityResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormalityResultImplFromJson(json);

  @override
  @JsonKey(name: 'formality_score')
  final double formalityScore;
  @override
  @JsonKey(name: 'formal_percent')
  final int formalPercent;
  @override
  @JsonKey(name: 'informal_percent')
  final int informalPercent;
  @override
  final String classification;

  @override
  String toString() {
    return 'FormalityResult(formalityScore: $formalityScore, formalPercent: $formalPercent, informalPercent: $informalPercent, classification: $classification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormalityResultImpl &&
            (identical(other.formalityScore, formalityScore) ||
                other.formalityScore == formalityScore) &&
            (identical(other.formalPercent, formalPercent) ||
                other.formalPercent == formalPercent) &&
            (identical(other.informalPercent, informalPercent) ||
                other.informalPercent == informalPercent) &&
            (identical(other.classification, classification) ||
                other.classification == classification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    formalityScore,
    formalPercent,
    informalPercent,
    classification,
  );

  /// Create a copy of FormalityResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormalityResultImplCopyWith<_$FormalityResultImpl> get copyWith =>
      __$$FormalityResultImplCopyWithImpl<_$FormalityResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FormalityResultImplToJson(this);
  }
}

abstract class _FormalityResult implements FormalityResult {
  const factory _FormalityResult({
    @JsonKey(name: 'formality_score') required final double formalityScore,
    @JsonKey(name: 'formal_percent') required final int formalPercent,
    @JsonKey(name: 'informal_percent') required final int informalPercent,
    required final String classification,
  }) = _$FormalityResultImpl;

  factory _FormalityResult.fromJson(Map<String, dynamic> json) =
      _$FormalityResultImpl.fromJson;

  @override
  @JsonKey(name: 'formality_score')
  double get formalityScore;
  @override
  @JsonKey(name: 'formal_percent')
  int get formalPercent;
  @override
  @JsonKey(name: 'informal_percent')
  int get informalPercent;
  @override
  String get classification;

  /// Create a copy of FormalityResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormalityResultImplCopyWith<_$FormalityResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SuccessResponse _$SuccessResponseFromJson(Map<String, dynamic> json) {
  return _SuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$SuccessResponse {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this SuccessResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuccessResponseCopyWith<SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResponseCopyWith<$Res> {
  factory $SuccessResponseCopyWith(
    SuccessResponse value,
    $Res Function(SuccessResponse) then,
  ) = _$SuccessResponseCopyWithImpl<$Res, SuccessResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<$Res, $Val extends SuccessResponse>
    implements $SuccessResponseCopyWith<$Res> {
  _$SuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SuccessResponseImplCopyWith<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  factory _$$SuccessResponseImplCopyWith(
    _$SuccessResponseImpl value,
    $Res Function(_$SuccessResponseImpl) then,
  ) = __$$SuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessResponseImplCopyWithImpl<$Res>
    extends _$SuccessResponseCopyWithImpl<$Res, _$SuccessResponseImpl>
    implements _$$SuccessResponseImplCopyWith<$Res> {
  __$$SuccessResponseImplCopyWithImpl(
    _$SuccessResponseImpl _value,
    $Res Function(_$SuccessResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SuccessResponseImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessResponseImpl implements _SuccessResponse {
  const _$SuccessResponseImpl({required this.message});

  factory _$SuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SuccessResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      __$$SuccessResponseImplCopyWithImpl<_$SuccessResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessResponseImplToJson(this);
  }
}

abstract class _SuccessResponse implements SuccessResponse {
  const factory _SuccessResponse({required final String message}) =
      _$SuccessResponseImpl;

  factory _SuccessResponse.fromJson(Map<String, dynamic> json) =
      _$SuccessResponseImpl.fromJson;

  @override
  String get message;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TranscriptionEntry _$TranscriptionEntryFromJson(Map<String, dynamic> json) {
  return _TranscriptionEntry.fromJson(json);
}

/// @nodoc
mixin _$TranscriptionEntry {
  String get word => throw _privateConstructorUsedError;
  double get timestamp => throw _privateConstructorUsedError;

  /// Serializes this TranscriptionEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TranscriptionEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranscriptionEntryCopyWith<TranscriptionEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranscriptionEntryCopyWith<$Res> {
  factory $TranscriptionEntryCopyWith(
    TranscriptionEntry value,
    $Res Function(TranscriptionEntry) then,
  ) = _$TranscriptionEntryCopyWithImpl<$Res, TranscriptionEntry>;
  @useResult
  $Res call({String word, double timestamp});
}

/// @nodoc
class _$TranscriptionEntryCopyWithImpl<$Res, $Val extends TranscriptionEntry>
    implements $TranscriptionEntryCopyWith<$Res> {
  _$TranscriptionEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranscriptionEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? word = null, Object? timestamp = null}) {
    return _then(
      _value.copyWith(
            word:
                null == word
                    ? _value.word
                    : word // ignore: cast_nullable_to_non_nullable
                        as String,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TranscriptionEntryImplCopyWith<$Res>
    implements $TranscriptionEntryCopyWith<$Res> {
  factory _$$TranscriptionEntryImplCopyWith(
    _$TranscriptionEntryImpl value,
    $Res Function(_$TranscriptionEntryImpl) then,
  ) = __$$TranscriptionEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, double timestamp});
}

/// @nodoc
class __$$TranscriptionEntryImplCopyWithImpl<$Res>
    extends _$TranscriptionEntryCopyWithImpl<$Res, _$TranscriptionEntryImpl>
    implements _$$TranscriptionEntryImplCopyWith<$Res> {
  __$$TranscriptionEntryImplCopyWithImpl(
    _$TranscriptionEntryImpl _value,
    $Res Function(_$TranscriptionEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TranscriptionEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? word = null, Object? timestamp = null}) {
    return _then(
      _$TranscriptionEntryImpl(
        word:
            null == word
                ? _value.word
                : word // ignore: cast_nullable_to_non_nullable
                    as String,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TranscriptionEntryImpl implements _TranscriptionEntry {
  const _$TranscriptionEntryImpl({required this.word, required this.timestamp});

  factory _$TranscriptionEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranscriptionEntryImplFromJson(json);

  @override
  final String word;
  @override
  final double timestamp;

  @override
  String toString() {
    return 'TranscriptionEntry(word: $word, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranscriptionEntryImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, word, timestamp);

  /// Create a copy of TranscriptionEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranscriptionEntryImplCopyWith<_$TranscriptionEntryImpl> get copyWith =>
      __$$TranscriptionEntryImplCopyWithImpl<_$TranscriptionEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TranscriptionEntryImplToJson(this);
  }
}

abstract class _TranscriptionEntry implements TranscriptionEntry {
  const factory _TranscriptionEntry({
    required final String word,
    required final double timestamp,
  }) = _$TranscriptionEntryImpl;

  factory _TranscriptionEntry.fromJson(Map<String, dynamic> json) =
      _$TranscriptionEntryImpl.fromJson;

  @override
  String get word;
  @override
  double get timestamp;

  /// Create a copy of TranscriptionEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranscriptionEntryImplCopyWith<_$TranscriptionEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

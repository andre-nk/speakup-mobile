// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SpeechFeedback _$SpeechFeedbackFromJson(Map<String, dynamic> json) {
  return _SpeechFeedback.fromJson(json);
}

/// @nodoc
mixin _$SpeechFeedback {
  String get part1 =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: _strugglesFromJson, toJson: _strugglesToJson)
  Struggles get part2 => throw _privateConstructorUsedError;

  /// Serializes this SpeechFeedback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpeechFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeechFeedbackCopyWith<SpeechFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechFeedbackCopyWith<$Res> {
  factory $SpeechFeedbackCopyWith(
    SpeechFeedback value,
    $Res Function(SpeechFeedback) then,
  ) = _$SpeechFeedbackCopyWithImpl<$Res, SpeechFeedback>;
  @useResult
  $Res call({
    String part1,
    @JsonKey(fromJson: _strugglesFromJson, toJson: _strugglesToJson)
    Struggles part2,
  });
}

/// @nodoc
class _$SpeechFeedbackCopyWithImpl<$Res, $Val extends SpeechFeedback>
    implements $SpeechFeedbackCopyWith<$Res> {
  _$SpeechFeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpeechFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? part1 = null, Object? part2 = null}) {
    return _then(
      _value.copyWith(
            part1:
                null == part1
                    ? _value.part1
                    : part1 // ignore: cast_nullable_to_non_nullable
                        as String,
            part2:
                null == part2
                    ? _value.part2
                    : part2 // ignore: cast_nullable_to_non_nullable
                        as Struggles,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpeechFeedbackImplCopyWith<$Res>
    implements $SpeechFeedbackCopyWith<$Res> {
  factory _$$SpeechFeedbackImplCopyWith(
    _$SpeechFeedbackImpl value,
    $Res Function(_$SpeechFeedbackImpl) then,
  ) = __$$SpeechFeedbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String part1,
    @JsonKey(fromJson: _strugglesFromJson, toJson: _strugglesToJson)
    Struggles part2,
  });
}

/// @nodoc
class __$$SpeechFeedbackImplCopyWithImpl<$Res>
    extends _$SpeechFeedbackCopyWithImpl<$Res, _$SpeechFeedbackImpl>
    implements _$$SpeechFeedbackImplCopyWith<$Res> {
  __$$SpeechFeedbackImplCopyWithImpl(
    _$SpeechFeedbackImpl _value,
    $Res Function(_$SpeechFeedbackImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpeechFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? part1 = null, Object? part2 = null}) {
    return _then(
      _$SpeechFeedbackImpl(
        part1:
            null == part1
                ? _value.part1
                : part1 // ignore: cast_nullable_to_non_nullable
                    as String,
        part2:
            null == part2
                ? _value.part2
                : part2 // ignore: cast_nullable_to_non_nullable
                    as Struggles,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeechFeedbackImpl implements _SpeechFeedback {
  const _$SpeechFeedbackImpl({
    required this.part1,
    @JsonKey(fromJson: _strugglesFromJson, toJson: _strugglesToJson)
    required this.part2,
  });

  factory _$SpeechFeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeechFeedbackImplFromJson(json);

  @override
  final String part1;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: _strugglesFromJson, toJson: _strugglesToJson)
  final Struggles part2;

  @override
  String toString() {
    return 'SpeechFeedback(part1: $part1, part2: $part2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeechFeedbackImpl &&
            (identical(other.part1, part1) || other.part1 == part1) &&
            (identical(other.part2, part2) || other.part2 == part2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, part1, part2);

  /// Create a copy of SpeechFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeechFeedbackImplCopyWith<_$SpeechFeedbackImpl> get copyWith =>
      __$$SpeechFeedbackImplCopyWithImpl<_$SpeechFeedbackImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeechFeedbackImplToJson(this);
  }
}

abstract class _SpeechFeedback implements SpeechFeedback {
  const factory _SpeechFeedback({
    required final String part1,
    @JsonKey(fromJson: _strugglesFromJson, toJson: _strugglesToJson)
    required final Struggles part2,
  }) = _$SpeechFeedbackImpl;

  factory _SpeechFeedback.fromJson(Map<String, dynamic> json) =
      _$SpeechFeedbackImpl.fromJson;

  @override
  String get part1; // ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: _strugglesFromJson, toJson: _strugglesToJson)
  Struggles get part2;

  /// Create a copy of SpeechFeedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeechFeedbackImplCopyWith<_$SpeechFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpeechAnalysisFeedback _$SpeechAnalysisFeedbackFromJson(
  Map<String, dynamic> json,
) {
  return _SpeechAnalysisFeedback.fromJson(json);
}

/// @nodoc
mixin _$SpeechAnalysisFeedback {
  int get wordsPerMinute => throw _privateConstructorUsedError;
  bool get isMonotone => throw _privateConstructorUsedError;
  double get silentRatio => throw _privateConstructorUsedError;
  List<String> get mostCommonWords => throw _privateConstructorUsedError;
  int get fillerWords => throw _privateConstructorUsedError;
  int get formalityScore => throw _privateConstructorUsedError;
  List<String> get grammarMistakes => throw _privateConstructorUsedError;
  String get transcript => throw _privateConstructorUsedError;

  /// Serializes this SpeechAnalysisFeedback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpeechAnalysisFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeechAnalysisFeedbackCopyWith<SpeechAnalysisFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechAnalysisFeedbackCopyWith<$Res> {
  factory $SpeechAnalysisFeedbackCopyWith(
    SpeechAnalysisFeedback value,
    $Res Function(SpeechAnalysisFeedback) then,
  ) = _$SpeechAnalysisFeedbackCopyWithImpl<$Res, SpeechAnalysisFeedback>;
  @useResult
  $Res call({
    int wordsPerMinute,
    bool isMonotone,
    double silentRatio,
    List<String> mostCommonWords,
    int fillerWords,
    int formalityScore,
    List<String> grammarMistakes,
    String transcript,
  });
}

/// @nodoc
class _$SpeechAnalysisFeedbackCopyWithImpl<
  $Res,
  $Val extends SpeechAnalysisFeedback
>
    implements $SpeechAnalysisFeedbackCopyWith<$Res> {
  _$SpeechAnalysisFeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpeechAnalysisFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsPerMinute = null,
    Object? isMonotone = null,
    Object? silentRatio = null,
    Object? mostCommonWords = null,
    Object? fillerWords = null,
    Object? formalityScore = null,
    Object? grammarMistakes = null,
    Object? transcript = null,
  }) {
    return _then(
      _value.copyWith(
            wordsPerMinute:
                null == wordsPerMinute
                    ? _value.wordsPerMinute
                    : wordsPerMinute // ignore: cast_nullable_to_non_nullable
                        as int,
            isMonotone:
                null == isMonotone
                    ? _value.isMonotone
                    : isMonotone // ignore: cast_nullable_to_non_nullable
                        as bool,
            silentRatio:
                null == silentRatio
                    ? _value.silentRatio
                    : silentRatio // ignore: cast_nullable_to_non_nullable
                        as double,
            mostCommonWords:
                null == mostCommonWords
                    ? _value.mostCommonWords
                    : mostCommonWords // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            fillerWords:
                null == fillerWords
                    ? _value.fillerWords
                    : fillerWords // ignore: cast_nullable_to_non_nullable
                        as int,
            formalityScore:
                null == formalityScore
                    ? _value.formalityScore
                    : formalityScore // ignore: cast_nullable_to_non_nullable
                        as int,
            grammarMistakes:
                null == grammarMistakes
                    ? _value.grammarMistakes
                    : grammarMistakes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            transcript:
                null == transcript
                    ? _value.transcript
                    : transcript // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpeechAnalysisFeedbackImplCopyWith<$Res>
    implements $SpeechAnalysisFeedbackCopyWith<$Res> {
  factory _$$SpeechAnalysisFeedbackImplCopyWith(
    _$SpeechAnalysisFeedbackImpl value,
    $Res Function(_$SpeechAnalysisFeedbackImpl) then,
  ) = __$$SpeechAnalysisFeedbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int wordsPerMinute,
    bool isMonotone,
    double silentRatio,
    List<String> mostCommonWords,
    int fillerWords,
    int formalityScore,
    List<String> grammarMistakes,
    String transcript,
  });
}

/// @nodoc
class __$$SpeechAnalysisFeedbackImplCopyWithImpl<$Res>
    extends
        _$SpeechAnalysisFeedbackCopyWithImpl<$Res, _$SpeechAnalysisFeedbackImpl>
    implements _$$SpeechAnalysisFeedbackImplCopyWith<$Res> {
  __$$SpeechAnalysisFeedbackImplCopyWithImpl(
    _$SpeechAnalysisFeedbackImpl _value,
    $Res Function(_$SpeechAnalysisFeedbackImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpeechAnalysisFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsPerMinute = null,
    Object? isMonotone = null,
    Object? silentRatio = null,
    Object? mostCommonWords = null,
    Object? fillerWords = null,
    Object? formalityScore = null,
    Object? grammarMistakes = null,
    Object? transcript = null,
  }) {
    return _then(
      _$SpeechAnalysisFeedbackImpl(
        wordsPerMinute:
            null == wordsPerMinute
                ? _value.wordsPerMinute
                : wordsPerMinute // ignore: cast_nullable_to_non_nullable
                    as int,
        isMonotone:
            null == isMonotone
                ? _value.isMonotone
                : isMonotone // ignore: cast_nullable_to_non_nullable
                    as bool,
        silentRatio:
            null == silentRatio
                ? _value.silentRatio
                : silentRatio // ignore: cast_nullable_to_non_nullable
                    as double,
        mostCommonWords:
            null == mostCommonWords
                ? _value._mostCommonWords
                : mostCommonWords // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        fillerWords:
            null == fillerWords
                ? _value.fillerWords
                : fillerWords // ignore: cast_nullable_to_non_nullable
                    as int,
        formalityScore:
            null == formalityScore
                ? _value.formalityScore
                : formalityScore // ignore: cast_nullable_to_non_nullable
                    as int,
        grammarMistakes:
            null == grammarMistakes
                ? _value._grammarMistakes
                : grammarMistakes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        transcript:
            null == transcript
                ? _value.transcript
                : transcript // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeechAnalysisFeedbackImpl implements _SpeechAnalysisFeedback {
  const _$SpeechAnalysisFeedbackImpl({
    required this.wordsPerMinute,
    required this.isMonotone,
    required this.silentRatio,
    required final List<String> mostCommonWords,
    required this.fillerWords,
    required this.formalityScore,
    required final List<String> grammarMistakes,
    required this.transcript,
  }) : _mostCommonWords = mostCommonWords,
       _grammarMistakes = grammarMistakes;

  factory _$SpeechAnalysisFeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeechAnalysisFeedbackImplFromJson(json);

  @override
  final int wordsPerMinute;
  @override
  final bool isMonotone;
  @override
  final double silentRatio;
  final List<String> _mostCommonWords;
  @override
  List<String> get mostCommonWords {
    if (_mostCommonWords is EqualUnmodifiableListView) return _mostCommonWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mostCommonWords);
  }

  @override
  final int fillerWords;
  @override
  final int formalityScore;
  final List<String> _grammarMistakes;
  @override
  List<String> get grammarMistakes {
    if (_grammarMistakes is EqualUnmodifiableListView) return _grammarMistakes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grammarMistakes);
  }

  @override
  final String transcript;

  @override
  String toString() {
    return 'SpeechAnalysisFeedback(wordsPerMinute: $wordsPerMinute, isMonotone: $isMonotone, silentRatio: $silentRatio, mostCommonWords: $mostCommonWords, fillerWords: $fillerWords, formalityScore: $formalityScore, grammarMistakes: $grammarMistakes, transcript: $transcript)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeechAnalysisFeedbackImpl &&
            (identical(other.wordsPerMinute, wordsPerMinute) ||
                other.wordsPerMinute == wordsPerMinute) &&
            (identical(other.isMonotone, isMonotone) ||
                other.isMonotone == isMonotone) &&
            (identical(other.silentRatio, silentRatio) ||
                other.silentRatio == silentRatio) &&
            const DeepCollectionEquality().equals(
              other._mostCommonWords,
              _mostCommonWords,
            ) &&
            (identical(other.fillerWords, fillerWords) ||
                other.fillerWords == fillerWords) &&
            (identical(other.formalityScore, formalityScore) ||
                other.formalityScore == formalityScore) &&
            const DeepCollectionEquality().equals(
              other._grammarMistakes,
              _grammarMistakes,
            ) &&
            (identical(other.transcript, transcript) ||
                other.transcript == transcript));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    wordsPerMinute,
    isMonotone,
    silentRatio,
    const DeepCollectionEquality().hash(_mostCommonWords),
    fillerWords,
    formalityScore,
    const DeepCollectionEquality().hash(_grammarMistakes),
    transcript,
  );

  /// Create a copy of SpeechAnalysisFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeechAnalysisFeedbackImplCopyWith<_$SpeechAnalysisFeedbackImpl>
  get copyWith =>
      __$$SpeechAnalysisFeedbackImplCopyWithImpl<_$SpeechAnalysisFeedbackImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeechAnalysisFeedbackImplToJson(this);
  }
}

abstract class _SpeechAnalysisFeedback implements SpeechAnalysisFeedback {
  const factory _SpeechAnalysisFeedback({
    required final int wordsPerMinute,
    required final bool isMonotone,
    required final double silentRatio,
    required final List<String> mostCommonWords,
    required final int fillerWords,
    required final int formalityScore,
    required final List<String> grammarMistakes,
    required final String transcript,
  }) = _$SpeechAnalysisFeedbackImpl;

  factory _SpeechAnalysisFeedback.fromJson(Map<String, dynamic> json) =
      _$SpeechAnalysisFeedbackImpl.fromJson;

  @override
  int get wordsPerMinute;
  @override
  bool get isMonotone;
  @override
  double get silentRatio;
  @override
  List<String> get mostCommonWords;
  @override
  int get fillerWords;
  @override
  int get formalityScore;
  @override
  List<String> get grammarMistakes;
  @override
  String get transcript;

  /// Create a copy of SpeechAnalysisFeedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeechAnalysisFeedbackImplCopyWith<_$SpeechAnalysisFeedbackImpl>
  get copyWith => throw _privateConstructorUsedError;
}

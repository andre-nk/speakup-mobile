// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  String? get id => throw _privateConstructorUsedError;

  /// Order of exercise
  int get sequence => throw _privateConstructorUsedError;

  /// Title of the exercise
  String get title => throw _privateConstructorUsedError;

  /// Estimated duration in minutes
  @JsonKey(name: 'estimatedDuration')
  double get estimatedDuration => throw _privateConstructorUsedError;

  /// Difficulty level (beginner, intermediate, advanced)
  String get level => throw _privateConstructorUsedError;

  /// Exercise instructions
  List<dynamic>? get instructions => throw _privateConstructorUsedError;

  /// References to related materials
  @JsonKey(name: 'relatedMaterials')
  List<String>? get relatedMaterialIds => throw _privateConstructorUsedError;

  /// Serializes this Exercise to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call({
    String? id,
    int sequence,
    String title,
    @JsonKey(name: 'estimatedDuration') double estimatedDuration,
    String level,
    List<dynamic>? instructions,
    @JsonKey(name: 'relatedMaterials') List<String>? relatedMaterialIds,
  });
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sequence = null,
    Object? title = null,
    Object? estimatedDuration = null,
    Object? level = null,
    Object? instructions = freezed,
    Object? relatedMaterialIds = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            sequence:
                null == sequence
                    ? _value.sequence
                    : sequence // ignore: cast_nullable_to_non_nullable
                        as int,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            estimatedDuration:
                null == estimatedDuration
                    ? _value.estimatedDuration
                    : estimatedDuration // ignore: cast_nullable_to_non_nullable
                        as double,
            level:
                null == level
                    ? _value.level
                    : level // ignore: cast_nullable_to_non_nullable
                        as String,
            instructions:
                freezed == instructions
                    ? _value.instructions
                    : instructions // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>?,
            relatedMaterialIds:
                freezed == relatedMaterialIds
                    ? _value.relatedMaterialIds
                    : relatedMaterialIds // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
    _$ExerciseImpl value,
    $Res Function(_$ExerciseImpl) then,
  ) = __$$ExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    int sequence,
    String title,
    @JsonKey(name: 'estimatedDuration') double estimatedDuration,
    String level,
    List<dynamic>? instructions,
    @JsonKey(name: 'relatedMaterials') List<String>? relatedMaterialIds,
  });
}

/// @nodoc
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
    _$ExerciseImpl _value,
    $Res Function(_$ExerciseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sequence = null,
    Object? title = null,
    Object? estimatedDuration = null,
    Object? level = null,
    Object? instructions = freezed,
    Object? relatedMaterialIds = freezed,
  }) {
    return _then(
      _$ExerciseImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        sequence:
            null == sequence
                ? _value.sequence
                : sequence // ignore: cast_nullable_to_non_nullable
                    as int,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        estimatedDuration:
            null == estimatedDuration
                ? _value.estimatedDuration
                : estimatedDuration // ignore: cast_nullable_to_non_nullable
                    as double,
        level:
            null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                    as String,
        instructions:
            freezed == instructions
                ? _value._instructions
                : instructions // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>?,
        relatedMaterialIds:
            freezed == relatedMaterialIds
                ? _value._relatedMaterialIds
                : relatedMaterialIds // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseImpl implements _Exercise {
  const _$ExerciseImpl({
    this.id,
    required this.sequence,
    required this.title,
    @JsonKey(name: 'estimatedDuration') required this.estimatedDuration,
    required this.level,
    final List<dynamic>? instructions,
    @JsonKey(name: 'relatedMaterials') final List<String>? relatedMaterialIds,
  }) : _instructions = instructions,
       _relatedMaterialIds = relatedMaterialIds;

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

  @override
  final String? id;

  /// Order of exercise
  @override
  final int sequence;

  /// Title of the exercise
  @override
  final String title;

  /// Estimated duration in minutes
  @override
  @JsonKey(name: 'estimatedDuration')
  final double estimatedDuration;

  /// Difficulty level (beginner, intermediate, advanced)
  @override
  final String level;

  /// Exercise instructions
  final List<dynamic>? _instructions;

  /// Exercise instructions
  @override
  List<dynamic>? get instructions {
    final value = _instructions;
    if (value == null) return null;
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// References to related materials
  final List<String>? _relatedMaterialIds;

  /// References to related materials
  @override
  @JsonKey(name: 'relatedMaterials')
  List<String>? get relatedMaterialIds {
    final value = _relatedMaterialIds;
    if (value == null) return null;
    if (_relatedMaterialIds is EqualUnmodifiableListView)
      return _relatedMaterialIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Exercise(id: $id, sequence: $sequence, title: $title, estimatedDuration: $estimatedDuration, level: $level, instructions: $instructions, relatedMaterialIds: $relatedMaterialIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.estimatedDuration, estimatedDuration) ||
                other.estimatedDuration == estimatedDuration) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(
              other._instructions,
              _instructions,
            ) &&
            const DeepCollectionEquality().equals(
              other._relatedMaterialIds,
              _relatedMaterialIds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sequence,
    title,
    estimatedDuration,
    level,
    const DeepCollectionEquality().hash(_instructions),
    const DeepCollectionEquality().hash(_relatedMaterialIds),
  );

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseImplToJson(this);
  }
}

abstract class _Exercise implements Exercise {
  const factory _Exercise({
    final String? id,
    required final int sequence,
    required final String title,
    @JsonKey(name: 'estimatedDuration') required final double estimatedDuration,
    required final String level,
    final List<dynamic>? instructions,
    @JsonKey(name: 'relatedMaterials') final List<String>? relatedMaterialIds,
  }) = _$ExerciseImpl;

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override
  String? get id;

  /// Order of exercise
  @override
  int get sequence;

  /// Title of the exercise
  @override
  String get title;

  /// Estimated duration in minutes
  @override
  @JsonKey(name: 'estimatedDuration')
  double get estimatedDuration;

  /// Difficulty level (beginner, intermediate, advanced)
  @override
  String get level;

  /// Exercise instructions
  @override
  List<dynamic>? get instructions;

  /// References to related materials
  @override
  @JsonKey(name: 'relatedMaterials')
  List<String>? get relatedMaterialIds;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

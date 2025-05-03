// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Level _$LevelFromJson(Map<String, dynamic> json) {
  return _Level.fromJson(json);
}

/// @nodoc
mixin _$Level {
  String? get id => throw _privateConstructorUsedError;

  /// Title of the level
  String? get title => throw _privateConstructorUsedError;

  /// Level difficulty (beginner, intermediate, advanced)
  String? get level => throw _privateConstructorUsedError;

  /// References to sections in this level
  List<String>? get sectionIds => throw _privateConstructorUsedError;

  /// Actual sections
  List<Section>? get sectionObjects => throw _privateConstructorUsedError;

  /// Serializes this Level to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LevelCopyWith<Level> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelCopyWith<$Res> {
  factory $LevelCopyWith(Level value, $Res Function(Level) then) =
      _$LevelCopyWithImpl<$Res, Level>;
  @useResult
  $Res call({
    String? id,
    String? title,
    String? level,
    List<String>? sectionIds,
    List<Section>? sectionObjects,
  });
}

/// @nodoc
class _$LevelCopyWithImpl<$Res, $Val extends Level>
    implements $LevelCopyWith<$Res> {
  _$LevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? level = freezed,
    Object? sectionIds = freezed,
    Object? sectionObjects = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
            level:
                freezed == level
                    ? _value.level
                    : level // ignore: cast_nullable_to_non_nullable
                        as String?,
            sectionIds:
                freezed == sectionIds
                    ? _value.sectionIds
                    : sectionIds // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            sectionObjects:
                freezed == sectionObjects
                    ? _value.sectionObjects
                    : sectionObjects // ignore: cast_nullable_to_non_nullable
                        as List<Section>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LevelImplCopyWith<$Res> implements $LevelCopyWith<$Res> {
  factory _$$LevelImplCopyWith(
    _$LevelImpl value,
    $Res Function(_$LevelImpl) then,
  ) = __$$LevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? title,
    String? level,
    List<String>? sectionIds,
    List<Section>? sectionObjects,
  });
}

/// @nodoc
class __$$LevelImplCopyWithImpl<$Res>
    extends _$LevelCopyWithImpl<$Res, _$LevelImpl>
    implements _$$LevelImplCopyWith<$Res> {
  __$$LevelImplCopyWithImpl(
    _$LevelImpl _value,
    $Res Function(_$LevelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? level = freezed,
    Object? sectionIds = freezed,
    Object? sectionObjects = freezed,
  }) {
    return _then(
      _$LevelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        level:
            freezed == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                    as String?,
        sectionIds:
            freezed == sectionIds
                ? _value._sectionIds
                : sectionIds // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        sectionObjects:
            freezed == sectionObjects
                ? _value._sectionObjects
                : sectionObjects // ignore: cast_nullable_to_non_nullable
                    as List<Section>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelImpl implements _Level {
  const _$LevelImpl({
    this.id,
    required this.title,
    required this.level,
    final List<String>? sectionIds,
    final List<Section>? sectionObjects,
  }) : _sectionIds = sectionIds,
       _sectionObjects = sectionObjects;

  factory _$LevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelImplFromJson(json);

  @override
  final String? id;

  /// Title of the level
  @override
  final String? title;

  /// Level difficulty (beginner, intermediate, advanced)
  @override
  final String? level;

  /// References to sections in this level
  final List<String>? _sectionIds;

  /// References to sections in this level
  @override
  List<String>? get sectionIds {
    final value = _sectionIds;
    if (value == null) return null;
    if (_sectionIds is EqualUnmodifiableListView) return _sectionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Actual sections
  final List<Section>? _sectionObjects;

  /// Actual sections
  @override
  List<Section>? get sectionObjects {
    final value = _sectionObjects;
    if (value == null) return null;
    if (_sectionObjects is EqualUnmodifiableListView) return _sectionObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Level(id: $id, title: $title, level: $level, sectionIds: $sectionIds, sectionObjects: $sectionObjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(
              other._sectionIds,
              _sectionIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._sectionObjects,
              _sectionObjects,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    level,
    const DeepCollectionEquality().hash(_sectionIds),
    const DeepCollectionEquality().hash(_sectionObjects),
  );

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelImplCopyWith<_$LevelImpl> get copyWith =>
      __$$LevelImplCopyWithImpl<_$LevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelImplToJson(this);
  }
}

abstract class _Level implements Level {
  const factory _Level({
    final String? id,
    required final String? title,
    required final String? level,
    final List<String>? sectionIds,
    final List<Section>? sectionObjects,
  }) = _$LevelImpl;

  factory _Level.fromJson(Map<String, dynamic> json) = _$LevelImpl.fromJson;

  @override
  String? get id;

  /// Title of the level
  @override
  String? get title;

  /// Level difficulty (beginner, intermediate, advanced)
  @override
  String? get level;

  /// References to sections in this level
  @override
  List<String>? get sectionIds;

  /// Actual sections
  @override
  List<Section>? get sectionObjects;

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LevelImplCopyWith<_$LevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

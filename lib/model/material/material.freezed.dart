// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Material _$MaterialFromJson(Map<String, dynamic> json) {
  return _Material.fromJson(json);
}

/// @nodoc
mixin _$Material {
  String? get id => throw _privateConstructorUsedError;

  /// Order of material
  int get sequence => throw _privateConstructorUsedError;

  /// Title of the material
  String get title => throw _privateConstructorUsedError;

  /// Subtitle of the material (optional)
  String? get subtitle => throw _privateConstructorUsedError;

  /// Content of the material as block content
  List<dynamic>? get content => throw _privateConstructorUsedError;

  /// References to related exercises
  @JsonKey(name: 'relatedExercises')
  List<String>? get relatedExerciseIds => throw _privateConstructorUsedError;

  /// Serializes this Material to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Material
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaterialCopyWith<Material> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialCopyWith<$Res> {
  factory $MaterialCopyWith(Material value, $Res Function(Material) then) =
      _$MaterialCopyWithImpl<$Res, Material>;
  @useResult
  $Res call({
    String? id,
    int sequence,
    String title,
    String? subtitle,
    List<dynamic>? content,
    @JsonKey(name: 'relatedExercises') List<String>? relatedExerciseIds,
  });
}

/// @nodoc
class _$MaterialCopyWithImpl<$Res, $Val extends Material>
    implements $MaterialCopyWith<$Res> {
  _$MaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Material
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sequence = null,
    Object? title = null,
    Object? subtitle = freezed,
    Object? content = freezed,
    Object? relatedExerciseIds = freezed,
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
            subtitle:
                freezed == subtitle
                    ? _value.subtitle
                    : subtitle // ignore: cast_nullable_to_non_nullable
                        as String?,
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>?,
            relatedExerciseIds:
                freezed == relatedExerciseIds
                    ? _value.relatedExerciseIds
                    : relatedExerciseIds // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MaterialImplCopyWith<$Res>
    implements $MaterialCopyWith<$Res> {
  factory _$$MaterialImplCopyWith(
    _$MaterialImpl value,
    $Res Function(_$MaterialImpl) then,
  ) = __$$MaterialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    int sequence,
    String title,
    String? subtitle,
    List<dynamic>? content,
    @JsonKey(name: 'relatedExercises') List<String>? relatedExerciseIds,
  });
}

/// @nodoc
class __$$MaterialImplCopyWithImpl<$Res>
    extends _$MaterialCopyWithImpl<$Res, _$MaterialImpl>
    implements _$$MaterialImplCopyWith<$Res> {
  __$$MaterialImplCopyWithImpl(
    _$MaterialImpl _value,
    $Res Function(_$MaterialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Material
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sequence = null,
    Object? title = null,
    Object? subtitle = freezed,
    Object? content = freezed,
    Object? relatedExerciseIds = freezed,
  }) {
    return _then(
      _$MaterialImpl(
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
        subtitle:
            freezed == subtitle
                ? _value.subtitle
                : subtitle // ignore: cast_nullable_to_non_nullable
                    as String?,
        content:
            freezed == content
                ? _value._content
                : content // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>?,
        relatedExerciseIds:
            freezed == relatedExerciseIds
                ? _value._relatedExerciseIds
                : relatedExerciseIds // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MaterialImpl implements _Material {
  const _$MaterialImpl({
    this.id,
    required this.sequence,
    required this.title,
    this.subtitle,
    final List<dynamic>? content,
    @JsonKey(name: 'relatedExercises') final List<String>? relatedExerciseIds,
  }) : _content = content,
       _relatedExerciseIds = relatedExerciseIds;

  factory _$MaterialImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaterialImplFromJson(json);

  @override
  final String? id;

  /// Order of material
  @override
  final int sequence;

  /// Title of the material
  @override
  final String title;

  /// Subtitle of the material (optional)
  @override
  final String? subtitle;

  /// Content of the material as block content
  final List<dynamic>? _content;

  /// Content of the material as block content
  @override
  List<dynamic>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// References to related exercises
  final List<String>? _relatedExerciseIds;

  /// References to related exercises
  @override
  @JsonKey(name: 'relatedExercises')
  List<String>? get relatedExerciseIds {
    final value = _relatedExerciseIds;
    if (value == null) return null;
    if (_relatedExerciseIds is EqualUnmodifiableListView)
      return _relatedExerciseIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Material(id: $id, sequence: $sequence, title: $title, subtitle: $subtitle, content: $content, relatedExerciseIds: $relatedExerciseIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality().equals(
              other._relatedExerciseIds,
              _relatedExerciseIds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sequence,
    title,
    subtitle,
    const DeepCollectionEquality().hash(_content),
    const DeepCollectionEquality().hash(_relatedExerciseIds),
  );

  /// Create a copy of Material
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialImplCopyWith<_$MaterialImpl> get copyWith =>
      __$$MaterialImplCopyWithImpl<_$MaterialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaterialImplToJson(this);
  }
}

abstract class _Material implements Material {
  const factory _Material({
    final String? id,
    required final int sequence,
    required final String title,
    final String? subtitle,
    final List<dynamic>? content,
    @JsonKey(name: 'relatedExercises') final List<String>? relatedExerciseIds,
  }) = _$MaterialImpl;

  factory _Material.fromJson(Map<String, dynamic> json) =
      _$MaterialImpl.fromJson;

  @override
  String? get id;

  /// Order of material
  @override
  int get sequence;

  /// Title of the material
  @override
  String get title;

  /// Subtitle of the material (optional)
  @override
  String? get subtitle;

  /// Content of the material as block content
  @override
  List<dynamic>? get content;

  /// References to related exercises
  @override
  @JsonKey(name: 'relatedExercises')
  List<String>? get relatedExerciseIds;

  /// Create a copy of Material
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaterialImplCopyWith<_$MaterialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

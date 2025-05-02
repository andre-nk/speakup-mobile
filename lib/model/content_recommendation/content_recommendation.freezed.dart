// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_recommendation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ContentRecommendation _$ContentRecommendationFromJson(
  Map<String, dynamic> json,
) {
  return _ContentRecommendation.fromJson(json);
}

/// @nodoc
mixin _$ContentRecommendation {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String? get coverImageAlt => throw _privateConstructorUsedError;

  /// Serializes this ContentRecommendation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentRecommendationCopyWith<ContentRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentRecommendationCopyWith<$Res> {
  factory $ContentRecommendationCopyWith(
    ContentRecommendation value,
    $Res Function(ContentRecommendation) then,
  ) = _$ContentRecommendationCopyWithImpl<$Res, ContentRecommendation>;
  @useResult
  $Res call({
    String title,
    String link,
    String? coverImage,
    String? coverImageAlt,
  });
}

/// @nodoc
class _$ContentRecommendationCopyWithImpl<
  $Res,
  $Val extends ContentRecommendation
>
    implements $ContentRecommendationCopyWith<$Res> {
  _$ContentRecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? coverImage = freezed,
    Object? coverImageAlt = freezed,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
            coverImage:
                freezed == coverImage
                    ? _value.coverImage
                    : coverImage // ignore: cast_nullable_to_non_nullable
                        as String?,
            coverImageAlt:
                freezed == coverImageAlt
                    ? _value.coverImageAlt
                    : coverImageAlt // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContentRecommendationImplCopyWith<$Res>
    implements $ContentRecommendationCopyWith<$Res> {
  factory _$$ContentRecommendationImplCopyWith(
    _$ContentRecommendationImpl value,
    $Res Function(_$ContentRecommendationImpl) then,
  ) = __$$ContentRecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String link,
    String? coverImage,
    String? coverImageAlt,
  });
}

/// @nodoc
class __$$ContentRecommendationImplCopyWithImpl<$Res>
    extends
        _$ContentRecommendationCopyWithImpl<$Res, _$ContentRecommendationImpl>
    implements _$$ContentRecommendationImplCopyWith<$Res> {
  __$$ContentRecommendationImplCopyWithImpl(
    _$ContentRecommendationImpl _value,
    $Res Function(_$ContentRecommendationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContentRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? coverImage = freezed,
    Object? coverImageAlt = freezed,
  }) {
    return _then(
      _$ContentRecommendationImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
        coverImage:
            freezed == coverImage
                ? _value.coverImage
                : coverImage // ignore: cast_nullable_to_non_nullable
                    as String?,
        coverImageAlt:
            freezed == coverImageAlt
                ? _value.coverImageAlt
                : coverImageAlt // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentRecommendationImpl implements _ContentRecommendation {
  const _$ContentRecommendationImpl({
    required this.title,
    required this.link,
    this.coverImage,
    this.coverImageAlt,
  });

  factory _$ContentRecommendationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentRecommendationImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String? coverImage;
  @override
  final String? coverImageAlt;

  @override
  String toString() {
    return 'ContentRecommendation(title: $title, link: $link, coverImage: $coverImage, coverImageAlt: $coverImageAlt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentRecommendationImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.coverImageAlt, coverImageAlt) ||
                other.coverImageAlt == coverImageAlt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, link, coverImage, coverImageAlt);

  /// Create a copy of ContentRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentRecommendationImplCopyWith<_$ContentRecommendationImpl>
  get copyWith =>
      __$$ContentRecommendationImplCopyWithImpl<_$ContentRecommendationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentRecommendationImplToJson(this);
  }
}

abstract class _ContentRecommendation implements ContentRecommendation {
  const factory _ContentRecommendation({
    required final String title,
    required final String link,
    final String? coverImage,
    final String? coverImageAlt,
  }) = _$ContentRecommendationImpl;

  factory _ContentRecommendation.fromJson(Map<String, dynamic> json) =
      _$ContentRecommendationImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String? get coverImage;
  @override
  String? get coverImageAlt;

  /// Create a copy of ContentRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentRecommendationImplCopyWith<_$ContentRecommendationImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  DateTime get datetime => throw _privateConstructorUsedError;
  List<dynamic>? get content => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String? get coverImageAlt => throw _privateConstructorUsedError;

  /// Serializes this Article to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call({
    String title,
    String author,
    DateTime datetime,
    List<dynamic>? content,
    String? coverImage,
    String? coverImageAlt,
  });
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? datetime = null,
    Object? content = freezed,
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
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as String,
            datetime:
                null == datetime
                    ? _value.datetime
                    : datetime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>?,
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
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
    _$ArticleImpl value,
    $Res Function(_$ArticleImpl) then,
  ) = __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String author,
    DateTime datetime,
    List<dynamic>? content,
    String? coverImage,
    String? coverImageAlt,
  });
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
    _$ArticleImpl _value,
    $Res Function(_$ArticleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? datetime = null,
    Object? content = freezed,
    Object? coverImage = freezed,
    Object? coverImageAlt = freezed,
  }) {
    return _then(
      _$ArticleImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        author:
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as String,
        datetime:
            null == datetime
                ? _value.datetime
                : datetime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        content:
            freezed == content
                ? _value._content
                : content // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>?,
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
class _$ArticleImpl implements _Article {
  const _$ArticleImpl({
    required this.title,
    required this.author,
    required this.datetime,
    final List<dynamic>? content,
    this.coverImage,
    this.coverImageAlt,
  }) : _content = content;

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  final String title;
  @override
  final String author;
  @override
  final DateTime datetime;
  final List<dynamic>? _content;
  @override
  List<dynamic>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? coverImage;
  @override
  final String? coverImageAlt;

  @override
  String toString() {
    return 'Article(title: $title, author: $author, datetime: $datetime, content: $content, coverImage: $coverImage, coverImageAlt: $coverImageAlt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.coverImageAlt, coverImageAlt) ||
                other.coverImageAlt == coverImageAlt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    author,
    datetime,
    const DeepCollectionEquality().hash(_content),
    coverImage,
    coverImageAlt,
  );

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(this);
  }
}

abstract class _Article implements Article {
  const factory _Article({
    required final String title,
    required final String author,
    required final DateTime datetime,
    final List<dynamic>? content,
    final String? coverImage,
    final String? coverImageAlt,
  }) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  String get title;
  @override
  String get author;
  @override
  DateTime get datetime;
  @override
  List<dynamic>? get content;
  @override
  String? get coverImage;
  @override
  String? get coverImageAlt;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

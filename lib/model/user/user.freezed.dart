// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  String? get nativeLanguage => throw _privateConstructorUsedError;
  EnglishMastery? get englishMastery => throw _privateConstructorUsedError;
  String get goal => throw _privateConstructorUsedError;
  DateTime? get goalDeadline => throw _privateConstructorUsedError;
  int get longestStreak => throw _privateConstructorUsedError;
  int get currentStreak => throw _privateConstructorUsedError;
  List<String> get completedExercises => throw _privateConstructorUsedError;
  List<String> get completedMaterials => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    String uid,
    String email,
    String displayName,
    String? photoURL,
    String? nativeLanguage,
    EnglishMastery? englishMastery,
    String goal,
    DateTime? goalDeadline,
    int longestStreak,
    int currentStreak,
    List<String> completedExercises,
    List<String> completedMaterials,
    DateTime createdAt,
  });
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? photoURL = freezed,
    Object? nativeLanguage = freezed,
    Object? englishMastery = freezed,
    Object? goal = null,
    Object? goalDeadline = freezed,
    Object? longestStreak = null,
    Object? currentStreak = null,
    Object? completedExercises = null,
    Object? completedMaterials = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            displayName:
                null == displayName
                    ? _value.displayName
                    : displayName // ignore: cast_nullable_to_non_nullable
                        as String,
            photoURL:
                freezed == photoURL
                    ? _value.photoURL
                    : photoURL // ignore: cast_nullable_to_non_nullable
                        as String?,
            nativeLanguage:
                freezed == nativeLanguage
                    ? _value.nativeLanguage
                    : nativeLanguage // ignore: cast_nullable_to_non_nullable
                        as String?,
            englishMastery:
                freezed == englishMastery
                    ? _value.englishMastery
                    : englishMastery // ignore: cast_nullable_to_non_nullable
                        as EnglishMastery?,
            goal:
                null == goal
                    ? _value.goal
                    : goal // ignore: cast_nullable_to_non_nullable
                        as String,
            goalDeadline:
                freezed == goalDeadline
                    ? _value.goalDeadline
                    : goalDeadline // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            longestStreak:
                null == longestStreak
                    ? _value.longestStreak
                    : longestStreak // ignore: cast_nullable_to_non_nullable
                        as int,
            currentStreak:
                null == currentStreak
                    ? _value.currentStreak
                    : currentStreak // ignore: cast_nullable_to_non_nullable
                        as int,
            completedExercises:
                null == completedExercises
                    ? _value.completedExercises
                    : completedExercises // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            completedMaterials:
                null == completedMaterials
                    ? _value.completedMaterials
                    : completedMaterials // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String uid,
    String email,
    String displayName,
    String? photoURL,
    String? nativeLanguage,
    EnglishMastery? englishMastery,
    String goal,
    DateTime? goalDeadline,
    int longestStreak,
    int currentStreak,
    List<String> completedExercises,
    List<String> completedMaterials,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? photoURL = freezed,
    Object? nativeLanguage = freezed,
    Object? englishMastery = freezed,
    Object? goal = null,
    Object? goalDeadline = freezed,
    Object? longestStreak = null,
    Object? currentStreak = null,
    Object? completedExercises = null,
    Object? completedMaterials = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$UserImpl(
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        displayName:
            null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                    as String,
        photoURL:
            freezed == photoURL
                ? _value.photoURL
                : photoURL // ignore: cast_nullable_to_non_nullable
                    as String?,
        nativeLanguage:
            freezed == nativeLanguage
                ? _value.nativeLanguage
                : nativeLanguage // ignore: cast_nullable_to_non_nullable
                    as String?,
        englishMastery:
            freezed == englishMastery
                ? _value.englishMastery
                : englishMastery // ignore: cast_nullable_to_non_nullable
                    as EnglishMastery?,
        goal:
            null == goal
                ? _value.goal
                : goal // ignore: cast_nullable_to_non_nullable
                    as String,
        goalDeadline:
            freezed == goalDeadline
                ? _value.goalDeadline
                : goalDeadline // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        longestStreak:
            null == longestStreak
                ? _value.longestStreak
                : longestStreak // ignore: cast_nullable_to_non_nullable
                    as int,
        currentStreak:
            null == currentStreak
                ? _value.currentStreak
                : currentStreak // ignore: cast_nullable_to_non_nullable
                    as int,
        completedExercises:
            null == completedExercises
                ? _value._completedExercises
                : completedExercises // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        completedMaterials:
            null == completedMaterials
                ? _value._completedMaterials
                : completedMaterials // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    required this.uid,
    required this.email,
    required this.displayName,
    this.photoURL,
    this.nativeLanguage,
    this.englishMastery,
    required this.goal,
    this.goalDeadline,
    this.longestStreak = 0,
    this.currentStreak = 0,
    final List<String> completedExercises = const [],
    final List<String> completedMaterials = const [],
    required this.createdAt,
  }) : _completedExercises = completedExercises,
       _completedMaterials = completedMaterials;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? photoURL;
  @override
  final String? nativeLanguage;
  @override
  final EnglishMastery? englishMastery;
  @override
  final String goal;
  @override
  final DateTime? goalDeadline;
  @override
  @JsonKey()
  final int longestStreak;
  @override
  @JsonKey()
  final int currentStreak;
  final List<String> _completedExercises;
  @override
  @JsonKey()
  List<String> get completedExercises {
    if (_completedExercises is EqualUnmodifiableListView)
      return _completedExercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedExercises);
  }

  final List<String> _completedMaterials;
  @override
  @JsonKey()
  List<String> get completedMaterials {
    if (_completedMaterials is EqualUnmodifiableListView)
      return _completedMaterials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedMaterials);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'User(uid: $uid, email: $email, displayName: $displayName, photoURL: $photoURL, nativeLanguage: $nativeLanguage, englishMastery: $englishMastery, goal: $goal, goalDeadline: $goalDeadline, longestStreak: $longestStreak, currentStreak: $currentStreak, completedExercises: $completedExercises, completedMaterials: $completedMaterials, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.nativeLanguage, nativeLanguage) ||
                other.nativeLanguage == nativeLanguage) &&
            (identical(other.englishMastery, englishMastery) ||
                other.englishMastery == englishMastery) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.goalDeadline, goalDeadline) ||
                other.goalDeadline == goalDeadline) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            const DeepCollectionEquality().equals(
              other._completedExercises,
              _completedExercises,
            ) &&
            const DeepCollectionEquality().equals(
              other._completedMaterials,
              _completedMaterials,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    uid,
    email,
    displayName,
    photoURL,
    nativeLanguage,
    englishMastery,
    goal,
    goalDeadline,
    longestStreak,
    currentStreak,
    const DeepCollectionEquality().hash(_completedExercises),
    const DeepCollectionEquality().hash(_completedMaterials),
    createdAt,
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    required final String uid,
    required final String email,
    required final String displayName,
    final String? photoURL,
    final String? nativeLanguage,
    final EnglishMastery? englishMastery,
    required final String goal,
    final DateTime? goalDeadline,
    final int longestStreak,
    final int currentStreak,
    final List<String> completedExercises,
    final List<String> completedMaterials,
    required final DateTime createdAt,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String? get photoURL;
  @override
  String? get nativeLanguage;
  @override
  EnglishMastery? get englishMastery;
  @override
  String get goal;
  @override
  DateTime? get goalDeadline;
  @override
  int get longestStreak;
  @override
  int get currentStreak;
  @override
  List<String> get completedExercises;
  @override
  List<String> get completedMaterials;
  @override
  DateTime get createdAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

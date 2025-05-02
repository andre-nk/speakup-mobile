// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitialized) initial,
    required TResult Function(bool isPlaying, PlayerController playerController)
    playing,
    required TResult Function(PlayerController? playerController) stopped,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitialized)? initial,
    TResult? Function(bool isPlaying, PlayerController playerController)?
    playing,
    TResult? Function(PlayerController? playerController)? stopped,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitialized)? initial,
    TResult Function(bool isPlaying, PlayerController playerController)?
    playing,
    TResult Function(PlayerController? playerController)? stopped,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Playing value)? playing,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
    PlayerState value,
    $Res Function(PlayerState) then,
  ) = _$PlayerStateCopyWithImpl<$Res, PlayerState>;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isInitialized});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isInitialized = null}) {
    return _then(
      _$InitialImpl(
        isInitialized:
            null == isInitialized
                ? _value.isInitialized
                : isInitialized // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.isInitialized = false});

  @override
  @JsonKey()
  final bool isInitialized;

  @override
  String toString() {
    return 'PlayerState.initial(isInitialized: $isInitialized)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isInitialized, isInitialized) ||
                other.isInitialized == isInitialized));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInitialized);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitialized) initial,
    required TResult Function(bool isPlaying, PlayerController playerController)
    playing,
    required TResult Function(PlayerController? playerController) stopped,
    required TResult Function(String message) error,
  }) {
    return initial(isInitialized);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitialized)? initial,
    TResult? Function(bool isPlaying, PlayerController playerController)?
    playing,
    TResult? Function(PlayerController? playerController)? stopped,
    TResult? Function(String message)? error,
  }) {
    return initial?.call(isInitialized);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitialized)? initial,
    TResult Function(bool isPlaying, PlayerController playerController)?
    playing,
    TResult Function(PlayerController? playerController)? stopped,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isInitialized);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Playing value)? playing,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlayerState {
  const factory _Initial({final bool isInitialized}) = _$InitialImpl;

  bool get isInitialized;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayingImplCopyWith<$Res> {
  factory _$$PlayingImplCopyWith(
    _$PlayingImpl value,
    $Res Function(_$PlayingImpl) then,
  ) = __$$PlayingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPlaying, PlayerController playerController});
}

/// @nodoc
class __$$PlayingImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayingImpl>
    implements _$$PlayingImplCopyWith<$Res> {
  __$$PlayingImplCopyWithImpl(
    _$PlayingImpl _value,
    $Res Function(_$PlayingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isPlaying = null, Object? playerController = null}) {
    return _then(
      _$PlayingImpl(
        null == isPlaying
            ? _value.isPlaying
            : isPlaying // ignore: cast_nullable_to_non_nullable
                as bool,
        null == playerController
            ? _value.playerController
            : playerController // ignore: cast_nullable_to_non_nullable
                as PlayerController,
      ),
    );
  }
}

/// @nodoc

class _$PlayingImpl implements _Playing {
  const _$PlayingImpl(this.isPlaying, this.playerController);

  @override
  final bool isPlaying;
  @override
  final PlayerController playerController;

  @override
  String toString() {
    return 'PlayerState.playing(isPlaying: $isPlaying, playerController: $playerController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayingImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.playerController, playerController) ||
                other.playerController == playerController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlaying, playerController);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayingImplCopyWith<_$PlayingImpl> get copyWith =>
      __$$PlayingImplCopyWithImpl<_$PlayingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitialized) initial,
    required TResult Function(bool isPlaying, PlayerController playerController)
    playing,
    required TResult Function(PlayerController? playerController) stopped,
    required TResult Function(String message) error,
  }) {
    return playing(isPlaying, playerController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitialized)? initial,
    TResult? Function(bool isPlaying, PlayerController playerController)?
    playing,
    TResult? Function(PlayerController? playerController)? stopped,
    TResult? Function(String message)? error,
  }) {
    return playing?.call(isPlaying, playerController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitialized)? initial,
    TResult Function(bool isPlaying, PlayerController playerController)?
    playing,
    TResult Function(PlayerController? playerController)? stopped,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(isPlaying, playerController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Error value) error,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Error value)? error,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Playing value)? playing,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _Playing implements PlayerState {
  const factory _Playing(
    final bool isPlaying,
    final PlayerController playerController,
  ) = _$PlayingImpl;

  bool get isPlaying;
  PlayerController get playerController;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayingImplCopyWith<_$PlayingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoppedImplCopyWith<$Res> {
  factory _$$StoppedImplCopyWith(
    _$StoppedImpl value,
    $Res Function(_$StoppedImpl) then,
  ) = __$$StoppedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlayerController? playerController});
}

/// @nodoc
class __$$StoppedImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$StoppedImpl>
    implements _$$StoppedImplCopyWith<$Res> {
  __$$StoppedImplCopyWithImpl(
    _$StoppedImpl _value,
    $Res Function(_$StoppedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playerController = freezed}) {
    return _then(
      _$StoppedImpl(
        freezed == playerController
            ? _value.playerController
            : playerController // ignore: cast_nullable_to_non_nullable
                as PlayerController?,
      ),
    );
  }
}

/// @nodoc

class _$StoppedImpl implements _Stopped {
  const _$StoppedImpl(this.playerController);

  @override
  final PlayerController? playerController;

  @override
  String toString() {
    return 'PlayerState.stopped(playerController: $playerController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoppedImpl &&
            (identical(other.playerController, playerController) ||
                other.playerController == playerController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerController);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoppedImplCopyWith<_$StoppedImpl> get copyWith =>
      __$$StoppedImplCopyWithImpl<_$StoppedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitialized) initial,
    required TResult Function(bool isPlaying, PlayerController playerController)
    playing,
    required TResult Function(PlayerController? playerController) stopped,
    required TResult Function(String message) error,
  }) {
    return stopped(playerController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitialized)? initial,
    TResult? Function(bool isPlaying, PlayerController playerController)?
    playing,
    TResult? Function(PlayerController? playerController)? stopped,
    TResult? Function(String message)? error,
  }) {
    return stopped?.call(playerController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitialized)? initial,
    TResult Function(bool isPlaying, PlayerController playerController)?
    playing,
    TResult Function(PlayerController? playerController)? stopped,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(playerController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Error value) error,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Error value)? error,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Playing value)? playing,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _Stopped implements PlayerState {
  const factory _Stopped(final PlayerController? playerController) =
      _$StoppedImpl;

  PlayerController? get playerController;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoppedImplCopyWith<_$StoppedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PlayerState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitialized) initial,
    required TResult Function(bool isPlaying, PlayerController playerController)
    playing,
    required TResult Function(PlayerController? playerController) stopped,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitialized)? initial,
    TResult? Function(bool isPlaying, PlayerController playerController)?
    playing,
    TResult? Function(PlayerController? playerController)? stopped,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitialized)? initial,
    TResult Function(bool isPlaying, PlayerController playerController)?
    playing,
    TResult Function(PlayerController? playerController)? stopped,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Playing value)? playing,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PlayerState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

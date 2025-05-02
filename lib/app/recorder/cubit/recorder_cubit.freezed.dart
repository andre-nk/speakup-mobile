// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recorder_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RecorderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitialized) initial,
    required TResult Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )
    recording,
    required TResult Function(String filePath) stopped,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitialized)? initial,
    TResult? Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )?
    recording,
    TResult? Function(String filePath)? stopped,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitialized)? initial,
    TResult Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )?
    recording,
    TResult Function(String filePath)? stopped,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Recording value) recording,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Recording value)? recording,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Recording value)? recording,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecorderStateCopyWith<$Res> {
  factory $RecorderStateCopyWith(
    RecorderState value,
    $Res Function(RecorderState) then,
  ) = _$RecorderStateCopyWithImpl<$Res, RecorderState>;
}

/// @nodoc
class _$RecorderStateCopyWithImpl<$Res, $Val extends RecorderState>
    implements $RecorderStateCopyWith<$Res> {
  _$RecorderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecorderState
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
    extends _$RecorderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecorderState
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
    return 'RecorderState.initial(isInitialized: $isInitialized)';
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

  /// Create a copy of RecorderState
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
    required TResult Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )
    recording,
    required TResult Function(String filePath) stopped,
    required TResult Function(String message) error,
  }) {
    return initial(isInitialized);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitialized)? initial,
    TResult? Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )?
    recording,
    TResult? Function(String filePath)? stopped,
    TResult? Function(String message)? error,
  }) {
    return initial?.call(isInitialized);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitialized)? initial,
    TResult Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )?
    recording,
    TResult Function(String filePath)? stopped,
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
    required TResult Function(_Recording value) recording,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Recording value)? recording,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Recording value)? recording,
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

abstract class _Initial implements RecorderState {
  const factory _Initial({final bool isInitialized}) = _$InitialImpl;

  bool get isInitialized;

  /// Create a copy of RecorderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordingImplCopyWith<$Res> {
  factory _$$RecordingImplCopyWith(
    _$RecordingImpl value,
    $Res Function(_$RecordingImpl) then,
  ) = __$$RecordingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int elapsedSeconds,
    bool isPaused,
    RecorderController recorderController,
  });
}

/// @nodoc
class __$$RecordingImplCopyWithImpl<$Res>
    extends _$RecorderStateCopyWithImpl<$Res, _$RecordingImpl>
    implements _$$RecordingImplCopyWith<$Res> {
  __$$RecordingImplCopyWithImpl(
    _$RecordingImpl _value,
    $Res Function(_$RecordingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecorderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsedSeconds = null,
    Object? isPaused = null,
    Object? recorderController = null,
  }) {
    return _then(
      _$RecordingImpl(
        null == elapsedSeconds
            ? _value.elapsedSeconds
            : elapsedSeconds // ignore: cast_nullable_to_non_nullable
                as int,
        null == isPaused
            ? _value.isPaused
            : isPaused // ignore: cast_nullable_to_non_nullable
                as bool,
        null == recorderController
            ? _value.recorderController
            : recorderController // ignore: cast_nullable_to_non_nullable
                as RecorderController,
      ),
    );
  }
}

/// @nodoc

class _$RecordingImpl implements _Recording {
  const _$RecordingImpl(
    this.elapsedSeconds,
    this.isPaused,
    this.recorderController,
  );

  @override
  final int elapsedSeconds;
  @override
  final bool isPaused;
  @override
  final RecorderController recorderController;

  @override
  String toString() {
    return 'RecorderState.recording(elapsedSeconds: $elapsedSeconds, isPaused: $isPaused, recorderController: $recorderController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingImpl &&
            (identical(other.elapsedSeconds, elapsedSeconds) ||
                other.elapsedSeconds == elapsedSeconds) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.recorderController, recorderController) ||
                other.recorderController == recorderController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, elapsedSeconds, isPaused, recorderController);

  /// Create a copy of RecorderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingImplCopyWith<_$RecordingImpl> get copyWith =>
      __$$RecordingImplCopyWithImpl<_$RecordingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitialized) initial,
    required TResult Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )
    recording,
    required TResult Function(String filePath) stopped,
    required TResult Function(String message) error,
  }) {
    return recording(elapsedSeconds, isPaused, recorderController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitialized)? initial,
    TResult? Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )?
    recording,
    TResult? Function(String filePath)? stopped,
    TResult? Function(String message)? error,
  }) {
    return recording?.call(elapsedSeconds, isPaused, recorderController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitialized)? initial,
    TResult Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )?
    recording,
    TResult Function(String filePath)? stopped,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (recording != null) {
      return recording(elapsedSeconds, isPaused, recorderController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Recording value) recording,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Error value) error,
  }) {
    return recording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Recording value)? recording,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Error value)? error,
  }) {
    return recording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Recording value)? recording,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (recording != null) {
      return recording(this);
    }
    return orElse();
  }
}

abstract class _Recording implements RecorderState {
  const factory _Recording(
    final int elapsedSeconds,
    final bool isPaused,
    final RecorderController recorderController,
  ) = _$RecordingImpl;

  int get elapsedSeconds;
  bool get isPaused;
  RecorderController get recorderController;

  /// Create a copy of RecorderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingImplCopyWith<_$RecordingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoppedImplCopyWith<$Res> {
  factory _$$StoppedImplCopyWith(
    _$StoppedImpl value,
    $Res Function(_$StoppedImpl) then,
  ) = __$$StoppedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class __$$StoppedImplCopyWithImpl<$Res>
    extends _$RecorderStateCopyWithImpl<$Res, _$StoppedImpl>
    implements _$$StoppedImplCopyWith<$Res> {
  __$$StoppedImplCopyWithImpl(
    _$StoppedImpl _value,
    $Res Function(_$StoppedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecorderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? filePath = null}) {
    return _then(
      _$StoppedImpl(
        null == filePath
            ? _value.filePath
            : filePath // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$StoppedImpl implements _Stopped {
  const _$StoppedImpl(this.filePath);

  @override
  final String filePath;

  @override
  String toString() {
    return 'RecorderState.stopped(filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoppedImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  /// Create a copy of RecorderState
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
    required TResult Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )
    recording,
    required TResult Function(String filePath) stopped,
    required TResult Function(String message) error,
  }) {
    return stopped(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitialized)? initial,
    TResult? Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )?
    recording,
    TResult? Function(String filePath)? stopped,
    TResult? Function(String message)? error,
  }) {
    return stopped?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitialized)? initial,
    TResult Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )?
    recording,
    TResult Function(String filePath)? stopped,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Recording value) recording,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Error value) error,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Recording value)? recording,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Error value)? error,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Recording value)? recording,
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

abstract class _Stopped implements RecorderState {
  const factory _Stopped(final String filePath) = _$StoppedImpl;

  String get filePath;

  /// Create a copy of RecorderState
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
    extends _$RecorderStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecorderState
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
    return 'RecorderState.error(message: $message)';
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

  /// Create a copy of RecorderState
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
    required TResult Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )
    recording,
    required TResult Function(String filePath) stopped,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitialized)? initial,
    TResult? Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )?
    recording,
    TResult? Function(String filePath)? stopped,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitialized)? initial,
    TResult Function(
      int elapsedSeconds,
      bool isPaused,
      RecorderController recorderController,
    )?
    recording,
    TResult Function(String filePath)? stopped,
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
    required TResult Function(_Recording value) recording,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Recording value)? recording,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Recording value)? recording,
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

abstract class _Error implements RecorderState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of RecorderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ExerciseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> completedExerciseIDs)
    completedExercisesLoaded,
    required TResult Function(List<Session> sessions) sessionsLoaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult? Function(List<Session> sessions)? sessionsLoaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult Function(List<Session> sessions)? sessionsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CompletedExercisesLoaded value)
    completedExercisesLoaded,
    required TResult Function(_SessionsLoaded value) sessionsLoaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CompletedExercisesLoaded value)?
    completedExercisesLoaded,
    TResult? Function(_SessionsLoaded value)? sessionsLoaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CompletedExercisesLoaded value)? completedExercisesLoaded,
    TResult Function(_SessionsLoaded value)? sessionsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseStateCopyWith<$Res> {
  factory $ExerciseStateCopyWith(
    ExerciseState value,
    $Res Function(ExerciseState) then,
  ) = _$ExerciseStateCopyWithImpl<$Res, ExerciseState>;
}

/// @nodoc
class _$ExerciseStateCopyWithImpl<$Res, $Val extends ExerciseState>
    implements $ExerciseStateCopyWith<$Res> {
  _$ExerciseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ExerciseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> completedExerciseIDs)
    completedExercisesLoaded,
    required TResult Function(List<Session> sessions) sessionsLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult? Function(List<Session> sessions)? sessionsLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult Function(List<Session> sessions)? sessionsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CompletedExercisesLoaded value)
    completedExercisesLoaded,
    required TResult Function(_SessionsLoaded value) sessionsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CompletedExercisesLoaded value)?
    completedExercisesLoaded,
    TResult? Function(_SessionsLoaded value)? sessionsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CompletedExercisesLoaded value)? completedExercisesLoaded,
    TResult Function(_SessionsLoaded value)? sessionsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExerciseState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ExerciseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> completedExerciseIDs)
    completedExercisesLoaded,
    required TResult Function(List<Session> sessions) sessionsLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult? Function(List<Session> sessions)? sessionsLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult Function(List<Session> sessions)? sessionsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CompletedExercisesLoaded value)
    completedExercisesLoaded,
    required TResult Function(_SessionsLoaded value) sessionsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CompletedExercisesLoaded value)?
    completedExercisesLoaded,
    TResult? Function(_SessionsLoaded value)? sessionsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CompletedExercisesLoaded value)? completedExercisesLoaded,
    TResult Function(_SessionsLoaded value)? sessionsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ExerciseState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CompletedExercisesLoadedImplCopyWith<$Res> {
  factory _$$CompletedExercisesLoadedImplCopyWith(
    _$CompletedExercisesLoadedImpl value,
    $Res Function(_$CompletedExercisesLoadedImpl) then,
  ) = __$$CompletedExercisesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> completedExerciseIDs});
}

/// @nodoc
class __$$CompletedExercisesLoadedImplCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res, _$CompletedExercisesLoadedImpl>
    implements _$$CompletedExercisesLoadedImplCopyWith<$Res> {
  __$$CompletedExercisesLoadedImplCopyWithImpl(
    _$CompletedExercisesLoadedImpl _value,
    $Res Function(_$CompletedExercisesLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? completedExerciseIDs = null}) {
    return _then(
      _$CompletedExercisesLoadedImpl(
        completedExerciseIDs:
            null == completedExerciseIDs
                ? _value._completedExerciseIDs
                : completedExerciseIDs // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$CompletedExercisesLoadedImpl implements _CompletedExercisesLoaded {
  const _$CompletedExercisesLoadedImpl({
    required final List<String> completedExerciseIDs,
  }) : _completedExerciseIDs = completedExerciseIDs;

  final List<String> _completedExerciseIDs;
  @override
  List<String> get completedExerciseIDs {
    if (_completedExerciseIDs is EqualUnmodifiableListView)
      return _completedExerciseIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedExerciseIDs);
  }

  @override
  String toString() {
    return 'ExerciseState.completedExercisesLoaded(completedExerciseIDs: $completedExerciseIDs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedExercisesLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._completedExerciseIDs,
              _completedExerciseIDs,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_completedExerciseIDs),
  );

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedExercisesLoadedImplCopyWith<_$CompletedExercisesLoadedImpl>
  get copyWith => __$$CompletedExercisesLoadedImplCopyWithImpl<
    _$CompletedExercisesLoadedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> completedExerciseIDs)
    completedExercisesLoaded,
    required TResult Function(List<Session> sessions) sessionsLoaded,
    required TResult Function(String message) error,
  }) {
    return completedExercisesLoaded(completedExerciseIDs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult? Function(List<Session> sessions)? sessionsLoaded,
    TResult? Function(String message)? error,
  }) {
    return completedExercisesLoaded?.call(completedExerciseIDs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult Function(List<Session> sessions)? sessionsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (completedExercisesLoaded != null) {
      return completedExercisesLoaded(completedExerciseIDs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CompletedExercisesLoaded value)
    completedExercisesLoaded,
    required TResult Function(_SessionsLoaded value) sessionsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return completedExercisesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CompletedExercisesLoaded value)?
    completedExercisesLoaded,
    TResult? Function(_SessionsLoaded value)? sessionsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return completedExercisesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CompletedExercisesLoaded value)? completedExercisesLoaded,
    TResult Function(_SessionsLoaded value)? sessionsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (completedExercisesLoaded != null) {
      return completedExercisesLoaded(this);
    }
    return orElse();
  }
}

abstract class _CompletedExercisesLoaded implements ExerciseState {
  const factory _CompletedExercisesLoaded({
    required final List<String> completedExerciseIDs,
  }) = _$CompletedExercisesLoadedImpl;

  List<String> get completedExerciseIDs;

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedExercisesLoadedImplCopyWith<_$CompletedExercisesLoadedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionsLoadedImplCopyWith<$Res> {
  factory _$$SessionsLoadedImplCopyWith(
    _$SessionsLoadedImpl value,
    $Res Function(_$SessionsLoadedImpl) then,
  ) = __$$SessionsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Session> sessions});
}

/// @nodoc
class __$$SessionsLoadedImplCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res, _$SessionsLoadedImpl>
    implements _$$SessionsLoadedImplCopyWith<$Res> {
  __$$SessionsLoadedImplCopyWithImpl(
    _$SessionsLoadedImpl _value,
    $Res Function(_$SessionsLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessions = null}) {
    return _then(
      _$SessionsLoadedImpl(
        sessions:
            null == sessions
                ? _value._sessions
                : sessions // ignore: cast_nullable_to_non_nullable
                    as List<Session>,
      ),
    );
  }
}

/// @nodoc

class _$SessionsLoadedImpl implements _SessionsLoaded {
  const _$SessionsLoadedImpl({required final List<Session> sessions})
    : _sessions = sessions;

  final List<Session> _sessions;
  @override
  List<Session> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'ExerciseState.sessionsLoaded(sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsLoadedImpl &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsLoadedImplCopyWith<_$SessionsLoadedImpl> get copyWith =>
      __$$SessionsLoadedImplCopyWithImpl<_$SessionsLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> completedExerciseIDs)
    completedExercisesLoaded,
    required TResult Function(List<Session> sessions) sessionsLoaded,
    required TResult Function(String message) error,
  }) {
    return sessionsLoaded(sessions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult? Function(List<Session> sessions)? sessionsLoaded,
    TResult? Function(String message)? error,
  }) {
    return sessionsLoaded?.call(sessions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult Function(List<Session> sessions)? sessionsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (sessionsLoaded != null) {
      return sessionsLoaded(sessions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CompletedExercisesLoaded value)
    completedExercisesLoaded,
    required TResult Function(_SessionsLoaded value) sessionsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return sessionsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CompletedExercisesLoaded value)?
    completedExercisesLoaded,
    TResult? Function(_SessionsLoaded value)? sessionsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return sessionsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CompletedExercisesLoaded value)? completedExercisesLoaded,
    TResult Function(_SessionsLoaded value)? sessionsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (sessionsLoaded != null) {
      return sessionsLoaded(this);
    }
    return orElse();
  }
}

abstract class _SessionsLoaded implements ExerciseState {
  const factory _SessionsLoaded({required final List<Session> sessions}) =
      _$SessionsLoadedImpl;

  List<Session> get sessions;

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionsLoadedImplCopyWith<_$SessionsLoadedImpl> get copyWith =>
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
    extends _$ExerciseStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
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

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ExerciseState.error(message: $message)';
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

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> completedExerciseIDs)
    completedExercisesLoaded,
    required TResult Function(List<Session> sessions) sessionsLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult? Function(List<Session> sessions)? sessionsLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> completedExerciseIDs)?
    completedExercisesLoaded,
    TResult Function(List<Session> sessions)? sessionsLoaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_CompletedExercisesLoaded value)
    completedExercisesLoaded,
    required TResult Function(_SessionsLoaded value) sessionsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CompletedExercisesLoaded value)?
    completedExercisesLoaded,
    TResult? Function(_SessionsLoaded value)? sessionsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CompletedExercisesLoaded value)? completedExercisesLoaded,
    TResult Function(_SessionsLoaded value)? sessionsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ExerciseState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of ExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

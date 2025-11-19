// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefreshState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RefreshState()';
  }
}

/// @nodoc
class $RefreshStateCopyWith<$Res> {
  $RefreshStateCopyWith(RefreshState _, $Res Function(RefreshState) __);
}

/// Adds pattern-matching-related methods to [RefreshState].
extension RefreshStatePatterns on RefreshState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshStateChecking value)? checking,
    TResult Function(RefreshStateStatus value)? status,
    TResult Function(RefreshStateProgress value)? progress,
    TResult Function(RefreshStateDone value)? done,
    TResult Function(RefreshStateError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RefreshStateChecking() when checking != null:
        return checking(_that);
      case RefreshStateStatus() when status != null:
        return status(_that);
      case RefreshStateProgress() when progress != null:
        return progress(_that);
      case RefreshStateDone() when done != null:
        return done(_that);
      case RefreshStateError() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshStateChecking value) checking,
    required TResult Function(RefreshStateStatus value) status,
    required TResult Function(RefreshStateProgress value) progress,
    required TResult Function(RefreshStateDone value) done,
    required TResult Function(RefreshStateError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case RefreshStateChecking():
        return checking(_that);
      case RefreshStateStatus():
        return status(_that);
      case RefreshStateProgress():
        return progress(_that);
      case RefreshStateDone():
        return done(_that);
      case RefreshStateError():
        return error(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshStateChecking value)? checking,
    TResult? Function(RefreshStateStatus value)? status,
    TResult? Function(RefreshStateProgress value)? progress,
    TResult? Function(RefreshStateDone value)? done,
    TResult? Function(RefreshStateError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case RefreshStateChecking() when checking != null:
        return checking(_that);
      case RefreshStateStatus() when status != null:
        return status(_that);
      case RefreshStateProgress() when progress != null:
        return progress(_that);
      case RefreshStateDone() when done != null:
        return done(_that);
      case RefreshStateError() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checking,
    TResult Function(RefreshStatus status)? status,
    TResult Function(Change change)? progress,
    TResult Function()? done,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RefreshStateChecking() when checking != null:
        return checking();
      case RefreshStateStatus() when status != null:
        return status(_that.status);
      case RefreshStateProgress() when progress != null:
        return progress(_that.change);
      case RefreshStateDone() when done != null:
        return done();
      case RefreshStateError() when error != null:
        return error(_that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checking,
    required TResult Function(RefreshStatus status) status,
    required TResult Function(Change change) progress,
    required TResult Function() done,
    required TResult Function(Object? error) error,
  }) {
    final _that = this;
    switch (_that) {
      case RefreshStateChecking():
        return checking();
      case RefreshStateStatus():
        return status(_that.status);
      case RefreshStateProgress():
        return progress(_that.change);
      case RefreshStateDone():
        return done();
      case RefreshStateError():
        return error(_that.error);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checking,
    TResult? Function(RefreshStatus status)? status,
    TResult? Function(Change change)? progress,
    TResult? Function()? done,
    TResult? Function(Object? error)? error,
  }) {
    final _that = this;
    switch (_that) {
      case RefreshStateChecking() when checking != null:
        return checking();
      case RefreshStateStatus() when status != null:
        return status(_that.status);
      case RefreshStateProgress() when progress != null:
        return progress(_that.change);
      case RefreshStateDone() when done != null:
        return done();
      case RefreshStateError() when error != null:
        return error(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class RefreshStateChecking extends RefreshState {
  const RefreshStateChecking() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshStateChecking);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RefreshState.checking()';
  }
}

/// @nodoc

class RefreshStateStatus extends RefreshState {
  const RefreshStateStatus(this.status) : super._();

  final RefreshStatus status;

  /// Create a copy of RefreshState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefreshStateStatusCopyWith<RefreshStateStatus> get copyWith =>
      _$RefreshStateStatusCopyWithImpl<RefreshStateStatus>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefreshStateStatus &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @override
  String toString() {
    return 'RefreshState.status(status: $status)';
  }
}

/// @nodoc
abstract mixin class $RefreshStateStatusCopyWith<$Res>
    implements $RefreshStateCopyWith<$Res> {
  factory $RefreshStateStatusCopyWith(
          RefreshStateStatus value, $Res Function(RefreshStateStatus) _then) =
      _$RefreshStateStatusCopyWithImpl;
  @useResult
  $Res call({RefreshStatus status});

  $RefreshStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$RefreshStateStatusCopyWithImpl<$Res>
    implements $RefreshStateStatusCopyWith<$Res> {
  _$RefreshStateStatusCopyWithImpl(this._self, this._then);

  final RefreshStateStatus _self;
  final $Res Function(RefreshStateStatus) _then;

  /// Create a copy of RefreshState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
  }) {
    return _then(RefreshStateStatus(
      null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as RefreshStatus,
    ));
  }

  /// Create a copy of RefreshState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefreshStatusCopyWith<$Res> get status {
    return $RefreshStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// @nodoc

class RefreshStateProgress extends RefreshState {
  const RefreshStateProgress(this.change) : super._();

  final Change change;

  /// Create a copy of RefreshState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefreshStateProgressCopyWith<RefreshStateProgress> get copyWith =>
      _$RefreshStateProgressCopyWithImpl<RefreshStateProgress>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefreshStateProgress &&
            (identical(other.change, change) || other.change == change));
  }

  @override
  int get hashCode => Object.hash(runtimeType, change);

  @override
  String toString() {
    return 'RefreshState.progress(change: $change)';
  }
}

/// @nodoc
abstract mixin class $RefreshStateProgressCopyWith<$Res>
    implements $RefreshStateCopyWith<$Res> {
  factory $RefreshStateProgressCopyWith(RefreshStateProgress value,
          $Res Function(RefreshStateProgress) _then) =
      _$RefreshStateProgressCopyWithImpl;
  @useResult
  $Res call({Change change});

  $ChangeCopyWith<$Res> get change;
}

/// @nodoc
class _$RefreshStateProgressCopyWithImpl<$Res>
    implements $RefreshStateProgressCopyWith<$Res> {
  _$RefreshStateProgressCopyWithImpl(this._self, this._then);

  final RefreshStateProgress _self;
  final $Res Function(RefreshStateProgress) _then;

  /// Create a copy of RefreshState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? change = null,
  }) {
    return _then(RefreshStateProgress(
      null == change
          ? _self.change
          : change // ignore: cast_nullable_to_non_nullable
              as Change,
    ));
  }

  /// Create a copy of RefreshState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChangeCopyWith<$Res> get change {
    return $ChangeCopyWith<$Res>(_self.change, (value) {
      return _then(_self.copyWith(change: value));
    });
  }
}

/// @nodoc

class RefreshStateDone extends RefreshState {
  const RefreshStateDone() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RefreshState.done()';
  }
}

/// @nodoc

class RefreshStateError extends RefreshState {
  const RefreshStateError([this.error]) : super._();

  final Object? error;

  /// Create a copy of RefreshState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefreshStateErrorCopyWith<RefreshStateError> get copyWith =>
      _$RefreshStateErrorCopyWithImpl<RefreshStateError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefreshStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'RefreshState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $RefreshStateErrorCopyWith<$Res>
    implements $RefreshStateCopyWith<$Res> {
  factory $RefreshStateErrorCopyWith(
          RefreshStateError value, $Res Function(RefreshStateError) _then) =
      _$RefreshStateErrorCopyWithImpl;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class _$RefreshStateErrorCopyWithImpl<$Res>
    implements $RefreshStateErrorCopyWith<$Res> {
  _$RefreshStateErrorCopyWithImpl(this._self, this._then);

  final RefreshStateError _self;
  final $Res Function(RefreshStateError) _then;

  /// Create a copy of RefreshState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(RefreshStateError(
      freezed == error ? _self.error : error,
    ));
  }
}

// dart format on

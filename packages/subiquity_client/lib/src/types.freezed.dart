// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ErrorReportRef {
  ErrorReportState get state;
  String get base;
  ErrorReportKind get kind;
  bool get seen;
  String? get oopsId;

  /// Create a copy of ErrorReportRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<ErrorReportRef> get copyWith =>
      _$ErrorReportRefCopyWithImpl<ErrorReportRef>(
          this as ErrorReportRef, _$identity);

  /// Serializes this ErrorReportRef to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorReportRef &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.seen, seen) || other.seen == seen) &&
            (identical(other.oopsId, oopsId) || other.oopsId == oopsId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, state, base, kind, seen, oopsId);

  @override
  String toString() {
    return 'ErrorReportRef(state: $state, base: $base, kind: $kind, seen: $seen, oopsId: $oopsId)';
  }
}

/// @nodoc
abstract mixin class $ErrorReportRefCopyWith<$Res> {
  factory $ErrorReportRefCopyWith(
          ErrorReportRef value, $Res Function(ErrorReportRef) _then) =
      _$ErrorReportRefCopyWithImpl;
  @useResult
  $Res call(
      {ErrorReportState state,
      String base,
      ErrorReportKind kind,
      bool seen,
      String? oopsId});
}

/// @nodoc
class _$ErrorReportRefCopyWithImpl<$Res>
    implements $ErrorReportRefCopyWith<$Res> {
  _$ErrorReportRefCopyWithImpl(this._self, this._then);

  final ErrorReportRef _self;
  final $Res Function(ErrorReportRef) _then;

  /// Create a copy of ErrorReportRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? base = null,
    Object? kind = null,
    Object? seen = null,
    Object? oopsId = freezed,
  }) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as ErrorReportState,
      base: null == base
          ? _self.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as ErrorReportKind,
      seen: null == seen
          ? _self.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      oopsId: freezed == oopsId
          ? _self.oopsId
          : oopsId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ErrorReportRef].
extension ErrorReportRefPatterns on ErrorReportRef {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorReportRef value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErrorReportRef() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorReportRef value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorReportRef():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ErrorReportRef value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorReportRef() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ErrorReportState state, String base, ErrorReportKind kind,
            bool seen, String? oopsId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErrorReportRef() when $default != null:
        return $default(
            _that.state, _that.base, _that.kind, _that.seen, _that.oopsId);
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
  TResult when<TResult extends Object?>(
    TResult Function(ErrorReportState state, String base, ErrorReportKind kind,
            bool seen, String? oopsId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorReportRef():
        return $default(
            _that.state, _that.base, _that.kind, _that.seen, _that.oopsId);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ErrorReportState state, String base, ErrorReportKind kind,
            bool seen, String? oopsId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorReportRef() when $default != null:
        return $default(
            _that.state, _that.base, _that.kind, _that.seen, _that.oopsId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ErrorReportRef implements ErrorReportRef {
  const _ErrorReportRef(
      {required this.state,
      required this.base,
      required this.kind,
      required this.seen,
      required this.oopsId});
  factory _ErrorReportRef.fromJson(Map<String, dynamic> json) =>
      _$ErrorReportRefFromJson(json);

  @override
  final ErrorReportState state;
  @override
  final String base;
  @override
  final ErrorReportKind kind;
  @override
  final bool seen;
  @override
  final String? oopsId;

  /// Create a copy of ErrorReportRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorReportRefCopyWith<_ErrorReportRef> get copyWith =>
      __$ErrorReportRefCopyWithImpl<_ErrorReportRef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ErrorReportRefToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorReportRef &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.seen, seen) || other.seen == seen) &&
            (identical(other.oopsId, oopsId) || other.oopsId == oopsId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, state, base, kind, seen, oopsId);

  @override
  String toString() {
    return 'ErrorReportRef(state: $state, base: $base, kind: $kind, seen: $seen, oopsId: $oopsId)';
  }
}

/// @nodoc
abstract mixin class _$ErrorReportRefCopyWith<$Res>
    implements $ErrorReportRefCopyWith<$Res> {
  factory _$ErrorReportRefCopyWith(
          _ErrorReportRef value, $Res Function(_ErrorReportRef) _then) =
      __$ErrorReportRefCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ErrorReportState state,
      String base,
      ErrorReportKind kind,
      bool seen,
      String? oopsId});
}

/// @nodoc
class __$ErrorReportRefCopyWithImpl<$Res>
    implements _$ErrorReportRefCopyWith<$Res> {
  __$ErrorReportRefCopyWithImpl(this._self, this._then);

  final _ErrorReportRef _self;
  final $Res Function(_ErrorReportRef) _then;

  /// Create a copy of ErrorReportRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? base = null,
    Object? kind = null,
    Object? seen = null,
    Object? oopsId = freezed,
  }) {
    return _then(_ErrorReportRef(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as ErrorReportState,
      base: null == base
          ? _self.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as ErrorReportKind,
      seen: null == seen
          ? _self.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      oopsId: freezed == oopsId
          ? _self.oopsId
          : oopsId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$NonReportableError {
  String get cause;
  String get message;
  String? get details;

  /// Create a copy of NonReportableError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NonReportableErrorCopyWith<NonReportableError> get copyWith =>
      _$NonReportableErrorCopyWithImpl<NonReportableError>(
          this as NonReportableError, _$identity);

  /// Serializes this NonReportableError to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NonReportableError &&
            (identical(other.cause, cause) || other.cause == cause) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cause, message, details);

  @override
  String toString() {
    return 'NonReportableError(cause: $cause, message: $message, details: $details)';
  }
}

/// @nodoc
abstract mixin class $NonReportableErrorCopyWith<$Res> {
  factory $NonReportableErrorCopyWith(
          NonReportableError value, $Res Function(NonReportableError) _then) =
      _$NonReportableErrorCopyWithImpl;
  @useResult
  $Res call({String cause, String message, String? details});
}

/// @nodoc
class _$NonReportableErrorCopyWithImpl<$Res>
    implements $NonReportableErrorCopyWith<$Res> {
  _$NonReportableErrorCopyWithImpl(this._self, this._then);

  final NonReportableError _self;
  final $Res Function(NonReportableError) _then;

  /// Create a copy of NonReportableError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cause = null,
    Object? message = null,
    Object? details = freezed,
  }) {
    return _then(_self.copyWith(
      cause: null == cause
          ? _self.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _self.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NonReportableError].
extension NonReportableErrorPatterns on NonReportableError {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NonReportableError value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NonReportableError() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_NonReportableError value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NonReportableError():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NonReportableError value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NonReportableError() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String cause, String message, String? details)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NonReportableError() when $default != null:
        return $default(_that.cause, _that.message, _that.details);
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
  TResult when<TResult extends Object?>(
    TResult Function(String cause, String message, String? details) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NonReportableError():
        return $default(_that.cause, _that.message, _that.details);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String cause, String message, String? details)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NonReportableError() when $default != null:
        return $default(_that.cause, _that.message, _that.details);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NonReportableError implements NonReportableError {
  const _NonReportableError(
      {required this.cause, required this.message, required this.details});
  factory _NonReportableError.fromJson(Map<String, dynamic> json) =>
      _$NonReportableErrorFromJson(json);

  @override
  final String cause;
  @override
  final String message;
  @override
  final String? details;

  /// Create a copy of NonReportableError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NonReportableErrorCopyWith<_NonReportableError> get copyWith =>
      __$NonReportableErrorCopyWithImpl<_NonReportableError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NonReportableErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NonReportableError &&
            (identical(other.cause, cause) || other.cause == cause) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cause, message, details);

  @override
  String toString() {
    return 'NonReportableError(cause: $cause, message: $message, details: $details)';
  }
}

/// @nodoc
abstract mixin class _$NonReportableErrorCopyWith<$Res>
    implements $NonReportableErrorCopyWith<$Res> {
  factory _$NonReportableErrorCopyWith(
          _NonReportableError value, $Res Function(_NonReportableError) _then) =
      __$NonReportableErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String cause, String message, String? details});
}

/// @nodoc
class __$NonReportableErrorCopyWithImpl<$Res>
    implements _$NonReportableErrorCopyWith<$Res> {
  __$NonReportableErrorCopyWithImpl(this._self, this._then);

  final _NonReportableError _self;
  final $Res Function(_NonReportableError) _then;

  /// Create a copy of NonReportableError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cause = null,
    Object? message = null,
    Object? details = freezed,
  }) {
    return _then(_NonReportableError(
      cause: null == cause
          ? _self.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _self.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ApplicationStatus {
  ApplicationState get state;
  String get confirmingTty;
  ErrorReportRef? get error;
  NonReportableError? get nonreportableError;
  bool? get cloudInitOk;
  bool? get interactive;
  String get echoSyslogId;
  String get logSyslogId;
  String get eventSyslogId;

  /// Create a copy of ApplicationStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApplicationStatusCopyWith<ApplicationStatus> get copyWith =>
      _$ApplicationStatusCopyWithImpl<ApplicationStatus>(
          this as ApplicationStatus, _$identity);

  /// Serializes this ApplicationStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApplicationStatus &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.confirmingTty, confirmingTty) ||
                other.confirmingTty == confirmingTty) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.nonreportableError, nonreportableError) ||
                other.nonreportableError == nonreportableError) &&
            (identical(other.cloudInitOk, cloudInitOk) ||
                other.cloudInitOk == cloudInitOk) &&
            (identical(other.interactive, interactive) ||
                other.interactive == interactive) &&
            (identical(other.echoSyslogId, echoSyslogId) ||
                other.echoSyslogId == echoSyslogId) &&
            (identical(other.logSyslogId, logSyslogId) ||
                other.logSyslogId == logSyslogId) &&
            (identical(other.eventSyslogId, eventSyslogId) ||
                other.eventSyslogId == eventSyslogId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      confirmingTty,
      error,
      nonreportableError,
      cloudInitOk,
      interactive,
      echoSyslogId,
      logSyslogId,
      eventSyslogId);

  @override
  String toString() {
    return 'ApplicationStatus(state: $state, confirmingTty: $confirmingTty, error: $error, nonreportableError: $nonreportableError, cloudInitOk: $cloudInitOk, interactive: $interactive, echoSyslogId: $echoSyslogId, logSyslogId: $logSyslogId, eventSyslogId: $eventSyslogId)';
  }
}

/// @nodoc
abstract mixin class $ApplicationStatusCopyWith<$Res> {
  factory $ApplicationStatusCopyWith(
          ApplicationStatus value, $Res Function(ApplicationStatus) _then) =
      _$ApplicationStatusCopyWithImpl;
  @useResult
  $Res call(
      {ApplicationState state,
      String confirmingTty,
      ErrorReportRef? error,
      NonReportableError? nonreportableError,
      bool? cloudInitOk,
      bool? interactive,
      String echoSyslogId,
      String logSyslogId,
      String eventSyslogId});

  $ErrorReportRefCopyWith<$Res>? get error;
  $NonReportableErrorCopyWith<$Res>? get nonreportableError;
}

/// @nodoc
class _$ApplicationStatusCopyWithImpl<$Res>
    implements $ApplicationStatusCopyWith<$Res> {
  _$ApplicationStatusCopyWithImpl(this._self, this._then);

  final ApplicationStatus _self;
  final $Res Function(ApplicationStatus) _then;

  /// Create a copy of ApplicationStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? confirmingTty = null,
    Object? error = freezed,
    Object? nonreportableError = freezed,
    Object? cloudInitOk = freezed,
    Object? interactive = freezed,
    Object? echoSyslogId = null,
    Object? logSyslogId = null,
    Object? eventSyslogId = null,
  }) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as ApplicationState,
      confirmingTty: null == confirmingTty
          ? _self.confirmingTty
          : confirmingTty // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      nonreportableError: freezed == nonreportableError
          ? _self.nonreportableError
          : nonreportableError // ignore: cast_nullable_to_non_nullable
              as NonReportableError?,
      cloudInitOk: freezed == cloudInitOk
          ? _self.cloudInitOk
          : cloudInitOk // ignore: cast_nullable_to_non_nullable
              as bool?,
      interactive: freezed == interactive
          ? _self.interactive
          : interactive // ignore: cast_nullable_to_non_nullable
              as bool?,
      echoSyslogId: null == echoSyslogId
          ? _self.echoSyslogId
          : echoSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
      logSyslogId: null == logSyslogId
          ? _self.logSyslogId
          : logSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
      eventSyslogId: null == eventSyslogId
          ? _self.eventSyslogId
          : eventSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ApplicationStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }

  /// Create a copy of ApplicationStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NonReportableErrorCopyWith<$Res>? get nonreportableError {
    if (_self.nonreportableError == null) {
      return null;
    }

    return $NonReportableErrorCopyWith<$Res>(_self.nonreportableError!,
        (value) {
      return _then(_self.copyWith(nonreportableError: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ApplicationStatus].
extension ApplicationStatusPatterns on ApplicationStatus {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApplicationStatus value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApplicationStatus() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_ApplicationStatus value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApplicationStatus():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApplicationStatus value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApplicationStatus() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ApplicationState state,
            String confirmingTty,
            ErrorReportRef? error,
            NonReportableError? nonreportableError,
            bool? cloudInitOk,
            bool? interactive,
            String echoSyslogId,
            String logSyslogId,
            String eventSyslogId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApplicationStatus() when $default != null:
        return $default(
            _that.state,
            _that.confirmingTty,
            _that.error,
            _that.nonreportableError,
            _that.cloudInitOk,
            _that.interactive,
            _that.echoSyslogId,
            _that.logSyslogId,
            _that.eventSyslogId);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            ApplicationState state,
            String confirmingTty,
            ErrorReportRef? error,
            NonReportableError? nonreportableError,
            bool? cloudInitOk,
            bool? interactive,
            String echoSyslogId,
            String logSyslogId,
            String eventSyslogId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApplicationStatus():
        return $default(
            _that.state,
            _that.confirmingTty,
            _that.error,
            _that.nonreportableError,
            _that.cloudInitOk,
            _that.interactive,
            _that.echoSyslogId,
            _that.logSyslogId,
            _that.eventSyslogId);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            ApplicationState state,
            String confirmingTty,
            ErrorReportRef? error,
            NonReportableError? nonreportableError,
            bool? cloudInitOk,
            bool? interactive,
            String echoSyslogId,
            String logSyslogId,
            String eventSyslogId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApplicationStatus() when $default != null:
        return $default(
            _that.state,
            _that.confirmingTty,
            _that.error,
            _that.nonreportableError,
            _that.cloudInitOk,
            _that.interactive,
            _that.echoSyslogId,
            _that.logSyslogId,
            _that.eventSyslogId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ApplicationStatus implements ApplicationStatus {
  const _ApplicationStatus(
      {required this.state,
      required this.confirmingTty,
      required this.error,
      required this.nonreportableError,
      required this.cloudInitOk,
      required this.interactive,
      required this.echoSyslogId,
      required this.logSyslogId,
      required this.eventSyslogId});
  factory _ApplicationStatus.fromJson(Map<String, dynamic> json) =>
      _$ApplicationStatusFromJson(json);

  @override
  final ApplicationState state;
  @override
  final String confirmingTty;
  @override
  final ErrorReportRef? error;
  @override
  final NonReportableError? nonreportableError;
  @override
  final bool? cloudInitOk;
  @override
  final bool? interactive;
  @override
  final String echoSyslogId;
  @override
  final String logSyslogId;
  @override
  final String eventSyslogId;

  /// Create a copy of ApplicationStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApplicationStatusCopyWith<_ApplicationStatus> get copyWith =>
      __$ApplicationStatusCopyWithImpl<_ApplicationStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApplicationStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApplicationStatus &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.confirmingTty, confirmingTty) ||
                other.confirmingTty == confirmingTty) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.nonreportableError, nonreportableError) ||
                other.nonreportableError == nonreportableError) &&
            (identical(other.cloudInitOk, cloudInitOk) ||
                other.cloudInitOk == cloudInitOk) &&
            (identical(other.interactive, interactive) ||
                other.interactive == interactive) &&
            (identical(other.echoSyslogId, echoSyslogId) ||
                other.echoSyslogId == echoSyslogId) &&
            (identical(other.logSyslogId, logSyslogId) ||
                other.logSyslogId == logSyslogId) &&
            (identical(other.eventSyslogId, eventSyslogId) ||
                other.eventSyslogId == eventSyslogId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      confirmingTty,
      error,
      nonreportableError,
      cloudInitOk,
      interactive,
      echoSyslogId,
      logSyslogId,
      eventSyslogId);

  @override
  String toString() {
    return 'ApplicationStatus(state: $state, confirmingTty: $confirmingTty, error: $error, nonreportableError: $nonreportableError, cloudInitOk: $cloudInitOk, interactive: $interactive, echoSyslogId: $echoSyslogId, logSyslogId: $logSyslogId, eventSyslogId: $eventSyslogId)';
  }
}

/// @nodoc
abstract mixin class _$ApplicationStatusCopyWith<$Res>
    implements $ApplicationStatusCopyWith<$Res> {
  factory _$ApplicationStatusCopyWith(
          _ApplicationStatus value, $Res Function(_ApplicationStatus) _then) =
      __$ApplicationStatusCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ApplicationState state,
      String confirmingTty,
      ErrorReportRef? error,
      NonReportableError? nonreportableError,
      bool? cloudInitOk,
      bool? interactive,
      String echoSyslogId,
      String logSyslogId,
      String eventSyslogId});

  @override
  $ErrorReportRefCopyWith<$Res>? get error;
  @override
  $NonReportableErrorCopyWith<$Res>? get nonreportableError;
}

/// @nodoc
class __$ApplicationStatusCopyWithImpl<$Res>
    implements _$ApplicationStatusCopyWith<$Res> {
  __$ApplicationStatusCopyWithImpl(this._self, this._then);

  final _ApplicationStatus _self;
  final $Res Function(_ApplicationStatus) _then;

  /// Create a copy of ApplicationStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? confirmingTty = null,
    Object? error = freezed,
    Object? nonreportableError = freezed,
    Object? cloudInitOk = freezed,
    Object? interactive = freezed,
    Object? echoSyslogId = null,
    Object? logSyslogId = null,
    Object? eventSyslogId = null,
  }) {
    return _then(_ApplicationStatus(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as ApplicationState,
      confirmingTty: null == confirmingTty
          ? _self.confirmingTty
          : confirmingTty // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      nonreportableError: freezed == nonreportableError
          ? _self.nonreportableError
          : nonreportableError // ignore: cast_nullable_to_non_nullable
              as NonReportableError?,
      cloudInitOk: freezed == cloudInitOk
          ? _self.cloudInitOk
          : cloudInitOk // ignore: cast_nullable_to_non_nullable
              as bool?,
      interactive: freezed == interactive
          ? _self.interactive
          : interactive // ignore: cast_nullable_to_non_nullable
              as bool?,
      echoSyslogId: null == echoSyslogId
          ? _self.echoSyslogId
          : echoSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
      logSyslogId: null == logSyslogId
          ? _self.logSyslogId
          : logSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
      eventSyslogId: null == eventSyslogId
          ? _self.eventSyslogId
          : eventSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ApplicationStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }

  /// Create a copy of ApplicationStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NonReportableErrorCopyWith<$Res>? get nonreportableError {
    if (_self.nonreportableError == null) {
      return null;
    }

    return $NonReportableErrorCopyWith<$Res>(_self.nonreportableError!,
        (value) {
      return _then(_self.copyWith(nonreportableError: value));
    });
  }
}

/// @nodoc
mixin _$KeyFingerprint {
  String get keytype;
  String get fingerprint;

  /// Create a copy of KeyFingerprint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyFingerprintCopyWith<KeyFingerprint> get copyWith =>
      _$KeyFingerprintCopyWithImpl<KeyFingerprint>(
          this as KeyFingerprint, _$identity);

  /// Serializes this KeyFingerprint to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeyFingerprint &&
            (identical(other.keytype, keytype) || other.keytype == keytype) &&
            (identical(other.fingerprint, fingerprint) ||
                other.fingerprint == fingerprint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keytype, fingerprint);

  @override
  String toString() {
    return 'KeyFingerprint(keytype: $keytype, fingerprint: $fingerprint)';
  }
}

/// @nodoc
abstract mixin class $KeyFingerprintCopyWith<$Res> {
  factory $KeyFingerprintCopyWith(
          KeyFingerprint value, $Res Function(KeyFingerprint) _then) =
      _$KeyFingerprintCopyWithImpl;
  @useResult
  $Res call({String keytype, String fingerprint});
}

/// @nodoc
class _$KeyFingerprintCopyWithImpl<$Res>
    implements $KeyFingerprintCopyWith<$Res> {
  _$KeyFingerprintCopyWithImpl(this._self, this._then);

  final KeyFingerprint _self;
  final $Res Function(KeyFingerprint) _then;

  /// Create a copy of KeyFingerprint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keytype = null,
    Object? fingerprint = null,
  }) {
    return _then(_self.copyWith(
      keytype: null == keytype
          ? _self.keytype
          : keytype // ignore: cast_nullable_to_non_nullable
              as String,
      fingerprint: null == fingerprint
          ? _self.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [KeyFingerprint].
extension KeyFingerprintPatterns on KeyFingerprint {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KeyFingerprint value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyFingerprint() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_KeyFingerprint value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyFingerprint():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KeyFingerprint value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyFingerprint() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String keytype, String fingerprint)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyFingerprint() when $default != null:
        return $default(_that.keytype, _that.fingerprint);
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
  TResult when<TResult extends Object?>(
    TResult Function(String keytype, String fingerprint) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyFingerprint():
        return $default(_that.keytype, _that.fingerprint);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String keytype, String fingerprint)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyFingerprint() when $default != null:
        return $default(_that.keytype, _that.fingerprint);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _KeyFingerprint implements KeyFingerprint {
  const _KeyFingerprint({required this.keytype, required this.fingerprint});
  factory _KeyFingerprint.fromJson(Map<String, dynamic> json) =>
      _$KeyFingerprintFromJson(json);

  @override
  final String keytype;
  @override
  final String fingerprint;

  /// Create a copy of KeyFingerprint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyFingerprintCopyWith<_KeyFingerprint> get copyWith =>
      __$KeyFingerprintCopyWithImpl<_KeyFingerprint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyFingerprintToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeyFingerprint &&
            (identical(other.keytype, keytype) || other.keytype == keytype) &&
            (identical(other.fingerprint, fingerprint) ||
                other.fingerprint == fingerprint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keytype, fingerprint);

  @override
  String toString() {
    return 'KeyFingerprint(keytype: $keytype, fingerprint: $fingerprint)';
  }
}

/// @nodoc
abstract mixin class _$KeyFingerprintCopyWith<$Res>
    implements $KeyFingerprintCopyWith<$Res> {
  factory _$KeyFingerprintCopyWith(
          _KeyFingerprint value, $Res Function(_KeyFingerprint) _then) =
      __$KeyFingerprintCopyWithImpl;
  @override
  @useResult
  $Res call({String keytype, String fingerprint});
}

/// @nodoc
class __$KeyFingerprintCopyWithImpl<$Res>
    implements _$KeyFingerprintCopyWith<$Res> {
  __$KeyFingerprintCopyWithImpl(this._self, this._then);

  final _KeyFingerprint _self;
  final $Res Function(_KeyFingerprint) _then;

  /// Create a copy of KeyFingerprint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keytype = null,
    Object? fingerprint = null,
  }) {
    return _then(_KeyFingerprint(
      keytype: null == keytype
          ? _self.keytype
          : keytype // ignore: cast_nullable_to_non_nullable
              as String,
      fingerprint: null == fingerprint
          ? _self.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$LiveSessionSSHInfo {
  String get username;
  PasswordKind get passwordKind;
  String? get password;
  List<KeyFingerprint> get authorizedKeyFingerprints;
  List<String> get ips;
  List<KeyFingerprint> get hostKeyFingerprints;

  /// Create a copy of LiveSessionSSHInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LiveSessionSSHInfoCopyWith<LiveSessionSSHInfo> get copyWith =>
      _$LiveSessionSSHInfoCopyWithImpl<LiveSessionSSHInfo>(
          this as LiveSessionSSHInfo, _$identity);

  /// Serializes this LiveSessionSSHInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LiveSessionSSHInfo &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.passwordKind, passwordKind) ||
                other.passwordKind == passwordKind) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(
                other.authorizedKeyFingerprints, authorizedKeyFingerprints) &&
            const DeepCollectionEquality().equals(other.ips, ips) &&
            const DeepCollectionEquality()
                .equals(other.hostKeyFingerprints, hostKeyFingerprints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      passwordKind,
      password,
      const DeepCollectionEquality().hash(authorizedKeyFingerprints),
      const DeepCollectionEquality().hash(ips),
      const DeepCollectionEquality().hash(hostKeyFingerprints));

  @override
  String toString() {
    return 'LiveSessionSSHInfo(username: $username, passwordKind: $passwordKind, password: $password, authorizedKeyFingerprints: $authorizedKeyFingerprints, ips: $ips, hostKeyFingerprints: $hostKeyFingerprints)';
  }
}

/// @nodoc
abstract mixin class $LiveSessionSSHInfoCopyWith<$Res> {
  factory $LiveSessionSSHInfoCopyWith(
          LiveSessionSSHInfo value, $Res Function(LiveSessionSSHInfo) _then) =
      _$LiveSessionSSHInfoCopyWithImpl;
  @useResult
  $Res call(
      {String username,
      PasswordKind passwordKind,
      String? password,
      List<KeyFingerprint> authorizedKeyFingerprints,
      List<String> ips,
      List<KeyFingerprint> hostKeyFingerprints});
}

/// @nodoc
class _$LiveSessionSSHInfoCopyWithImpl<$Res>
    implements $LiveSessionSSHInfoCopyWith<$Res> {
  _$LiveSessionSSHInfoCopyWithImpl(this._self, this._then);

  final LiveSessionSSHInfo _self;
  final $Res Function(LiveSessionSSHInfo) _then;

  /// Create a copy of LiveSessionSSHInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? passwordKind = null,
    Object? password = freezed,
    Object? authorizedKeyFingerprints = null,
    Object? ips = null,
    Object? hostKeyFingerprints = null,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      passwordKind: null == passwordKind
          ? _self.passwordKind
          : passwordKind // ignore: cast_nullable_to_non_nullable
              as PasswordKind,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizedKeyFingerprints: null == authorizedKeyFingerprints
          ? _self.authorizedKeyFingerprints
          : authorizedKeyFingerprints // ignore: cast_nullable_to_non_nullable
              as List<KeyFingerprint>,
      ips: null == ips
          ? _self.ips
          : ips // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hostKeyFingerprints: null == hostKeyFingerprints
          ? _self.hostKeyFingerprints
          : hostKeyFingerprints // ignore: cast_nullable_to_non_nullable
              as List<KeyFingerprint>,
    ));
  }
}

/// Adds pattern-matching-related methods to [LiveSessionSSHInfo].
extension LiveSessionSSHInfoPatterns on LiveSessionSSHInfo {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LiveSessionSSHInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LiveSessionSSHInfo() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_LiveSessionSSHInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveSessionSSHInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LiveSessionSSHInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveSessionSSHInfo() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String username,
            PasswordKind passwordKind,
            String? password,
            List<KeyFingerprint> authorizedKeyFingerprints,
            List<String> ips,
            List<KeyFingerprint> hostKeyFingerprints)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LiveSessionSSHInfo() when $default != null:
        return $default(
            _that.username,
            _that.passwordKind,
            _that.password,
            _that.authorizedKeyFingerprints,
            _that.ips,
            _that.hostKeyFingerprints);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String username,
            PasswordKind passwordKind,
            String? password,
            List<KeyFingerprint> authorizedKeyFingerprints,
            List<String> ips,
            List<KeyFingerprint> hostKeyFingerprints)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveSessionSSHInfo():
        return $default(
            _that.username,
            _that.passwordKind,
            _that.password,
            _that.authorizedKeyFingerprints,
            _that.ips,
            _that.hostKeyFingerprints);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String username,
            PasswordKind passwordKind,
            String? password,
            List<KeyFingerprint> authorizedKeyFingerprints,
            List<String> ips,
            List<KeyFingerprint> hostKeyFingerprints)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LiveSessionSSHInfo() when $default != null:
        return $default(
            _that.username,
            _that.passwordKind,
            _that.password,
            _that.authorizedKeyFingerprints,
            _that.ips,
            _that.hostKeyFingerprints);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LiveSessionSSHInfo implements LiveSessionSSHInfo {
  const _LiveSessionSSHInfo(
      {required this.username,
      required this.passwordKind,
      required this.password,
      required final List<KeyFingerprint> authorizedKeyFingerprints,
      required final List<String> ips,
      required final List<KeyFingerprint> hostKeyFingerprints})
      : _authorizedKeyFingerprints = authorizedKeyFingerprints,
        _ips = ips,
        _hostKeyFingerprints = hostKeyFingerprints;
  factory _LiveSessionSSHInfo.fromJson(Map<String, dynamic> json) =>
      _$LiveSessionSSHInfoFromJson(json);

  @override
  final String username;
  @override
  final PasswordKind passwordKind;
  @override
  final String? password;
  final List<KeyFingerprint> _authorizedKeyFingerprints;
  @override
  List<KeyFingerprint> get authorizedKeyFingerprints {
    if (_authorizedKeyFingerprints is EqualUnmodifiableListView)
      return _authorizedKeyFingerprints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authorizedKeyFingerprints);
  }

  final List<String> _ips;
  @override
  List<String> get ips {
    if (_ips is EqualUnmodifiableListView) return _ips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ips);
  }

  final List<KeyFingerprint> _hostKeyFingerprints;
  @override
  List<KeyFingerprint> get hostKeyFingerprints {
    if (_hostKeyFingerprints is EqualUnmodifiableListView)
      return _hostKeyFingerprints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hostKeyFingerprints);
  }

  /// Create a copy of LiveSessionSSHInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LiveSessionSSHInfoCopyWith<_LiveSessionSSHInfo> get copyWith =>
      __$LiveSessionSSHInfoCopyWithImpl<_LiveSessionSSHInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LiveSessionSSHInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LiveSessionSSHInfo &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.passwordKind, passwordKind) ||
                other.passwordKind == passwordKind) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(
                other._authorizedKeyFingerprints, _authorizedKeyFingerprints) &&
            const DeepCollectionEquality().equals(other._ips, _ips) &&
            const DeepCollectionEquality()
                .equals(other._hostKeyFingerprints, _hostKeyFingerprints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      passwordKind,
      password,
      const DeepCollectionEquality().hash(_authorizedKeyFingerprints),
      const DeepCollectionEquality().hash(_ips),
      const DeepCollectionEquality().hash(_hostKeyFingerprints));

  @override
  String toString() {
    return 'LiveSessionSSHInfo(username: $username, passwordKind: $passwordKind, password: $password, authorizedKeyFingerprints: $authorizedKeyFingerprints, ips: $ips, hostKeyFingerprints: $hostKeyFingerprints)';
  }
}

/// @nodoc
abstract mixin class _$LiveSessionSSHInfoCopyWith<$Res>
    implements $LiveSessionSSHInfoCopyWith<$Res> {
  factory _$LiveSessionSSHInfoCopyWith(
          _LiveSessionSSHInfo value, $Res Function(_LiveSessionSSHInfo) _then) =
      __$LiveSessionSSHInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String username,
      PasswordKind passwordKind,
      String? password,
      List<KeyFingerprint> authorizedKeyFingerprints,
      List<String> ips,
      List<KeyFingerprint> hostKeyFingerprints});
}

/// @nodoc
class __$LiveSessionSSHInfoCopyWithImpl<$Res>
    implements _$LiveSessionSSHInfoCopyWith<$Res> {
  __$LiveSessionSSHInfoCopyWithImpl(this._self, this._then);

  final _LiveSessionSSHInfo _self;
  final $Res Function(_LiveSessionSSHInfo) _then;

  /// Create a copy of LiveSessionSSHInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? passwordKind = null,
    Object? password = freezed,
    Object? authorizedKeyFingerprints = null,
    Object? ips = null,
    Object? hostKeyFingerprints = null,
  }) {
    return _then(_LiveSessionSSHInfo(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      passwordKind: null == passwordKind
          ? _self.passwordKind
          : passwordKind // ignore: cast_nullable_to_non_nullable
              as PasswordKind,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizedKeyFingerprints: null == authorizedKeyFingerprints
          ? _self._authorizedKeyFingerprints
          : authorizedKeyFingerprints // ignore: cast_nullable_to_non_nullable
              as List<KeyFingerprint>,
      ips: null == ips
          ? _self._ips
          : ips // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hostKeyFingerprints: null == hostKeyFingerprints
          ? _self._hostKeyFingerprints
          : hostKeyFingerprints // ignore: cast_nullable_to_non_nullable
              as List<KeyFingerprint>,
    ));
  }
}

/// @nodoc
mixin _$RefreshStatus {
  RefreshCheckState get availability;
  String get currentSnapVersion;
  String get newSnapVersion;

  /// Create a copy of RefreshStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefreshStatusCopyWith<RefreshStatus> get copyWith =>
      _$RefreshStatusCopyWithImpl<RefreshStatus>(
          this as RefreshStatus, _$identity);

  /// Serializes this RefreshStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefreshStatus &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.currentSnapVersion, currentSnapVersion) ||
                other.currentSnapVersion == currentSnapVersion) &&
            (identical(other.newSnapVersion, newSnapVersion) ||
                other.newSnapVersion == newSnapVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, availability, currentSnapVersion, newSnapVersion);

  @override
  String toString() {
    return 'RefreshStatus(availability: $availability, currentSnapVersion: $currentSnapVersion, newSnapVersion: $newSnapVersion)';
  }
}

/// @nodoc
abstract mixin class $RefreshStatusCopyWith<$Res> {
  factory $RefreshStatusCopyWith(
          RefreshStatus value, $Res Function(RefreshStatus) _then) =
      _$RefreshStatusCopyWithImpl;
  @useResult
  $Res call(
      {RefreshCheckState availability,
      String currentSnapVersion,
      String newSnapVersion});
}

/// @nodoc
class _$RefreshStatusCopyWithImpl<$Res>
    implements $RefreshStatusCopyWith<$Res> {
  _$RefreshStatusCopyWithImpl(this._self, this._then);

  final RefreshStatus _self;
  final $Res Function(RefreshStatus) _then;

  /// Create a copy of RefreshStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availability = null,
    Object? currentSnapVersion = null,
    Object? newSnapVersion = null,
  }) {
    return _then(_self.copyWith(
      availability: null == availability
          ? _self.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as RefreshCheckState,
      currentSnapVersion: null == currentSnapVersion
          ? _self.currentSnapVersion
          : currentSnapVersion // ignore: cast_nullable_to_non_nullable
              as String,
      newSnapVersion: null == newSnapVersion
          ? _self.newSnapVersion
          : newSnapVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [RefreshStatus].
extension RefreshStatusPatterns on RefreshStatus {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RefreshStatus value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RefreshStatus() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_RefreshStatus value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshStatus():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RefreshStatus value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshStatus() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(RefreshCheckState availability, String currentSnapVersion,
            String newSnapVersion)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RefreshStatus() when $default != null:
        return $default(
            _that.availability, _that.currentSnapVersion, _that.newSnapVersion);
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
  TResult when<TResult extends Object?>(
    TResult Function(RefreshCheckState availability, String currentSnapVersion,
            String newSnapVersion)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshStatus():
        return $default(
            _that.availability, _that.currentSnapVersion, _that.newSnapVersion);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(RefreshCheckState availability, String currentSnapVersion,
            String newSnapVersion)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshStatus() when $default != null:
        return $default(
            _that.availability, _that.currentSnapVersion, _that.newSnapVersion);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RefreshStatus implements RefreshStatus {
  const _RefreshStatus(
      {required this.availability,
      this.currentSnapVersion = '',
      this.newSnapVersion = ''});
  factory _RefreshStatus.fromJson(Map<String, dynamic> json) =>
      _$RefreshStatusFromJson(json);

  @override
  final RefreshCheckState availability;
  @override
  @JsonKey()
  final String currentSnapVersion;
  @override
  @JsonKey()
  final String newSnapVersion;

  /// Create a copy of RefreshStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RefreshStatusCopyWith<_RefreshStatus> get copyWith =>
      __$RefreshStatusCopyWithImpl<_RefreshStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RefreshStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefreshStatus &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.currentSnapVersion, currentSnapVersion) ||
                other.currentSnapVersion == currentSnapVersion) &&
            (identical(other.newSnapVersion, newSnapVersion) ||
                other.newSnapVersion == newSnapVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, availability, currentSnapVersion, newSnapVersion);

  @override
  String toString() {
    return 'RefreshStatus(availability: $availability, currentSnapVersion: $currentSnapVersion, newSnapVersion: $newSnapVersion)';
  }
}

/// @nodoc
abstract mixin class _$RefreshStatusCopyWith<$Res>
    implements $RefreshStatusCopyWith<$Res> {
  factory _$RefreshStatusCopyWith(
          _RefreshStatus value, $Res Function(_RefreshStatus) _then) =
      __$RefreshStatusCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RefreshCheckState availability,
      String currentSnapVersion,
      String newSnapVersion});
}

/// @nodoc
class __$RefreshStatusCopyWithImpl<$Res>
    implements _$RefreshStatusCopyWith<$Res> {
  __$RefreshStatusCopyWithImpl(this._self, this._then);

  final _RefreshStatus _self;
  final $Res Function(_RefreshStatus) _then;

  /// Create a copy of RefreshStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? availability = null,
    Object? currentSnapVersion = null,
    Object? newSnapVersion = null,
  }) {
    return _then(_RefreshStatus(
      availability: null == availability
          ? _self.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as RefreshCheckState,
      currentSnapVersion: null == currentSnapVersion
          ? _self.currentSnapVersion
          : currentSnapVersion // ignore: cast_nullable_to_non_nullable
              as String,
      newSnapVersion: null == newSnapVersion
          ? _self.newSnapVersion
          : newSnapVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

AnyStep _$AnyStepFromJson(Map<String, dynamic> json) {
  switch (json['\$type']) {
    case 'StepPressKey':
      return StepPressKey.fromJson(json);
    case 'StepKeyPresent':
      return StepKeyPresent.fromJson(json);
    case 'StepResult':
      return StepResult.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, '\$type', 'AnyStep', 'Invalid union type "${json['\$type']}"!');
  }
}

/// @nodoc
mixin _$AnyStep {
  /// Serializes this AnyStep to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AnyStep);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AnyStep()';
  }
}

/// @nodoc
class $AnyStepCopyWith<$Res> {
  $AnyStepCopyWith(AnyStep _, $Res Function(AnyStep) __);
}

/// Adds pattern-matching-related methods to [AnyStep].
extension AnyStepPatterns on AnyStep {
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
    TResult Function(StepPressKey value)? stepPressKey,
    TResult Function(StepKeyPresent value)? stepKeyPresent,
    TResult Function(StepResult value)? stepResult,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case StepPressKey() when stepPressKey != null:
        return stepPressKey(_that);
      case StepKeyPresent() when stepKeyPresent != null:
        return stepKeyPresent(_that);
      case StepResult() when stepResult != null:
        return stepResult(_that);
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
    required TResult Function(StepPressKey value) stepPressKey,
    required TResult Function(StepKeyPresent value) stepKeyPresent,
    required TResult Function(StepResult value) stepResult,
  }) {
    final _that = this;
    switch (_that) {
      case StepPressKey():
        return stepPressKey(_that);
      case StepKeyPresent():
        return stepKeyPresent(_that);
      case StepResult():
        return stepResult(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(StepPressKey value)? stepPressKey,
    TResult? Function(StepKeyPresent value)? stepKeyPresent,
    TResult? Function(StepResult value)? stepResult,
  }) {
    final _that = this;
    switch (_that) {
      case StepPressKey() when stepPressKey != null:
        return stepPressKey(_that);
      case StepKeyPresent() when stepKeyPresent != null:
        return stepKeyPresent(_that);
      case StepResult() when stepResult != null:
        return stepResult(_that);
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
    TResult Function(List<String> symbols, Map<int, String> keycodes)?
        stepPressKey,
    TResult Function(String symbol, String yes, String no)? stepKeyPresent,
    TResult Function(String layout, String variant)? stepResult,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case StepPressKey() when stepPressKey != null:
        return stepPressKey(_that.symbols, _that.keycodes);
      case StepKeyPresent() when stepKeyPresent != null:
        return stepKeyPresent(_that.symbol, _that.yes, _that.no);
      case StepResult() when stepResult != null:
        return stepResult(_that.layout, _that.variant);
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
    required TResult Function(List<String> symbols, Map<int, String> keycodes)
        stepPressKey,
    required TResult Function(String symbol, String yes, String no)
        stepKeyPresent,
    required TResult Function(String layout, String variant) stepResult,
  }) {
    final _that = this;
    switch (_that) {
      case StepPressKey():
        return stepPressKey(_that.symbols, _that.keycodes);
      case StepKeyPresent():
        return stepKeyPresent(_that.symbol, _that.yes, _that.no);
      case StepResult():
        return stepResult(_that.layout, _that.variant);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(List<String> symbols, Map<int, String> keycodes)?
        stepPressKey,
    TResult? Function(String symbol, String yes, String no)? stepKeyPresent,
    TResult? Function(String layout, String variant)? stepResult,
  }) {
    final _that = this;
    switch (_that) {
      case StepPressKey() when stepPressKey != null:
        return stepPressKey(_that.symbols, _that.keycodes);
      case StepKeyPresent() when stepKeyPresent != null:
        return stepKeyPresent(_that.symbol, _that.yes, _that.no);
      case StepResult() when stepResult != null:
        return stepResult(_that.layout, _that.variant);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
@JsonMapConverter()
class StepPressKey implements AnyStep {
  const StepPressKey(
      {required final List<String> symbols,
      required final Map<int, String> keycodes,
      final String? $type})
      : _symbols = symbols,
        _keycodes = keycodes,
        $type = $type ?? 'StepPressKey';
  factory StepPressKey.fromJson(Map<String, dynamic> json) =>
      _$StepPressKeyFromJson(json);

  final List<String> _symbols;
  List<String> get symbols {
    if (_symbols is EqualUnmodifiableListView) return _symbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symbols);
  }

  final Map<int, String> _keycodes;
  Map<int, String> get keycodes {
    if (_keycodes is EqualUnmodifiableMapView) return _keycodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_keycodes);
  }

  @JsonKey(name: '\$type')
  final String $type;

  /// Create a copy of AnyStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepPressKeyCopyWith<StepPressKey> get copyWith =>
      _$StepPressKeyCopyWithImpl<StepPressKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepPressKeyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepPressKey &&
            const DeepCollectionEquality().equals(other._symbols, _symbols) &&
            const DeepCollectionEquality().equals(other._keycodes, _keycodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_symbols),
      const DeepCollectionEquality().hash(_keycodes));

  @override
  String toString() {
    return 'AnyStep.stepPressKey(symbols: $symbols, keycodes: $keycodes)';
  }
}

/// @nodoc
abstract mixin class $StepPressKeyCopyWith<$Res>
    implements $AnyStepCopyWith<$Res> {
  factory $StepPressKeyCopyWith(
          StepPressKey value, $Res Function(StepPressKey) _then) =
      _$StepPressKeyCopyWithImpl;
  @useResult
  $Res call({List<String> symbols, Map<int, String> keycodes});
}

/// @nodoc
class _$StepPressKeyCopyWithImpl<$Res> implements $StepPressKeyCopyWith<$Res> {
  _$StepPressKeyCopyWithImpl(this._self, this._then);

  final StepPressKey _self;
  final $Res Function(StepPressKey) _then;

  /// Create a copy of AnyStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? symbols = null,
    Object? keycodes = null,
  }) {
    return _then(StepPressKey(
      symbols: null == symbols
          ? _self._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      keycodes: null == keycodes
          ? _self._keycodes
          : keycodes // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StepKeyPresent implements AnyStep {
  const StepKeyPresent(
      {required this.symbol,
      required this.yes,
      required this.no,
      final String? $type})
      : $type = $type ?? 'StepKeyPresent';
  factory StepKeyPresent.fromJson(Map<String, dynamic> json) =>
      _$StepKeyPresentFromJson(json);

  final String symbol;
  final String yes;
  final String no;

  @JsonKey(name: '\$type')
  final String $type;

  /// Create a copy of AnyStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepKeyPresentCopyWith<StepKeyPresent> get copyWith =>
      _$StepKeyPresentCopyWithImpl<StepKeyPresent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepKeyPresentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepKeyPresent &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.yes, yes) || other.yes == yes) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, yes, no);

  @override
  String toString() {
    return 'AnyStep.stepKeyPresent(symbol: $symbol, yes: $yes, no: $no)';
  }
}

/// @nodoc
abstract mixin class $StepKeyPresentCopyWith<$Res>
    implements $AnyStepCopyWith<$Res> {
  factory $StepKeyPresentCopyWith(
          StepKeyPresent value, $Res Function(StepKeyPresent) _then) =
      _$StepKeyPresentCopyWithImpl;
  @useResult
  $Res call({String symbol, String yes, String no});
}

/// @nodoc
class _$StepKeyPresentCopyWithImpl<$Res>
    implements $StepKeyPresentCopyWith<$Res> {
  _$StepKeyPresentCopyWithImpl(this._self, this._then);

  final StepKeyPresent _self;
  final $Res Function(StepKeyPresent) _then;

  /// Create a copy of AnyStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? symbol = null,
    Object? yes = null,
    Object? no = null,
  }) {
    return _then(StepKeyPresent(
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      yes: null == yes
          ? _self.yes
          : yes // ignore: cast_nullable_to_non_nullable
              as String,
      no: null == no
          ? _self.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StepResult implements AnyStep {
  const StepResult(
      {required this.layout, required this.variant, final String? $type})
      : $type = $type ?? 'StepResult';
  factory StepResult.fromJson(Map<String, dynamic> json) =>
      _$StepResultFromJson(json);

  final String layout;
  final String variant;

  @JsonKey(name: '\$type')
  final String $type;

  /// Create a copy of AnyStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepResultCopyWith<StepResult> get copyWith =>
      _$StepResultCopyWithImpl<StepResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepResult &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.variant, variant) || other.variant == variant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, layout, variant);

  @override
  String toString() {
    return 'AnyStep.stepResult(layout: $layout, variant: $variant)';
  }
}

/// @nodoc
abstract mixin class $StepResultCopyWith<$Res>
    implements $AnyStepCopyWith<$Res> {
  factory $StepResultCopyWith(
          StepResult value, $Res Function(StepResult) _then) =
      _$StepResultCopyWithImpl;
  @useResult
  $Res call({String layout, String variant});
}

/// @nodoc
class _$StepResultCopyWithImpl<$Res> implements $StepResultCopyWith<$Res> {
  _$StepResultCopyWithImpl(this._self, this._then);

  final StepResult _self;
  final $Res Function(StepResult) _then;

  /// Create a copy of AnyStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? layout = null,
    Object? variant = null,
  }) {
    return _then(StepResult(
      layout: null == layout
          ? _self.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String,
      variant: null == variant
          ? _self.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$KeyboardSetting {
  String get layout;
  String get variant;
  String? get toggle;

  /// Create a copy of KeyboardSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyboardSettingCopyWith<KeyboardSetting> get copyWith =>
      _$KeyboardSettingCopyWithImpl<KeyboardSetting>(
          this as KeyboardSetting, _$identity);

  /// Serializes this KeyboardSetting to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeyboardSetting &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.toggle, toggle) || other.toggle == toggle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, layout, variant, toggle);

  @override
  String toString() {
    return 'KeyboardSetting(layout: $layout, variant: $variant, toggle: $toggle)';
  }
}

/// @nodoc
abstract mixin class $KeyboardSettingCopyWith<$Res> {
  factory $KeyboardSettingCopyWith(
          KeyboardSetting value, $Res Function(KeyboardSetting) _then) =
      _$KeyboardSettingCopyWithImpl;
  @useResult
  $Res call({String layout, String variant, String? toggle});
}

/// @nodoc
class _$KeyboardSettingCopyWithImpl<$Res>
    implements $KeyboardSettingCopyWith<$Res> {
  _$KeyboardSettingCopyWithImpl(this._self, this._then);

  final KeyboardSetting _self;
  final $Res Function(KeyboardSetting) _then;

  /// Create a copy of KeyboardSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layout = null,
    Object? variant = null,
    Object? toggle = freezed,
  }) {
    return _then(_self.copyWith(
      layout: null == layout
          ? _self.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String,
      variant: null == variant
          ? _self.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
      toggle: freezed == toggle
          ? _self.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [KeyboardSetting].
extension KeyboardSettingPatterns on KeyboardSetting {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KeyboardSetting value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetting() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_KeyboardSetting value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetting():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KeyboardSetting value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetting() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String layout, String variant, String? toggle)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetting() when $default != null:
        return $default(_that.layout, _that.variant, _that.toggle);
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
  TResult when<TResult extends Object?>(
    TResult Function(String layout, String variant, String? toggle) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetting():
        return $default(_that.layout, _that.variant, _that.toggle);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String layout, String variant, String? toggle)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetting() when $default != null:
        return $default(_that.layout, _that.variant, _that.toggle);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _KeyboardSetting implements KeyboardSetting {
  const _KeyboardSetting(
      {required this.layout, this.variant = '', this.toggle});
  factory _KeyboardSetting.fromJson(Map<String, dynamic> json) =>
      _$KeyboardSettingFromJson(json);

  @override
  final String layout;
  @override
  @JsonKey()
  final String variant;
  @override
  final String? toggle;

  /// Create a copy of KeyboardSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyboardSettingCopyWith<_KeyboardSetting> get copyWith =>
      __$KeyboardSettingCopyWithImpl<_KeyboardSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyboardSettingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeyboardSetting &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.toggle, toggle) || other.toggle == toggle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, layout, variant, toggle);

  @override
  String toString() {
    return 'KeyboardSetting(layout: $layout, variant: $variant, toggle: $toggle)';
  }
}

/// @nodoc
abstract mixin class _$KeyboardSettingCopyWith<$Res>
    implements $KeyboardSettingCopyWith<$Res> {
  factory _$KeyboardSettingCopyWith(
          _KeyboardSetting value, $Res Function(_KeyboardSetting) _then) =
      __$KeyboardSettingCopyWithImpl;
  @override
  @useResult
  $Res call({String layout, String variant, String? toggle});
}

/// @nodoc
class __$KeyboardSettingCopyWithImpl<$Res>
    implements _$KeyboardSettingCopyWith<$Res> {
  __$KeyboardSettingCopyWithImpl(this._self, this._then);

  final _KeyboardSetting _self;
  final $Res Function(_KeyboardSetting) _then;

  /// Create a copy of KeyboardSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? layout = null,
    Object? variant = null,
    Object? toggle = freezed,
  }) {
    return _then(_KeyboardSetting(
      layout: null == layout
          ? _self.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String,
      variant: null == variant
          ? _self.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
      toggle: freezed == toggle
          ? _self.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$KeyboardVariant {
  String get code;
  String get name;

  /// Create a copy of KeyboardVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyboardVariantCopyWith<KeyboardVariant> get copyWith =>
      _$KeyboardVariantCopyWithImpl<KeyboardVariant>(
          this as KeyboardVariant, _$identity);

  /// Serializes this KeyboardVariant to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeyboardVariant &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @override
  String toString() {
    return 'KeyboardVariant(code: $code, name: $name)';
  }
}

/// @nodoc
abstract mixin class $KeyboardVariantCopyWith<$Res> {
  factory $KeyboardVariantCopyWith(
          KeyboardVariant value, $Res Function(KeyboardVariant) _then) =
      _$KeyboardVariantCopyWithImpl;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$KeyboardVariantCopyWithImpl<$Res>
    implements $KeyboardVariantCopyWith<$Res> {
  _$KeyboardVariantCopyWithImpl(this._self, this._then);

  final KeyboardVariant _self;
  final $Res Function(KeyboardVariant) _then;

  /// Create a copy of KeyboardVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [KeyboardVariant].
extension KeyboardVariantPatterns on KeyboardVariant {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KeyboardVariant value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyboardVariant() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_KeyboardVariant value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardVariant():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KeyboardVariant value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardVariant() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyboardVariant() when $default != null:
        return $default(_that.code, _that.name);
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
  TResult when<TResult extends Object?>(
    TResult Function(String code, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardVariant():
        return $default(_that.code, _that.name);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String code, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardVariant() when $default != null:
        return $default(_that.code, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _KeyboardVariant implements KeyboardVariant {
  const _KeyboardVariant({required this.code, required this.name});
  factory _KeyboardVariant.fromJson(Map<String, dynamic> json) =>
      _$KeyboardVariantFromJson(json);

  @override
  final String code;
  @override
  final String name;

  /// Create a copy of KeyboardVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyboardVariantCopyWith<_KeyboardVariant> get copyWith =>
      __$KeyboardVariantCopyWithImpl<_KeyboardVariant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyboardVariantToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeyboardVariant &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @override
  String toString() {
    return 'KeyboardVariant(code: $code, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$KeyboardVariantCopyWith<$Res>
    implements $KeyboardVariantCopyWith<$Res> {
  factory _$KeyboardVariantCopyWith(
          _KeyboardVariant value, $Res Function(_KeyboardVariant) _then) =
      __$KeyboardVariantCopyWithImpl;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$KeyboardVariantCopyWithImpl<$Res>
    implements _$KeyboardVariantCopyWith<$Res> {
  __$KeyboardVariantCopyWithImpl(this._self, this._then);

  final _KeyboardVariant _self;
  final $Res Function(_KeyboardVariant) _then;

  /// Create a copy of KeyboardVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_KeyboardVariant(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$KeyboardLayout {
  String get code;
  String get name;
  List<KeyboardVariant> get variants;

  /// Create a copy of KeyboardLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyboardLayoutCopyWith<KeyboardLayout> get copyWith =>
      _$KeyboardLayoutCopyWithImpl<KeyboardLayout>(
          this as KeyboardLayout, _$identity);

  /// Serializes this KeyboardLayout to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeyboardLayout &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.variants, variants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, name, const DeepCollectionEquality().hash(variants));

  @override
  String toString() {
    return 'KeyboardLayout(code: $code, name: $name, variants: $variants)';
  }
}

/// @nodoc
abstract mixin class $KeyboardLayoutCopyWith<$Res> {
  factory $KeyboardLayoutCopyWith(
          KeyboardLayout value, $Res Function(KeyboardLayout) _then) =
      _$KeyboardLayoutCopyWithImpl;
  @useResult
  $Res call({String code, String name, List<KeyboardVariant> variants});
}

/// @nodoc
class _$KeyboardLayoutCopyWithImpl<$Res>
    implements $KeyboardLayoutCopyWith<$Res> {
  _$KeyboardLayoutCopyWithImpl(this._self, this._then);

  final KeyboardLayout _self;
  final $Res Function(KeyboardLayout) _then;

  /// Create a copy of KeyboardLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? variants = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _self.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<KeyboardVariant>,
    ));
  }
}

/// Adds pattern-matching-related methods to [KeyboardLayout].
extension KeyboardLayoutPatterns on KeyboardLayout {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KeyboardLayout value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyboardLayout() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_KeyboardLayout value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardLayout():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KeyboardLayout value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardLayout() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code, String name, List<KeyboardVariant> variants)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyboardLayout() when $default != null:
        return $default(_that.code, _that.name, _that.variants);
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
  TResult when<TResult extends Object?>(
    TResult Function(String code, String name, List<KeyboardVariant> variants)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardLayout():
        return $default(_that.code, _that.name, _that.variants);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String code, String name, List<KeyboardVariant> variants)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardLayout() when $default != null:
        return $default(_that.code, _that.name, _that.variants);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _KeyboardLayout implements KeyboardLayout {
  const _KeyboardLayout(
      {required this.code,
      required this.name,
      required final List<KeyboardVariant> variants})
      : _variants = variants;
  factory _KeyboardLayout.fromJson(Map<String, dynamic> json) =>
      _$KeyboardLayoutFromJson(json);

  @override
  final String code;
  @override
  final String name;
  final List<KeyboardVariant> _variants;
  @override
  List<KeyboardVariant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  /// Create a copy of KeyboardLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyboardLayoutCopyWith<_KeyboardLayout> get copyWith =>
      __$KeyboardLayoutCopyWithImpl<_KeyboardLayout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyboardLayoutToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeyboardLayout &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, name, const DeepCollectionEquality().hash(_variants));

  @override
  String toString() {
    return 'KeyboardLayout(code: $code, name: $name, variants: $variants)';
  }
}

/// @nodoc
abstract mixin class _$KeyboardLayoutCopyWith<$Res>
    implements $KeyboardLayoutCopyWith<$Res> {
  factory _$KeyboardLayoutCopyWith(
          _KeyboardLayout value, $Res Function(_KeyboardLayout) _then) =
      __$KeyboardLayoutCopyWithImpl;
  @override
  @useResult
  $Res call({String code, String name, List<KeyboardVariant> variants});
}

/// @nodoc
class __$KeyboardLayoutCopyWithImpl<$Res>
    implements _$KeyboardLayoutCopyWith<$Res> {
  __$KeyboardLayoutCopyWithImpl(this._self, this._then);

  final _KeyboardLayout _self;
  final $Res Function(_KeyboardLayout) _then;

  /// Create a copy of KeyboardLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? variants = null,
  }) {
    return _then(_KeyboardLayout(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _self._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<KeyboardVariant>,
    ));
  }
}

/// @nodoc
mixin _$KeyboardSetup {
  KeyboardSetting get setting;
  List<KeyboardLayout> get layouts;

  /// Create a copy of KeyboardSetup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyboardSetupCopyWith<KeyboardSetup> get copyWith =>
      _$KeyboardSetupCopyWithImpl<KeyboardSetup>(
          this as KeyboardSetup, _$identity);

  /// Serializes this KeyboardSetup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeyboardSetup &&
            (identical(other.setting, setting) || other.setting == setting) &&
            const DeepCollectionEquality().equals(other.layouts, layouts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, setting, const DeepCollectionEquality().hash(layouts));

  @override
  String toString() {
    return 'KeyboardSetup(setting: $setting, layouts: $layouts)';
  }
}

/// @nodoc
abstract mixin class $KeyboardSetupCopyWith<$Res> {
  factory $KeyboardSetupCopyWith(
          KeyboardSetup value, $Res Function(KeyboardSetup) _then) =
      _$KeyboardSetupCopyWithImpl;
  @useResult
  $Res call({KeyboardSetting setting, List<KeyboardLayout> layouts});

  $KeyboardSettingCopyWith<$Res> get setting;
}

/// @nodoc
class _$KeyboardSetupCopyWithImpl<$Res>
    implements $KeyboardSetupCopyWith<$Res> {
  _$KeyboardSetupCopyWithImpl(this._self, this._then);

  final KeyboardSetup _self;
  final $Res Function(KeyboardSetup) _then;

  /// Create a copy of KeyboardSetup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setting = null,
    Object? layouts = null,
  }) {
    return _then(_self.copyWith(
      setting: null == setting
          ? _self.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as KeyboardSetting,
      layouts: null == layouts
          ? _self.layouts
          : layouts // ignore: cast_nullable_to_non_nullable
              as List<KeyboardLayout>,
    ));
  }

  /// Create a copy of KeyboardSetup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardSettingCopyWith<$Res> get setting {
    return $KeyboardSettingCopyWith<$Res>(_self.setting, (value) {
      return _then(_self.copyWith(setting: value));
    });
  }
}

/// Adds pattern-matching-related methods to [KeyboardSetup].
extension KeyboardSetupPatterns on KeyboardSetup {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KeyboardSetup value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetup() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_KeyboardSetup value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetup():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KeyboardSetup value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetup() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(KeyboardSetting setting, List<KeyboardLayout> layouts)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetup() when $default != null:
        return $default(_that.setting, _that.layouts);
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
  TResult when<TResult extends Object?>(
    TResult Function(KeyboardSetting setting, List<KeyboardLayout> layouts)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetup():
        return $default(_that.setting, _that.layouts);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(KeyboardSetting setting, List<KeyboardLayout> layouts)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardSetup() when $default != null:
        return $default(_that.setting, _that.layouts);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _KeyboardSetup implements KeyboardSetup {
  const _KeyboardSetup(
      {required this.setting, required final List<KeyboardLayout> layouts})
      : _layouts = layouts;
  factory _KeyboardSetup.fromJson(Map<String, dynamic> json) =>
      _$KeyboardSetupFromJson(json);

  @override
  final KeyboardSetting setting;
  final List<KeyboardLayout> _layouts;
  @override
  List<KeyboardLayout> get layouts {
    if (_layouts is EqualUnmodifiableListView) return _layouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layouts);
  }

  /// Create a copy of KeyboardSetup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyboardSetupCopyWith<_KeyboardSetup> get copyWith =>
      __$KeyboardSetupCopyWithImpl<_KeyboardSetup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyboardSetupToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeyboardSetup &&
            (identical(other.setting, setting) || other.setting == setting) &&
            const DeepCollectionEquality().equals(other._layouts, _layouts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, setting, const DeepCollectionEquality().hash(_layouts));

  @override
  String toString() {
    return 'KeyboardSetup(setting: $setting, layouts: $layouts)';
  }
}

/// @nodoc
abstract mixin class _$KeyboardSetupCopyWith<$Res>
    implements $KeyboardSetupCopyWith<$Res> {
  factory _$KeyboardSetupCopyWith(
          _KeyboardSetup value, $Res Function(_KeyboardSetup) _then) =
      __$KeyboardSetupCopyWithImpl;
  @override
  @useResult
  $Res call({KeyboardSetting setting, List<KeyboardLayout> layouts});

  @override
  $KeyboardSettingCopyWith<$Res> get setting;
}

/// @nodoc
class __$KeyboardSetupCopyWithImpl<$Res>
    implements _$KeyboardSetupCopyWith<$Res> {
  __$KeyboardSetupCopyWithImpl(this._self, this._then);

  final _KeyboardSetup _self;
  final $Res Function(_KeyboardSetup) _then;

  /// Create a copy of KeyboardSetup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? setting = null,
    Object? layouts = null,
  }) {
    return _then(_KeyboardSetup(
      setting: null == setting
          ? _self.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as KeyboardSetting,
      layouts: null == layouts
          ? _self._layouts
          : layouts // ignore: cast_nullable_to_non_nullable
              as List<KeyboardLayout>,
    ));
  }

  /// Create a copy of KeyboardSetup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardSettingCopyWith<$Res> get setting {
    return $KeyboardSettingCopyWith<$Res>(_self.setting, (value) {
      return _then(_self.copyWith(setting: value));
    });
  }
}

/// @nodoc
mixin _$SourceSelection {
  String get name;
  String get description;
  String get id;
  int get size;
  String get variant;
  @JsonKey(name: 'default')
  bool get isDefault;

  /// Create a copy of SourceSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SourceSelectionCopyWith<SourceSelection> get copyWith =>
      _$SourceSelectionCopyWithImpl<SourceSelection>(
          this as SourceSelection, _$identity);

  /// Serializes this SourceSelection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SourceSelection &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, id, size, variant, isDefault);

  @override
  String toString() {
    return 'SourceSelection(name: $name, description: $description, id: $id, size: $size, variant: $variant, isDefault: $isDefault)';
  }
}

/// @nodoc
abstract mixin class $SourceSelectionCopyWith<$Res> {
  factory $SourceSelectionCopyWith(
          SourceSelection value, $Res Function(SourceSelection) _then) =
      _$SourceSelectionCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String description,
      String id,
      int size,
      String variant,
      @JsonKey(name: 'default') bool isDefault});
}

/// @nodoc
class _$SourceSelectionCopyWithImpl<$Res>
    implements $SourceSelectionCopyWith<$Res> {
  _$SourceSelectionCopyWithImpl(this._self, this._then);

  final SourceSelection _self;
  final $Res Function(SourceSelection) _then;

  /// Create a copy of SourceSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? id = null,
    Object? size = null,
    Object? variant = null,
    Object? isDefault = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      variant: null == variant
          ? _self.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [SourceSelection].
extension SourceSelectionPatterns on SourceSelection {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SourceSelection value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SourceSelection() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SourceSelection value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SourceSelection():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SourceSelection value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SourceSelection() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String description, String id, int size,
            String variant, @JsonKey(name: 'default') bool isDefault)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SourceSelection() when $default != null:
        return $default(_that.name, _that.description, _that.id, _that.size,
            _that.variant, _that.isDefault);
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
  TResult when<TResult extends Object?>(
    TResult Function(String name, String description, String id, int size,
            String variant, @JsonKey(name: 'default') bool isDefault)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SourceSelection():
        return $default(_that.name, _that.description, _that.id, _that.size,
            _that.variant, _that.isDefault);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String description, String id, int size,
            String variant, @JsonKey(name: 'default') bool isDefault)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SourceSelection() when $default != null:
        return $default(_that.name, _that.description, _that.id, _that.size,
            _that.variant, _that.isDefault);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SourceSelection implements SourceSelection {
  const _SourceSelection(
      {required this.name,
      required this.description,
      required this.id,
      required this.size,
      required this.variant,
      @JsonKey(name: 'default') required this.isDefault});
  factory _SourceSelection.fromJson(Map<String, dynamic> json) =>
      _$SourceSelectionFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String id;
  @override
  final int size;
  @override
  final String variant;
  @override
  @JsonKey(name: 'default')
  final bool isDefault;

  /// Create a copy of SourceSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SourceSelectionCopyWith<_SourceSelection> get copyWith =>
      __$SourceSelectionCopyWithImpl<_SourceSelection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SourceSelectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SourceSelection &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, id, size, variant, isDefault);

  @override
  String toString() {
    return 'SourceSelection(name: $name, description: $description, id: $id, size: $size, variant: $variant, isDefault: $isDefault)';
  }
}

/// @nodoc
abstract mixin class _$SourceSelectionCopyWith<$Res>
    implements $SourceSelectionCopyWith<$Res> {
  factory _$SourceSelectionCopyWith(
          _SourceSelection value, $Res Function(_SourceSelection) _then) =
      __$SourceSelectionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String id,
      int size,
      String variant,
      @JsonKey(name: 'default') bool isDefault});
}

/// @nodoc
class __$SourceSelectionCopyWithImpl<$Res>
    implements _$SourceSelectionCopyWith<$Res> {
  __$SourceSelectionCopyWithImpl(this._self, this._then);

  final _SourceSelection _self;
  final $Res Function(_SourceSelection) _then;

  /// Create a copy of SourceSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? id = null,
    Object? size = null,
    Object? variant = null,
    Object? isDefault = null,
  }) {
    return _then(_SourceSelection(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      variant: null == variant
          ? _self.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$SourceSelectionAndSetting {
  List<SourceSelection> get sources;
  String get currentId;
  bool get searchDrivers;

  /// Create a copy of SourceSelectionAndSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SourceSelectionAndSettingCopyWith<SourceSelectionAndSetting> get copyWith =>
      _$SourceSelectionAndSettingCopyWithImpl<SourceSelectionAndSetting>(
          this as SourceSelectionAndSetting, _$identity);

  /// Serializes this SourceSelectionAndSetting to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SourceSelectionAndSetting &&
            const DeepCollectionEquality().equals(other.sources, sources) &&
            (identical(other.currentId, currentId) ||
                other.currentId == currentId) &&
            (identical(other.searchDrivers, searchDrivers) ||
                other.searchDrivers == searchDrivers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(sources), currentId, searchDrivers);

  @override
  String toString() {
    return 'SourceSelectionAndSetting(sources: $sources, currentId: $currentId, searchDrivers: $searchDrivers)';
  }
}

/// @nodoc
abstract mixin class $SourceSelectionAndSettingCopyWith<$Res> {
  factory $SourceSelectionAndSettingCopyWith(SourceSelectionAndSetting value,
          $Res Function(SourceSelectionAndSetting) _then) =
      _$SourceSelectionAndSettingCopyWithImpl;
  @useResult
  $Res call(
      {List<SourceSelection> sources, String currentId, bool searchDrivers});
}

/// @nodoc
class _$SourceSelectionAndSettingCopyWithImpl<$Res>
    implements $SourceSelectionAndSettingCopyWith<$Res> {
  _$SourceSelectionAndSettingCopyWithImpl(this._self, this._then);

  final SourceSelectionAndSetting _self;
  final $Res Function(SourceSelectionAndSetting) _then;

  /// Create a copy of SourceSelectionAndSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sources = null,
    Object? currentId = null,
    Object? searchDrivers = null,
  }) {
    return _then(_self.copyWith(
      sources: null == sources
          ? _self.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SourceSelection>,
      currentId: null == currentId
          ? _self.currentId
          : currentId // ignore: cast_nullable_to_non_nullable
              as String,
      searchDrivers: null == searchDrivers
          ? _self.searchDrivers
          : searchDrivers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [SourceSelectionAndSetting].
extension SourceSelectionAndSettingPatterns on SourceSelectionAndSetting {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SourceSelectionAndSetting value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SourceSelectionAndSetting() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SourceSelectionAndSetting value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SourceSelectionAndSetting():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SourceSelectionAndSetting value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SourceSelectionAndSetting() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<SourceSelection> sources, String currentId,
            bool searchDrivers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SourceSelectionAndSetting() when $default != null:
        return $default(_that.sources, _that.currentId, _that.searchDrivers);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            List<SourceSelection> sources, String currentId, bool searchDrivers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SourceSelectionAndSetting():
        return $default(_that.sources, _that.currentId, _that.searchDrivers);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<SourceSelection> sources, String currentId,
            bool searchDrivers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SourceSelectionAndSetting() when $default != null:
        return $default(_that.sources, _that.currentId, _that.searchDrivers);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SourceSelectionAndSetting implements SourceSelectionAndSetting {
  const _SourceSelectionAndSetting(
      {required final List<SourceSelection> sources,
      required this.currentId,
      required this.searchDrivers})
      : _sources = sources;
  factory _SourceSelectionAndSetting.fromJson(Map<String, dynamic> json) =>
      _$SourceSelectionAndSettingFromJson(json);

  final List<SourceSelection> _sources;
  @override
  List<SourceSelection> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  final String currentId;
  @override
  final bool searchDrivers;

  /// Create a copy of SourceSelectionAndSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SourceSelectionAndSettingCopyWith<_SourceSelectionAndSetting>
      get copyWith =>
          __$SourceSelectionAndSettingCopyWithImpl<_SourceSelectionAndSetting>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SourceSelectionAndSettingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SourceSelectionAndSetting &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.currentId, currentId) ||
                other.currentId == currentId) &&
            (identical(other.searchDrivers, searchDrivers) ||
                other.searchDrivers == searchDrivers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_sources), currentId, searchDrivers);

  @override
  String toString() {
    return 'SourceSelectionAndSetting(sources: $sources, currentId: $currentId, searchDrivers: $searchDrivers)';
  }
}

/// @nodoc
abstract mixin class _$SourceSelectionAndSettingCopyWith<$Res>
    implements $SourceSelectionAndSettingCopyWith<$Res> {
  factory _$SourceSelectionAndSettingCopyWith(_SourceSelectionAndSetting value,
          $Res Function(_SourceSelectionAndSetting) _then) =
      __$SourceSelectionAndSettingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<SourceSelection> sources, String currentId, bool searchDrivers});
}

/// @nodoc
class __$SourceSelectionAndSettingCopyWithImpl<$Res>
    implements _$SourceSelectionAndSettingCopyWith<$Res> {
  __$SourceSelectionAndSettingCopyWithImpl(this._self, this._then);

  final _SourceSelectionAndSetting _self;
  final $Res Function(_SourceSelectionAndSetting) _then;

  /// Create a copy of SourceSelectionAndSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sources = null,
    Object? currentId = null,
    Object? searchDrivers = null,
  }) {
    return _then(_SourceSelectionAndSetting(
      sources: null == sources
          ? _self._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SourceSelection>,
      currentId: null == currentId
          ? _self.currentId
          : currentId // ignore: cast_nullable_to_non_nullable
              as String,
      searchDrivers: null == searchDrivers
          ? _self.searchDrivers
          : searchDrivers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$ZdevInfo {
  String get id;
  String get type;
  bool get on;
  bool get exists;
  bool get pers;
  bool get auto;
  bool get failed;
  String get names;

  /// Create a copy of ZdevInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ZdevInfoCopyWith<ZdevInfo> get copyWith =>
      _$ZdevInfoCopyWithImpl<ZdevInfo>(this as ZdevInfo, _$identity);

  /// Serializes this ZdevInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ZdevInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.on, on) || other.on == on) &&
            (identical(other.exists, exists) || other.exists == exists) &&
            (identical(other.pers, pers) || other.pers == pers) &&
            (identical(other.auto, auto) || other.auto == auto) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.names, names) || other.names == names));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, on, exists, pers, auto, failed, names);

  @override
  String toString() {
    return 'ZdevInfo(id: $id, type: $type, on: $on, exists: $exists, pers: $pers, auto: $auto, failed: $failed, names: $names)';
  }
}

/// @nodoc
abstract mixin class $ZdevInfoCopyWith<$Res> {
  factory $ZdevInfoCopyWith(ZdevInfo value, $Res Function(ZdevInfo) _then) =
      _$ZdevInfoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String type,
      bool on,
      bool exists,
      bool pers,
      bool auto,
      bool failed,
      String names});
}

/// @nodoc
class _$ZdevInfoCopyWithImpl<$Res> implements $ZdevInfoCopyWith<$Res> {
  _$ZdevInfoCopyWithImpl(this._self, this._then);

  final ZdevInfo _self;
  final $Res Function(ZdevInfo) _then;

  /// Create a copy of ZdevInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? on = null,
    Object? exists = null,
    Object? pers = null,
    Object? auto = null,
    Object? failed = null,
    Object? names = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      on: null == on
          ? _self.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool,
      exists: null == exists
          ? _self.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
      pers: null == pers
          ? _self.pers
          : pers // ignore: cast_nullable_to_non_nullable
              as bool,
      auto: null == auto
          ? _self.auto
          : auto // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _self.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      names: null == names
          ? _self.names
          : names // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ZdevInfo].
extension ZdevInfoPatterns on ZdevInfo {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ZdevInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ZdevInfo() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_ZdevInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZdevInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ZdevInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZdevInfo() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String type, bool on, bool exists, bool pers,
            bool auto, bool failed, String names)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ZdevInfo() when $default != null:
        return $default(_that.id, _that.type, _that.on, _that.exists,
            _that.pers, _that.auto, _that.failed, _that.names);
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
  TResult when<TResult extends Object?>(
    TResult Function(String id, String type, bool on, bool exists, bool pers,
            bool auto, bool failed, String names)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZdevInfo():
        return $default(_that.id, _that.type, _that.on, _that.exists,
            _that.pers, _that.auto, _that.failed, _that.names);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String type, bool on, bool exists, bool pers,
            bool auto, bool failed, String names)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZdevInfo() when $default != null:
        return $default(_that.id, _that.type, _that.on, _that.exists,
            _that.pers, _that.auto, _that.failed, _that.names);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ZdevInfo implements ZdevInfo {
  const _ZdevInfo(
      {required this.id,
      required this.type,
      required this.on,
      required this.exists,
      required this.pers,
      required this.auto,
      required this.failed,
      required this.names});
  factory _ZdevInfo.fromJson(Map<String, dynamic> json) =>
      _$ZdevInfoFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final bool on;
  @override
  final bool exists;
  @override
  final bool pers;
  @override
  final bool auto;
  @override
  final bool failed;
  @override
  final String names;

  /// Create a copy of ZdevInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ZdevInfoCopyWith<_ZdevInfo> get copyWith =>
      __$ZdevInfoCopyWithImpl<_ZdevInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ZdevInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZdevInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.on, on) || other.on == on) &&
            (identical(other.exists, exists) || other.exists == exists) &&
            (identical(other.pers, pers) || other.pers == pers) &&
            (identical(other.auto, auto) || other.auto == auto) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.names, names) || other.names == names));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, on, exists, pers, auto, failed, names);

  @override
  String toString() {
    return 'ZdevInfo(id: $id, type: $type, on: $on, exists: $exists, pers: $pers, auto: $auto, failed: $failed, names: $names)';
  }
}

/// @nodoc
abstract mixin class _$ZdevInfoCopyWith<$Res>
    implements $ZdevInfoCopyWith<$Res> {
  factory _$ZdevInfoCopyWith(_ZdevInfo value, $Res Function(_ZdevInfo) _then) =
      __$ZdevInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      bool on,
      bool exists,
      bool pers,
      bool auto,
      bool failed,
      String names});
}

/// @nodoc
class __$ZdevInfoCopyWithImpl<$Res> implements _$ZdevInfoCopyWith<$Res> {
  __$ZdevInfoCopyWithImpl(this._self, this._then);

  final _ZdevInfo _self;
  final $Res Function(_ZdevInfo) _then;

  /// Create a copy of ZdevInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? on = null,
    Object? exists = null,
    Object? pers = null,
    Object? auto = null,
    Object? failed = null,
    Object? names = null,
  }) {
    return _then(_ZdevInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      on: null == on
          ? _self.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool,
      exists: null == exists
          ? _self.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
      pers: null == pers
          ? _self.pers
          : pers // ignore: cast_nullable_to_non_nullable
              as bool,
      auto: null == auto
          ? _self.auto
          : auto // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _self.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      names: null == names
          ? _self.names
          : names // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$NetworkStatus {
  List<NetDevInfo> get devices;
  PackageInstallState get wlanSupportInstallState;

  /// Create a copy of NetworkStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkStatusCopyWith<NetworkStatus> get copyWith =>
      _$NetworkStatusCopyWithImpl<NetworkStatus>(
          this as NetworkStatus, _$identity);

  /// Serializes this NetworkStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkStatus &&
            const DeepCollectionEquality().equals(other.devices, devices) &&
            (identical(
                    other.wlanSupportInstallState, wlanSupportInstallState) ||
                other.wlanSupportInstallState == wlanSupportInstallState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(devices), wlanSupportInstallState);

  @override
  String toString() {
    return 'NetworkStatus(devices: $devices, wlanSupportInstallState: $wlanSupportInstallState)';
  }
}

/// @nodoc
abstract mixin class $NetworkStatusCopyWith<$Res> {
  factory $NetworkStatusCopyWith(
          NetworkStatus value, $Res Function(NetworkStatus) _then) =
      _$NetworkStatusCopyWithImpl;
  @useResult
  $Res call(
      {List<NetDevInfo> devices, PackageInstallState wlanSupportInstallState});
}

/// @nodoc
class _$NetworkStatusCopyWithImpl<$Res>
    implements $NetworkStatusCopyWith<$Res> {
  _$NetworkStatusCopyWithImpl(this._self, this._then);

  final NetworkStatus _self;
  final $Res Function(NetworkStatus) _then;

  /// Create a copy of NetworkStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
    Object? wlanSupportInstallState = null,
  }) {
    return _then(_self.copyWith(
      devices: null == devices
          ? _self.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<NetDevInfo>,
      wlanSupportInstallState: null == wlanSupportInstallState
          ? _self.wlanSupportInstallState
          : wlanSupportInstallState // ignore: cast_nullable_to_non_nullable
              as PackageInstallState,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkStatus].
extension NetworkStatusPatterns on NetworkStatus {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NetworkStatus value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkStatus() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_NetworkStatus value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkStatus():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NetworkStatus value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkStatus() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<NetDevInfo> devices,
            PackageInstallState wlanSupportInstallState)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkStatus() when $default != null:
        return $default(_that.devices, _that.wlanSupportInstallState);
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
  TResult when<TResult extends Object?>(
    TResult Function(List<NetDevInfo> devices,
            PackageInstallState wlanSupportInstallState)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkStatus():
        return $default(_that.devices, _that.wlanSupportInstallState);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<NetDevInfo> devices,
            PackageInstallState wlanSupportInstallState)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkStatus() when $default != null:
        return $default(_that.devices, _that.wlanSupportInstallState);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkStatus implements NetworkStatus {
  const _NetworkStatus(
      {required final List<NetDevInfo> devices,
      required this.wlanSupportInstallState})
      : _devices = devices;
  factory _NetworkStatus.fromJson(Map<String, dynamic> json) =>
      _$NetworkStatusFromJson(json);

  final List<NetDevInfo> _devices;
  @override
  List<NetDevInfo> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  final PackageInstallState wlanSupportInstallState;

  /// Create a copy of NetworkStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkStatusCopyWith<_NetworkStatus> get copyWith =>
      __$NetworkStatusCopyWithImpl<_NetworkStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkStatus &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            (identical(
                    other.wlanSupportInstallState, wlanSupportInstallState) ||
                other.wlanSupportInstallState == wlanSupportInstallState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_devices), wlanSupportInstallState);

  @override
  String toString() {
    return 'NetworkStatus(devices: $devices, wlanSupportInstallState: $wlanSupportInstallState)';
  }
}

/// @nodoc
abstract mixin class _$NetworkStatusCopyWith<$Res>
    implements $NetworkStatusCopyWith<$Res> {
  factory _$NetworkStatusCopyWith(
          _NetworkStatus value, $Res Function(_NetworkStatus) _then) =
      __$NetworkStatusCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<NetDevInfo> devices, PackageInstallState wlanSupportInstallState});
}

/// @nodoc
class __$NetworkStatusCopyWithImpl<$Res>
    implements _$NetworkStatusCopyWith<$Res> {
  __$NetworkStatusCopyWithImpl(this._self, this._then);

  final _NetworkStatus _self;
  final $Res Function(_NetworkStatus) _then;

  /// Create a copy of NetworkStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? devices = null,
    Object? wlanSupportInstallState = null,
  }) {
    return _then(_NetworkStatus(
      devices: null == devices
          ? _self._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<NetDevInfo>,
      wlanSupportInstallState: null == wlanSupportInstallState
          ? _self.wlanSupportInstallState
          : wlanSupportInstallState // ignore: cast_nullable_to_non_nullable
              as PackageInstallState,
    ));
  }
}

/// @nodoc
mixin _$IdentityData {
  String get realname;
  String get username;
  String get cryptedPassword;
  String get hostname;

  /// Create a copy of IdentityData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IdentityDataCopyWith<IdentityData> get copyWith =>
      _$IdentityDataCopyWithImpl<IdentityData>(
          this as IdentityData, _$identity);

  /// Serializes this IdentityData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IdentityData &&
            (identical(other.realname, realname) ||
                other.realname == realname) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.cryptedPassword, cryptedPassword) ||
                other.cryptedPassword == cryptedPassword) &&
            (identical(other.hostname, hostname) ||
                other.hostname == hostname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, realname, username, cryptedPassword, hostname);

  @override
  String toString() {
    return 'IdentityData(realname: $realname, username: $username, cryptedPassword: $cryptedPassword, hostname: $hostname)';
  }
}

/// @nodoc
abstract mixin class $IdentityDataCopyWith<$Res> {
  factory $IdentityDataCopyWith(
          IdentityData value, $Res Function(IdentityData) _then) =
      _$IdentityDataCopyWithImpl;
  @useResult
  $Res call(
      {String realname,
      String username,
      String cryptedPassword,
      String hostname});
}

/// @nodoc
class _$IdentityDataCopyWithImpl<$Res> implements $IdentityDataCopyWith<$Res> {
  _$IdentityDataCopyWithImpl(this._self, this._then);

  final IdentityData _self;
  final $Res Function(IdentityData) _then;

  /// Create a copy of IdentityData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? realname = null,
    Object? username = null,
    Object? cryptedPassword = null,
    Object? hostname = null,
  }) {
    return _then(_self.copyWith(
      realname: null == realname
          ? _self.realname
          : realname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      cryptedPassword: null == cryptedPassword
          ? _self.cryptedPassword
          : cryptedPassword // ignore: cast_nullable_to_non_nullable
              as String,
      hostname: null == hostname
          ? _self.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [IdentityData].
extension IdentityDataPatterns on IdentityData {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_IdentityData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IdentityData() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_IdentityData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IdentityData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_IdentityData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IdentityData() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String realname, String username, String cryptedPassword,
            String hostname)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IdentityData() when $default != null:
        return $default(_that.realname, _that.username, _that.cryptedPassword,
            _that.hostname);
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
  TResult when<TResult extends Object?>(
    TResult Function(String realname, String username, String cryptedPassword,
            String hostname)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IdentityData():
        return $default(_that.realname, _that.username, _that.cryptedPassword,
            _that.hostname);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String realname, String username, String cryptedPassword,
            String hostname)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IdentityData() when $default != null:
        return $default(_that.realname, _that.username, _that.cryptedPassword,
            _that.hostname);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _IdentityData implements IdentityData {
  const _IdentityData(
      {this.realname = '',
      this.username = '',
      this.cryptedPassword = '',
      this.hostname = ''});
  factory _IdentityData.fromJson(Map<String, dynamic> json) =>
      _$IdentityDataFromJson(json);

  @override
  @JsonKey()
  final String realname;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String cryptedPassword;
  @override
  @JsonKey()
  final String hostname;

  /// Create a copy of IdentityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IdentityDataCopyWith<_IdentityData> get copyWith =>
      __$IdentityDataCopyWithImpl<_IdentityData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IdentityDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IdentityData &&
            (identical(other.realname, realname) ||
                other.realname == realname) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.cryptedPassword, cryptedPassword) ||
                other.cryptedPassword == cryptedPassword) &&
            (identical(other.hostname, hostname) ||
                other.hostname == hostname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, realname, username, cryptedPassword, hostname);

  @override
  String toString() {
    return 'IdentityData(realname: $realname, username: $username, cryptedPassword: $cryptedPassword, hostname: $hostname)';
  }
}

/// @nodoc
abstract mixin class _$IdentityDataCopyWith<$Res>
    implements $IdentityDataCopyWith<$Res> {
  factory _$IdentityDataCopyWith(
          _IdentityData value, $Res Function(_IdentityData) _then) =
      __$IdentityDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String realname,
      String username,
      String cryptedPassword,
      String hostname});
}

/// @nodoc
class __$IdentityDataCopyWithImpl<$Res>
    implements _$IdentityDataCopyWith<$Res> {
  __$IdentityDataCopyWithImpl(this._self, this._then);

  final _IdentityData _self;
  final $Res Function(_IdentityData) _then;

  /// Create a copy of IdentityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? realname = null,
    Object? username = null,
    Object? cryptedPassword = null,
    Object? hostname = null,
  }) {
    return _then(_IdentityData(
      realname: null == realname
          ? _self.realname
          : realname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      cryptedPassword: null == cryptedPassword
          ? _self.cryptedPassword
          : cryptedPassword // ignore: cast_nullable_to_non_nullable
              as String,
      hostname: null == hostname
          ? _self.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SSHData {
  bool get installServer;
  bool get allowPw;
  List<String> get authorizedKeys;

  /// Create a copy of SSHData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SSHDataCopyWith<SSHData> get copyWith =>
      _$SSHDataCopyWithImpl<SSHData>(this as SSHData, _$identity);

  /// Serializes this SSHData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SSHData &&
            (identical(other.installServer, installServer) ||
                other.installServer == installServer) &&
            (identical(other.allowPw, allowPw) || other.allowPw == allowPw) &&
            const DeepCollectionEquality()
                .equals(other.authorizedKeys, authorizedKeys));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, installServer, allowPw,
      const DeepCollectionEquality().hash(authorizedKeys));

  @override
  String toString() {
    return 'SSHData(installServer: $installServer, allowPw: $allowPw, authorizedKeys: $authorizedKeys)';
  }
}

/// @nodoc
abstract mixin class $SSHDataCopyWith<$Res> {
  factory $SSHDataCopyWith(SSHData value, $Res Function(SSHData) _then) =
      _$SSHDataCopyWithImpl;
  @useResult
  $Res call({bool installServer, bool allowPw, List<String> authorizedKeys});
}

/// @nodoc
class _$SSHDataCopyWithImpl<$Res> implements $SSHDataCopyWith<$Res> {
  _$SSHDataCopyWithImpl(this._self, this._then);

  final SSHData _self;
  final $Res Function(SSHData) _then;

  /// Create a copy of SSHData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? installServer = null,
    Object? allowPw = null,
    Object? authorizedKeys = null,
  }) {
    return _then(_self.copyWith(
      installServer: null == installServer
          ? _self.installServer
          : installServer // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPw: null == allowPw
          ? _self.allowPw
          : allowPw // ignore: cast_nullable_to_non_nullable
              as bool,
      authorizedKeys: null == authorizedKeys
          ? _self.authorizedKeys
          : authorizedKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SSHData].
extension SSHDataPatterns on SSHData {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SSHData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SSHData() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SSHData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SSHData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHData() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool installServer, bool allowPw, List<String> authorizedKeys)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SSHData() when $default != null:
        return $default(
            _that.installServer, _that.allowPw, _that.authorizedKeys);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            bool installServer, bool allowPw, List<String> authorizedKeys)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHData():
        return $default(
            _that.installServer, _that.allowPw, _that.authorizedKeys);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool installServer, bool allowPw, List<String> authorizedKeys)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHData() when $default != null:
        return $default(
            _that.installServer, _that.allowPw, _that.authorizedKeys);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SSHData implements SSHData {
  const _SSHData(
      {required this.installServer,
      required this.allowPw,
      final List<String> authorizedKeys = const []})
      : _authorizedKeys = authorizedKeys;
  factory _SSHData.fromJson(Map<String, dynamic> json) =>
      _$SSHDataFromJson(json);

  @override
  final bool installServer;
  @override
  final bool allowPw;
  final List<String> _authorizedKeys;
  @override
  @JsonKey()
  List<String> get authorizedKeys {
    if (_authorizedKeys is EqualUnmodifiableListView) return _authorizedKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authorizedKeys);
  }

  /// Create a copy of SSHData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SSHDataCopyWith<_SSHData> get copyWith =>
      __$SSHDataCopyWithImpl<_SSHData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SSHDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SSHData &&
            (identical(other.installServer, installServer) ||
                other.installServer == installServer) &&
            (identical(other.allowPw, allowPw) || other.allowPw == allowPw) &&
            const DeepCollectionEquality()
                .equals(other._authorizedKeys, _authorizedKeys));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, installServer, allowPw,
      const DeepCollectionEquality().hash(_authorizedKeys));

  @override
  String toString() {
    return 'SSHData(installServer: $installServer, allowPw: $allowPw, authorizedKeys: $authorizedKeys)';
  }
}

/// @nodoc
abstract mixin class _$SSHDataCopyWith<$Res> implements $SSHDataCopyWith<$Res> {
  factory _$SSHDataCopyWith(_SSHData value, $Res Function(_SSHData) _then) =
      __$SSHDataCopyWithImpl;
  @override
  @useResult
  $Res call({bool installServer, bool allowPw, List<String> authorizedKeys});
}

/// @nodoc
class __$SSHDataCopyWithImpl<$Res> implements _$SSHDataCopyWith<$Res> {
  __$SSHDataCopyWithImpl(this._self, this._then);

  final _SSHData _self;
  final $Res Function(_SSHData) _then;

  /// Create a copy of SSHData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? installServer = null,
    Object? allowPw = null,
    Object? authorizedKeys = null,
  }) {
    return _then(_SSHData(
      installServer: null == installServer
          ? _self.installServer
          : installServer // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPw: null == allowPw
          ? _self.allowPw
          : allowPw // ignore: cast_nullable_to_non_nullable
              as bool,
      authorizedKeys: null == authorizedKeys
          ? _self._authorizedKeys
          : authorizedKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$SSHIdentity {
  String get keyType;
  String get key;
  String get keyComment;
  String get keyFingerprint;

  /// Create a copy of SSHIdentity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SSHIdentityCopyWith<SSHIdentity> get copyWith =>
      _$SSHIdentityCopyWithImpl<SSHIdentity>(this as SSHIdentity, _$identity);

  /// Serializes this SSHIdentity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SSHIdentity &&
            (identical(other.keyType, keyType) || other.keyType == keyType) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.keyComment, keyComment) ||
                other.keyComment == keyComment) &&
            (identical(other.keyFingerprint, keyFingerprint) ||
                other.keyFingerprint == keyFingerprint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, keyType, key, keyComment, keyFingerprint);

  @override
  String toString() {
    return 'SSHIdentity(keyType: $keyType, key: $key, keyComment: $keyComment, keyFingerprint: $keyFingerprint)';
  }
}

/// @nodoc
abstract mixin class $SSHIdentityCopyWith<$Res> {
  factory $SSHIdentityCopyWith(
          SSHIdentity value, $Res Function(SSHIdentity) _then) =
      _$SSHIdentityCopyWithImpl;
  @useResult
  $Res call(
      {String keyType, String key, String keyComment, String keyFingerprint});
}

/// @nodoc
class _$SSHIdentityCopyWithImpl<$Res> implements $SSHIdentityCopyWith<$Res> {
  _$SSHIdentityCopyWithImpl(this._self, this._then);

  final SSHIdentity _self;
  final $Res Function(SSHIdentity) _then;

  /// Create a copy of SSHIdentity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyType = null,
    Object? key = null,
    Object? keyComment = null,
    Object? keyFingerprint = null,
  }) {
    return _then(_self.copyWith(
      keyType: null == keyType
          ? _self.keyType
          : keyType // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      keyComment: null == keyComment
          ? _self.keyComment
          : keyComment // ignore: cast_nullable_to_non_nullable
              as String,
      keyFingerprint: null == keyFingerprint
          ? _self.keyFingerprint
          : keyFingerprint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SSHIdentity].
extension SSHIdentityPatterns on SSHIdentity {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SSHIdentity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SSHIdentity() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SSHIdentity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHIdentity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SSHIdentity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHIdentity() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String keyType, String key, String keyComment,
            String keyFingerprint)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SSHIdentity() when $default != null:
        return $default(
            _that.keyType, _that.key, _that.keyComment, _that.keyFingerprint);
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
  TResult when<TResult extends Object?>(
    TResult Function(String keyType, String key, String keyComment,
            String keyFingerprint)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHIdentity():
        return $default(
            _that.keyType, _that.key, _that.keyComment, _that.keyFingerprint);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String keyType, String key, String keyComment,
            String keyFingerprint)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHIdentity() when $default != null:
        return $default(
            _that.keyType, _that.key, _that.keyComment, _that.keyFingerprint);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SSHIdentity implements SSHIdentity {
  const _SSHIdentity(
      {required this.keyType,
      required this.key,
      required this.keyComment,
      required this.keyFingerprint});
  factory _SSHIdentity.fromJson(Map<String, dynamic> json) =>
      _$SSHIdentityFromJson(json);

  @override
  final String keyType;
  @override
  final String key;
  @override
  final String keyComment;
  @override
  final String keyFingerprint;

  /// Create a copy of SSHIdentity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SSHIdentityCopyWith<_SSHIdentity> get copyWith =>
      __$SSHIdentityCopyWithImpl<_SSHIdentity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SSHIdentityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SSHIdentity &&
            (identical(other.keyType, keyType) || other.keyType == keyType) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.keyComment, keyComment) ||
                other.keyComment == keyComment) &&
            (identical(other.keyFingerprint, keyFingerprint) ||
                other.keyFingerprint == keyFingerprint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, keyType, key, keyComment, keyFingerprint);

  @override
  String toString() {
    return 'SSHIdentity(keyType: $keyType, key: $key, keyComment: $keyComment, keyFingerprint: $keyFingerprint)';
  }
}

/// @nodoc
abstract mixin class _$SSHIdentityCopyWith<$Res>
    implements $SSHIdentityCopyWith<$Res> {
  factory _$SSHIdentityCopyWith(
          _SSHIdentity value, $Res Function(_SSHIdentity) _then) =
      __$SSHIdentityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String keyType, String key, String keyComment, String keyFingerprint});
}

/// @nodoc
class __$SSHIdentityCopyWithImpl<$Res> implements _$SSHIdentityCopyWith<$Res> {
  __$SSHIdentityCopyWithImpl(this._self, this._then);

  final _SSHIdentity _self;
  final $Res Function(_SSHIdentity) _then;

  /// Create a copy of SSHIdentity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyType = null,
    Object? key = null,
    Object? keyComment = null,
    Object? keyFingerprint = null,
  }) {
    return _then(_SSHIdentity(
      keyType: null == keyType
          ? _self.keyType
          : keyType // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      keyComment: null == keyComment
          ? _self.keyComment
          : keyComment // ignore: cast_nullable_to_non_nullable
              as String,
      keyFingerprint: null == keyFingerprint
          ? _self.keyFingerprint
          : keyFingerprint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SSHFetchIdResponse {
  SSHFetchIdStatus get status;
  List<SSHIdentity>? get identities;
  String? get error;

  /// Create a copy of SSHFetchIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SSHFetchIdResponseCopyWith<SSHFetchIdResponse> get copyWith =>
      _$SSHFetchIdResponseCopyWithImpl<SSHFetchIdResponse>(
          this as SSHFetchIdResponse, _$identity);

  /// Serializes this SSHFetchIdResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SSHFetchIdResponse &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.identities, identities) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(identities), error);

  @override
  String toString() {
    return 'SSHFetchIdResponse(status: $status, identities: $identities, error: $error)';
  }
}

/// @nodoc
abstract mixin class $SSHFetchIdResponseCopyWith<$Res> {
  factory $SSHFetchIdResponseCopyWith(
          SSHFetchIdResponse value, $Res Function(SSHFetchIdResponse) _then) =
      _$SSHFetchIdResponseCopyWithImpl;
  @useResult
  $Res call(
      {SSHFetchIdStatus status, List<SSHIdentity>? identities, String? error});
}

/// @nodoc
class _$SSHFetchIdResponseCopyWithImpl<$Res>
    implements $SSHFetchIdResponseCopyWith<$Res> {
  _$SSHFetchIdResponseCopyWithImpl(this._self, this._then);

  final SSHFetchIdResponse _self;
  final $Res Function(SSHFetchIdResponse) _then;

  /// Create a copy of SSHFetchIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? identities = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SSHFetchIdStatus,
      identities: freezed == identities
          ? _self.identities
          : identities // ignore: cast_nullable_to_non_nullable
              as List<SSHIdentity>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SSHFetchIdResponse].
extension SSHFetchIdResponsePatterns on SSHFetchIdResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SSHFetchIdResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SSHFetchIdResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SSHFetchIdResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHFetchIdResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SSHFetchIdResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHFetchIdResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SSHFetchIdStatus status, List<SSHIdentity>? identities,
            String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SSHFetchIdResponse() when $default != null:
        return $default(_that.status, _that.identities, _that.error);
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
  TResult when<TResult extends Object?>(
    TResult Function(SSHFetchIdStatus status, List<SSHIdentity>? identities,
            String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHFetchIdResponse():
        return $default(_that.status, _that.identities, _that.error);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SSHFetchIdStatus status, List<SSHIdentity>? identities,
            String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SSHFetchIdResponse() when $default != null:
        return $default(_that.status, _that.identities, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SSHFetchIdResponse implements SSHFetchIdResponse {
  const _SSHFetchIdResponse(
      {required this.status,
      required final List<SSHIdentity>? identities,
      required this.error})
      : _identities = identities;
  factory _SSHFetchIdResponse.fromJson(Map<String, dynamic> json) =>
      _$SSHFetchIdResponseFromJson(json);

  @override
  final SSHFetchIdStatus status;
  final List<SSHIdentity>? _identities;
  @override
  List<SSHIdentity>? get identities {
    final value = _identities;
    if (value == null) return null;
    if (_identities is EqualUnmodifiableListView) return _identities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  /// Create a copy of SSHFetchIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SSHFetchIdResponseCopyWith<_SSHFetchIdResponse> get copyWith =>
      __$SSHFetchIdResponseCopyWithImpl<_SSHFetchIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SSHFetchIdResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SSHFetchIdResponse &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._identities, _identities) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_identities), error);

  @override
  String toString() {
    return 'SSHFetchIdResponse(status: $status, identities: $identities, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$SSHFetchIdResponseCopyWith<$Res>
    implements $SSHFetchIdResponseCopyWith<$Res> {
  factory _$SSHFetchIdResponseCopyWith(
          _SSHFetchIdResponse value, $Res Function(_SSHFetchIdResponse) _then) =
      __$SSHFetchIdResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SSHFetchIdStatus status, List<SSHIdentity>? identities, String? error});
}

/// @nodoc
class __$SSHFetchIdResponseCopyWithImpl<$Res>
    implements _$SSHFetchIdResponseCopyWith<$Res> {
  __$SSHFetchIdResponseCopyWithImpl(this._self, this._then);

  final _SSHFetchIdResponse _self;
  final $Res Function(_SSHFetchIdResponse) _then;

  /// Create a copy of SSHFetchIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? identities = freezed,
    Object? error = freezed,
  }) {
    return _then(_SSHFetchIdResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SSHFetchIdStatus,
      identities: freezed == identities
          ? _self._identities
          : identities // ignore: cast_nullable_to_non_nullable
              as List<SSHIdentity>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ChannelSnapInfo {
  String get channelName;
  String get revision;
  String get confinement;
  String get version;
  int get size;
  DateTime get releasedAt;

  /// Create a copy of ChannelSnapInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChannelSnapInfoCopyWith<ChannelSnapInfo> get copyWith =>
      _$ChannelSnapInfoCopyWithImpl<ChannelSnapInfo>(
          this as ChannelSnapInfo, _$identity);

  /// Serializes this ChannelSnapInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChannelSnapInfo &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.revision, revision) ||
                other.revision == revision) &&
            (identical(other.confinement, confinement) ||
                other.confinement == confinement) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, channelName, revision,
      confinement, version, size, releasedAt);

  @override
  String toString() {
    return 'ChannelSnapInfo(channelName: $channelName, revision: $revision, confinement: $confinement, version: $version, size: $size, releasedAt: $releasedAt)';
  }
}

/// @nodoc
abstract mixin class $ChannelSnapInfoCopyWith<$Res> {
  factory $ChannelSnapInfoCopyWith(
          ChannelSnapInfo value, $Res Function(ChannelSnapInfo) _then) =
      _$ChannelSnapInfoCopyWithImpl;
  @useResult
  $Res call(
      {String channelName,
      String revision,
      String confinement,
      String version,
      int size,
      DateTime releasedAt});
}

/// @nodoc
class _$ChannelSnapInfoCopyWithImpl<$Res>
    implements $ChannelSnapInfoCopyWith<$Res> {
  _$ChannelSnapInfoCopyWithImpl(this._self, this._then);

  final ChannelSnapInfo _self;
  final $Res Function(ChannelSnapInfo) _then;

  /// Create a copy of ChannelSnapInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = null,
    Object? revision = null,
    Object? confinement = null,
    Object? version = null,
    Object? size = null,
    Object? releasedAt = null,
  }) {
    return _then(_self.copyWith(
      channelName: null == channelName
          ? _self.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      revision: null == revision
          ? _self.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as String,
      confinement: null == confinement
          ? _self.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      releasedAt: null == releasedAt
          ? _self.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChannelSnapInfo].
extension ChannelSnapInfoPatterns on ChannelSnapInfo {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChannelSnapInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChannelSnapInfo() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_ChannelSnapInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelSnapInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChannelSnapInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelSnapInfo() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String channelName, String revision, String confinement,
            String version, int size, DateTime releasedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChannelSnapInfo() when $default != null:
        return $default(_that.channelName, _that.revision, _that.confinement,
            _that.version, _that.size, _that.releasedAt);
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
  TResult when<TResult extends Object?>(
    TResult Function(String channelName, String revision, String confinement,
            String version, int size, DateTime releasedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelSnapInfo():
        return $default(_that.channelName, _that.revision, _that.confinement,
            _that.version, _that.size, _that.releasedAt);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String channelName, String revision, String confinement,
            String version, int size, DateTime releasedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelSnapInfo() when $default != null:
        return $default(_that.channelName, _that.revision, _that.confinement,
            _that.version, _that.size, _that.releasedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChannelSnapInfo implements ChannelSnapInfo {
  const _ChannelSnapInfo(
      {required this.channelName,
      required this.revision,
      required this.confinement,
      required this.version,
      required this.size,
      required this.releasedAt});
  factory _ChannelSnapInfo.fromJson(Map<String, dynamic> json) =>
      _$ChannelSnapInfoFromJson(json);

  @override
  final String channelName;
  @override
  final String revision;
  @override
  final String confinement;
  @override
  final String version;
  @override
  final int size;
  @override
  final DateTime releasedAt;

  /// Create a copy of ChannelSnapInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChannelSnapInfoCopyWith<_ChannelSnapInfo> get copyWith =>
      __$ChannelSnapInfoCopyWithImpl<_ChannelSnapInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChannelSnapInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChannelSnapInfo &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.revision, revision) ||
                other.revision == revision) &&
            (identical(other.confinement, confinement) ||
                other.confinement == confinement) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, channelName, revision,
      confinement, version, size, releasedAt);

  @override
  String toString() {
    return 'ChannelSnapInfo(channelName: $channelName, revision: $revision, confinement: $confinement, version: $version, size: $size, releasedAt: $releasedAt)';
  }
}

/// @nodoc
abstract mixin class _$ChannelSnapInfoCopyWith<$Res>
    implements $ChannelSnapInfoCopyWith<$Res> {
  factory _$ChannelSnapInfoCopyWith(
          _ChannelSnapInfo value, $Res Function(_ChannelSnapInfo) _then) =
      __$ChannelSnapInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String channelName,
      String revision,
      String confinement,
      String version,
      int size,
      DateTime releasedAt});
}

/// @nodoc
class __$ChannelSnapInfoCopyWithImpl<$Res>
    implements _$ChannelSnapInfoCopyWith<$Res> {
  __$ChannelSnapInfoCopyWithImpl(this._self, this._then);

  final _ChannelSnapInfo _self;
  final $Res Function(_ChannelSnapInfo) _then;

  /// Create a copy of ChannelSnapInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? channelName = null,
    Object? revision = null,
    Object? confinement = null,
    Object? version = null,
    Object? size = null,
    Object? releasedAt = null,
  }) {
    return _then(_ChannelSnapInfo(
      channelName: null == channelName
          ? _self.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      revision: null == revision
          ? _self.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as String,
      confinement: null == confinement
          ? _self.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      releasedAt: null == releasedAt
          ? _self.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$SnapInfo {
  String get name;
  String get summary;
  String get publisher;
  bool get verified;
  bool get starred;
  String get description;
  String get confinement;
  String get license;
  List<ChannelSnapInfo> get channels;

  /// Create a copy of SnapInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapInfoCopyWith<SnapInfo> get copyWith =>
      _$SnapInfoCopyWithImpl<SnapInfo>(this as SnapInfo, _$identity);

  /// Serializes this SnapInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.starred, starred) || other.starred == starred) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.confinement, confinement) ||
                other.confinement == confinement) &&
            (identical(other.license, license) || other.license == license) &&
            const DeepCollectionEquality().equals(other.channels, channels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      summary,
      publisher,
      verified,
      starred,
      description,
      confinement,
      license,
      const DeepCollectionEquality().hash(channels));

  @override
  String toString() {
    return 'SnapInfo(name: $name, summary: $summary, publisher: $publisher, verified: $verified, starred: $starred, description: $description, confinement: $confinement, license: $license, channels: $channels)';
  }
}

/// @nodoc
abstract mixin class $SnapInfoCopyWith<$Res> {
  factory $SnapInfoCopyWith(SnapInfo value, $Res Function(SnapInfo) _then) =
      _$SnapInfoCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String summary,
      String publisher,
      bool verified,
      bool starred,
      String description,
      String confinement,
      String license,
      List<ChannelSnapInfo> channels});
}

/// @nodoc
class _$SnapInfoCopyWithImpl<$Res> implements $SnapInfoCopyWith<$Res> {
  _$SnapInfoCopyWithImpl(this._self, this._then);

  final SnapInfo _self;
  final $Res Function(SnapInfo) _then;

  /// Create a copy of SnapInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? summary = null,
    Object? publisher = null,
    Object? verified = null,
    Object? starred = null,
    Object? description = null,
    Object? confinement = null,
    Object? license = null,
    Object? channels = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _self.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      starred: null == starred
          ? _self.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      confinement: null == confinement
          ? _self.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as String,
      license: null == license
          ? _self.license
          : license // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _self.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<ChannelSnapInfo>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapInfo].
extension SnapInfoPatterns on SnapInfo {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapInfo() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SnapInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapInfo() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String name,
            String summary,
            String publisher,
            bool verified,
            bool starred,
            String description,
            String confinement,
            String license,
            List<ChannelSnapInfo> channels)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapInfo() when $default != null:
        return $default(
            _that.name,
            _that.summary,
            _that.publisher,
            _that.verified,
            _that.starred,
            _that.description,
            _that.confinement,
            _that.license,
            _that.channels);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String name,
            String summary,
            String publisher,
            bool verified,
            bool starred,
            String description,
            String confinement,
            String license,
            List<ChannelSnapInfo> channels)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapInfo():
        return $default(
            _that.name,
            _that.summary,
            _that.publisher,
            _that.verified,
            _that.starred,
            _that.description,
            _that.confinement,
            _that.license,
            _that.channels);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String name,
            String summary,
            String publisher,
            bool verified,
            bool starred,
            String description,
            String confinement,
            String license,
            List<ChannelSnapInfo> channels)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapInfo() when $default != null:
        return $default(
            _that.name,
            _that.summary,
            _that.publisher,
            _that.verified,
            _that.starred,
            _that.description,
            _that.confinement,
            _that.license,
            _that.channels);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapInfo implements SnapInfo {
  const _SnapInfo(
      {required this.name,
      this.summary = '',
      this.publisher = '',
      this.verified = false,
      this.starred = false,
      this.description = '',
      this.confinement = '',
      this.license = '',
      final List<ChannelSnapInfo> channels = const []})
      : _channels = channels;
  factory _SnapInfo.fromJson(Map<String, dynamic> json) =>
      _$SnapInfoFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String summary;
  @override
  @JsonKey()
  final String publisher;
  @override
  @JsonKey()
  final bool verified;
  @override
  @JsonKey()
  final bool starred;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String confinement;
  @override
  @JsonKey()
  final String license;
  final List<ChannelSnapInfo> _channels;
  @override
  @JsonKey()
  List<ChannelSnapInfo> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  /// Create a copy of SnapInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapInfoCopyWith<_SnapInfo> get copyWith =>
      __$SnapInfoCopyWithImpl<_SnapInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.starred, starred) || other.starred == starred) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.confinement, confinement) ||
                other.confinement == confinement) &&
            (identical(other.license, license) || other.license == license) &&
            const DeepCollectionEquality().equals(other._channels, _channels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      summary,
      publisher,
      verified,
      starred,
      description,
      confinement,
      license,
      const DeepCollectionEquality().hash(_channels));

  @override
  String toString() {
    return 'SnapInfo(name: $name, summary: $summary, publisher: $publisher, verified: $verified, starred: $starred, description: $description, confinement: $confinement, license: $license, channels: $channels)';
  }
}

/// @nodoc
abstract mixin class _$SnapInfoCopyWith<$Res>
    implements $SnapInfoCopyWith<$Res> {
  factory _$SnapInfoCopyWith(_SnapInfo value, $Res Function(_SnapInfo) _then) =
      __$SnapInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String summary,
      String publisher,
      bool verified,
      bool starred,
      String description,
      String confinement,
      String license,
      List<ChannelSnapInfo> channels});
}

/// @nodoc
class __$SnapInfoCopyWithImpl<$Res> implements _$SnapInfoCopyWith<$Res> {
  __$SnapInfoCopyWithImpl(this._self, this._then);

  final _SnapInfo _self;
  final $Res Function(_SnapInfo) _then;

  /// Create a copy of SnapInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? summary = null,
    Object? publisher = null,
    Object? verified = null,
    Object? starred = null,
    Object? description = null,
    Object? confinement = null,
    Object? license = null,
    Object? channels = null,
  }) {
    return _then(_SnapInfo(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _self.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      starred: null == starred
          ? _self.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      confinement: null == confinement
          ? _self.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as String,
      license: null == license
          ? _self.license
          : license // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _self._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<ChannelSnapInfo>,
    ));
  }
}

/// @nodoc
mixin _$DriversResponse {
  bool get install;
  List<String>? get drivers;
  bool get localOnly;
  bool get searchDrivers;

  /// Create a copy of DriversResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DriversResponseCopyWith<DriversResponse> get copyWith =>
      _$DriversResponseCopyWithImpl<DriversResponse>(
          this as DriversResponse, _$identity);

  /// Serializes this DriversResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DriversResponse &&
            (identical(other.install, install) || other.install == install) &&
            const DeepCollectionEquality().equals(other.drivers, drivers) &&
            (identical(other.localOnly, localOnly) ||
                other.localOnly == localOnly) &&
            (identical(other.searchDrivers, searchDrivers) ||
                other.searchDrivers == searchDrivers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, install,
      const DeepCollectionEquality().hash(drivers), localOnly, searchDrivers);

  @override
  String toString() {
    return 'DriversResponse(install: $install, drivers: $drivers, localOnly: $localOnly, searchDrivers: $searchDrivers)';
  }
}

/// @nodoc
abstract mixin class $DriversResponseCopyWith<$Res> {
  factory $DriversResponseCopyWith(
          DriversResponse value, $Res Function(DriversResponse) _then) =
      _$DriversResponseCopyWithImpl;
  @useResult
  $Res call(
      {bool install,
      List<String>? drivers,
      bool localOnly,
      bool searchDrivers});
}

/// @nodoc
class _$DriversResponseCopyWithImpl<$Res>
    implements $DriversResponseCopyWith<$Res> {
  _$DriversResponseCopyWithImpl(this._self, this._then);

  final DriversResponse _self;
  final $Res Function(DriversResponse) _then;

  /// Create a copy of DriversResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? install = null,
    Object? drivers = freezed,
    Object? localOnly = null,
    Object? searchDrivers = null,
  }) {
    return _then(_self.copyWith(
      install: null == install
          ? _self.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
      drivers: freezed == drivers
          ? _self.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      localOnly: null == localOnly
          ? _self.localOnly
          : localOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDrivers: null == searchDrivers
          ? _self.searchDrivers
          : searchDrivers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [DriversResponse].
extension DriversResponsePatterns on DriversResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DriversResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriversResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_DriversResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DriversResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool install, List<String>? drivers, bool localOnly,
            bool searchDrivers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriversResponse() when $default != null:
        return $default(
            _that.install, _that.drivers, _that.localOnly, _that.searchDrivers);
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
  TResult when<TResult extends Object?>(
    TResult Function(bool install, List<String>? drivers, bool localOnly,
            bool searchDrivers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversResponse():
        return $default(
            _that.install, _that.drivers, _that.localOnly, _that.searchDrivers);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool install, List<String>? drivers, bool localOnly,
            bool searchDrivers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversResponse() when $default != null:
        return $default(
            _that.install, _that.drivers, _that.localOnly, _that.searchDrivers);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DriversResponse implements DriversResponse {
  const _DriversResponse(
      {required this.install,
      required final List<String>? drivers,
      required this.localOnly,
      required this.searchDrivers})
      : _drivers = drivers;
  factory _DriversResponse.fromJson(Map<String, dynamic> json) =>
      _$DriversResponseFromJson(json);

  @override
  final bool install;
  final List<String>? _drivers;
  @override
  List<String>? get drivers {
    final value = _drivers;
    if (value == null) return null;
    if (_drivers is EqualUnmodifiableListView) return _drivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool localOnly;
  @override
  final bool searchDrivers;

  /// Create a copy of DriversResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DriversResponseCopyWith<_DriversResponse> get copyWith =>
      __$DriversResponseCopyWithImpl<_DriversResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DriversResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriversResponse &&
            (identical(other.install, install) || other.install == install) &&
            const DeepCollectionEquality().equals(other._drivers, _drivers) &&
            (identical(other.localOnly, localOnly) ||
                other.localOnly == localOnly) &&
            (identical(other.searchDrivers, searchDrivers) ||
                other.searchDrivers == searchDrivers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, install,
      const DeepCollectionEquality().hash(_drivers), localOnly, searchDrivers);

  @override
  String toString() {
    return 'DriversResponse(install: $install, drivers: $drivers, localOnly: $localOnly, searchDrivers: $searchDrivers)';
  }
}

/// @nodoc
abstract mixin class _$DriversResponseCopyWith<$Res>
    implements $DriversResponseCopyWith<$Res> {
  factory _$DriversResponseCopyWith(
          _DriversResponse value, $Res Function(_DriversResponse) _then) =
      __$DriversResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool install,
      List<String>? drivers,
      bool localOnly,
      bool searchDrivers});
}

/// @nodoc
class __$DriversResponseCopyWithImpl<$Res>
    implements _$DriversResponseCopyWith<$Res> {
  __$DriversResponseCopyWithImpl(this._self, this._then);

  final _DriversResponse _self;
  final $Res Function(_DriversResponse) _then;

  /// Create a copy of DriversResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? install = null,
    Object? drivers = freezed,
    Object? localOnly = null,
    Object? searchDrivers = null,
  }) {
    return _then(_DriversResponse(
      install: null == install
          ? _self.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
      drivers: freezed == drivers
          ? _self._drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      localOnly: null == localOnly
          ? _self.localOnly
          : localOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDrivers: null == searchDrivers
          ? _self.searchDrivers
          : searchDrivers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$OEMResponse {
  List<String>? get metapackages;

  /// Create a copy of OEMResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OEMResponseCopyWith<OEMResponse> get copyWith =>
      _$OEMResponseCopyWithImpl<OEMResponse>(this as OEMResponse, _$identity);

  /// Serializes this OEMResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OEMResponse &&
            const DeepCollectionEquality()
                .equals(other.metapackages, metapackages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(metapackages));

  @override
  String toString() {
    return 'OEMResponse(metapackages: $metapackages)';
  }
}

/// @nodoc
abstract mixin class $OEMResponseCopyWith<$Res> {
  factory $OEMResponseCopyWith(
          OEMResponse value, $Res Function(OEMResponse) _then) =
      _$OEMResponseCopyWithImpl;
  @useResult
  $Res call({List<String>? metapackages});
}

/// @nodoc
class _$OEMResponseCopyWithImpl<$Res> implements $OEMResponseCopyWith<$Res> {
  _$OEMResponseCopyWithImpl(this._self, this._then);

  final OEMResponse _self;
  final $Res Function(OEMResponse) _then;

  /// Create a copy of OEMResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metapackages = freezed,
  }) {
    return _then(_self.copyWith(
      metapackages: freezed == metapackages
          ? _self.metapackages
          : metapackages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OEMResponse].
extension OEMResponsePatterns on OEMResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OEMResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OEMResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_OEMResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OEMResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OEMResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OEMResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String>? metapackages)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OEMResponse() when $default != null:
        return $default(_that.metapackages);
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
  TResult when<TResult extends Object?>(
    TResult Function(List<String>? metapackages) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OEMResponse():
        return $default(_that.metapackages);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<String>? metapackages)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OEMResponse() when $default != null:
        return $default(_that.metapackages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OEMResponse implements OEMResponse {
  const _OEMResponse({required final List<String>? metapackages})
      : _metapackages = metapackages;
  factory _OEMResponse.fromJson(Map<String, dynamic> json) =>
      _$OEMResponseFromJson(json);

  final List<String>? _metapackages;
  @override
  List<String>? get metapackages {
    final value = _metapackages;
    if (value == null) return null;
    if (_metapackages is EqualUnmodifiableListView) return _metapackages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of OEMResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OEMResponseCopyWith<_OEMResponse> get copyWith =>
      __$OEMResponseCopyWithImpl<_OEMResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OEMResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OEMResponse &&
            const DeepCollectionEquality()
                .equals(other._metapackages, _metapackages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_metapackages));

  @override
  String toString() {
    return 'OEMResponse(metapackages: $metapackages)';
  }
}

/// @nodoc
abstract mixin class _$OEMResponseCopyWith<$Res>
    implements $OEMResponseCopyWith<$Res> {
  factory _$OEMResponseCopyWith(
          _OEMResponse value, $Res Function(_OEMResponse) _then) =
      __$OEMResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<String>? metapackages});
}

/// @nodoc
class __$OEMResponseCopyWithImpl<$Res> implements _$OEMResponseCopyWith<$Res> {
  __$OEMResponseCopyWithImpl(this._self, this._then);

  final _OEMResponse _self;
  final $Res Function(_OEMResponse) _then;

  /// Create a copy of OEMResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? metapackages = freezed,
  }) {
    return _then(_OEMResponse(
      metapackages: freezed == metapackages
          ? _self._metapackages
          : metapackages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
mixin _$CodecsData {
  bool get install;

  /// Create a copy of CodecsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CodecsDataCopyWith<CodecsData> get copyWith =>
      _$CodecsDataCopyWithImpl<CodecsData>(this as CodecsData, _$identity);

  /// Serializes this CodecsData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CodecsData &&
            (identical(other.install, install) || other.install == install));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, install);

  @override
  String toString() {
    return 'CodecsData(install: $install)';
  }
}

/// @nodoc
abstract mixin class $CodecsDataCopyWith<$Res> {
  factory $CodecsDataCopyWith(
          CodecsData value, $Res Function(CodecsData) _then) =
      _$CodecsDataCopyWithImpl;
  @useResult
  $Res call({bool install});
}

/// @nodoc
class _$CodecsDataCopyWithImpl<$Res> implements $CodecsDataCopyWith<$Res> {
  _$CodecsDataCopyWithImpl(this._self, this._then);

  final CodecsData _self;
  final $Res Function(CodecsData) _then;

  /// Create a copy of CodecsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? install = null,
  }) {
    return _then(_self.copyWith(
      install: null == install
          ? _self.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CodecsData].
extension CodecsDataPatterns on CodecsData {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CodecsData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CodecsData() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_CodecsData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CodecsData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CodecsData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CodecsData() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool install)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CodecsData() when $default != null:
        return $default(_that.install);
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
  TResult when<TResult extends Object?>(
    TResult Function(bool install) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CodecsData():
        return $default(_that.install);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool install)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CodecsData() when $default != null:
        return $default(_that.install);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CodecsData implements CodecsData {
  const _CodecsData({required this.install});
  factory _CodecsData.fromJson(Map<String, dynamic> json) =>
      _$CodecsDataFromJson(json);

  @override
  final bool install;

  /// Create a copy of CodecsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CodecsDataCopyWith<_CodecsData> get copyWith =>
      __$CodecsDataCopyWithImpl<_CodecsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CodecsDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CodecsData &&
            (identical(other.install, install) || other.install == install));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, install);

  @override
  String toString() {
    return 'CodecsData(install: $install)';
  }
}

/// @nodoc
abstract mixin class _$CodecsDataCopyWith<$Res>
    implements $CodecsDataCopyWith<$Res> {
  factory _$CodecsDataCopyWith(
          _CodecsData value, $Res Function(_CodecsData) _then) =
      __$CodecsDataCopyWithImpl;
  @override
  @useResult
  $Res call({bool install});
}

/// @nodoc
class __$CodecsDataCopyWithImpl<$Res> implements _$CodecsDataCopyWith<$Res> {
  __$CodecsDataCopyWithImpl(this._self, this._then);

  final _CodecsData _self;
  final $Res Function(_CodecsData) _then;

  /// Create a copy of CodecsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? install = null,
  }) {
    return _then(_CodecsData(
      install: null == install
          ? _self.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$DriversPayload {
  bool get install;

  /// Create a copy of DriversPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DriversPayloadCopyWith<DriversPayload> get copyWith =>
      _$DriversPayloadCopyWithImpl<DriversPayload>(
          this as DriversPayload, _$identity);

  /// Serializes this DriversPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DriversPayload &&
            (identical(other.install, install) || other.install == install));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, install);

  @override
  String toString() {
    return 'DriversPayload(install: $install)';
  }
}

/// @nodoc
abstract mixin class $DriversPayloadCopyWith<$Res> {
  factory $DriversPayloadCopyWith(
          DriversPayload value, $Res Function(DriversPayload) _then) =
      _$DriversPayloadCopyWithImpl;
  @useResult
  $Res call({bool install});
}

/// @nodoc
class _$DriversPayloadCopyWithImpl<$Res>
    implements $DriversPayloadCopyWith<$Res> {
  _$DriversPayloadCopyWithImpl(this._self, this._then);

  final DriversPayload _self;
  final $Res Function(DriversPayload) _then;

  /// Create a copy of DriversPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? install = null,
  }) {
    return _then(_self.copyWith(
      install: null == install
          ? _self.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [DriversPayload].
extension DriversPayloadPatterns on DriversPayload {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DriversPayload value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriversPayload() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_DriversPayload value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversPayload():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DriversPayload value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversPayload() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool install)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriversPayload() when $default != null:
        return $default(_that.install);
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
  TResult when<TResult extends Object?>(
    TResult Function(bool install) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversPayload():
        return $default(_that.install);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool install)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriversPayload() when $default != null:
        return $default(_that.install);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DriversPayload implements DriversPayload {
  const _DriversPayload({required this.install});
  factory _DriversPayload.fromJson(Map<String, dynamic> json) =>
      _$DriversPayloadFromJson(json);

  @override
  final bool install;

  /// Create a copy of DriversPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DriversPayloadCopyWith<_DriversPayload> get copyWith =>
      __$DriversPayloadCopyWithImpl<_DriversPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DriversPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriversPayload &&
            (identical(other.install, install) || other.install == install));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, install);

  @override
  String toString() {
    return 'DriversPayload(install: $install)';
  }
}

/// @nodoc
abstract mixin class _$DriversPayloadCopyWith<$Res>
    implements $DriversPayloadCopyWith<$Res> {
  factory _$DriversPayloadCopyWith(
          _DriversPayload value, $Res Function(_DriversPayload) _then) =
      __$DriversPayloadCopyWithImpl;
  @override
  @useResult
  $Res call({bool install});
}

/// @nodoc
class __$DriversPayloadCopyWithImpl<$Res>
    implements _$DriversPayloadCopyWith<$Res> {
  __$DriversPayloadCopyWithImpl(this._self, this._then);

  final _DriversPayload _self;
  final $Res Function(_DriversPayload) _then;

  /// Create a copy of DriversPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? install = null,
  }) {
    return _then(_DriversPayload(
      install: null == install
          ? _self.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$SnapSelection {
  String get name;
  String get channel;
  bool get classic;

  /// Create a copy of SnapSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapSelectionCopyWith<SnapSelection> get copyWith =>
      _$SnapSelectionCopyWithImpl<SnapSelection>(
          this as SnapSelection, _$identity);

  /// Serializes this SnapSelection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapSelection &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.classic, classic) || other.classic == classic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, channel, classic);

  @override
  String toString() {
    return 'SnapSelection(name: $name, channel: $channel, classic: $classic)';
  }
}

/// @nodoc
abstract mixin class $SnapSelectionCopyWith<$Res> {
  factory $SnapSelectionCopyWith(
          SnapSelection value, $Res Function(SnapSelection) _then) =
      _$SnapSelectionCopyWithImpl;
  @useResult
  $Res call({String name, String channel, bool classic});
}

/// @nodoc
class _$SnapSelectionCopyWithImpl<$Res>
    implements $SnapSelectionCopyWith<$Res> {
  _$SnapSelectionCopyWithImpl(this._self, this._then);

  final SnapSelection _self;
  final $Res Function(SnapSelection) _then;

  /// Create a copy of SnapSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? channel = null,
    Object? classic = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      classic: null == classic
          ? _self.classic
          : classic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapSelection].
extension SnapSelectionPatterns on SnapSelection {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapSelection value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapSelection() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SnapSelection value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapSelection():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapSelection value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapSelection() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String channel, bool classic)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapSelection() when $default != null:
        return $default(_that.name, _that.channel, _that.classic);
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
  TResult when<TResult extends Object?>(
    TResult Function(String name, String channel, bool classic) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapSelection():
        return $default(_that.name, _that.channel, _that.classic);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String channel, bool classic)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapSelection() when $default != null:
        return $default(_that.name, _that.channel, _that.classic);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapSelection implements SnapSelection {
  const _SnapSelection(
      {required this.name, required this.channel, this.classic = false});
  factory _SnapSelection.fromJson(Map<String, dynamic> json) =>
      _$SnapSelectionFromJson(json);

  @override
  final String name;
  @override
  final String channel;
  @override
  @JsonKey()
  final bool classic;

  /// Create a copy of SnapSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapSelectionCopyWith<_SnapSelection> get copyWith =>
      __$SnapSelectionCopyWithImpl<_SnapSelection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapSelectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapSelection &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.classic, classic) || other.classic == classic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, channel, classic);

  @override
  String toString() {
    return 'SnapSelection(name: $name, channel: $channel, classic: $classic)';
  }
}

/// @nodoc
abstract mixin class _$SnapSelectionCopyWith<$Res>
    implements $SnapSelectionCopyWith<$Res> {
  factory _$SnapSelectionCopyWith(
          _SnapSelection value, $Res Function(_SnapSelection) _then) =
      __$SnapSelectionCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String channel, bool classic});
}

/// @nodoc
class __$SnapSelectionCopyWithImpl<$Res>
    implements _$SnapSelectionCopyWith<$Res> {
  __$SnapSelectionCopyWithImpl(this._self, this._then);

  final _SnapSelection _self;
  final $Res Function(_SnapSelection) _then;

  /// Create a copy of SnapSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? channel = null,
    Object? classic = null,
  }) {
    return _then(_SnapSelection(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      classic: null == classic
          ? _self.classic
          : classic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$SnapListResponse {
  SnapCheckState get status;
  List<SnapInfo> get snaps;
  List<SnapSelection> get selections;

  /// Create a copy of SnapListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapListResponseCopyWith<SnapListResponse> get copyWith =>
      _$SnapListResponseCopyWithImpl<SnapListResponse>(
          this as SnapListResponse, _$identity);

  /// Serializes this SnapListResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapListResponse &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.snaps, snaps) &&
            const DeepCollectionEquality()
                .equals(other.selections, selections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(snaps),
      const DeepCollectionEquality().hash(selections));

  @override
  String toString() {
    return 'SnapListResponse(status: $status, snaps: $snaps, selections: $selections)';
  }
}

/// @nodoc
abstract mixin class $SnapListResponseCopyWith<$Res> {
  factory $SnapListResponseCopyWith(
          SnapListResponse value, $Res Function(SnapListResponse) _then) =
      _$SnapListResponseCopyWithImpl;
  @useResult
  $Res call(
      {SnapCheckState status,
      List<SnapInfo> snaps,
      List<SnapSelection> selections});
}

/// @nodoc
class _$SnapListResponseCopyWithImpl<$Res>
    implements $SnapListResponseCopyWith<$Res> {
  _$SnapListResponseCopyWithImpl(this._self, this._then);

  final SnapListResponse _self;
  final $Res Function(SnapListResponse) _then;

  /// Create a copy of SnapListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? snaps = null,
    Object? selections = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SnapCheckState,
      snaps: null == snaps
          ? _self.snaps
          : snaps // ignore: cast_nullable_to_non_nullable
              as List<SnapInfo>,
      selections: null == selections
          ? _self.selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<SnapSelection>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapListResponse].
extension SnapListResponsePatterns on SnapListResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapListResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapListResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SnapListResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapListResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapListResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapListResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SnapCheckState status, List<SnapInfo> snaps,
            List<SnapSelection> selections)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapListResponse() when $default != null:
        return $default(_that.status, _that.snaps, _that.selections);
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
  TResult when<TResult extends Object?>(
    TResult Function(SnapCheckState status, List<SnapInfo> snaps,
            List<SnapSelection> selections)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapListResponse():
        return $default(_that.status, _that.snaps, _that.selections);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SnapCheckState status, List<SnapInfo> snaps,
            List<SnapSelection> selections)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapListResponse() when $default != null:
        return $default(_that.status, _that.snaps, _that.selections);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapListResponse implements SnapListResponse {
  const _SnapListResponse(
      {required this.status,
      final List<SnapInfo> snaps = const [],
      final List<SnapSelection> selections = const []})
      : _snaps = snaps,
        _selections = selections;
  factory _SnapListResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapListResponseFromJson(json);

  @override
  final SnapCheckState status;
  final List<SnapInfo> _snaps;
  @override
  @JsonKey()
  List<SnapInfo> get snaps {
    if (_snaps is EqualUnmodifiableListView) return _snaps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snaps);
  }

  final List<SnapSelection> _selections;
  @override
  @JsonKey()
  List<SnapSelection> get selections {
    if (_selections is EqualUnmodifiableListView) return _selections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selections);
  }

  /// Create a copy of SnapListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapListResponseCopyWith<_SnapListResponse> get copyWith =>
      __$SnapListResponseCopyWithImpl<_SnapListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapListResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapListResponse &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._snaps, _snaps) &&
            const DeepCollectionEquality()
                .equals(other._selections, _selections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_snaps),
      const DeepCollectionEquality().hash(_selections));

  @override
  String toString() {
    return 'SnapListResponse(status: $status, snaps: $snaps, selections: $selections)';
  }
}

/// @nodoc
abstract mixin class _$SnapListResponseCopyWith<$Res>
    implements $SnapListResponseCopyWith<$Res> {
  factory _$SnapListResponseCopyWith(
          _SnapListResponse value, $Res Function(_SnapListResponse) _then) =
      __$SnapListResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SnapCheckState status,
      List<SnapInfo> snaps,
      List<SnapSelection> selections});
}

/// @nodoc
class __$SnapListResponseCopyWithImpl<$Res>
    implements _$SnapListResponseCopyWith<$Res> {
  __$SnapListResponseCopyWithImpl(this._self, this._then);

  final _SnapListResponse _self;
  final $Res Function(_SnapListResponse) _then;

  /// Create a copy of SnapListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? snaps = null,
    Object? selections = null,
  }) {
    return _then(_SnapListResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SnapCheckState,
      snaps: null == snaps
          ? _self._snaps
          : snaps // ignore: cast_nullable_to_non_nullable
              as List<SnapInfo>,
      selections: null == selections
          ? _self._selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<SnapSelection>,
    ));
  }
}

/// @nodoc
mixin _$TimeZoneInfo {
  String get timezone;
  bool get fromGeoip;

  /// Create a copy of TimeZoneInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimeZoneInfoCopyWith<TimeZoneInfo> get copyWith =>
      _$TimeZoneInfoCopyWithImpl<TimeZoneInfo>(
          this as TimeZoneInfo, _$identity);

  /// Serializes this TimeZoneInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimeZoneInfo &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.fromGeoip, fromGeoip) ||
                other.fromGeoip == fromGeoip));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timezone, fromGeoip);

  @override
  String toString() {
    return 'TimeZoneInfo(timezone: $timezone, fromGeoip: $fromGeoip)';
  }
}

/// @nodoc
abstract mixin class $TimeZoneInfoCopyWith<$Res> {
  factory $TimeZoneInfoCopyWith(
          TimeZoneInfo value, $Res Function(TimeZoneInfo) _then) =
      _$TimeZoneInfoCopyWithImpl;
  @useResult
  $Res call({String timezone, bool fromGeoip});
}

/// @nodoc
class _$TimeZoneInfoCopyWithImpl<$Res> implements $TimeZoneInfoCopyWith<$Res> {
  _$TimeZoneInfoCopyWithImpl(this._self, this._then);

  final TimeZoneInfo _self;
  final $Res Function(TimeZoneInfo) _then;

  /// Create a copy of TimeZoneInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timezone = null,
    Object? fromGeoip = null,
  }) {
    return _then(_self.copyWith(
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      fromGeoip: null == fromGeoip
          ? _self.fromGeoip
          : fromGeoip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [TimeZoneInfo].
extension TimeZoneInfoPatterns on TimeZoneInfo {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimeZoneInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TimeZoneInfo() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_TimeZoneInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeZoneInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TimeZoneInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeZoneInfo() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String timezone, bool fromGeoip)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TimeZoneInfo() when $default != null:
        return $default(_that.timezone, _that.fromGeoip);
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
  TResult when<TResult extends Object?>(
    TResult Function(String timezone, bool fromGeoip) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeZoneInfo():
        return $default(_that.timezone, _that.fromGeoip);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String timezone, bool fromGeoip)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeZoneInfo() when $default != null:
        return $default(_that.timezone, _that.fromGeoip);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TimeZoneInfo implements TimeZoneInfo {
  const _TimeZoneInfo({required this.timezone, required this.fromGeoip});
  factory _TimeZoneInfo.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneInfoFromJson(json);

  @override
  final String timezone;
  @override
  final bool fromGeoip;

  /// Create a copy of TimeZoneInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimeZoneInfoCopyWith<_TimeZoneInfo> get copyWith =>
      __$TimeZoneInfoCopyWithImpl<_TimeZoneInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimeZoneInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeZoneInfo &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.fromGeoip, fromGeoip) ||
                other.fromGeoip == fromGeoip));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timezone, fromGeoip);

  @override
  String toString() {
    return 'TimeZoneInfo(timezone: $timezone, fromGeoip: $fromGeoip)';
  }
}

/// @nodoc
abstract mixin class _$TimeZoneInfoCopyWith<$Res>
    implements $TimeZoneInfoCopyWith<$Res> {
  factory _$TimeZoneInfoCopyWith(
          _TimeZoneInfo value, $Res Function(_TimeZoneInfo) _then) =
      __$TimeZoneInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String timezone, bool fromGeoip});
}

/// @nodoc
class __$TimeZoneInfoCopyWithImpl<$Res>
    implements _$TimeZoneInfoCopyWith<$Res> {
  __$TimeZoneInfoCopyWithImpl(this._self, this._then);

  final _TimeZoneInfo _self;
  final $Res Function(_TimeZoneInfo) _then;

  /// Create a copy of TimeZoneInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? timezone = null,
    Object? fromGeoip = null,
  }) {
    return _then(_TimeZoneInfo(
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      fromGeoip: null == fromGeoip
          ? _self.fromGeoip
          : fromGeoip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$UbuntuProInfo {
  String get token;

  /// Create a copy of UbuntuProInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UbuntuProInfoCopyWith<UbuntuProInfo> get copyWith =>
      _$UbuntuProInfoCopyWithImpl<UbuntuProInfo>(
          this as UbuntuProInfo, _$identity);

  /// Serializes this UbuntuProInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UbuntuProInfo &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @override
  String toString() {
    return 'UbuntuProInfo(token: $token)';
  }
}

/// @nodoc
abstract mixin class $UbuntuProInfoCopyWith<$Res> {
  factory $UbuntuProInfoCopyWith(
          UbuntuProInfo value, $Res Function(UbuntuProInfo) _then) =
      _$UbuntuProInfoCopyWithImpl;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$UbuntuProInfoCopyWithImpl<$Res>
    implements $UbuntuProInfoCopyWith<$Res> {
  _$UbuntuProInfoCopyWithImpl(this._self, this._then);

  final UbuntuProInfo _self;
  final $Res Function(UbuntuProInfo) _then;

  /// Create a copy of UbuntuProInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UbuntuProInfo].
extension UbuntuProInfoPatterns on UbuntuProInfo {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UbuntuProInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProInfo() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UbuntuProInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UbuntuProInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProInfo() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String token)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProInfo() when $default != null:
        return $default(_that.token);
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
  TResult when<TResult extends Object?>(
    TResult Function(String token) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProInfo():
        return $default(_that.token);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String token)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProInfo() when $default != null:
        return $default(_that.token);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UbuntuProInfo implements UbuntuProInfo {
  const _UbuntuProInfo({required this.token});
  factory _UbuntuProInfo.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProInfoFromJson(json);

  @override
  final String token;

  /// Create a copy of UbuntuProInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UbuntuProInfoCopyWith<_UbuntuProInfo> get copyWith =>
      __$UbuntuProInfoCopyWithImpl<_UbuntuProInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UbuntuProInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UbuntuProInfo &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @override
  String toString() {
    return 'UbuntuProInfo(token: $token)';
  }
}

/// @nodoc
abstract mixin class _$UbuntuProInfoCopyWith<$Res>
    implements $UbuntuProInfoCopyWith<$Res> {
  factory _$UbuntuProInfoCopyWith(
          _UbuntuProInfo value, $Res Function(_UbuntuProInfo) _then) =
      __$UbuntuProInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$UbuntuProInfoCopyWithImpl<$Res>
    implements _$UbuntuProInfoCopyWith<$Res> {
  __$UbuntuProInfoCopyWithImpl(this._self, this._then);

  final _UbuntuProInfo _self;
  final $Res Function(_UbuntuProInfo) _then;

  /// Create a copy of UbuntuProInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
  }) {
    return _then(_UbuntuProInfo(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$UbuntuProResponse {
  String get token;
  bool get hasNetwork;

  /// Create a copy of UbuntuProResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UbuntuProResponseCopyWith<UbuntuProResponse> get copyWith =>
      _$UbuntuProResponseCopyWithImpl<UbuntuProResponse>(
          this as UbuntuProResponse, _$identity);

  /// Serializes this UbuntuProResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UbuntuProResponse &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.hasNetwork, hasNetwork) ||
                other.hasNetwork == hasNetwork));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, hasNetwork);

  @override
  String toString() {
    return 'UbuntuProResponse(token: $token, hasNetwork: $hasNetwork)';
  }
}

/// @nodoc
abstract mixin class $UbuntuProResponseCopyWith<$Res> {
  factory $UbuntuProResponseCopyWith(
          UbuntuProResponse value, $Res Function(UbuntuProResponse) _then) =
      _$UbuntuProResponseCopyWithImpl;
  @useResult
  $Res call({String token, bool hasNetwork});
}

/// @nodoc
class _$UbuntuProResponseCopyWithImpl<$Res>
    implements $UbuntuProResponseCopyWith<$Res> {
  _$UbuntuProResponseCopyWithImpl(this._self, this._then);

  final UbuntuProResponse _self;
  final $Res Function(UbuntuProResponse) _then;

  /// Create a copy of UbuntuProResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? hasNetwork = null,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      hasNetwork: null == hasNetwork
          ? _self.hasNetwork
          : hasNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [UbuntuProResponse].
extension UbuntuProResponsePatterns on UbuntuProResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UbuntuProResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UbuntuProResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UbuntuProResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String token, bool hasNetwork)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProResponse() when $default != null:
        return $default(_that.token, _that.hasNetwork);
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
  TResult when<TResult extends Object?>(
    TResult Function(String token, bool hasNetwork) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProResponse():
        return $default(_that.token, _that.hasNetwork);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String token, bool hasNetwork)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProResponse() when $default != null:
        return $default(_that.token, _that.hasNetwork);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UbuntuProResponse implements UbuntuProResponse {
  const _UbuntuProResponse({required this.token, required this.hasNetwork});
  factory _UbuntuProResponse.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProResponseFromJson(json);

  @override
  final String token;
  @override
  final bool hasNetwork;

  /// Create a copy of UbuntuProResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UbuntuProResponseCopyWith<_UbuntuProResponse> get copyWith =>
      __$UbuntuProResponseCopyWithImpl<_UbuntuProResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UbuntuProResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UbuntuProResponse &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.hasNetwork, hasNetwork) ||
                other.hasNetwork == hasNetwork));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, hasNetwork);

  @override
  String toString() {
    return 'UbuntuProResponse(token: $token, hasNetwork: $hasNetwork)';
  }
}

/// @nodoc
abstract mixin class _$UbuntuProResponseCopyWith<$Res>
    implements $UbuntuProResponseCopyWith<$Res> {
  factory _$UbuntuProResponseCopyWith(
          _UbuntuProResponse value, $Res Function(_UbuntuProResponse) _then) =
      __$UbuntuProResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String token, bool hasNetwork});
}

/// @nodoc
class __$UbuntuProResponseCopyWithImpl<$Res>
    implements _$UbuntuProResponseCopyWith<$Res> {
  __$UbuntuProResponseCopyWithImpl(this._self, this._then);

  final _UbuntuProResponse _self;
  final $Res Function(_UbuntuProResponse) _then;

  /// Create a copy of UbuntuProResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? hasNetwork = null,
  }) {
    return _then(_UbuntuProResponse(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      hasNetwork: null == hasNetwork
          ? _self.hasNetwork
          : hasNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$UbuntuProGeneralInfo {
  int? get eolEsmYear;
  int get universePackages;
  int get mainPackages;

  /// Create a copy of UbuntuProGeneralInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UbuntuProGeneralInfoCopyWith<UbuntuProGeneralInfo> get copyWith =>
      _$UbuntuProGeneralInfoCopyWithImpl<UbuntuProGeneralInfo>(
          this as UbuntuProGeneralInfo, _$identity);

  /// Serializes this UbuntuProGeneralInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UbuntuProGeneralInfo &&
            (identical(other.eolEsmYear, eolEsmYear) ||
                other.eolEsmYear == eolEsmYear) &&
            (identical(other.universePackages, universePackages) ||
                other.universePackages == universePackages) &&
            (identical(other.mainPackages, mainPackages) ||
                other.mainPackages == mainPackages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eolEsmYear, universePackages, mainPackages);

  @override
  String toString() {
    return 'UbuntuProGeneralInfo(eolEsmYear: $eolEsmYear, universePackages: $universePackages, mainPackages: $mainPackages)';
  }
}

/// @nodoc
abstract mixin class $UbuntuProGeneralInfoCopyWith<$Res> {
  factory $UbuntuProGeneralInfoCopyWith(UbuntuProGeneralInfo value,
          $Res Function(UbuntuProGeneralInfo) _then) =
      _$UbuntuProGeneralInfoCopyWithImpl;
  @useResult
  $Res call({int? eolEsmYear, int universePackages, int mainPackages});
}

/// @nodoc
class _$UbuntuProGeneralInfoCopyWithImpl<$Res>
    implements $UbuntuProGeneralInfoCopyWith<$Res> {
  _$UbuntuProGeneralInfoCopyWithImpl(this._self, this._then);

  final UbuntuProGeneralInfo _self;
  final $Res Function(UbuntuProGeneralInfo) _then;

  /// Create a copy of UbuntuProGeneralInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eolEsmYear = freezed,
    Object? universePackages = null,
    Object? mainPackages = null,
  }) {
    return _then(_self.copyWith(
      eolEsmYear: freezed == eolEsmYear
          ? _self.eolEsmYear
          : eolEsmYear // ignore: cast_nullable_to_non_nullable
              as int?,
      universePackages: null == universePackages
          ? _self.universePackages
          : universePackages // ignore: cast_nullable_to_non_nullable
              as int,
      mainPackages: null == mainPackages
          ? _self.mainPackages
          : mainPackages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [UbuntuProGeneralInfo].
extension UbuntuProGeneralInfoPatterns on UbuntuProGeneralInfo {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UbuntuProGeneralInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProGeneralInfo() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UbuntuProGeneralInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProGeneralInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UbuntuProGeneralInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProGeneralInfo() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? eolEsmYear, int universePackages, int mainPackages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProGeneralInfo() when $default != null:
        return $default(
            _that.eolEsmYear, _that.universePackages, _that.mainPackages);
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
  TResult when<TResult extends Object?>(
    TResult Function(int? eolEsmYear, int universePackages, int mainPackages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProGeneralInfo():
        return $default(
            _that.eolEsmYear, _that.universePackages, _that.mainPackages);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? eolEsmYear, int universePackages, int mainPackages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProGeneralInfo() when $default != null:
        return $default(
            _that.eolEsmYear, _that.universePackages, _that.mainPackages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UbuntuProGeneralInfo implements UbuntuProGeneralInfo {
  const _UbuntuProGeneralInfo(
      {required this.eolEsmYear,
      required this.universePackages,
      required this.mainPackages});
  factory _UbuntuProGeneralInfo.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProGeneralInfoFromJson(json);

  @override
  final int? eolEsmYear;
  @override
  final int universePackages;
  @override
  final int mainPackages;

  /// Create a copy of UbuntuProGeneralInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UbuntuProGeneralInfoCopyWith<_UbuntuProGeneralInfo> get copyWith =>
      __$UbuntuProGeneralInfoCopyWithImpl<_UbuntuProGeneralInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UbuntuProGeneralInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UbuntuProGeneralInfo &&
            (identical(other.eolEsmYear, eolEsmYear) ||
                other.eolEsmYear == eolEsmYear) &&
            (identical(other.universePackages, universePackages) ||
                other.universePackages == universePackages) &&
            (identical(other.mainPackages, mainPackages) ||
                other.mainPackages == mainPackages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eolEsmYear, universePackages, mainPackages);

  @override
  String toString() {
    return 'UbuntuProGeneralInfo(eolEsmYear: $eolEsmYear, universePackages: $universePackages, mainPackages: $mainPackages)';
  }
}

/// @nodoc
abstract mixin class _$UbuntuProGeneralInfoCopyWith<$Res>
    implements $UbuntuProGeneralInfoCopyWith<$Res> {
  factory _$UbuntuProGeneralInfoCopyWith(_UbuntuProGeneralInfo value,
          $Res Function(_UbuntuProGeneralInfo) _then) =
      __$UbuntuProGeneralInfoCopyWithImpl;
  @override
  @useResult
  $Res call({int? eolEsmYear, int universePackages, int mainPackages});
}

/// @nodoc
class __$UbuntuProGeneralInfoCopyWithImpl<$Res>
    implements _$UbuntuProGeneralInfoCopyWith<$Res> {
  __$UbuntuProGeneralInfoCopyWithImpl(this._self, this._then);

  final _UbuntuProGeneralInfo _self;
  final $Res Function(_UbuntuProGeneralInfo) _then;

  /// Create a copy of UbuntuProGeneralInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? eolEsmYear = freezed,
    Object? universePackages = null,
    Object? mainPackages = null,
  }) {
    return _then(_UbuntuProGeneralInfo(
      eolEsmYear: freezed == eolEsmYear
          ? _self.eolEsmYear
          : eolEsmYear // ignore: cast_nullable_to_non_nullable
              as int?,
      universePackages: null == universePackages
          ? _self.universePackages
          : universePackages // ignore: cast_nullable_to_non_nullable
              as int,
      mainPackages: null == mainPackages
          ? _self.mainPackages
          : mainPackages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$UPCSInitiateResponse {
  String get userCode;
  int get validitySeconds;

  /// Create a copy of UPCSInitiateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UPCSInitiateResponseCopyWith<UPCSInitiateResponse> get copyWith =>
      _$UPCSInitiateResponseCopyWithImpl<UPCSInitiateResponse>(
          this as UPCSInitiateResponse, _$identity);

  /// Serializes this UPCSInitiateResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UPCSInitiateResponse &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.validitySeconds, validitySeconds) ||
                other.validitySeconds == validitySeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userCode, validitySeconds);

  @override
  String toString() {
    return 'UPCSInitiateResponse(userCode: $userCode, validitySeconds: $validitySeconds)';
  }
}

/// @nodoc
abstract mixin class $UPCSInitiateResponseCopyWith<$Res> {
  factory $UPCSInitiateResponseCopyWith(UPCSInitiateResponse value,
          $Res Function(UPCSInitiateResponse) _then) =
      _$UPCSInitiateResponseCopyWithImpl;
  @useResult
  $Res call({String userCode, int validitySeconds});
}

/// @nodoc
class _$UPCSInitiateResponseCopyWithImpl<$Res>
    implements $UPCSInitiateResponseCopyWith<$Res> {
  _$UPCSInitiateResponseCopyWithImpl(this._self, this._then);

  final UPCSInitiateResponse _self;
  final $Res Function(UPCSInitiateResponse) _then;

  /// Create a copy of UPCSInitiateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? validitySeconds = null,
  }) {
    return _then(_self.copyWith(
      userCode: null == userCode
          ? _self.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      validitySeconds: null == validitySeconds
          ? _self.validitySeconds
          : validitySeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [UPCSInitiateResponse].
extension UPCSInitiateResponsePatterns on UPCSInitiateResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UPCSInitiateResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UPCSInitiateResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UPCSInitiateResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UPCSInitiateResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UPCSInitiateResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UPCSInitiateResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userCode, int validitySeconds)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UPCSInitiateResponse() when $default != null:
        return $default(_that.userCode, _that.validitySeconds);
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
  TResult when<TResult extends Object?>(
    TResult Function(String userCode, int validitySeconds) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UPCSInitiateResponse():
        return $default(_that.userCode, _that.validitySeconds);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userCode, int validitySeconds)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UPCSInitiateResponse() when $default != null:
        return $default(_that.userCode, _that.validitySeconds);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UPCSInitiateResponse implements UPCSInitiateResponse {
  const _UPCSInitiateResponse(
      {required this.userCode, required this.validitySeconds});
  factory _UPCSInitiateResponse.fromJson(Map<String, dynamic> json) =>
      _$UPCSInitiateResponseFromJson(json);

  @override
  final String userCode;
  @override
  final int validitySeconds;

  /// Create a copy of UPCSInitiateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UPCSInitiateResponseCopyWith<_UPCSInitiateResponse> get copyWith =>
      __$UPCSInitiateResponseCopyWithImpl<_UPCSInitiateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UPCSInitiateResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UPCSInitiateResponse &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.validitySeconds, validitySeconds) ||
                other.validitySeconds == validitySeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userCode, validitySeconds);

  @override
  String toString() {
    return 'UPCSInitiateResponse(userCode: $userCode, validitySeconds: $validitySeconds)';
  }
}

/// @nodoc
abstract mixin class _$UPCSInitiateResponseCopyWith<$Res>
    implements $UPCSInitiateResponseCopyWith<$Res> {
  factory _$UPCSInitiateResponseCopyWith(_UPCSInitiateResponse value,
          $Res Function(_UPCSInitiateResponse) _then) =
      __$UPCSInitiateResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String userCode, int validitySeconds});
}

/// @nodoc
class __$UPCSInitiateResponseCopyWithImpl<$Res>
    implements _$UPCSInitiateResponseCopyWith<$Res> {
  __$UPCSInitiateResponseCopyWithImpl(this._self, this._then);

  final _UPCSInitiateResponse _self;
  final $Res Function(_UPCSInitiateResponse) _then;

  /// Create a copy of UPCSInitiateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userCode = null,
    Object? validitySeconds = null,
  }) {
    return _then(_UPCSInitiateResponse(
      userCode: null == userCode
          ? _self.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      validitySeconds: null == validitySeconds
          ? _self.validitySeconds
          : validitySeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$UPCSWaitResponse {
  UPCSWaitStatus get status;
  String? get contractToken;

  /// Create a copy of UPCSWaitResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UPCSWaitResponseCopyWith<UPCSWaitResponse> get copyWith =>
      _$UPCSWaitResponseCopyWithImpl<UPCSWaitResponse>(
          this as UPCSWaitResponse, _$identity);

  /// Serializes this UPCSWaitResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UPCSWaitResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.contractToken, contractToken) ||
                other.contractToken == contractToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, contractToken);

  @override
  String toString() {
    return 'UPCSWaitResponse(status: $status, contractToken: $contractToken)';
  }
}

/// @nodoc
abstract mixin class $UPCSWaitResponseCopyWith<$Res> {
  factory $UPCSWaitResponseCopyWith(
          UPCSWaitResponse value, $Res Function(UPCSWaitResponse) _then) =
      _$UPCSWaitResponseCopyWithImpl;
  @useResult
  $Res call({UPCSWaitStatus status, String? contractToken});
}

/// @nodoc
class _$UPCSWaitResponseCopyWithImpl<$Res>
    implements $UPCSWaitResponseCopyWith<$Res> {
  _$UPCSWaitResponseCopyWithImpl(this._self, this._then);

  final UPCSWaitResponse _self;
  final $Res Function(UPCSWaitResponse) _then;

  /// Create a copy of UPCSWaitResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? contractToken = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UPCSWaitStatus,
      contractToken: freezed == contractToken
          ? _self.contractToken
          : contractToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UPCSWaitResponse].
extension UPCSWaitResponsePatterns on UPCSWaitResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UPCSWaitResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UPCSWaitResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UPCSWaitResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UPCSWaitResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UPCSWaitResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UPCSWaitResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UPCSWaitStatus status, String? contractToken)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UPCSWaitResponse() when $default != null:
        return $default(_that.status, _that.contractToken);
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
  TResult when<TResult extends Object?>(
    TResult Function(UPCSWaitStatus status, String? contractToken) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UPCSWaitResponse():
        return $default(_that.status, _that.contractToken);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(UPCSWaitStatus status, String? contractToken)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UPCSWaitResponse() when $default != null:
        return $default(_that.status, _that.contractToken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UPCSWaitResponse implements UPCSWaitResponse {
  const _UPCSWaitResponse({required this.status, required this.contractToken});
  factory _UPCSWaitResponse.fromJson(Map<String, dynamic> json) =>
      _$UPCSWaitResponseFromJson(json);

  @override
  final UPCSWaitStatus status;
  @override
  final String? contractToken;

  /// Create a copy of UPCSWaitResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UPCSWaitResponseCopyWith<_UPCSWaitResponse> get copyWith =>
      __$UPCSWaitResponseCopyWithImpl<_UPCSWaitResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UPCSWaitResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UPCSWaitResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.contractToken, contractToken) ||
                other.contractToken == contractToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, contractToken);

  @override
  String toString() {
    return 'UPCSWaitResponse(status: $status, contractToken: $contractToken)';
  }
}

/// @nodoc
abstract mixin class _$UPCSWaitResponseCopyWith<$Res>
    implements $UPCSWaitResponseCopyWith<$Res> {
  factory _$UPCSWaitResponseCopyWith(
          _UPCSWaitResponse value, $Res Function(_UPCSWaitResponse) _then) =
      __$UPCSWaitResponseCopyWithImpl;
  @override
  @useResult
  $Res call({UPCSWaitStatus status, String? contractToken});
}

/// @nodoc
class __$UPCSWaitResponseCopyWithImpl<$Res>
    implements _$UPCSWaitResponseCopyWith<$Res> {
  __$UPCSWaitResponseCopyWithImpl(this._self, this._then);

  final _UPCSWaitResponse _self;
  final $Res Function(_UPCSWaitResponse) _then;

  /// Create a copy of UPCSWaitResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? contractToken = freezed,
  }) {
    return _then(_UPCSWaitResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UPCSWaitStatus,
      contractToken: freezed == contractToken
          ? _self.contractToken
          : contractToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UbuntuProService {
  String get name;
  String get description;
  bool get autoEnabled;

  /// Create a copy of UbuntuProService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UbuntuProServiceCopyWith<UbuntuProService> get copyWith =>
      _$UbuntuProServiceCopyWithImpl<UbuntuProService>(
          this as UbuntuProService, _$identity);

  /// Serializes this UbuntuProService to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UbuntuProService &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.autoEnabled, autoEnabled) ||
                other.autoEnabled == autoEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, autoEnabled);

  @override
  String toString() {
    return 'UbuntuProService(name: $name, description: $description, autoEnabled: $autoEnabled)';
  }
}

/// @nodoc
abstract mixin class $UbuntuProServiceCopyWith<$Res> {
  factory $UbuntuProServiceCopyWith(
          UbuntuProService value, $Res Function(UbuntuProService) _then) =
      _$UbuntuProServiceCopyWithImpl;
  @useResult
  $Res call({String name, String description, bool autoEnabled});
}

/// @nodoc
class _$UbuntuProServiceCopyWithImpl<$Res>
    implements $UbuntuProServiceCopyWith<$Res> {
  _$UbuntuProServiceCopyWithImpl(this._self, this._then);

  final UbuntuProService _self;
  final $Res Function(UbuntuProService) _then;

  /// Create a copy of UbuntuProService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? autoEnabled = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      autoEnabled: null == autoEnabled
          ? _self.autoEnabled
          : autoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [UbuntuProService].
extension UbuntuProServicePatterns on UbuntuProService {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UbuntuProService value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProService() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UbuntuProService value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProService():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UbuntuProService value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProService() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String description, bool autoEnabled)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProService() when $default != null:
        return $default(_that.name, _that.description, _that.autoEnabled);
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
  TResult when<TResult extends Object?>(
    TResult Function(String name, String description, bool autoEnabled)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProService():
        return $default(_that.name, _that.description, _that.autoEnabled);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String description, bool autoEnabled)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProService() when $default != null:
        return $default(_that.name, _that.description, _that.autoEnabled);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UbuntuProService implements UbuntuProService {
  const _UbuntuProService(
      {required this.name,
      required this.description,
      required this.autoEnabled});
  factory _UbuntuProService.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProServiceFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final bool autoEnabled;

  /// Create a copy of UbuntuProService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UbuntuProServiceCopyWith<_UbuntuProService> get copyWith =>
      __$UbuntuProServiceCopyWithImpl<_UbuntuProService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UbuntuProServiceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UbuntuProService &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.autoEnabled, autoEnabled) ||
                other.autoEnabled == autoEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, autoEnabled);

  @override
  String toString() {
    return 'UbuntuProService(name: $name, description: $description, autoEnabled: $autoEnabled)';
  }
}

/// @nodoc
abstract mixin class _$UbuntuProServiceCopyWith<$Res>
    implements $UbuntuProServiceCopyWith<$Res> {
  factory _$UbuntuProServiceCopyWith(
          _UbuntuProService value, $Res Function(_UbuntuProService) _then) =
      __$UbuntuProServiceCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String description, bool autoEnabled});
}

/// @nodoc
class __$UbuntuProServiceCopyWithImpl<$Res>
    implements _$UbuntuProServiceCopyWith<$Res> {
  __$UbuntuProServiceCopyWithImpl(this._self, this._then);

  final _UbuntuProService _self;
  final $Res Function(_UbuntuProService) _then;

  /// Create a copy of UbuntuProService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? autoEnabled = null,
  }) {
    return _then(_UbuntuProService(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      autoEnabled: null == autoEnabled
          ? _self.autoEnabled
          : autoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$UbuntuProSubscription {
  String get contractName;
  String get accountName;
  String get contractToken;
  List<UbuntuProService> get services;

  /// Create a copy of UbuntuProSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UbuntuProSubscriptionCopyWith<UbuntuProSubscription> get copyWith =>
      _$UbuntuProSubscriptionCopyWithImpl<UbuntuProSubscription>(
          this as UbuntuProSubscription, _$identity);

  /// Serializes this UbuntuProSubscription to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UbuntuProSubscription &&
            (identical(other.contractName, contractName) ||
                other.contractName == contractName) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.contractToken, contractToken) ||
                other.contractToken == contractToken) &&
            const DeepCollectionEquality().equals(other.services, services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contractName, accountName,
      contractToken, const DeepCollectionEquality().hash(services));

  @override
  String toString() {
    return 'UbuntuProSubscription(contractName: $contractName, accountName: $accountName, contractToken: $contractToken, services: $services)';
  }
}

/// @nodoc
abstract mixin class $UbuntuProSubscriptionCopyWith<$Res> {
  factory $UbuntuProSubscriptionCopyWith(UbuntuProSubscription value,
          $Res Function(UbuntuProSubscription) _then) =
      _$UbuntuProSubscriptionCopyWithImpl;
  @useResult
  $Res call(
      {String contractName,
      String accountName,
      String contractToken,
      List<UbuntuProService> services});
}

/// @nodoc
class _$UbuntuProSubscriptionCopyWithImpl<$Res>
    implements $UbuntuProSubscriptionCopyWith<$Res> {
  _$UbuntuProSubscriptionCopyWithImpl(this._self, this._then);

  final UbuntuProSubscription _self;
  final $Res Function(UbuntuProSubscription) _then;

  /// Create a copy of UbuntuProSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractName = null,
    Object? accountName = null,
    Object? contractToken = null,
    Object? services = null,
  }) {
    return _then(_self.copyWith(
      contractName: null == contractName
          ? _self.contractName
          : contractName // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      contractToken: null == contractToken
          ? _self.contractToken
          : contractToken // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _self.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<UbuntuProService>,
    ));
  }
}

/// Adds pattern-matching-related methods to [UbuntuProSubscription].
extension UbuntuProSubscriptionPatterns on UbuntuProSubscription {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UbuntuProSubscription value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProSubscription() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UbuntuProSubscription value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProSubscription():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UbuntuProSubscription value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProSubscription() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String contractName, String accountName,
            String contractToken, List<UbuntuProService> services)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProSubscription() when $default != null:
        return $default(_that.contractName, _that.accountName,
            _that.contractToken, _that.services);
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
  TResult when<TResult extends Object?>(
    TResult Function(String contractName, String accountName,
            String contractToken, List<UbuntuProService> services)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProSubscription():
        return $default(_that.contractName, _that.accountName,
            _that.contractToken, _that.services);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String contractName, String accountName,
            String contractToken, List<UbuntuProService> services)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProSubscription() when $default != null:
        return $default(_that.contractName, _that.accountName,
            _that.contractToken, _that.services);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UbuntuProSubscription implements UbuntuProSubscription {
  const _UbuntuProSubscription(
      {required this.contractName,
      required this.accountName,
      required this.contractToken,
      required final List<UbuntuProService> services})
      : _services = services;
  factory _UbuntuProSubscription.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProSubscriptionFromJson(json);

  @override
  final String contractName;
  @override
  final String accountName;
  @override
  final String contractToken;
  final List<UbuntuProService> _services;
  @override
  List<UbuntuProService> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  /// Create a copy of UbuntuProSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UbuntuProSubscriptionCopyWith<_UbuntuProSubscription> get copyWith =>
      __$UbuntuProSubscriptionCopyWithImpl<_UbuntuProSubscription>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UbuntuProSubscriptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UbuntuProSubscription &&
            (identical(other.contractName, contractName) ||
                other.contractName == contractName) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.contractToken, contractToken) ||
                other.contractToken == contractToken) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contractName, accountName,
      contractToken, const DeepCollectionEquality().hash(_services));

  @override
  String toString() {
    return 'UbuntuProSubscription(contractName: $contractName, accountName: $accountName, contractToken: $contractToken, services: $services)';
  }
}

/// @nodoc
abstract mixin class _$UbuntuProSubscriptionCopyWith<$Res>
    implements $UbuntuProSubscriptionCopyWith<$Res> {
  factory _$UbuntuProSubscriptionCopyWith(_UbuntuProSubscription value,
          $Res Function(_UbuntuProSubscription) _then) =
      __$UbuntuProSubscriptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String contractName,
      String accountName,
      String contractToken,
      List<UbuntuProService> services});
}

/// @nodoc
class __$UbuntuProSubscriptionCopyWithImpl<$Res>
    implements _$UbuntuProSubscriptionCopyWith<$Res> {
  __$UbuntuProSubscriptionCopyWithImpl(this._self, this._then);

  final _UbuntuProSubscription _self;
  final $Res Function(_UbuntuProSubscription) _then;

  /// Create a copy of UbuntuProSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contractName = null,
    Object? accountName = null,
    Object? contractToken = null,
    Object? services = null,
  }) {
    return _then(_UbuntuProSubscription(
      contractName: null == contractName
          ? _self.contractName
          : contractName // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      contractToken: null == contractToken
          ? _self.contractToken
          : contractToken // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _self._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<UbuntuProService>,
    ));
  }
}

/// @nodoc
mixin _$UbuntuProCheckTokenAnswer {
  UbuntuProCheckTokenStatus get status;
  UbuntuProSubscription? get subscription;

  /// Create a copy of UbuntuProCheckTokenAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UbuntuProCheckTokenAnswerCopyWith<UbuntuProCheckTokenAnswer> get copyWith =>
      _$UbuntuProCheckTokenAnswerCopyWithImpl<UbuntuProCheckTokenAnswer>(
          this as UbuntuProCheckTokenAnswer, _$identity);

  /// Serializes this UbuntuProCheckTokenAnswer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UbuntuProCheckTokenAnswer &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, subscription);

  @override
  String toString() {
    return 'UbuntuProCheckTokenAnswer(status: $status, subscription: $subscription)';
  }
}

/// @nodoc
abstract mixin class $UbuntuProCheckTokenAnswerCopyWith<$Res> {
  factory $UbuntuProCheckTokenAnswerCopyWith(UbuntuProCheckTokenAnswer value,
          $Res Function(UbuntuProCheckTokenAnswer) _then) =
      _$UbuntuProCheckTokenAnswerCopyWithImpl;
  @useResult
  $Res call(
      {UbuntuProCheckTokenStatus status, UbuntuProSubscription? subscription});

  $UbuntuProSubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class _$UbuntuProCheckTokenAnswerCopyWithImpl<$Res>
    implements $UbuntuProCheckTokenAnswerCopyWith<$Res> {
  _$UbuntuProCheckTokenAnswerCopyWithImpl(this._self, this._then);

  final UbuntuProCheckTokenAnswer _self;
  final $Res Function(UbuntuProCheckTokenAnswer) _then;

  /// Create a copy of UbuntuProCheckTokenAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? subscription = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UbuntuProCheckTokenStatus,
      subscription: freezed == subscription
          ? _self.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as UbuntuProSubscription?,
    ));
  }

  /// Create a copy of UbuntuProCheckTokenAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UbuntuProSubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
      return null;
    }

    return $UbuntuProSubscriptionCopyWith<$Res>(_self.subscription!, (value) {
      return _then(_self.copyWith(subscription: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UbuntuProCheckTokenAnswer].
extension UbuntuProCheckTokenAnswerPatterns on UbuntuProCheckTokenAnswer {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UbuntuProCheckTokenAnswer value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProCheckTokenAnswer() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UbuntuProCheckTokenAnswer value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProCheckTokenAnswer():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UbuntuProCheckTokenAnswer value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProCheckTokenAnswer() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UbuntuProCheckTokenStatus status,
            UbuntuProSubscription? subscription)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UbuntuProCheckTokenAnswer() when $default != null:
        return $default(_that.status, _that.subscription);
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
  TResult when<TResult extends Object?>(
    TResult Function(UbuntuProCheckTokenStatus status,
            UbuntuProSubscription? subscription)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProCheckTokenAnswer():
        return $default(_that.status, _that.subscription);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(UbuntuProCheckTokenStatus status,
            UbuntuProSubscription? subscription)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UbuntuProCheckTokenAnswer() when $default != null:
        return $default(_that.status, _that.subscription);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UbuntuProCheckTokenAnswer implements UbuntuProCheckTokenAnswer {
  const _UbuntuProCheckTokenAnswer(
      {required this.status, required this.subscription});
  factory _UbuntuProCheckTokenAnswer.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProCheckTokenAnswerFromJson(json);

  @override
  final UbuntuProCheckTokenStatus status;
  @override
  final UbuntuProSubscription? subscription;

  /// Create a copy of UbuntuProCheckTokenAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UbuntuProCheckTokenAnswerCopyWith<_UbuntuProCheckTokenAnswer>
      get copyWith =>
          __$UbuntuProCheckTokenAnswerCopyWithImpl<_UbuntuProCheckTokenAnswer>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UbuntuProCheckTokenAnswerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UbuntuProCheckTokenAnswer &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, subscription);

  @override
  String toString() {
    return 'UbuntuProCheckTokenAnswer(status: $status, subscription: $subscription)';
  }
}

/// @nodoc
abstract mixin class _$UbuntuProCheckTokenAnswerCopyWith<$Res>
    implements $UbuntuProCheckTokenAnswerCopyWith<$Res> {
  factory _$UbuntuProCheckTokenAnswerCopyWith(_UbuntuProCheckTokenAnswer value,
          $Res Function(_UbuntuProCheckTokenAnswer) _then) =
      __$UbuntuProCheckTokenAnswerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {UbuntuProCheckTokenStatus status, UbuntuProSubscription? subscription});

  @override
  $UbuntuProSubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$UbuntuProCheckTokenAnswerCopyWithImpl<$Res>
    implements _$UbuntuProCheckTokenAnswerCopyWith<$Res> {
  __$UbuntuProCheckTokenAnswerCopyWithImpl(this._self, this._then);

  final _UbuntuProCheckTokenAnswer _self;
  final $Res Function(_UbuntuProCheckTokenAnswer) _then;

  /// Create a copy of UbuntuProCheckTokenAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? subscription = freezed,
  }) {
    return _then(_UbuntuProCheckTokenAnswer(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UbuntuProCheckTokenStatus,
      subscription: freezed == subscription
          ? _self.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as UbuntuProSubscription?,
    ));
  }

  /// Create a copy of UbuntuProCheckTokenAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UbuntuProSubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
      return null;
    }

    return $UbuntuProSubscriptionCopyWith<$Res>(_self.subscription!, (value) {
      return _then(_self.copyWith(subscription: value));
    });
  }
}

/// @nodoc
mixin _$TaskProgress {
  String get label;
  int get done;
  int get total;

  /// Create a copy of TaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskProgressCopyWith<TaskProgress> get copyWith =>
      _$TaskProgressCopyWithImpl<TaskProgress>(
          this as TaskProgress, _$identity);

  /// Serializes this TaskProgress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskProgress &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, done, total);

  @override
  String toString() {
    return 'TaskProgress(label: $label, done: $done, total: $total)';
  }
}

/// @nodoc
abstract mixin class $TaskProgressCopyWith<$Res> {
  factory $TaskProgressCopyWith(
          TaskProgress value, $Res Function(TaskProgress) _then) =
      _$TaskProgressCopyWithImpl;
  @useResult
  $Res call({String label, int done, int total});
}

/// @nodoc
class _$TaskProgressCopyWithImpl<$Res> implements $TaskProgressCopyWith<$Res> {
  _$TaskProgressCopyWithImpl(this._self, this._then);

  final TaskProgress _self;
  final $Res Function(TaskProgress) _then;

  /// Create a copy of TaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? done = null,
    Object? total = null,
  }) {
    return _then(_self.copyWith(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _self.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [TaskProgress].
extension TaskProgressPatterns on TaskProgress {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TaskProgress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TaskProgress() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_TaskProgress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskProgress():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TaskProgress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskProgress() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String label, int done, int total)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TaskProgress() when $default != null:
        return $default(_that.label, _that.done, _that.total);
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
  TResult when<TResult extends Object?>(
    TResult Function(String label, int done, int total) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskProgress():
        return $default(_that.label, _that.done, _that.total);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String label, int done, int total)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskProgress() when $default != null:
        return $default(_that.label, _that.done, _that.total);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TaskProgress implements TaskProgress {
  const _TaskProgress({this.label = '', this.done = 0, this.total = 0});
  factory _TaskProgress.fromJson(Map<String, dynamic> json) =>
      _$TaskProgressFromJson(json);

  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final int done;
  @override
  @JsonKey()
  final int total;

  /// Create a copy of TaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TaskProgressCopyWith<_TaskProgress> get copyWith =>
      __$TaskProgressCopyWithImpl<_TaskProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TaskProgressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskProgress &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, done, total);

  @override
  String toString() {
    return 'TaskProgress(label: $label, done: $done, total: $total)';
  }
}

/// @nodoc
abstract mixin class _$TaskProgressCopyWith<$Res>
    implements $TaskProgressCopyWith<$Res> {
  factory _$TaskProgressCopyWith(
          _TaskProgress value, $Res Function(_TaskProgress) _then) =
      __$TaskProgressCopyWithImpl;
  @override
  @useResult
  $Res call({String label, int done, int total});
}

/// @nodoc
class __$TaskProgressCopyWithImpl<$Res>
    implements _$TaskProgressCopyWith<$Res> {
  __$TaskProgressCopyWithImpl(this._self, this._then);

  final _TaskProgress _self;
  final $Res Function(_TaskProgress) _then;

  /// Create a copy of TaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? label = null,
    Object? done = null,
    Object? total = null,
  }) {
    return _then(_TaskProgress(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _self.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$Task {
  String get id;
  String get kind;
  String get summary;
  TaskStatus get status;
  TaskProgress get progress;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskCopyWith<Task> get copyWith =>
      _$TaskCopyWithImpl<Task>(this as Task, _$identity);

  /// Serializes this Task to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Task &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, kind, summary, status, progress);

  @override
  String toString() {
    return 'Task(id: $id, kind: $kind, summary: $summary, status: $status, progress: $progress)';
  }
}

/// @nodoc
abstract mixin class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) _then) =
      _$TaskCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String kind,
      String summary,
      TaskStatus status,
      TaskProgress progress});

  $TaskProgressCopyWith<$Res> get progress;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._self, this._then);

  final Task _self;
  final $Res Function(Task) _then;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? summary = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TaskProgress,
    ));
  }

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskProgressCopyWith<$Res> get progress {
    return $TaskProgressCopyWith<$Res>(_self.progress, (value) {
      return _then(_self.copyWith(progress: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Task].
extension TaskPatterns on Task {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Task value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Task() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_Task value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Task():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Task value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Task() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String kind, String summary, TaskStatus status,
            TaskProgress progress)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Task() when $default != null:
        return $default(
            _that.id, _that.kind, _that.summary, _that.status, _that.progress);
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
  TResult when<TResult extends Object?>(
    TResult Function(String id, String kind, String summary, TaskStatus status,
            TaskProgress progress)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Task():
        return $default(
            _that.id, _that.kind, _that.summary, _that.status, _that.progress);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String kind, String summary, TaskStatus status,
            TaskProgress progress)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Task() when $default != null:
        return $default(
            _that.id, _that.kind, _that.summary, _that.status, _that.progress);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Task implements Task {
  const _Task(
      {required this.id,
      required this.kind,
      required this.summary,
      required this.status,
      required this.progress});
  factory _Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  @override
  final String id;
  @override
  final String kind;
  @override
  final String summary;
  @override
  final TaskStatus status;
  @override
  final TaskProgress progress;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TaskToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Task &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, kind, summary, status, progress);

  @override
  String toString() {
    return 'Task(id: $id, kind: $kind, summary: $summary, status: $status, progress: $progress)';
  }
}

/// @nodoc
abstract mixin class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) _then) =
      __$TaskCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String kind,
      String summary,
      TaskStatus status,
      TaskProgress progress});

  @override
  $TaskProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(this._self, this._then);

  final _Task _self;
  final $Res Function(_Task) _then;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? summary = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(_Task(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TaskProgress,
    ));
  }

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskProgressCopyWith<$Res> get progress {
    return $TaskProgressCopyWith<$Res>(_self.progress, (value) {
      return _then(_self.copyWith(progress: value));
    });
  }
}

/// @nodoc
mixin _$Change {
  String get id;
  String get kind;
  String get summary;
  TaskStatus get status;
  List<Task> get tasks;
  bool get ready;
  String? get err;
  dynamic get data;

  /// Create a copy of Change
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangeCopyWith<Change> get copyWith =>
      _$ChangeCopyWithImpl<Change>(this as Change, _$identity);

  /// Serializes this Change to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Change &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.tasks, tasks) &&
            (identical(other.ready, ready) || other.ready == ready) &&
            (identical(other.err, err) || other.err == err) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      kind,
      summary,
      status,
      const DeepCollectionEquality().hash(tasks),
      ready,
      err,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'Change(id: $id, kind: $kind, summary: $summary, status: $status, tasks: $tasks, ready: $ready, err: $err, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ChangeCopyWith<$Res> {
  factory $ChangeCopyWith(Change value, $Res Function(Change) _then) =
      _$ChangeCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String kind,
      String summary,
      TaskStatus status,
      List<Task> tasks,
      bool ready,
      String? err,
      dynamic data});
}

/// @nodoc
class _$ChangeCopyWithImpl<$Res> implements $ChangeCopyWith<$Res> {
  _$ChangeCopyWithImpl(this._self, this._then);

  final Change _self;
  final $Res Function(Change) _then;

  /// Create a copy of Change
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? summary = null,
    Object? status = null,
    Object? tasks = null,
    Object? ready = null,
    Object? err = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      tasks: null == tasks
          ? _self.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      ready: null == ready
          ? _self.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      err: freezed == err
          ? _self.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [Change].
extension ChangePatterns on Change {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Change value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Change() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_Change value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Change():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Change value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Change() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String kind, String summary, TaskStatus status,
            List<Task> tasks, bool ready, String? err, dynamic data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Change() when $default != null:
        return $default(_that.id, _that.kind, _that.summary, _that.status,
            _that.tasks, _that.ready, _that.err, _that.data);
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
  TResult when<TResult extends Object?>(
    TResult Function(String id, String kind, String summary, TaskStatus status,
            List<Task> tasks, bool ready, String? err, dynamic data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Change():
        return $default(_that.id, _that.kind, _that.summary, _that.status,
            _that.tasks, _that.ready, _that.err, _that.data);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String kind, String summary, TaskStatus status,
            List<Task> tasks, bool ready, String? err, dynamic data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Change() when $default != null:
        return $default(_that.id, _that.kind, _that.summary, _that.status,
            _that.tasks, _that.ready, _that.err, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Change implements Change {
  const _Change(
      {required this.id,
      required this.kind,
      required this.summary,
      required this.status,
      required final List<Task> tasks,
      required this.ready,
      this.err,
      this.data})
      : _tasks = tasks;
  factory _Change.fromJson(Map<String, dynamic> json) => _$ChangeFromJson(json);

  @override
  final String id;
  @override
  final String kind;
  @override
  final String summary;
  @override
  final TaskStatus status;
  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final bool ready;
  @override
  final String? err;
  @override
  final dynamic data;

  /// Create a copy of Change
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChangeCopyWith<_Change> get copyWith =>
      __$ChangeCopyWithImpl<_Change>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChangeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Change &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.ready, ready) || other.ready == ready) &&
            (identical(other.err, err) || other.err == err) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      kind,
      summary,
      status,
      const DeepCollectionEquality().hash(_tasks),
      ready,
      err,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'Change(id: $id, kind: $kind, summary: $summary, status: $status, tasks: $tasks, ready: $ready, err: $err, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ChangeCopyWith<$Res> implements $ChangeCopyWith<$Res> {
  factory _$ChangeCopyWith(_Change value, $Res Function(_Change) _then) =
      __$ChangeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String kind,
      String summary,
      TaskStatus status,
      List<Task> tasks,
      bool ready,
      String? err,
      dynamic data});
}

/// @nodoc
class __$ChangeCopyWithImpl<$Res> implements _$ChangeCopyWith<$Res> {
  __$ChangeCopyWithImpl(this._self, this._then);

  final _Change _self;
  final $Res Function(_Change) _then;

  /// Create a copy of Change
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? summary = null,
    Object? status = null,
    Object? tasks = null,
    Object? ready = null,
    Object? err = freezed,
    Object? data = freezed,
  }) {
    return _then(_Change(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      tasks: null == tasks
          ? _self._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      ready: null == ready
          ? _self.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      err: freezed == err
          ? _self.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
mixin _$MirrorCheckResponse {
  String get url;
  MirrorCheckStatus get status;
  String get output;

  /// Create a copy of MirrorCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MirrorCheckResponseCopyWith<MirrorCheckResponse> get copyWith =>
      _$MirrorCheckResponseCopyWithImpl<MirrorCheckResponse>(
          this as MirrorCheckResponse, _$identity);

  /// Serializes this MirrorCheckResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MirrorCheckResponse &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, status, output);

  @override
  String toString() {
    return 'MirrorCheckResponse(url: $url, status: $status, output: $output)';
  }
}

/// @nodoc
abstract mixin class $MirrorCheckResponseCopyWith<$Res> {
  factory $MirrorCheckResponseCopyWith(
          MirrorCheckResponse value, $Res Function(MirrorCheckResponse) _then) =
      _$MirrorCheckResponseCopyWithImpl;
  @useResult
  $Res call({String url, MirrorCheckStatus status, String output});
}

/// @nodoc
class _$MirrorCheckResponseCopyWithImpl<$Res>
    implements $MirrorCheckResponseCopyWith<$Res> {
  _$MirrorCheckResponseCopyWithImpl(this._self, this._then);

  final MirrorCheckResponse _self;
  final $Res Function(MirrorCheckResponse) _then;

  /// Create a copy of MirrorCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? status = null,
    Object? output = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MirrorCheckStatus,
      output: null == output
          ? _self.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MirrorCheckResponse].
extension MirrorCheckResponsePatterns on MirrorCheckResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MirrorCheckResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MirrorCheckResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_MirrorCheckResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorCheckResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MirrorCheckResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorCheckResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String url, MirrorCheckStatus status, String output)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MirrorCheckResponse() when $default != null:
        return $default(_that.url, _that.status, _that.output);
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
  TResult when<TResult extends Object?>(
    TResult Function(String url, MirrorCheckStatus status, String output)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorCheckResponse():
        return $default(_that.url, _that.status, _that.output);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String url, MirrorCheckStatus status, String output)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorCheckResponse() when $default != null:
        return $default(_that.url, _that.status, _that.output);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MirrorCheckResponse implements MirrorCheckResponse {
  const _MirrorCheckResponse(
      {required this.url, required this.status, required this.output});
  factory _MirrorCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$MirrorCheckResponseFromJson(json);

  @override
  final String url;
  @override
  final MirrorCheckStatus status;
  @override
  final String output;

  /// Create a copy of MirrorCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MirrorCheckResponseCopyWith<_MirrorCheckResponse> get copyWith =>
      __$MirrorCheckResponseCopyWithImpl<_MirrorCheckResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MirrorCheckResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MirrorCheckResponse &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, status, output);

  @override
  String toString() {
    return 'MirrorCheckResponse(url: $url, status: $status, output: $output)';
  }
}

/// @nodoc
abstract mixin class _$MirrorCheckResponseCopyWith<$Res>
    implements $MirrorCheckResponseCopyWith<$Res> {
  factory _$MirrorCheckResponseCopyWith(_MirrorCheckResponse value,
          $Res Function(_MirrorCheckResponse) _then) =
      __$MirrorCheckResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String url, MirrorCheckStatus status, String output});
}

/// @nodoc
class __$MirrorCheckResponseCopyWithImpl<$Res>
    implements _$MirrorCheckResponseCopyWith<$Res> {
  __$MirrorCheckResponseCopyWithImpl(this._self, this._then);

  final _MirrorCheckResponse _self;
  final $Res Function(_MirrorCheckResponse) _then;

  /// Create a copy of MirrorCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? status = null,
    Object? output = null,
  }) {
    return _then(_MirrorCheckResponse(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MirrorCheckStatus,
      output: null == output
          ? _self.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$MirrorPost {
  String? get elected;
  List<String>? get candidates;
  String? get staged;
  bool? get useDuringInstallation;

  /// Create a copy of MirrorPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MirrorPostCopyWith<MirrorPost> get copyWith =>
      _$MirrorPostCopyWithImpl<MirrorPost>(this as MirrorPost, _$identity);

  /// Serializes this MirrorPost to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MirrorPost &&
            (identical(other.elected, elected) || other.elected == elected) &&
            const DeepCollectionEquality()
                .equals(other.candidates, candidates) &&
            (identical(other.staged, staged) || other.staged == staged) &&
            (identical(other.useDuringInstallation, useDuringInstallation) ||
                other.useDuringInstallation == useDuringInstallation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      elected,
      const DeepCollectionEquality().hash(candidates),
      staged,
      useDuringInstallation);

  @override
  String toString() {
    return 'MirrorPost(elected: $elected, candidates: $candidates, staged: $staged, useDuringInstallation: $useDuringInstallation)';
  }
}

/// @nodoc
abstract mixin class $MirrorPostCopyWith<$Res> {
  factory $MirrorPostCopyWith(
          MirrorPost value, $Res Function(MirrorPost) _then) =
      _$MirrorPostCopyWithImpl;
  @useResult
  $Res call(
      {String? elected,
      List<String>? candidates,
      String? staged,
      bool? useDuringInstallation});
}

/// @nodoc
class _$MirrorPostCopyWithImpl<$Res> implements $MirrorPostCopyWith<$Res> {
  _$MirrorPostCopyWithImpl(this._self, this._then);

  final MirrorPost _self;
  final $Res Function(MirrorPost) _then;

  /// Create a copy of MirrorPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elected = freezed,
    Object? candidates = freezed,
    Object? staged = freezed,
    Object? useDuringInstallation = freezed,
  }) {
    return _then(_self.copyWith(
      elected: freezed == elected
          ? _self.elected
          : elected // ignore: cast_nullable_to_non_nullable
              as String?,
      candidates: freezed == candidates
          ? _self.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      staged: freezed == staged
          ? _self.staged
          : staged // ignore: cast_nullable_to_non_nullable
              as String?,
      useDuringInstallation: freezed == useDuringInstallation
          ? _self.useDuringInstallation
          : useDuringInstallation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MirrorPost].
extension MirrorPostPatterns on MirrorPost {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MirrorPost value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MirrorPost() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_MirrorPost value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorPost():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MirrorPost value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorPost() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? elected, List<String>? candidates, String? staged,
            bool? useDuringInstallation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MirrorPost() when $default != null:
        return $default(_that.elected, _that.candidates, _that.staged,
            _that.useDuringInstallation);
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
  TResult when<TResult extends Object?>(
    TResult Function(String? elected, List<String>? candidates, String? staged,
            bool? useDuringInstallation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorPost():
        return $default(_that.elected, _that.candidates, _that.staged,
            _that.useDuringInstallation);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? elected, List<String>? candidates, String? staged,
            bool? useDuringInstallation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorPost() when $default != null:
        return $default(_that.elected, _that.candidates, _that.staged,
            _that.useDuringInstallation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MirrorPost implements MirrorPost {
  const _MirrorPost(
      {this.elected,
      final List<String>? candidates,
      this.staged,
      this.useDuringInstallation})
      : _candidates = candidates;
  factory _MirrorPost.fromJson(Map<String, dynamic> json) =>
      _$MirrorPostFromJson(json);

  @override
  final String? elected;
  final List<String>? _candidates;
  @override
  List<String>? get candidates {
    final value = _candidates;
    if (value == null) return null;
    if (_candidates is EqualUnmodifiableListView) return _candidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? staged;
  @override
  final bool? useDuringInstallation;

  /// Create a copy of MirrorPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MirrorPostCopyWith<_MirrorPost> get copyWith =>
      __$MirrorPostCopyWithImpl<_MirrorPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MirrorPostToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MirrorPost &&
            (identical(other.elected, elected) || other.elected == elected) &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates) &&
            (identical(other.staged, staged) || other.staged == staged) &&
            (identical(other.useDuringInstallation, useDuringInstallation) ||
                other.useDuringInstallation == useDuringInstallation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      elected,
      const DeepCollectionEquality().hash(_candidates),
      staged,
      useDuringInstallation);

  @override
  String toString() {
    return 'MirrorPost(elected: $elected, candidates: $candidates, staged: $staged, useDuringInstallation: $useDuringInstallation)';
  }
}

/// @nodoc
abstract mixin class _$MirrorPostCopyWith<$Res>
    implements $MirrorPostCopyWith<$Res> {
  factory _$MirrorPostCopyWith(
          _MirrorPost value, $Res Function(_MirrorPost) _then) =
      __$MirrorPostCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? elected,
      List<String>? candidates,
      String? staged,
      bool? useDuringInstallation});
}

/// @nodoc
class __$MirrorPostCopyWithImpl<$Res> implements _$MirrorPostCopyWith<$Res> {
  __$MirrorPostCopyWithImpl(this._self, this._then);

  final _MirrorPost _self;
  final $Res Function(_MirrorPost) _then;

  /// Create a copy of MirrorPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? elected = freezed,
    Object? candidates = freezed,
    Object? staged = freezed,
    Object? useDuringInstallation = freezed,
  }) {
    return _then(_MirrorPost(
      elected: freezed == elected
          ? _self.elected
          : elected // ignore: cast_nullable_to_non_nullable
              as String?,
      candidates: freezed == candidates
          ? _self._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      staged: freezed == staged
          ? _self.staged
          : staged // ignore: cast_nullable_to_non_nullable
              as String?,
      useDuringInstallation: freezed == useDuringInstallation
          ? _self.useDuringInstallation
          : useDuringInstallation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$MirrorGet {
  bool get relevant;
  String? get elected;
  List<String> get candidates;
  String? get staged;
  bool get useDuringInstallation;

  /// Create a copy of MirrorGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MirrorGetCopyWith<MirrorGet> get copyWith =>
      _$MirrorGetCopyWithImpl<MirrorGet>(this as MirrorGet, _$identity);

  /// Serializes this MirrorGet to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MirrorGet &&
            (identical(other.relevant, relevant) ||
                other.relevant == relevant) &&
            (identical(other.elected, elected) || other.elected == elected) &&
            const DeepCollectionEquality()
                .equals(other.candidates, candidates) &&
            (identical(other.staged, staged) || other.staged == staged) &&
            (identical(other.useDuringInstallation, useDuringInstallation) ||
                other.useDuringInstallation == useDuringInstallation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      relevant,
      elected,
      const DeepCollectionEquality().hash(candidates),
      staged,
      useDuringInstallation);

  @override
  String toString() {
    return 'MirrorGet(relevant: $relevant, elected: $elected, candidates: $candidates, staged: $staged, useDuringInstallation: $useDuringInstallation)';
  }
}

/// @nodoc
abstract mixin class $MirrorGetCopyWith<$Res> {
  factory $MirrorGetCopyWith(MirrorGet value, $Res Function(MirrorGet) _then) =
      _$MirrorGetCopyWithImpl;
  @useResult
  $Res call(
      {bool relevant,
      String? elected,
      List<String> candidates,
      String? staged,
      bool useDuringInstallation});
}

/// @nodoc
class _$MirrorGetCopyWithImpl<$Res> implements $MirrorGetCopyWith<$Res> {
  _$MirrorGetCopyWithImpl(this._self, this._then);

  final MirrorGet _self;
  final $Res Function(MirrorGet) _then;

  /// Create a copy of MirrorGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relevant = null,
    Object? elected = freezed,
    Object? candidates = null,
    Object? staged = freezed,
    Object? useDuringInstallation = null,
  }) {
    return _then(_self.copyWith(
      relevant: null == relevant
          ? _self.relevant
          : relevant // ignore: cast_nullable_to_non_nullable
              as bool,
      elected: freezed == elected
          ? _self.elected
          : elected // ignore: cast_nullable_to_non_nullable
              as String?,
      candidates: null == candidates
          ? _self.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      staged: freezed == staged
          ? _self.staged
          : staged // ignore: cast_nullable_to_non_nullable
              as String?,
      useDuringInstallation: null == useDuringInstallation
          ? _self.useDuringInstallation
          : useDuringInstallation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [MirrorGet].
extension MirrorGetPatterns on MirrorGet {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MirrorGet value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MirrorGet() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_MirrorGet value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorGet():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MirrorGet value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorGet() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool relevant, String? elected, List<String> candidates,
            String? staged, bool useDuringInstallation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MirrorGet() when $default != null:
        return $default(_that.relevant, _that.elected, _that.candidates,
            _that.staged, _that.useDuringInstallation);
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
  TResult when<TResult extends Object?>(
    TResult Function(bool relevant, String? elected, List<String> candidates,
            String? staged, bool useDuringInstallation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorGet():
        return $default(_that.relevant, _that.elected, _that.candidates,
            _that.staged, _that.useDuringInstallation);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool relevant, String? elected, List<String> candidates,
            String? staged, bool useDuringInstallation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MirrorGet() when $default != null:
        return $default(_that.relevant, _that.elected, _that.candidates,
            _that.staged, _that.useDuringInstallation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MirrorGet implements MirrorGet {
  const _MirrorGet(
      {required this.relevant,
      required this.elected,
      required final List<String> candidates,
      required this.staged,
      required this.useDuringInstallation})
      : _candidates = candidates;
  factory _MirrorGet.fromJson(Map<String, dynamic> json) =>
      _$MirrorGetFromJson(json);

  @override
  final bool relevant;
  @override
  final String? elected;
  final List<String> _candidates;
  @override
  List<String> get candidates {
    if (_candidates is EqualUnmodifiableListView) return _candidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candidates);
  }

  @override
  final String? staged;
  @override
  final bool useDuringInstallation;

  /// Create a copy of MirrorGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MirrorGetCopyWith<_MirrorGet> get copyWith =>
      __$MirrorGetCopyWithImpl<_MirrorGet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MirrorGetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MirrorGet &&
            (identical(other.relevant, relevant) ||
                other.relevant == relevant) &&
            (identical(other.elected, elected) || other.elected == elected) &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates) &&
            (identical(other.staged, staged) || other.staged == staged) &&
            (identical(other.useDuringInstallation, useDuringInstallation) ||
                other.useDuringInstallation == useDuringInstallation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      relevant,
      elected,
      const DeepCollectionEquality().hash(_candidates),
      staged,
      useDuringInstallation);

  @override
  String toString() {
    return 'MirrorGet(relevant: $relevant, elected: $elected, candidates: $candidates, staged: $staged, useDuringInstallation: $useDuringInstallation)';
  }
}

/// @nodoc
abstract mixin class _$MirrorGetCopyWith<$Res>
    implements $MirrorGetCopyWith<$Res> {
  factory _$MirrorGetCopyWith(
          _MirrorGet value, $Res Function(_MirrorGet) _then) =
      __$MirrorGetCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool relevant,
      String? elected,
      List<String> candidates,
      String? staged,
      bool useDuringInstallation});
}

/// @nodoc
class __$MirrorGetCopyWithImpl<$Res> implements _$MirrorGetCopyWith<$Res> {
  __$MirrorGetCopyWithImpl(this._self, this._then);

  final _MirrorGet _self;
  final $Res Function(_MirrorGet) _then;

  /// Create a copy of MirrorGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relevant = null,
    Object? elected = freezed,
    Object? candidates = null,
    Object? staged = freezed,
    Object? useDuringInstallation = null,
  }) {
    return _then(_MirrorGet(
      relevant: null == relevant
          ? _self.relevant
          : relevant // ignore: cast_nullable_to_non_nullable
              as bool,
      elected: freezed == elected
          ? _self.elected
          : elected // ignore: cast_nullable_to_non_nullable
              as String?,
      candidates: null == candidates
          ? _self._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      staged: freezed == staged
          ? _self.staged
          : staged // ignore: cast_nullable_to_non_nullable
              as String?,
      useDuringInstallation: null == useDuringInstallation
          ? _self.useDuringInstallation
          : useDuringInstallation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$AdConnectionInfo {
  String get adminName;
  String get domainName;
  String get password;

  /// Create a copy of AdConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdConnectionInfoCopyWith<AdConnectionInfo> get copyWith =>
      _$AdConnectionInfoCopyWithImpl<AdConnectionInfo>(
          this as AdConnectionInfo, _$identity);

  /// Serializes this AdConnectionInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdConnectionInfo &&
            (identical(other.adminName, adminName) ||
                other.adminName == adminName) &&
            (identical(other.domainName, domainName) ||
                other.domainName == domainName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adminName, domainName, password);

  @override
  String toString() {
    return 'AdConnectionInfo(adminName: $adminName, domainName: $domainName, password: $password)';
  }
}

/// @nodoc
abstract mixin class $AdConnectionInfoCopyWith<$Res> {
  factory $AdConnectionInfoCopyWith(
          AdConnectionInfo value, $Res Function(AdConnectionInfo) _then) =
      _$AdConnectionInfoCopyWithImpl;
  @useResult
  $Res call({String adminName, String domainName, String password});
}

/// @nodoc
class _$AdConnectionInfoCopyWithImpl<$Res>
    implements $AdConnectionInfoCopyWith<$Res> {
  _$AdConnectionInfoCopyWithImpl(this._self, this._then);

  final AdConnectionInfo _self;
  final $Res Function(AdConnectionInfo) _then;

  /// Create a copy of AdConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminName = null,
    Object? domainName = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      adminName: null == adminName
          ? _self.adminName
          : adminName // ignore: cast_nullable_to_non_nullable
              as String,
      domainName: null == domainName
          ? _self.domainName
          : domainName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AdConnectionInfo].
extension AdConnectionInfoPatterns on AdConnectionInfo {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AdConnectionInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdConnectionInfo() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_AdConnectionInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdConnectionInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AdConnectionInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdConnectionInfo() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String adminName, String domainName, String password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdConnectionInfo() when $default != null:
        return $default(_that.adminName, _that.domainName, _that.password);
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
  TResult when<TResult extends Object?>(
    TResult Function(String adminName, String domainName, String password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdConnectionInfo():
        return $default(_that.adminName, _that.domainName, _that.password);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String adminName, String domainName, String password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdConnectionInfo() when $default != null:
        return $default(_that.adminName, _that.domainName, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AdConnectionInfo implements AdConnectionInfo {
  const _AdConnectionInfo(
      {this.adminName = '', this.domainName = '', this.password = ''});
  factory _AdConnectionInfo.fromJson(Map<String, dynamic> json) =>
      _$AdConnectionInfoFromJson(json);

  @override
  @JsonKey()
  final String adminName;
  @override
  @JsonKey()
  final String domainName;
  @override
  @JsonKey()
  final String password;

  /// Create a copy of AdConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdConnectionInfoCopyWith<_AdConnectionInfo> get copyWith =>
      __$AdConnectionInfoCopyWithImpl<_AdConnectionInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdConnectionInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdConnectionInfo &&
            (identical(other.adminName, adminName) ||
                other.adminName == adminName) &&
            (identical(other.domainName, domainName) ||
                other.domainName == domainName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adminName, domainName, password);

  @override
  String toString() {
    return 'AdConnectionInfo(adminName: $adminName, domainName: $domainName, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$AdConnectionInfoCopyWith<$Res>
    implements $AdConnectionInfoCopyWith<$Res> {
  factory _$AdConnectionInfoCopyWith(
          _AdConnectionInfo value, $Res Function(_AdConnectionInfo) _then) =
      __$AdConnectionInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String adminName, String domainName, String password});
}

/// @nodoc
class __$AdConnectionInfoCopyWithImpl<$Res>
    implements _$AdConnectionInfoCopyWith<$Res> {
  __$AdConnectionInfoCopyWithImpl(this._self, this._then);

  final _AdConnectionInfo _self;
  final $Res Function(_AdConnectionInfo) _then;

  /// Create a copy of AdConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? adminName = null,
    Object? domainName = null,
    Object? password = null,
  }) {
    return _then(_AdConnectionInfo(
      adminName: null == adminName
          ? _self.adminName
          : adminName // ignore: cast_nullable_to_non_nullable
              as String,
      domainName: null == domainName
          ? _self.domainName
          : domainName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$OsProber {
  String get long;
  String get label;
  String get type;
  String? get subpath;
  String? get version;

  /// Create a copy of OsProber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OsProberCopyWith<OsProber> get copyWith =>
      _$OsProberCopyWithImpl<OsProber>(this as OsProber, _$identity);

  /// Serializes this OsProber to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OsProber &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subpath, subpath) || other.subpath == subpath) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, long, label, type, subpath, version);

  @override
  String toString() {
    return 'OsProber(long: $long, label: $label, type: $type, subpath: $subpath, version: $version)';
  }
}

/// @nodoc
abstract mixin class $OsProberCopyWith<$Res> {
  factory $OsProberCopyWith(OsProber value, $Res Function(OsProber) _then) =
      _$OsProberCopyWithImpl;
  @useResult
  $Res call(
      {String long,
      String label,
      String type,
      String? subpath,
      String? version});
}

/// @nodoc
class _$OsProberCopyWithImpl<$Res> implements $OsProberCopyWith<$Res> {
  _$OsProberCopyWithImpl(this._self, this._then);

  final OsProber _self;
  final $Res Function(OsProber) _then;

  /// Create a copy of OsProber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long = null,
    Object? label = null,
    Object? type = null,
    Object? subpath = freezed,
    Object? version = freezed,
  }) {
    return _then(_self.copyWith(
      long: null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subpath: freezed == subpath
          ? _self.subpath
          : subpath // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OsProber].
extension OsProberPatterns on OsProber {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OsProber value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OsProber() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_OsProber value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OsProber():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OsProber value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OsProber() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String long, String label, String type, String? subpath,
            String? version)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OsProber() when $default != null:
        return $default(
            _that.long, _that.label, _that.type, _that.subpath, _that.version);
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
  TResult when<TResult extends Object?>(
    TResult Function(String long, String label, String type, String? subpath,
            String? version)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OsProber():
        return $default(
            _that.long, _that.label, _that.type, _that.subpath, _that.version);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String long, String label, String type, String? subpath,
            String? version)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OsProber() when $default != null:
        return $default(
            _that.long, _that.label, _that.type, _that.subpath, _that.version);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OsProber implements OsProber {
  const _OsProber(
      {required this.long,
      required this.label,
      required this.type,
      this.subpath,
      this.version});
  factory _OsProber.fromJson(Map<String, dynamic> json) =>
      _$OsProberFromJson(json);

  @override
  final String long;
  @override
  final String label;
  @override
  final String type;
  @override
  final String? subpath;
  @override
  final String? version;

  /// Create a copy of OsProber
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OsProberCopyWith<_OsProber> get copyWith =>
      __$OsProberCopyWithImpl<_OsProber>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OsProberToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OsProber &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subpath, subpath) || other.subpath == subpath) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, long, label, type, subpath, version);

  @override
  String toString() {
    return 'OsProber(long: $long, label: $label, type: $type, subpath: $subpath, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$OsProberCopyWith<$Res>
    implements $OsProberCopyWith<$Res> {
  factory _$OsProberCopyWith(_OsProber value, $Res Function(_OsProber) _then) =
      __$OsProberCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String long,
      String label,
      String type,
      String? subpath,
      String? version});
}

/// @nodoc
class __$OsProberCopyWithImpl<$Res> implements _$OsProberCopyWith<$Res> {
  __$OsProberCopyWithImpl(this._self, this._then);

  final _OsProber _self;
  final $Res Function(_OsProber) _then;

  /// Create a copy of OsProber
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? long = null,
    Object? label = null,
    Object? type = null,
    Object? subpath = freezed,
    Object? version = freezed,
  }) {
    return _then(_OsProber(
      long: null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subpath: freezed == subpath
          ? _self.subpath
          : subpath // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

PartitionOrGap _$PartitionOrGapFromJson(Map<String, dynamic> json) {
  switch (json['\$type']) {
    case 'Partition':
      return Partition.fromJson(json);
    case 'Gap':
      return Gap.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '\$type', 'PartitionOrGap',
          'Invalid union type "${json['\$type']}"!');
  }
}

/// @nodoc
mixin _$PartitionOrGap {
  int? get size;
  int? get offset;

  /// Create a copy of PartitionOrGap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PartitionOrGapCopyWith<PartitionOrGap> get copyWith =>
      _$PartitionOrGapCopyWithImpl<PartitionOrGap>(
          this as PartitionOrGap, _$identity);

  /// Serializes this PartitionOrGap to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PartitionOrGap &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, size, offset);

  @override
  String toString() {
    return 'PartitionOrGap(size: $size, offset: $offset)';
  }
}

/// @nodoc
abstract mixin class $PartitionOrGapCopyWith<$Res> {
  factory $PartitionOrGapCopyWith(
          PartitionOrGap value, $Res Function(PartitionOrGap) _then) =
      _$PartitionOrGapCopyWithImpl;
  @useResult
  $Res call({int size, int offset});
}

/// @nodoc
class _$PartitionOrGapCopyWithImpl<$Res>
    implements $PartitionOrGapCopyWith<$Res> {
  _$PartitionOrGapCopyWithImpl(this._self, this._then);

  final PartitionOrGap _self;
  final $Res Function(PartitionOrGap) _then;

  /// Create a copy of PartitionOrGap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? offset = null,
  }) {
    return _then(_self.copyWith(
      size: null == size
          ? _self.size!
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _self.offset!
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [PartitionOrGap].
extension PartitionOrGapPatterns on PartitionOrGap {
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
    TResult Function(Partition value)? partition,
    TResult Function(Gap value)? gap,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Partition() when partition != null:
        return partition(_that);
      case Gap() when gap != null:
        return gap(_that);
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
    required TResult Function(Partition value) partition,
    required TResult Function(Gap value) gap,
  }) {
    final _that = this;
    switch (_that) {
      case Partition():
        return partition(_that);
      case Gap():
        return gap(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(Partition value)? partition,
    TResult? Function(Gap value)? gap,
  }) {
    final _that = this;
    switch (_that) {
      case Partition() when partition != null:
        return partition(_that);
      case Gap() when gap != null:
        return gap(_that);
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
    TResult Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            String? name,
            bool isInUse,
            String? effectiveMount,
            String? effectiveFormat,
            bool? effectivelyEncrypted)?
        partition,
    TResult Function(int offset, int size, GapUsable usable)? gap,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Partition() when partition != null:
        return partition(
            _that.size,
            _that.number,
            _that.preserve,
            _that.wipe,
            _that.annotations,
            _that.mount,
            _that.format,
            _that.grubDevice,
            _that.boot,
            _that.os,
            _that.offset,
            _that.estimatedMinSize,
            _that.resize,
            _that.path,
            _that.name,
            _that.isInUse,
            _that.effectiveMount,
            _that.effectiveFormat,
            _that.effectivelyEncrypted);
      case Gap() when gap != null:
        return gap(_that.offset, _that.size, _that.usable);
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
    required TResult Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            String? name,
            bool isInUse,
            String? effectiveMount,
            String? effectiveFormat,
            bool? effectivelyEncrypted)
        partition,
    required TResult Function(int offset, int size, GapUsable usable) gap,
  }) {
    final _that = this;
    switch (_that) {
      case Partition():
        return partition(
            _that.size,
            _that.number,
            _that.preserve,
            _that.wipe,
            _that.annotations,
            _that.mount,
            _that.format,
            _that.grubDevice,
            _that.boot,
            _that.os,
            _that.offset,
            _that.estimatedMinSize,
            _that.resize,
            _that.path,
            _that.name,
            _that.isInUse,
            _that.effectiveMount,
            _that.effectiveFormat,
            _that.effectivelyEncrypted);
      case Gap():
        return gap(_that.offset, _that.size, _that.usable);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            String? name,
            bool isInUse,
            String? effectiveMount,
            String? effectiveFormat,
            bool? effectivelyEncrypted)?
        partition,
    TResult? Function(int offset, int size, GapUsable usable)? gap,
  }) {
    final _that = this;
    switch (_that) {
      case Partition() when partition != null:
        return partition(
            _that.size,
            _that.number,
            _that.preserve,
            _that.wipe,
            _that.annotations,
            _that.mount,
            _that.format,
            _that.grubDevice,
            _that.boot,
            _that.os,
            _that.offset,
            _that.estimatedMinSize,
            _that.resize,
            _that.path,
            _that.name,
            _that.isInUse,
            _that.effectiveMount,
            _that.effectiveFormat,
            _that.effectivelyEncrypted);
      case Gap() when gap != null:
        return gap(_that.offset, _that.size, _that.usable);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class Partition implements PartitionOrGap {
  const Partition(
      {this.size,
      this.number,
      this.preserve,
      this.wipe,
      final List<String> annotations = const [],
      this.mount,
      this.format,
      this.grubDevice,
      this.boot,
      this.os,
      this.offset,
      this.estimatedMinSize = -1,
      this.resize,
      this.path,
      this.name,
      this.isInUse = false,
      this.effectiveMount,
      this.effectiveFormat,
      this.effectivelyEncrypted,
      final String? $type})
      : _annotations = annotations,
        $type = $type ?? 'Partition';
  factory Partition.fromJson(Map<String, dynamic> json) =>
      _$PartitionFromJson(json);

  @override
  final int? size;
  final int? number;
  final bool? preserve;
  final String? wipe;
  final List<String> _annotations;
  @JsonKey()
  List<String> get annotations {
    if (_annotations is EqualUnmodifiableListView) return _annotations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_annotations);
  }

  final String? mount;
  final String? format;
  final bool? grubDevice;
  final bool? boot;
  final OsProber? os;
  @override
  final int? offset;
  @JsonKey()
  final int? estimatedMinSize;
  final bool? resize;
  final String? path;
  final String? name;
  @JsonKey()
  final bool isInUse;
  final String? effectiveMount;
  final String? effectiveFormat;
  final bool? effectivelyEncrypted;

  @JsonKey(name: '\$type')
  final String $type;

  /// Create a copy of PartitionOrGap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PartitionCopyWith<Partition> get copyWith =>
      _$PartitionCopyWithImpl<Partition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PartitionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Partition &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.preserve, preserve) ||
                other.preserve == preserve) &&
            (identical(other.wipe, wipe) || other.wipe == wipe) &&
            const DeepCollectionEquality()
                .equals(other._annotations, _annotations) &&
            (identical(other.mount, mount) || other.mount == mount) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.grubDevice, grubDevice) ||
                other.grubDevice == grubDevice) &&
            (identical(other.boot, boot) || other.boot == boot) &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.estimatedMinSize, estimatedMinSize) ||
                other.estimatedMinSize == estimatedMinSize) &&
            (identical(other.resize, resize) || other.resize == resize) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isInUse, isInUse) || other.isInUse == isInUse) &&
            (identical(other.effectiveMount, effectiveMount) ||
                other.effectiveMount == effectiveMount) &&
            (identical(other.effectiveFormat, effectiveFormat) ||
                other.effectiveFormat == effectiveFormat) &&
            (identical(other.effectivelyEncrypted, effectivelyEncrypted) ||
                other.effectivelyEncrypted == effectivelyEncrypted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        size,
        number,
        preserve,
        wipe,
        const DeepCollectionEquality().hash(_annotations),
        mount,
        format,
        grubDevice,
        boot,
        os,
        offset,
        estimatedMinSize,
        resize,
        path,
        name,
        isInUse,
        effectiveMount,
        effectiveFormat,
        effectivelyEncrypted
      ]);

  @override
  String toString() {
    return 'PartitionOrGap.partition(size: $size, number: $number, preserve: $preserve, wipe: $wipe, annotations: $annotations, mount: $mount, format: $format, grubDevice: $grubDevice, boot: $boot, os: $os, offset: $offset, estimatedMinSize: $estimatedMinSize, resize: $resize, path: $path, name: $name, isInUse: $isInUse, effectiveMount: $effectiveMount, effectiveFormat: $effectiveFormat, effectivelyEncrypted: $effectivelyEncrypted)';
  }
}

/// @nodoc
abstract mixin class $PartitionCopyWith<$Res>
    implements $PartitionOrGapCopyWith<$Res> {
  factory $PartitionCopyWith(Partition value, $Res Function(Partition) _then) =
      _$PartitionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? size,
      int? number,
      bool? preserve,
      String? wipe,
      List<String> annotations,
      String? mount,
      String? format,
      bool? grubDevice,
      bool? boot,
      OsProber? os,
      int? offset,
      int? estimatedMinSize,
      bool? resize,
      String? path,
      String? name,
      bool isInUse,
      String? effectiveMount,
      String? effectiveFormat,
      bool? effectivelyEncrypted});

  $OsProberCopyWith<$Res>? get os;
}

/// @nodoc
class _$PartitionCopyWithImpl<$Res> implements $PartitionCopyWith<$Res> {
  _$PartitionCopyWithImpl(this._self, this._then);

  final Partition _self;
  final $Res Function(Partition) _then;

  /// Create a copy of PartitionOrGap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? size = freezed,
    Object? number = freezed,
    Object? preserve = freezed,
    Object? wipe = freezed,
    Object? annotations = null,
    Object? mount = freezed,
    Object? format = freezed,
    Object? grubDevice = freezed,
    Object? boot = freezed,
    Object? os = freezed,
    Object? offset = freezed,
    Object? estimatedMinSize = freezed,
    Object? resize = freezed,
    Object? path = freezed,
    Object? name = freezed,
    Object? isInUse = null,
    Object? effectiveMount = freezed,
    Object? effectiveFormat = freezed,
    Object? effectivelyEncrypted = freezed,
  }) {
    return _then(Partition(
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      preserve: freezed == preserve
          ? _self.preserve
          : preserve // ignore: cast_nullable_to_non_nullable
              as bool?,
      wipe: freezed == wipe
          ? _self.wipe
          : wipe // ignore: cast_nullable_to_non_nullable
              as String?,
      annotations: null == annotations
          ? _self._annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mount: freezed == mount
          ? _self.mount
          : mount // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      grubDevice: freezed == grubDevice
          ? _self.grubDevice
          : grubDevice // ignore: cast_nullable_to_non_nullable
              as bool?,
      boot: freezed == boot
          ? _self.boot
          : boot // ignore: cast_nullable_to_non_nullable
              as bool?,
      os: freezed == os
          ? _self.os
          : os // ignore: cast_nullable_to_non_nullable
              as OsProber?,
      offset: freezed == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      estimatedMinSize: freezed == estimatedMinSize
          ? _self.estimatedMinSize
          : estimatedMinSize // ignore: cast_nullable_to_non_nullable
              as int?,
      resize: freezed == resize
          ? _self.resize
          : resize // ignore: cast_nullable_to_non_nullable
              as bool?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isInUse: null == isInUse
          ? _self.isInUse
          : isInUse // ignore: cast_nullable_to_non_nullable
              as bool,
      effectiveMount: freezed == effectiveMount
          ? _self.effectiveMount
          : effectiveMount // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveFormat: freezed == effectiveFormat
          ? _self.effectiveFormat
          : effectiveFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      effectivelyEncrypted: freezed == effectivelyEncrypted
          ? _self.effectivelyEncrypted
          : effectivelyEncrypted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of PartitionOrGap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OsProberCopyWith<$Res>? get os {
    if (_self.os == null) {
      return null;
    }

    return $OsProberCopyWith<$Res>(_self.os!, (value) {
      return _then(_self.copyWith(os: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class Gap implements PartitionOrGap {
  const Gap(
      {required this.offset,
      required this.size,
      required this.usable,
      final String? $type})
      : $type = $type ?? 'Gap';
  factory Gap.fromJson(Map<String, dynamic> json) => _$GapFromJson(json);

  @override
  final int offset;
  @override
  final int size;
  final GapUsable usable;

  @JsonKey(name: '\$type')
  final String $type;

  /// Create a copy of PartitionOrGap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GapCopyWith<Gap> get copyWith => _$GapCopyWithImpl<Gap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GapToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Gap &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.usable, usable) || other.usable == usable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offset, size, usable);

  @override
  String toString() {
    return 'PartitionOrGap.gap(offset: $offset, size: $size, usable: $usable)';
  }
}

/// @nodoc
abstract mixin class $GapCopyWith<$Res>
    implements $PartitionOrGapCopyWith<$Res> {
  factory $GapCopyWith(Gap value, $Res Function(Gap) _then) = _$GapCopyWithImpl;
  @override
  @useResult
  $Res call({int offset, int size, GapUsable usable});
}

/// @nodoc
class _$GapCopyWithImpl<$Res> implements $GapCopyWith<$Res> {
  _$GapCopyWithImpl(this._self, this._then);

  final Gap _self;
  final $Res Function(Gap) _then;

  /// Create a copy of PartitionOrGap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? offset = null,
    Object? size = null,
    Object? usable = null,
  }) {
    return _then(Gap(
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      usable: null == usable
          ? _self.usable
          : usable // ignore: cast_nullable_to_non_nullable
              as GapUsable,
    ));
  }
}

/// @nodoc
mixin _$ZFS {
  String get volume;
  Map<String, dynamic>? get properties;

  /// Create a copy of ZFS
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ZFSCopyWith<ZFS> get copyWith =>
      _$ZFSCopyWithImpl<ZFS>(this as ZFS, _$identity);

  /// Serializes this ZFS to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ZFS &&
            (identical(other.volume, volume) || other.volume == volume) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, volume, const DeepCollectionEquality().hash(properties));

  @override
  String toString() {
    return 'ZFS(volume: $volume, properties: $properties)';
  }
}

/// @nodoc
abstract mixin class $ZFSCopyWith<$Res> {
  factory $ZFSCopyWith(ZFS value, $Res Function(ZFS) _then) = _$ZFSCopyWithImpl;
  @useResult
  $Res call({String volume, Map<String, dynamic>? properties});
}

/// @nodoc
class _$ZFSCopyWithImpl<$Res> implements $ZFSCopyWith<$Res> {
  _$ZFSCopyWithImpl(this._self, this._then);

  final ZFS _self;
  final $Res Function(ZFS) _then;

  /// Create a copy of ZFS
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
    Object? properties = freezed,
  }) {
    return _then(_self.copyWith(
      volume: null == volume
          ? _self.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      properties: freezed == properties
          ? _self.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ZFS].
extension ZFSPatterns on ZFS {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ZFS value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ZFS() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_ZFS value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZFS():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ZFS value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZFS() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String volume, Map<String, dynamic>? properties)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ZFS() when $default != null:
        return $default(_that.volume, _that.properties);
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
  TResult when<TResult extends Object?>(
    TResult Function(String volume, Map<String, dynamic>? properties) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZFS():
        return $default(_that.volume, _that.properties);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String volume, Map<String, dynamic>? properties)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZFS() when $default != null:
        return $default(_that.volume, _that.properties);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ZFS implements ZFS {
  const _ZFS({required this.volume, final Map<String, dynamic>? properties})
      : _properties = properties;
  factory _ZFS.fromJson(Map<String, dynamic> json) => _$ZFSFromJson(json);

  @override
  final String volume;
  final Map<String, dynamic>? _properties;
  @override
  Map<String, dynamic>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ZFS
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ZFSCopyWith<_ZFS> get copyWith =>
      __$ZFSCopyWithImpl<_ZFS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ZFSToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZFS &&
            (identical(other.volume, volume) || other.volume == volume) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, volume, const DeepCollectionEquality().hash(_properties));

  @override
  String toString() {
    return 'ZFS(volume: $volume, properties: $properties)';
  }
}

/// @nodoc
abstract mixin class _$ZFSCopyWith<$Res> implements $ZFSCopyWith<$Res> {
  factory _$ZFSCopyWith(_ZFS value, $Res Function(_ZFS) _then) =
      __$ZFSCopyWithImpl;
  @override
  @useResult
  $Res call({String volume, Map<String, dynamic>? properties});
}

/// @nodoc
class __$ZFSCopyWithImpl<$Res> implements _$ZFSCopyWith<$Res> {
  __$ZFSCopyWithImpl(this._self, this._then);

  final _ZFS _self;
  final $Res Function(_ZFS) _then;

  /// Create a copy of ZFS
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? volume = null,
    Object? properties = freezed,
  }) {
    return _then(_ZFS(
      volume: null == volume
          ? _self.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      properties: freezed == properties
          ? _self._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$ZPool {
  String get pool;
  String get mountpoint;
  ZFS? get zfses;
  Map<String, dynamic>? get poolProperties;
  Map<String, dynamic>? get fsProperties;
  bool? get defaultFeatures;

  /// Create a copy of ZPool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ZPoolCopyWith<ZPool> get copyWith =>
      _$ZPoolCopyWithImpl<ZPool>(this as ZPool, _$identity);

  /// Serializes this ZPool to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ZPool &&
            (identical(other.pool, pool) || other.pool == pool) &&
            (identical(other.mountpoint, mountpoint) ||
                other.mountpoint == mountpoint) &&
            (identical(other.zfses, zfses) || other.zfses == zfses) &&
            const DeepCollectionEquality()
                .equals(other.poolProperties, poolProperties) &&
            const DeepCollectionEquality()
                .equals(other.fsProperties, fsProperties) &&
            (identical(other.defaultFeatures, defaultFeatures) ||
                other.defaultFeatures == defaultFeatures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pool,
      mountpoint,
      zfses,
      const DeepCollectionEquality().hash(poolProperties),
      const DeepCollectionEquality().hash(fsProperties),
      defaultFeatures);

  @override
  String toString() {
    return 'ZPool(pool: $pool, mountpoint: $mountpoint, zfses: $zfses, poolProperties: $poolProperties, fsProperties: $fsProperties, defaultFeatures: $defaultFeatures)';
  }
}

/// @nodoc
abstract mixin class $ZPoolCopyWith<$Res> {
  factory $ZPoolCopyWith(ZPool value, $Res Function(ZPool) _then) =
      _$ZPoolCopyWithImpl;
  @useResult
  $Res call(
      {String pool,
      String mountpoint,
      ZFS? zfses,
      Map<String, dynamic>? poolProperties,
      Map<String, dynamic>? fsProperties,
      bool? defaultFeatures});

  $ZFSCopyWith<$Res>? get zfses;
}

/// @nodoc
class _$ZPoolCopyWithImpl<$Res> implements $ZPoolCopyWith<$Res> {
  _$ZPoolCopyWithImpl(this._self, this._then);

  final ZPool _self;
  final $Res Function(ZPool) _then;

  /// Create a copy of ZPool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pool = null,
    Object? mountpoint = null,
    Object? zfses = freezed,
    Object? poolProperties = freezed,
    Object? fsProperties = freezed,
    Object? defaultFeatures = freezed,
  }) {
    return _then(_self.copyWith(
      pool: null == pool
          ? _self.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String,
      mountpoint: null == mountpoint
          ? _self.mountpoint
          : mountpoint // ignore: cast_nullable_to_non_nullable
              as String,
      zfses: freezed == zfses
          ? _self.zfses
          : zfses // ignore: cast_nullable_to_non_nullable
              as ZFS?,
      poolProperties: freezed == poolProperties
          ? _self.poolProperties
          : poolProperties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fsProperties: freezed == fsProperties
          ? _self.fsProperties
          : fsProperties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      defaultFeatures: freezed == defaultFeatures
          ? _self.defaultFeatures
          : defaultFeatures // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ZPool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ZFSCopyWith<$Res>? get zfses {
    if (_self.zfses == null) {
      return null;
    }

    return $ZFSCopyWith<$Res>(_self.zfses!, (value) {
      return _then(_self.copyWith(zfses: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ZPool].
extension ZPoolPatterns on ZPool {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ZPool value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ZPool() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_ZPool value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZPool():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ZPool value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZPool() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String pool,
            String mountpoint,
            ZFS? zfses,
            Map<String, dynamic>? poolProperties,
            Map<String, dynamic>? fsProperties,
            bool? defaultFeatures)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ZPool() when $default != null:
        return $default(_that.pool, _that.mountpoint, _that.zfses,
            _that.poolProperties, _that.fsProperties, _that.defaultFeatures);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String pool,
            String mountpoint,
            ZFS? zfses,
            Map<String, dynamic>? poolProperties,
            Map<String, dynamic>? fsProperties,
            bool? defaultFeatures)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZPool():
        return $default(_that.pool, _that.mountpoint, _that.zfses,
            _that.poolProperties, _that.fsProperties, _that.defaultFeatures);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String pool,
            String mountpoint,
            ZFS? zfses,
            Map<String, dynamic>? poolProperties,
            Map<String, dynamic>? fsProperties,
            bool? defaultFeatures)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZPool() when $default != null:
        return $default(_that.pool, _that.mountpoint, _that.zfses,
            _that.poolProperties, _that.fsProperties, _that.defaultFeatures);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ZPool implements ZPool {
  const _ZPool(
      {required this.pool,
      required this.mountpoint,
      this.zfses,
      final Map<String, dynamic>? poolProperties,
      final Map<String, dynamic>? fsProperties,
      this.defaultFeatures = true})
      : _poolProperties = poolProperties,
        _fsProperties = fsProperties;
  factory _ZPool.fromJson(Map<String, dynamic> json) => _$ZPoolFromJson(json);

  @override
  final String pool;
  @override
  final String mountpoint;
  @override
  final ZFS? zfses;
  final Map<String, dynamic>? _poolProperties;
  @override
  Map<String, dynamic>? get poolProperties {
    final value = _poolProperties;
    if (value == null) return null;
    if (_poolProperties is EqualUnmodifiableMapView) return _poolProperties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _fsProperties;
  @override
  Map<String, dynamic>? get fsProperties {
    final value = _fsProperties;
    if (value == null) return null;
    if (_fsProperties is EqualUnmodifiableMapView) return _fsProperties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool? defaultFeatures;

  /// Create a copy of ZPool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ZPoolCopyWith<_ZPool> get copyWith =>
      __$ZPoolCopyWithImpl<_ZPool>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ZPoolToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZPool &&
            (identical(other.pool, pool) || other.pool == pool) &&
            (identical(other.mountpoint, mountpoint) ||
                other.mountpoint == mountpoint) &&
            (identical(other.zfses, zfses) || other.zfses == zfses) &&
            const DeepCollectionEquality()
                .equals(other._poolProperties, _poolProperties) &&
            const DeepCollectionEquality()
                .equals(other._fsProperties, _fsProperties) &&
            (identical(other.defaultFeatures, defaultFeatures) ||
                other.defaultFeatures == defaultFeatures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pool,
      mountpoint,
      zfses,
      const DeepCollectionEquality().hash(_poolProperties),
      const DeepCollectionEquality().hash(_fsProperties),
      defaultFeatures);

  @override
  String toString() {
    return 'ZPool(pool: $pool, mountpoint: $mountpoint, zfses: $zfses, poolProperties: $poolProperties, fsProperties: $fsProperties, defaultFeatures: $defaultFeatures)';
  }
}

/// @nodoc
abstract mixin class _$ZPoolCopyWith<$Res> implements $ZPoolCopyWith<$Res> {
  factory _$ZPoolCopyWith(_ZPool value, $Res Function(_ZPool) _then) =
      __$ZPoolCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String pool,
      String mountpoint,
      ZFS? zfses,
      Map<String, dynamic>? poolProperties,
      Map<String, dynamic>? fsProperties,
      bool? defaultFeatures});

  @override
  $ZFSCopyWith<$Res>? get zfses;
}

/// @nodoc
class __$ZPoolCopyWithImpl<$Res> implements _$ZPoolCopyWith<$Res> {
  __$ZPoolCopyWithImpl(this._self, this._then);

  final _ZPool _self;
  final $Res Function(_ZPool) _then;

  /// Create a copy of ZPool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pool = null,
    Object? mountpoint = null,
    Object? zfses = freezed,
    Object? poolProperties = freezed,
    Object? fsProperties = freezed,
    Object? defaultFeatures = freezed,
  }) {
    return _then(_ZPool(
      pool: null == pool
          ? _self.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String,
      mountpoint: null == mountpoint
          ? _self.mountpoint
          : mountpoint // ignore: cast_nullable_to_non_nullable
              as String,
      zfses: freezed == zfses
          ? _self.zfses
          : zfses // ignore: cast_nullable_to_non_nullable
              as ZFS?,
      poolProperties: freezed == poolProperties
          ? _self._poolProperties
          : poolProperties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fsProperties: freezed == fsProperties
          ? _self._fsProperties
          : fsProperties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      defaultFeatures: freezed == defaultFeatures
          ? _self.defaultFeatures
          : defaultFeatures // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ZPool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ZFSCopyWith<$Res>? get zfses {
    if (_self.zfses == null) {
      return null;
    }

    return $ZFSCopyWith<$Res>(_self.zfses!, (value) {
      return _then(_self.copyWith(zfses: value));
    });
  }
}

/// @nodoc
mixin _$Disk {
  String get id;
  String get label;
  String get type;
  int get size;
  List<String> get usageLabels;
  List<PartitionOrGap> get partitions;
  bool get okForGuided;
  String? get ptable;
  bool get preserve;
  String? get path;
  bool get bootDevice;
  bool get canBeBootDevice;
  String? get model;
  String? get vendor;
  bool get hasInUsePartition;
  bool? get requiresReformat;

  /// Create a copy of Disk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiskCopyWith<Disk> get copyWith =>
      _$DiskCopyWithImpl<Disk>(this as Disk, _$identity);

  /// Serializes this Disk to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Disk &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality()
                .equals(other.usageLabels, usageLabels) &&
            const DeepCollectionEquality()
                .equals(other.partitions, partitions) &&
            (identical(other.okForGuided, okForGuided) ||
                other.okForGuided == okForGuided) &&
            (identical(other.ptable, ptable) || other.ptable == ptable) &&
            (identical(other.preserve, preserve) ||
                other.preserve == preserve) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.bootDevice, bootDevice) ||
                other.bootDevice == bootDevice) &&
            (identical(other.canBeBootDevice, canBeBootDevice) ||
                other.canBeBootDevice == canBeBootDevice) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.hasInUsePartition, hasInUsePartition) ||
                other.hasInUsePartition == hasInUsePartition) &&
            (identical(other.requiresReformat, requiresReformat) ||
                other.requiresReformat == requiresReformat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      type,
      size,
      const DeepCollectionEquality().hash(usageLabels),
      const DeepCollectionEquality().hash(partitions),
      okForGuided,
      ptable,
      preserve,
      path,
      bootDevice,
      canBeBootDevice,
      model,
      vendor,
      hasInUsePartition,
      requiresReformat);

  @override
  String toString() {
    return 'Disk(id: $id, label: $label, type: $type, size: $size, usageLabels: $usageLabels, partitions: $partitions, okForGuided: $okForGuided, ptable: $ptable, preserve: $preserve, path: $path, bootDevice: $bootDevice, canBeBootDevice: $canBeBootDevice, model: $model, vendor: $vendor, hasInUsePartition: $hasInUsePartition, requiresReformat: $requiresReformat)';
  }
}

/// @nodoc
abstract mixin class $DiskCopyWith<$Res> {
  factory $DiskCopyWith(Disk value, $Res Function(Disk) _then) =
      _$DiskCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String label,
      String type,
      int size,
      List<String> usageLabels,
      List<PartitionOrGap> partitions,
      bool okForGuided,
      String? ptable,
      bool preserve,
      String? path,
      bool bootDevice,
      bool canBeBootDevice,
      String? model,
      String? vendor,
      bool hasInUsePartition,
      bool? requiresReformat});
}

/// @nodoc
class _$DiskCopyWithImpl<$Res> implements $DiskCopyWith<$Res> {
  _$DiskCopyWithImpl(this._self, this._then);

  final Disk _self;
  final $Res Function(Disk) _then;

  /// Create a copy of Disk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? type = null,
    Object? size = null,
    Object? usageLabels = null,
    Object? partitions = null,
    Object? okForGuided = null,
    Object? ptable = freezed,
    Object? preserve = null,
    Object? path = freezed,
    Object? bootDevice = null,
    Object? canBeBootDevice = null,
    Object? model = freezed,
    Object? vendor = freezed,
    Object? hasInUsePartition = null,
    Object? requiresReformat = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      usageLabels: null == usageLabels
          ? _self.usageLabels
          : usageLabels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      partitions: null == partitions
          ? _self.partitions
          : partitions // ignore: cast_nullable_to_non_nullable
              as List<PartitionOrGap>,
      okForGuided: null == okForGuided
          ? _self.okForGuided
          : okForGuided // ignore: cast_nullable_to_non_nullable
              as bool,
      ptable: freezed == ptable
          ? _self.ptable
          : ptable // ignore: cast_nullable_to_non_nullable
              as String?,
      preserve: null == preserve
          ? _self.preserve
          : preserve // ignore: cast_nullable_to_non_nullable
              as bool,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      bootDevice: null == bootDevice
          ? _self.bootDevice
          : bootDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      canBeBootDevice: null == canBeBootDevice
          ? _self.canBeBootDevice
          : canBeBootDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _self.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasInUsePartition: null == hasInUsePartition
          ? _self.hasInUsePartition
          : hasInUsePartition // ignore: cast_nullable_to_non_nullable
              as bool,
      requiresReformat: freezed == requiresReformat
          ? _self.requiresReformat
          : requiresReformat // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Disk].
extension DiskPatterns on Disk {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Disk value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Disk() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_Disk value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Disk():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Disk value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Disk() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String label,
            String type,
            int size,
            List<String> usageLabels,
            List<PartitionOrGap> partitions,
            bool okForGuided,
            String? ptable,
            bool preserve,
            String? path,
            bool bootDevice,
            bool canBeBootDevice,
            String? model,
            String? vendor,
            bool hasInUsePartition,
            bool? requiresReformat)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Disk() when $default != null:
        return $default(
            _that.id,
            _that.label,
            _that.type,
            _that.size,
            _that.usageLabels,
            _that.partitions,
            _that.okForGuided,
            _that.ptable,
            _that.preserve,
            _that.path,
            _that.bootDevice,
            _that.canBeBootDevice,
            _that.model,
            _that.vendor,
            _that.hasInUsePartition,
            _that.requiresReformat);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String label,
            String type,
            int size,
            List<String> usageLabels,
            List<PartitionOrGap> partitions,
            bool okForGuided,
            String? ptable,
            bool preserve,
            String? path,
            bool bootDevice,
            bool canBeBootDevice,
            String? model,
            String? vendor,
            bool hasInUsePartition,
            bool? requiresReformat)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Disk():
        return $default(
            _that.id,
            _that.label,
            _that.type,
            _that.size,
            _that.usageLabels,
            _that.partitions,
            _that.okForGuided,
            _that.ptable,
            _that.preserve,
            _that.path,
            _that.bootDevice,
            _that.canBeBootDevice,
            _that.model,
            _that.vendor,
            _that.hasInUsePartition,
            _that.requiresReformat);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String label,
            String type,
            int size,
            List<String> usageLabels,
            List<PartitionOrGap> partitions,
            bool okForGuided,
            String? ptable,
            bool preserve,
            String? path,
            bool bootDevice,
            bool canBeBootDevice,
            String? model,
            String? vendor,
            bool hasInUsePartition,
            bool? requiresReformat)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Disk() when $default != null:
        return $default(
            _that.id,
            _that.label,
            _that.type,
            _that.size,
            _that.usageLabels,
            _that.partitions,
            _that.okForGuided,
            _that.ptable,
            _that.preserve,
            _that.path,
            _that.bootDevice,
            _that.canBeBootDevice,
            _that.model,
            _that.vendor,
            _that.hasInUsePartition,
            _that.requiresReformat);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Disk implements Disk {
  const _Disk(
      {required this.id,
      required this.label,
      required this.type,
      required this.size,
      required final List<String> usageLabels,
      required final List<PartitionOrGap> partitions,
      required this.okForGuided,
      required this.ptable,
      required this.preserve,
      required this.path,
      required this.bootDevice,
      required this.canBeBootDevice,
      this.model,
      this.vendor,
      this.hasInUsePartition = false,
      this.requiresReformat})
      : _usageLabels = usageLabels,
        _partitions = partitions;
  factory _Disk.fromJson(Map<String, dynamic> json) => _$DiskFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String type;
  @override
  final int size;
  final List<String> _usageLabels;
  @override
  List<String> get usageLabels {
    if (_usageLabels is EqualUnmodifiableListView) return _usageLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usageLabels);
  }

  final List<PartitionOrGap> _partitions;
  @override
  List<PartitionOrGap> get partitions {
    if (_partitions is EqualUnmodifiableListView) return _partitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partitions);
  }

  @override
  final bool okForGuided;
  @override
  final String? ptable;
  @override
  final bool preserve;
  @override
  final String? path;
  @override
  final bool bootDevice;
  @override
  final bool canBeBootDevice;
  @override
  final String? model;
  @override
  final String? vendor;
  @override
  @JsonKey()
  final bool hasInUsePartition;
  @override
  final bool? requiresReformat;

  /// Create a copy of Disk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiskCopyWith<_Disk> get copyWith =>
      __$DiskCopyWithImpl<_Disk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiskToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Disk &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality()
                .equals(other._usageLabels, _usageLabels) &&
            const DeepCollectionEquality()
                .equals(other._partitions, _partitions) &&
            (identical(other.okForGuided, okForGuided) ||
                other.okForGuided == okForGuided) &&
            (identical(other.ptable, ptable) || other.ptable == ptable) &&
            (identical(other.preserve, preserve) ||
                other.preserve == preserve) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.bootDevice, bootDevice) ||
                other.bootDevice == bootDevice) &&
            (identical(other.canBeBootDevice, canBeBootDevice) ||
                other.canBeBootDevice == canBeBootDevice) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.hasInUsePartition, hasInUsePartition) ||
                other.hasInUsePartition == hasInUsePartition) &&
            (identical(other.requiresReformat, requiresReformat) ||
                other.requiresReformat == requiresReformat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      type,
      size,
      const DeepCollectionEquality().hash(_usageLabels),
      const DeepCollectionEquality().hash(_partitions),
      okForGuided,
      ptable,
      preserve,
      path,
      bootDevice,
      canBeBootDevice,
      model,
      vendor,
      hasInUsePartition,
      requiresReformat);

  @override
  String toString() {
    return 'Disk(id: $id, label: $label, type: $type, size: $size, usageLabels: $usageLabels, partitions: $partitions, okForGuided: $okForGuided, ptable: $ptable, preserve: $preserve, path: $path, bootDevice: $bootDevice, canBeBootDevice: $canBeBootDevice, model: $model, vendor: $vendor, hasInUsePartition: $hasInUsePartition, requiresReformat: $requiresReformat)';
  }
}

/// @nodoc
abstract mixin class _$DiskCopyWith<$Res> implements $DiskCopyWith<$Res> {
  factory _$DiskCopyWith(_Disk value, $Res Function(_Disk) _then) =
      __$DiskCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String label,
      String type,
      int size,
      List<String> usageLabels,
      List<PartitionOrGap> partitions,
      bool okForGuided,
      String? ptable,
      bool preserve,
      String? path,
      bool bootDevice,
      bool canBeBootDevice,
      String? model,
      String? vendor,
      bool hasInUsePartition,
      bool? requiresReformat});
}

/// @nodoc
class __$DiskCopyWithImpl<$Res> implements _$DiskCopyWith<$Res> {
  __$DiskCopyWithImpl(this._self, this._then);

  final _Disk _self;
  final $Res Function(_Disk) _then;

  /// Create a copy of Disk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? type = null,
    Object? size = null,
    Object? usageLabels = null,
    Object? partitions = null,
    Object? okForGuided = null,
    Object? ptable = freezed,
    Object? preserve = null,
    Object? path = freezed,
    Object? bootDevice = null,
    Object? canBeBootDevice = null,
    Object? model = freezed,
    Object? vendor = freezed,
    Object? hasInUsePartition = null,
    Object? requiresReformat = freezed,
  }) {
    return _then(_Disk(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      usageLabels: null == usageLabels
          ? _self._usageLabels
          : usageLabels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      partitions: null == partitions
          ? _self._partitions
          : partitions // ignore: cast_nullable_to_non_nullable
              as List<PartitionOrGap>,
      okForGuided: null == okForGuided
          ? _self.okForGuided
          : okForGuided // ignore: cast_nullable_to_non_nullable
              as bool,
      ptable: freezed == ptable
          ? _self.ptable
          : ptable // ignore: cast_nullable_to_non_nullable
              as String?,
      preserve: null == preserve
          ? _self.preserve
          : preserve // ignore: cast_nullable_to_non_nullable
              as bool,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      bootDevice: null == bootDevice
          ? _self.bootDevice
          : bootDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      canBeBootDevice: null == canBeBootDevice
          ? _self.canBeBootDevice
          : canBeBootDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _self.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasInUsePartition: null == hasInUsePartition
          ? _self.hasInUsePartition
          : hasInUsePartition // ignore: cast_nullable_to_non_nullable
              as bool,
      requiresReformat: freezed == requiresReformat
          ? _self.requiresReformat
          : requiresReformat // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$CoreBootFixActionWithCategory {
  CoreBootFixAction get type;
  bool get forUser;

  /// Create a copy of CoreBootFixActionWithCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoreBootFixActionWithCategoryCopyWith<CoreBootFixActionWithCategory>
      get copyWith => _$CoreBootFixActionWithCategoryCopyWithImpl<
              CoreBootFixActionWithCategory>(
          this as CoreBootFixActionWithCategory, _$identity);

  /// Serializes this CoreBootFixActionWithCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoreBootFixActionWithCategory &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.forUser, forUser) || other.forUser == forUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, forUser);

  @override
  String toString() {
    return 'CoreBootFixActionWithCategory(type: $type, forUser: $forUser)';
  }
}

/// @nodoc
abstract mixin class $CoreBootFixActionWithCategoryCopyWith<$Res> {
  factory $CoreBootFixActionWithCategoryCopyWith(
          CoreBootFixActionWithCategory value,
          $Res Function(CoreBootFixActionWithCategory) _then) =
      _$CoreBootFixActionWithCategoryCopyWithImpl;
  @useResult
  $Res call({CoreBootFixAction type, bool forUser});
}

/// @nodoc
class _$CoreBootFixActionWithCategoryCopyWithImpl<$Res>
    implements $CoreBootFixActionWithCategoryCopyWith<$Res> {
  _$CoreBootFixActionWithCategoryCopyWithImpl(this._self, this._then);

  final CoreBootFixActionWithCategory _self;
  final $Res Function(CoreBootFixActionWithCategory) _then;

  /// Create a copy of CoreBootFixActionWithCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? forUser = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as CoreBootFixAction,
      forUser: null == forUser
          ? _self.forUser
          : forUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CoreBootFixActionWithCategory].
extension CoreBootFixActionWithCategoryPatterns
    on CoreBootFixActionWithCategory {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CoreBootFixActionWithCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixActionWithCategory() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_CoreBootFixActionWithCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixActionWithCategory():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CoreBootFixActionWithCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixActionWithCategory() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CoreBootFixAction type, bool forUser)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixActionWithCategory() when $default != null:
        return $default(_that.type, _that.forUser);
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
  TResult when<TResult extends Object?>(
    TResult Function(CoreBootFixAction type, bool forUser) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixActionWithCategory():
        return $default(_that.type, _that.forUser);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CoreBootFixAction type, bool forUser)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixActionWithCategory() when $default != null:
        return $default(_that.type, _that.forUser);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CoreBootFixActionWithCategory implements CoreBootFixActionWithCategory {
  const _CoreBootFixActionWithCategory(
      {required this.type, required this.forUser});
  factory _CoreBootFixActionWithCategory.fromJson(Map<String, dynamic> json) =>
      _$CoreBootFixActionWithCategoryFromJson(json);

  @override
  final CoreBootFixAction type;
  @override
  final bool forUser;

  /// Create a copy of CoreBootFixActionWithCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoreBootFixActionWithCategoryCopyWith<_CoreBootFixActionWithCategory>
      get copyWith => __$CoreBootFixActionWithCategoryCopyWithImpl<
          _CoreBootFixActionWithCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CoreBootFixActionWithCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoreBootFixActionWithCategory &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.forUser, forUser) || other.forUser == forUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, forUser);

  @override
  String toString() {
    return 'CoreBootFixActionWithCategory(type: $type, forUser: $forUser)';
  }
}

/// @nodoc
abstract mixin class _$CoreBootFixActionWithCategoryCopyWith<$Res>
    implements $CoreBootFixActionWithCategoryCopyWith<$Res> {
  factory _$CoreBootFixActionWithCategoryCopyWith(
          _CoreBootFixActionWithCategory value,
          $Res Function(_CoreBootFixActionWithCategory) _then) =
      __$CoreBootFixActionWithCategoryCopyWithImpl;
  @override
  @useResult
  $Res call({CoreBootFixAction type, bool forUser});
}

/// @nodoc
class __$CoreBootFixActionWithCategoryCopyWithImpl<$Res>
    implements _$CoreBootFixActionWithCategoryCopyWith<$Res> {
  __$CoreBootFixActionWithCategoryCopyWithImpl(this._self, this._then);

  final _CoreBootFixActionWithCategory _self;
  final $Res Function(_CoreBootFixActionWithCategory) _then;

  /// Create a copy of CoreBootFixActionWithCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? forUser = null,
  }) {
    return _then(_CoreBootFixActionWithCategory(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as CoreBootFixAction,
      forUser: null == forUser
          ? _self.forUser
          : forUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$CoreBootEncryptionSupportError {
  CoreBootAvailabilityErrorKind get kind;
  String get message;
  List<CoreBootFixActionWithCategory> get actions;

  /// Create a copy of CoreBootEncryptionSupportError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoreBootEncryptionSupportErrorCopyWith<CoreBootEncryptionSupportError>
      get copyWith => _$CoreBootEncryptionSupportErrorCopyWithImpl<
              CoreBootEncryptionSupportError>(
          this as CoreBootEncryptionSupportError, _$identity);

  /// Serializes this CoreBootEncryptionSupportError to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoreBootEncryptionSupportError &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, kind, message, const DeepCollectionEquality().hash(actions));

  @override
  String toString() {
    return 'CoreBootEncryptionSupportError(kind: $kind, message: $message, actions: $actions)';
  }
}

/// @nodoc
abstract mixin class $CoreBootEncryptionSupportErrorCopyWith<$Res> {
  factory $CoreBootEncryptionSupportErrorCopyWith(
          CoreBootEncryptionSupportError value,
          $Res Function(CoreBootEncryptionSupportError) _then) =
      _$CoreBootEncryptionSupportErrorCopyWithImpl;
  @useResult
  $Res call(
      {CoreBootAvailabilityErrorKind kind,
      String message,
      List<CoreBootFixActionWithCategory> actions});
}

/// @nodoc
class _$CoreBootEncryptionSupportErrorCopyWithImpl<$Res>
    implements $CoreBootEncryptionSupportErrorCopyWith<$Res> {
  _$CoreBootEncryptionSupportErrorCopyWithImpl(this._self, this._then);

  final CoreBootEncryptionSupportError _self;
  final $Res Function(CoreBootEncryptionSupportError) _then;

  /// Create a copy of CoreBootEncryptionSupportError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? message = null,
    Object? actions = null,
  }) {
    return _then(_self.copyWith(
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as CoreBootAvailabilityErrorKind,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _self.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<CoreBootFixActionWithCategory>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CoreBootEncryptionSupportError].
extension CoreBootEncryptionSupportErrorPatterns
    on CoreBootEncryptionSupportError {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CoreBootEncryptionSupportError value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoreBootEncryptionSupportError() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_CoreBootEncryptionSupportError value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootEncryptionSupportError():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CoreBootEncryptionSupportError value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootEncryptionSupportError() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CoreBootAvailabilityErrorKind kind, String message,
            List<CoreBootFixActionWithCategory> actions)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoreBootEncryptionSupportError() when $default != null:
        return $default(_that.kind, _that.message, _that.actions);
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
  TResult when<TResult extends Object?>(
    TResult Function(CoreBootAvailabilityErrorKind kind, String message,
            List<CoreBootFixActionWithCategory> actions)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootEncryptionSupportError():
        return $default(_that.kind, _that.message, _that.actions);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CoreBootAvailabilityErrorKind kind, String message,
            List<CoreBootFixActionWithCategory> actions)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootEncryptionSupportError() when $default != null:
        return $default(_that.kind, _that.message, _that.actions);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CoreBootEncryptionSupportError
    implements CoreBootEncryptionSupportError {
  const _CoreBootEncryptionSupportError(
      {required this.kind,
      required this.message,
      required final List<CoreBootFixActionWithCategory> actions})
      : _actions = actions;
  factory _CoreBootEncryptionSupportError.fromJson(Map<String, dynamic> json) =>
      _$CoreBootEncryptionSupportErrorFromJson(json);

  @override
  final CoreBootAvailabilityErrorKind kind;
  @override
  final String message;
  final List<CoreBootFixActionWithCategory> _actions;
  @override
  List<CoreBootFixActionWithCategory> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  /// Create a copy of CoreBootEncryptionSupportError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoreBootEncryptionSupportErrorCopyWith<_CoreBootEncryptionSupportError>
      get copyWith => __$CoreBootEncryptionSupportErrorCopyWithImpl<
          _CoreBootEncryptionSupportError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CoreBootEncryptionSupportErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoreBootEncryptionSupportError &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kind, message,
      const DeepCollectionEquality().hash(_actions));

  @override
  String toString() {
    return 'CoreBootEncryptionSupportError(kind: $kind, message: $message, actions: $actions)';
  }
}

/// @nodoc
abstract mixin class _$CoreBootEncryptionSupportErrorCopyWith<$Res>
    implements $CoreBootEncryptionSupportErrorCopyWith<$Res> {
  factory _$CoreBootEncryptionSupportErrorCopyWith(
          _CoreBootEncryptionSupportError value,
          $Res Function(_CoreBootEncryptionSupportError) _then) =
      __$CoreBootEncryptionSupportErrorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CoreBootAvailabilityErrorKind kind,
      String message,
      List<CoreBootFixActionWithCategory> actions});
}

/// @nodoc
class __$CoreBootEncryptionSupportErrorCopyWithImpl<$Res>
    implements _$CoreBootEncryptionSupportErrorCopyWith<$Res> {
  __$CoreBootEncryptionSupportErrorCopyWithImpl(this._self, this._then);

  final _CoreBootEncryptionSupportError _self;
  final $Res Function(_CoreBootEncryptionSupportError) _then;

  /// Create a copy of CoreBootEncryptionSupportError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? kind = null,
    Object? message = null,
    Object? actions = null,
  }) {
    return _then(_CoreBootEncryptionSupportError(
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as CoreBootAvailabilityErrorKind,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _self._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<CoreBootFixActionWithCategory>,
    ));
  }
}

/// @nodoc
mixin _$GuidedDisallowedCapability {
  GuidedCapability get capability;
  GuidedDisallowedCapabilityReason get reason;
  String? get message;
  List<CoreBootEncryptionSupportError>? get errors;

  /// Create a copy of GuidedDisallowedCapability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuidedDisallowedCapabilityCopyWith<GuidedDisallowedCapability>
      get copyWith =>
          _$GuidedDisallowedCapabilityCopyWithImpl<GuidedDisallowedCapability>(
              this as GuidedDisallowedCapability, _$identity);

  /// Serializes this GuidedDisallowedCapability to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuidedDisallowedCapability &&
            (identical(other.capability, capability) ||
                other.capability == capability) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, capability, reason, message,
      const DeepCollectionEquality().hash(errors));

  @override
  String toString() {
    return 'GuidedDisallowedCapability(capability: $capability, reason: $reason, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class $GuidedDisallowedCapabilityCopyWith<$Res> {
  factory $GuidedDisallowedCapabilityCopyWith(GuidedDisallowedCapability value,
          $Res Function(GuidedDisallowedCapability) _then) =
      _$GuidedDisallowedCapabilityCopyWithImpl;
  @useResult
  $Res call(
      {GuidedCapability capability,
      GuidedDisallowedCapabilityReason reason,
      String? message,
      List<CoreBootEncryptionSupportError>? errors});
}

/// @nodoc
class _$GuidedDisallowedCapabilityCopyWithImpl<$Res>
    implements $GuidedDisallowedCapabilityCopyWith<$Res> {
  _$GuidedDisallowedCapabilityCopyWithImpl(this._self, this._then);

  final GuidedDisallowedCapability _self;
  final $Res Function(GuidedDisallowedCapability) _then;

  /// Create a copy of GuidedDisallowedCapability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capability = null,
    Object? reason = null,
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_self.copyWith(
      capability: null == capability
          ? _self.capability
          : capability // ignore: cast_nullable_to_non_nullable
              as GuidedCapability,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as GuidedDisallowedCapabilityReason,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _self.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<CoreBootEncryptionSupportError>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GuidedDisallowedCapability].
extension GuidedDisallowedCapabilityPatterns on GuidedDisallowedCapability {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GuidedDisallowedCapability value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuidedDisallowedCapability() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_GuidedDisallowedCapability value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedDisallowedCapability():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GuidedDisallowedCapability value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedDisallowedCapability() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            GuidedCapability capability,
            GuidedDisallowedCapabilityReason reason,
            String? message,
            List<CoreBootEncryptionSupportError>? errors)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuidedDisallowedCapability() when $default != null:
        return $default(
            _that.capability, _that.reason, _that.message, _that.errors);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            GuidedCapability capability,
            GuidedDisallowedCapabilityReason reason,
            String? message,
            List<CoreBootEncryptionSupportError>? errors)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedDisallowedCapability():
        return $default(
            _that.capability, _that.reason, _that.message, _that.errors);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            GuidedCapability capability,
            GuidedDisallowedCapabilityReason reason,
            String? message,
            List<CoreBootEncryptionSupportError>? errors)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedDisallowedCapability() when $default != null:
        return $default(
            _that.capability, _that.reason, _that.message, _that.errors);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GuidedDisallowedCapability implements GuidedDisallowedCapability {
  const _GuidedDisallowedCapability(
      {required this.capability,
      required this.reason,
      this.message,
      final List<CoreBootEncryptionSupportError>? errors})
      : _errors = errors;
  factory _GuidedDisallowedCapability.fromJson(Map<String, dynamic> json) =>
      _$GuidedDisallowedCapabilityFromJson(json);

  @override
  final GuidedCapability capability;
  @override
  final GuidedDisallowedCapabilityReason reason;
  @override
  final String? message;
  final List<CoreBootEncryptionSupportError>? _errors;
  @override
  List<CoreBootEncryptionSupportError>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of GuidedDisallowedCapability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GuidedDisallowedCapabilityCopyWith<_GuidedDisallowedCapability>
      get copyWith => __$GuidedDisallowedCapabilityCopyWithImpl<
          _GuidedDisallowedCapability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuidedDisallowedCapabilityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuidedDisallowedCapability &&
            (identical(other.capability, capability) ||
                other.capability == capability) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, capability, reason, message,
      const DeepCollectionEquality().hash(_errors));

  @override
  String toString() {
    return 'GuidedDisallowedCapability(capability: $capability, reason: $reason, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class _$GuidedDisallowedCapabilityCopyWith<$Res>
    implements $GuidedDisallowedCapabilityCopyWith<$Res> {
  factory _$GuidedDisallowedCapabilityCopyWith(
          _GuidedDisallowedCapability value,
          $Res Function(_GuidedDisallowedCapability) _then) =
      __$GuidedDisallowedCapabilityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {GuidedCapability capability,
      GuidedDisallowedCapabilityReason reason,
      String? message,
      List<CoreBootEncryptionSupportError>? errors});
}

/// @nodoc
class __$GuidedDisallowedCapabilityCopyWithImpl<$Res>
    implements _$GuidedDisallowedCapabilityCopyWith<$Res> {
  __$GuidedDisallowedCapabilityCopyWithImpl(this._self, this._then);

  final _GuidedDisallowedCapability _self;
  final $Res Function(_GuidedDisallowedCapability) _then;

  /// Create a copy of GuidedDisallowedCapability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? capability = null,
    Object? reason = null,
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_GuidedDisallowedCapability(
      capability: null == capability
          ? _self.capability
          : capability // ignore: cast_nullable_to_non_nullable
              as GuidedCapability,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as GuidedDisallowedCapabilityReason,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _self._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<CoreBootEncryptionSupportError>?,
    ));
  }
}

/// @nodoc
mixin _$StorageResponse {
  ProbeStatus get status;
  ErrorReportRef? get errorReport;
  Bootloader? get bootloader;
  List<dynamic>? get origConfig;
  List<dynamic>? get config;
  Map<String, dynamic>? get dasd;
  int get storageVersion;

  /// Create a copy of StorageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StorageResponseCopyWith<StorageResponse> get copyWith =>
      _$StorageResponseCopyWithImpl<StorageResponse>(
          this as StorageResponse, _$identity);

  /// Serializes this StorageResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StorageResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorReport, errorReport) ||
                other.errorReport == errorReport) &&
            (identical(other.bootloader, bootloader) ||
                other.bootloader == bootloader) &&
            const DeepCollectionEquality()
                .equals(other.origConfig, origConfig) &&
            const DeepCollectionEquality().equals(other.config, config) &&
            const DeepCollectionEquality().equals(other.dasd, dasd) &&
            (identical(other.storageVersion, storageVersion) ||
                other.storageVersion == storageVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      errorReport,
      bootloader,
      const DeepCollectionEquality().hash(origConfig),
      const DeepCollectionEquality().hash(config),
      const DeepCollectionEquality().hash(dasd),
      storageVersion);

  @override
  String toString() {
    return 'StorageResponse(status: $status, errorReport: $errorReport, bootloader: $bootloader, origConfig: $origConfig, config: $config, dasd: $dasd, storageVersion: $storageVersion)';
  }
}

/// @nodoc
abstract mixin class $StorageResponseCopyWith<$Res> {
  factory $StorageResponseCopyWith(
          StorageResponse value, $Res Function(StorageResponse) _then) =
      _$StorageResponseCopyWithImpl;
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      Bootloader? bootloader,
      List<dynamic>? origConfig,
      List<dynamic>? config,
      Map<String, dynamic>? dasd,
      int storageVersion});

  $ErrorReportRefCopyWith<$Res>? get errorReport;
}

/// @nodoc
class _$StorageResponseCopyWithImpl<$Res>
    implements $StorageResponseCopyWith<$Res> {
  _$StorageResponseCopyWithImpl(this._self, this._then);

  final StorageResponse _self;
  final $Res Function(StorageResponse) _then;

  /// Create a copy of StorageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? bootloader = freezed,
    Object? origConfig = freezed,
    Object? config = freezed,
    Object? dasd = freezed,
    Object? storageVersion = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _self.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      bootloader: freezed == bootloader
          ? _self.bootloader
          : bootloader // ignore: cast_nullable_to_non_nullable
              as Bootloader?,
      origConfig: freezed == origConfig
          ? _self.origConfig
          : origConfig // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      config: freezed == config
          ? _self.config
          : config // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      dasd: freezed == dasd
          ? _self.dasd
          : dasd // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      storageVersion: null == storageVersion
          ? _self.storageVersion
          : storageVersion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of StorageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get errorReport {
    if (_self.errorReport == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_self.errorReport!, (value) {
      return _then(_self.copyWith(errorReport: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StorageResponse].
extension StorageResponsePatterns on StorageResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StorageResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StorageResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_StorageResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StorageResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StorageResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StorageResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ProbeStatus status,
            ErrorReportRef? errorReport,
            Bootloader? bootloader,
            List<dynamic>? origConfig,
            List<dynamic>? config,
            Map<String, dynamic>? dasd,
            int storageVersion)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StorageResponse() when $default != null:
        return $default(_that.status, _that.errorReport, _that.bootloader,
            _that.origConfig, _that.config, _that.dasd, _that.storageVersion);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            ProbeStatus status,
            ErrorReportRef? errorReport,
            Bootloader? bootloader,
            List<dynamic>? origConfig,
            List<dynamic>? config,
            Map<String, dynamic>? dasd,
            int storageVersion)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StorageResponse():
        return $default(_that.status, _that.errorReport, _that.bootloader,
            _that.origConfig, _that.config, _that.dasd, _that.storageVersion);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            ProbeStatus status,
            ErrorReportRef? errorReport,
            Bootloader? bootloader,
            List<dynamic>? origConfig,
            List<dynamic>? config,
            Map<String, dynamic>? dasd,
            int storageVersion)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StorageResponse() when $default != null:
        return $default(_that.status, _that.errorReport, _that.bootloader,
            _that.origConfig, _that.config, _that.dasd, _that.storageVersion);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StorageResponse implements StorageResponse {
  const _StorageResponse(
      {required this.status,
      this.errorReport,
      this.bootloader,
      final List<dynamic>? origConfig,
      final List<dynamic>? config,
      final Map<String, dynamic>? dasd,
      this.storageVersion = 1})
      : _origConfig = origConfig,
        _config = config,
        _dasd = dasd;
  factory _StorageResponse.fromJson(Map<String, dynamic> json) =>
      _$StorageResponseFromJson(json);

  @override
  final ProbeStatus status;
  @override
  final ErrorReportRef? errorReport;
  @override
  final Bootloader? bootloader;
  final List<dynamic>? _origConfig;
  @override
  List<dynamic>? get origConfig {
    final value = _origConfig;
    if (value == null) return null;
    if (_origConfig is EqualUnmodifiableListView) return _origConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _config;
  @override
  List<dynamic>? get config {
    final value = _config;
    if (value == null) return null;
    if (_config is EqualUnmodifiableListView) return _config;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _dasd;
  @override
  Map<String, dynamic>? get dasd {
    final value = _dasd;
    if (value == null) return null;
    if (_dasd is EqualUnmodifiableMapView) return _dasd;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final int storageVersion;

  /// Create a copy of StorageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StorageResponseCopyWith<_StorageResponse> get copyWith =>
      __$StorageResponseCopyWithImpl<_StorageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StorageResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StorageResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorReport, errorReport) ||
                other.errorReport == errorReport) &&
            (identical(other.bootloader, bootloader) ||
                other.bootloader == bootloader) &&
            const DeepCollectionEquality()
                .equals(other._origConfig, _origConfig) &&
            const DeepCollectionEquality().equals(other._config, _config) &&
            const DeepCollectionEquality().equals(other._dasd, _dasd) &&
            (identical(other.storageVersion, storageVersion) ||
                other.storageVersion == storageVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      errorReport,
      bootloader,
      const DeepCollectionEquality().hash(_origConfig),
      const DeepCollectionEquality().hash(_config),
      const DeepCollectionEquality().hash(_dasd),
      storageVersion);

  @override
  String toString() {
    return 'StorageResponse(status: $status, errorReport: $errorReport, bootloader: $bootloader, origConfig: $origConfig, config: $config, dasd: $dasd, storageVersion: $storageVersion)';
  }
}

/// @nodoc
abstract mixin class _$StorageResponseCopyWith<$Res>
    implements $StorageResponseCopyWith<$Res> {
  factory _$StorageResponseCopyWith(
          _StorageResponse value, $Res Function(_StorageResponse) _then) =
      __$StorageResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      Bootloader? bootloader,
      List<dynamic>? origConfig,
      List<dynamic>? config,
      Map<String, dynamic>? dasd,
      int storageVersion});

  @override
  $ErrorReportRefCopyWith<$Res>? get errorReport;
}

/// @nodoc
class __$StorageResponseCopyWithImpl<$Res>
    implements _$StorageResponseCopyWith<$Res> {
  __$StorageResponseCopyWithImpl(this._self, this._then);

  final _StorageResponse _self;
  final $Res Function(_StorageResponse) _then;

  /// Create a copy of StorageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? bootloader = freezed,
    Object? origConfig = freezed,
    Object? config = freezed,
    Object? dasd = freezed,
    Object? storageVersion = null,
  }) {
    return _then(_StorageResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _self.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      bootloader: freezed == bootloader
          ? _self.bootloader
          : bootloader // ignore: cast_nullable_to_non_nullable
              as Bootloader?,
      origConfig: freezed == origConfig
          ? _self._origConfig
          : origConfig // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      config: freezed == config
          ? _self._config
          : config // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      dasd: freezed == dasd
          ? _self._dasd
          : dasd // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      storageVersion: null == storageVersion
          ? _self.storageVersion
          : storageVersion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of StorageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get errorReport {
    if (_self.errorReport == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_self.errorReport!, (value) {
      return _then(_self.copyWith(errorReport: value));
    });
  }
}

/// @nodoc
mixin _$StorageResponseV2 {
  ProbeStatus get status;
  ErrorReportRef? get errorReport;
  List<Disk> get disks;
  bool? get needRoot;
  bool? get needBoot;
  int? get installMinimumSize;

  /// Create a copy of StorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StorageResponseV2CopyWith<StorageResponseV2> get copyWith =>
      _$StorageResponseV2CopyWithImpl<StorageResponseV2>(
          this as StorageResponseV2, _$identity);

  /// Serializes this StorageResponseV2 to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StorageResponseV2 &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorReport, errorReport) ||
                other.errorReport == errorReport) &&
            const DeepCollectionEquality().equals(other.disks, disks) &&
            (identical(other.needRoot, needRoot) ||
                other.needRoot == needRoot) &&
            (identical(other.needBoot, needBoot) ||
                other.needBoot == needBoot) &&
            (identical(other.installMinimumSize, installMinimumSize) ||
                other.installMinimumSize == installMinimumSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      errorReport,
      const DeepCollectionEquality().hash(disks),
      needRoot,
      needBoot,
      installMinimumSize);

  @override
  String toString() {
    return 'StorageResponseV2(status: $status, errorReport: $errorReport, disks: $disks, needRoot: $needRoot, needBoot: $needBoot, installMinimumSize: $installMinimumSize)';
  }
}

/// @nodoc
abstract mixin class $StorageResponseV2CopyWith<$Res> {
  factory $StorageResponseV2CopyWith(
          StorageResponseV2 value, $Res Function(StorageResponseV2) _then) =
      _$StorageResponseV2CopyWithImpl;
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      List<Disk> disks,
      bool? needRoot,
      bool? needBoot,
      int? installMinimumSize});

  $ErrorReportRefCopyWith<$Res>? get errorReport;
}

/// @nodoc
class _$StorageResponseV2CopyWithImpl<$Res>
    implements $StorageResponseV2CopyWith<$Res> {
  _$StorageResponseV2CopyWithImpl(this._self, this._then);

  final StorageResponseV2 _self;
  final $Res Function(StorageResponseV2) _then;

  /// Create a copy of StorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? disks = null,
    Object? needRoot = freezed,
    Object? needBoot = freezed,
    Object? installMinimumSize = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _self.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      disks: null == disks
          ? _self.disks
          : disks // ignore: cast_nullable_to_non_nullable
              as List<Disk>,
      needRoot: freezed == needRoot
          ? _self.needRoot
          : needRoot // ignore: cast_nullable_to_non_nullable
              as bool?,
      needBoot: freezed == needBoot
          ? _self.needBoot
          : needBoot // ignore: cast_nullable_to_non_nullable
              as bool?,
      installMinimumSize: freezed == installMinimumSize
          ? _self.installMinimumSize
          : installMinimumSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of StorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get errorReport {
    if (_self.errorReport == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_self.errorReport!, (value) {
      return _then(_self.copyWith(errorReport: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StorageResponseV2].
extension StorageResponseV2Patterns on StorageResponseV2 {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StorageResponseV2 value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StorageResponseV2() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_StorageResponseV2 value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StorageResponseV2():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StorageResponseV2 value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StorageResponseV2() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ProbeStatus status,
            ErrorReportRef? errorReport,
            List<Disk> disks,
            bool? needRoot,
            bool? needBoot,
            int? installMinimumSize)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StorageResponseV2() when $default != null:
        return $default(_that.status, _that.errorReport, _that.disks,
            _that.needRoot, _that.needBoot, _that.installMinimumSize);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            ProbeStatus status,
            ErrorReportRef? errorReport,
            List<Disk> disks,
            bool? needRoot,
            bool? needBoot,
            int? installMinimumSize)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StorageResponseV2():
        return $default(_that.status, _that.errorReport, _that.disks,
            _that.needRoot, _that.needBoot, _that.installMinimumSize);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            ProbeStatus status,
            ErrorReportRef? errorReport,
            List<Disk> disks,
            bool? needRoot,
            bool? needBoot,
            int? installMinimumSize)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StorageResponseV2() when $default != null:
        return $default(_that.status, _that.errorReport, _that.disks,
            _that.needRoot, _that.needBoot, _that.installMinimumSize);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StorageResponseV2 implements StorageResponseV2 {
  const _StorageResponseV2(
      {required this.status,
      this.errorReport,
      final List<Disk> disks = const [],
      this.needRoot,
      this.needBoot,
      this.installMinimumSize})
      : _disks = disks;
  factory _StorageResponseV2.fromJson(Map<String, dynamic> json) =>
      _$StorageResponseV2FromJson(json);

  @override
  final ProbeStatus status;
  @override
  final ErrorReportRef? errorReport;
  final List<Disk> _disks;
  @override
  @JsonKey()
  List<Disk> get disks {
    if (_disks is EqualUnmodifiableListView) return _disks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disks);
  }

  @override
  final bool? needRoot;
  @override
  final bool? needBoot;
  @override
  final int? installMinimumSize;

  /// Create a copy of StorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StorageResponseV2CopyWith<_StorageResponseV2> get copyWith =>
      __$StorageResponseV2CopyWithImpl<_StorageResponseV2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StorageResponseV2ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StorageResponseV2 &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorReport, errorReport) ||
                other.errorReport == errorReport) &&
            const DeepCollectionEquality().equals(other._disks, _disks) &&
            (identical(other.needRoot, needRoot) ||
                other.needRoot == needRoot) &&
            (identical(other.needBoot, needBoot) ||
                other.needBoot == needBoot) &&
            (identical(other.installMinimumSize, installMinimumSize) ||
                other.installMinimumSize == installMinimumSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      errorReport,
      const DeepCollectionEquality().hash(_disks),
      needRoot,
      needBoot,
      installMinimumSize);

  @override
  String toString() {
    return 'StorageResponseV2(status: $status, errorReport: $errorReport, disks: $disks, needRoot: $needRoot, needBoot: $needBoot, installMinimumSize: $installMinimumSize)';
  }
}

/// @nodoc
abstract mixin class _$StorageResponseV2CopyWith<$Res>
    implements $StorageResponseV2CopyWith<$Res> {
  factory _$StorageResponseV2CopyWith(
          _StorageResponseV2 value, $Res Function(_StorageResponseV2) _then) =
      __$StorageResponseV2CopyWithImpl;
  @override
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      List<Disk> disks,
      bool? needRoot,
      bool? needBoot,
      int? installMinimumSize});

  @override
  $ErrorReportRefCopyWith<$Res>? get errorReport;
}

/// @nodoc
class __$StorageResponseV2CopyWithImpl<$Res>
    implements _$StorageResponseV2CopyWith<$Res> {
  __$StorageResponseV2CopyWithImpl(this._self, this._then);

  final _StorageResponseV2 _self;
  final $Res Function(_StorageResponseV2) _then;

  /// Create a copy of StorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? disks = null,
    Object? needRoot = freezed,
    Object? needBoot = freezed,
    Object? installMinimumSize = freezed,
  }) {
    return _then(_StorageResponseV2(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _self.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      disks: null == disks
          ? _self._disks
          : disks // ignore: cast_nullable_to_non_nullable
              as List<Disk>,
      needRoot: freezed == needRoot
          ? _self.needRoot
          : needRoot // ignore: cast_nullable_to_non_nullable
              as bool?,
      needBoot: freezed == needBoot
          ? _self.needBoot
          : needBoot // ignore: cast_nullable_to_non_nullable
              as bool?,
      installMinimumSize: freezed == installMinimumSize
          ? _self.installMinimumSize
          : installMinimumSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of StorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get errorReport {
    if (_self.errorReport == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_self.errorReport!, (value) {
      return _then(_self.copyWith(errorReport: value));
    });
  }
}

/// @nodoc
mixin _$GuidedResizeValues {
  int get installMax;
  int get minimum;
  int get recommended;
  int get maximum;

  /// Create a copy of GuidedResizeValues
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuidedResizeValuesCopyWith<GuidedResizeValues> get copyWith =>
      _$GuidedResizeValuesCopyWithImpl<GuidedResizeValues>(
          this as GuidedResizeValues, _$identity);

  /// Serializes this GuidedResizeValues to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuidedResizeValues &&
            (identical(other.installMax, installMax) ||
                other.installMax == installMax) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.maximum, maximum) || other.maximum == maximum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, installMax, minimum, recommended, maximum);

  @override
  String toString() {
    return 'GuidedResizeValues(installMax: $installMax, minimum: $minimum, recommended: $recommended, maximum: $maximum)';
  }
}

/// @nodoc
abstract mixin class $GuidedResizeValuesCopyWith<$Res> {
  factory $GuidedResizeValuesCopyWith(
          GuidedResizeValues value, $Res Function(GuidedResizeValues) _then) =
      _$GuidedResizeValuesCopyWithImpl;
  @useResult
  $Res call({int installMax, int minimum, int recommended, int maximum});
}

/// @nodoc
class _$GuidedResizeValuesCopyWithImpl<$Res>
    implements $GuidedResizeValuesCopyWith<$Res> {
  _$GuidedResizeValuesCopyWithImpl(this._self, this._then);

  final GuidedResizeValues _self;
  final $Res Function(GuidedResizeValues) _then;

  /// Create a copy of GuidedResizeValues
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? installMax = null,
    Object? minimum = null,
    Object? recommended = null,
    Object? maximum = null,
  }) {
    return _then(_self.copyWith(
      installMax: null == installMax
          ? _self.installMax
          : installMax // ignore: cast_nullable_to_non_nullable
              as int,
      minimum: null == minimum
          ? _self.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int,
      recommended: null == recommended
          ? _self.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as int,
      maximum: null == maximum
          ? _self.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [GuidedResizeValues].
extension GuidedResizeValuesPatterns on GuidedResizeValues {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GuidedResizeValues value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuidedResizeValues() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_GuidedResizeValues value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedResizeValues():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GuidedResizeValues value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedResizeValues() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int installMax, int minimum, int recommended, int maximum)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuidedResizeValues() when $default != null:
        return $default(
            _that.installMax, _that.minimum, _that.recommended, _that.maximum);
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
  TResult when<TResult extends Object?>(
    TResult Function(int installMax, int minimum, int recommended, int maximum)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedResizeValues():
        return $default(
            _that.installMax, _that.minimum, _that.recommended, _that.maximum);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int installMax, int minimum, int recommended, int maximum)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedResizeValues() when $default != null:
        return $default(
            _that.installMax, _that.minimum, _that.recommended, _that.maximum);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GuidedResizeValues implements GuidedResizeValues {
  const _GuidedResizeValues(
      {required this.installMax,
      required this.minimum,
      required this.recommended,
      required this.maximum});
  factory _GuidedResizeValues.fromJson(Map<String, dynamic> json) =>
      _$GuidedResizeValuesFromJson(json);

  @override
  final int installMax;
  @override
  final int minimum;
  @override
  final int recommended;
  @override
  final int maximum;

  /// Create a copy of GuidedResizeValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GuidedResizeValuesCopyWith<_GuidedResizeValues> get copyWith =>
      __$GuidedResizeValuesCopyWithImpl<_GuidedResizeValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuidedResizeValuesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuidedResizeValues &&
            (identical(other.installMax, installMax) ||
                other.installMax == installMax) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.maximum, maximum) || other.maximum == maximum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, installMax, minimum, recommended, maximum);

  @override
  String toString() {
    return 'GuidedResizeValues(installMax: $installMax, minimum: $minimum, recommended: $recommended, maximum: $maximum)';
  }
}

/// @nodoc
abstract mixin class _$GuidedResizeValuesCopyWith<$Res>
    implements $GuidedResizeValuesCopyWith<$Res> {
  factory _$GuidedResizeValuesCopyWith(
          _GuidedResizeValues value, $Res Function(_GuidedResizeValues) _then) =
      __$GuidedResizeValuesCopyWithImpl;
  @override
  @useResult
  $Res call({int installMax, int minimum, int recommended, int maximum});
}

/// @nodoc
class __$GuidedResizeValuesCopyWithImpl<$Res>
    implements _$GuidedResizeValuesCopyWith<$Res> {
  __$GuidedResizeValuesCopyWithImpl(this._self, this._then);

  final _GuidedResizeValues _self;
  final $Res Function(_GuidedResizeValues) _then;

  /// Create a copy of GuidedResizeValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? installMax = null,
    Object? minimum = null,
    Object? recommended = null,
    Object? maximum = null,
  }) {
    return _then(_GuidedResizeValues(
      installMax: null == installMax
          ? _self.installMax
          : installMax // ignore: cast_nullable_to_non_nullable
              as int,
      minimum: null == minimum
          ? _self.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int,
      recommended: null == recommended
          ? _self.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as int,
      maximum: null == maximum
          ? _self.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

GuidedStorageTarget _$GuidedStorageTargetFromJson(Map<String, dynamic> json) {
  switch (json['\$type']) {
    case 'GuidedStorageTargetReformat':
      return GuidedStorageTargetReformat.fromJson(json);
    case 'GuidedStorageTargetResize':
      return GuidedStorageTargetResize.fromJson(json);
    case 'GuidedStorageTargetEraseInstall':
      return GuidedStorageTargetEraseInstall.fromJson(json);
    case 'GuidedStorageTargetUseGap':
      return GuidedStorageTargetUseGap.fromJson(json);
    case 'GuidedStorageTargetManual':
      return GuidedStorageTargetManual.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '\$type', 'GuidedStorageTarget',
          'Invalid union type "${json['\$type']}"!');
  }
}

/// @nodoc
mixin _$GuidedStorageTarget {
  List<GuidedCapability> get allowed;
  List<GuidedDisallowedCapability> get disallowed;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuidedStorageTargetCopyWith<GuidedStorageTarget> get copyWith =>
      _$GuidedStorageTargetCopyWithImpl<GuidedStorageTarget>(
          this as GuidedStorageTarget, _$identity);

  /// Serializes this GuidedStorageTarget to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuidedStorageTarget &&
            const DeepCollectionEquality().equals(other.allowed, allowed) &&
            const DeepCollectionEquality()
                .equals(other.disallowed, disallowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allowed),
      const DeepCollectionEquality().hash(disallowed));

  @override
  String toString() {
    return 'GuidedStorageTarget(allowed: $allowed, disallowed: $disallowed)';
  }
}

/// @nodoc
abstract mixin class $GuidedStorageTargetCopyWith<$Res> {
  factory $GuidedStorageTargetCopyWith(
          GuidedStorageTarget value, $Res Function(GuidedStorageTarget) _then) =
      _$GuidedStorageTargetCopyWithImpl;
  @useResult
  $Res call(
      {List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class _$GuidedStorageTargetCopyWithImpl<$Res>
    implements $GuidedStorageTargetCopyWith<$Res> {
  _$GuidedStorageTargetCopyWithImpl(this._self, this._then);

  final GuidedStorageTarget _self;
  final $Res Function(GuidedStorageTarget) _then;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(_self.copyWith(
      allowed: null == allowed
          ? _self.allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _self.disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ));
  }
}

/// Adds pattern-matching-related methods to [GuidedStorageTarget].
extension GuidedStorageTargetPatterns on GuidedStorageTarget {
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
    TResult Function(GuidedStorageTargetReformat value)? reformat,
    TResult Function(GuidedStorageTargetResize value)? resize,
    TResult Function(GuidedStorageTargetEraseInstall value)? eraseInstall,
    TResult Function(GuidedStorageTargetUseGap value)? useGap,
    TResult Function(GuidedStorageTargetManual value)? manual,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GuidedStorageTargetReformat() when reformat != null:
        return reformat(_that);
      case GuidedStorageTargetResize() when resize != null:
        return resize(_that);
      case GuidedStorageTargetEraseInstall() when eraseInstall != null:
        return eraseInstall(_that);
      case GuidedStorageTargetUseGap() when useGap != null:
        return useGap(_that);
      case GuidedStorageTargetManual() when manual != null:
        return manual(_that);
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
    required TResult Function(GuidedStorageTargetReformat value) reformat,
    required TResult Function(GuidedStorageTargetResize value) resize,
    required TResult Function(GuidedStorageTargetEraseInstall value)
        eraseInstall,
    required TResult Function(GuidedStorageTargetUseGap value) useGap,
    required TResult Function(GuidedStorageTargetManual value) manual,
  }) {
    final _that = this;
    switch (_that) {
      case GuidedStorageTargetReformat():
        return reformat(_that);
      case GuidedStorageTargetResize():
        return resize(_that);
      case GuidedStorageTargetEraseInstall():
        return eraseInstall(_that);
      case GuidedStorageTargetUseGap():
        return useGap(_that);
      case GuidedStorageTargetManual():
        return manual(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(GuidedStorageTargetReformat value)? reformat,
    TResult? Function(GuidedStorageTargetResize value)? resize,
    TResult? Function(GuidedStorageTargetEraseInstall value)? eraseInstall,
    TResult? Function(GuidedStorageTargetUseGap value)? useGap,
    TResult? Function(GuidedStorageTargetManual value)? manual,
  }) {
    final _that = this;
    switch (_that) {
      case GuidedStorageTargetReformat() when reformat != null:
        return reformat(_that);
      case GuidedStorageTargetResize() when resize != null:
        return resize(_that);
      case GuidedStorageTargetEraseInstall() when eraseInstall != null:
        return eraseInstall(_that);
      case GuidedStorageTargetUseGap() when useGap != null:
        return useGap(_that);
      case GuidedStorageTargetManual() when manual != null:
        return manual(_that);
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
    TResult Function(
            String diskId,
            String? ptable,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult Function(
            String diskId,
            int partitionNumber,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        eraseInstall,
    TResult Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GuidedStorageTargetReformat() when reformat != null:
        return reformat(
            _that.diskId, _that.ptable, _that.allowed, _that.disallowed);
      case GuidedStorageTargetResize() when resize != null:
        return resize(
            _that.diskId,
            _that.partitionNumber,
            _that.newSize,
            _that.minimum,
            _that.recommended,
            _that.maximum,
            _that.allowed,
            _that.disallowed);
      case GuidedStorageTargetEraseInstall() when eraseInstall != null:
        return eraseInstall(_that.diskId, _that.partitionNumber, _that.allowed,
            _that.disallowed);
      case GuidedStorageTargetUseGap() when useGap != null:
        return useGap(_that.diskId, _that.gap, _that.allowed, _that.disallowed);
      case GuidedStorageTargetManual() when manual != null:
        return manual(_that.allowed, _that.disallowed);
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
    required TResult Function(
            String diskId,
            String? ptable,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        reformat,
    required TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        resize,
    required TResult Function(
            String diskId,
            int partitionNumber,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        eraseInstall,
    required TResult Function(
            String diskId,
            Gap gap,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        useGap,
    required TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        manual,
  }) {
    final _that = this;
    switch (_that) {
      case GuidedStorageTargetReformat():
        return reformat(
            _that.diskId, _that.ptable, _that.allowed, _that.disallowed);
      case GuidedStorageTargetResize():
        return resize(
            _that.diskId,
            _that.partitionNumber,
            _that.newSize,
            _that.minimum,
            _that.recommended,
            _that.maximum,
            _that.allowed,
            _that.disallowed);
      case GuidedStorageTargetEraseInstall():
        return eraseInstall(_that.diskId, _that.partitionNumber, _that.allowed,
            _that.disallowed);
      case GuidedStorageTargetUseGap():
        return useGap(_that.diskId, _that.gap, _that.allowed, _that.disallowed);
      case GuidedStorageTargetManual():
        return manual(_that.allowed, _that.disallowed);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(
            String diskId,
            String? ptable,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult? Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult? Function(
            String diskId,
            int partitionNumber,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        eraseInstall,
    TResult? Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult? Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
  }) {
    final _that = this;
    switch (_that) {
      case GuidedStorageTargetReformat() when reformat != null:
        return reformat(
            _that.diskId, _that.ptable, _that.allowed, _that.disallowed);
      case GuidedStorageTargetResize() when resize != null:
        return resize(
            _that.diskId,
            _that.partitionNumber,
            _that.newSize,
            _that.minimum,
            _that.recommended,
            _that.maximum,
            _that.allowed,
            _that.disallowed);
      case GuidedStorageTargetEraseInstall() when eraseInstall != null:
        return eraseInstall(_that.diskId, _that.partitionNumber, _that.allowed,
            _that.disallowed);
      case GuidedStorageTargetUseGap() when useGap != null:
        return useGap(_that.diskId, _that.gap, _that.allowed, _that.disallowed);
      case GuidedStorageTargetManual() when manual != null:
        return manual(_that.allowed, _that.disallowed);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class GuidedStorageTargetReformat implements GuidedStorageTarget {
  const GuidedStorageTargetReformat(
      {required this.diskId,
      this.ptable,
      final List<GuidedCapability> allowed = const [],
      final List<GuidedDisallowedCapability> disallowed = const [],
      final String? $type})
      : _allowed = allowed,
        _disallowed = disallowed,
        $type = $type ?? 'GuidedStorageTargetReformat';
  factory GuidedStorageTargetReformat.fromJson(Map<String, dynamic> json) =>
      _$GuidedStorageTargetReformatFromJson(json);

  final String diskId;
  final String? ptable;
  final List<GuidedCapability> _allowed;
  @override
  @JsonKey()
  List<GuidedCapability> get allowed {
    if (_allowed is EqualUnmodifiableListView) return _allowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowed);
  }

  final List<GuidedDisallowedCapability> _disallowed;
  @override
  @JsonKey()
  List<GuidedDisallowedCapability> get disallowed {
    if (_disallowed is EqualUnmodifiableListView) return _disallowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disallowed);
  }

  @JsonKey(name: '\$type')
  final String $type;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuidedStorageTargetReformatCopyWith<GuidedStorageTargetReformat>
      get copyWith => _$GuidedStorageTargetReformatCopyWithImpl<
          GuidedStorageTargetReformat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuidedStorageTargetReformatToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuidedStorageTargetReformat &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            (identical(other.ptable, ptable) || other.ptable == ptable) &&
            const DeepCollectionEquality().equals(other._allowed, _allowed) &&
            const DeepCollectionEquality()
                .equals(other._disallowed, _disallowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diskId,
      ptable,
      const DeepCollectionEquality().hash(_allowed),
      const DeepCollectionEquality().hash(_disallowed));

  @override
  String toString() {
    return 'GuidedStorageTarget.reformat(diskId: $diskId, ptable: $ptable, allowed: $allowed, disallowed: $disallowed)';
  }
}

/// @nodoc
abstract mixin class $GuidedStorageTargetReformatCopyWith<$Res>
    implements $GuidedStorageTargetCopyWith<$Res> {
  factory $GuidedStorageTargetReformatCopyWith(
          GuidedStorageTargetReformat value,
          $Res Function(GuidedStorageTargetReformat) _then) =
      _$GuidedStorageTargetReformatCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String diskId,
      String? ptable,
      List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class _$GuidedStorageTargetReformatCopyWithImpl<$Res>
    implements $GuidedStorageTargetReformatCopyWith<$Res> {
  _$GuidedStorageTargetReformatCopyWithImpl(this._self, this._then);

  final GuidedStorageTargetReformat _self;
  final $Res Function(GuidedStorageTargetReformat) _then;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diskId = null,
    Object? ptable = freezed,
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(GuidedStorageTargetReformat(
      diskId: null == diskId
          ? _self.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      ptable: freezed == ptable
          ? _self.ptable
          : ptable // ignore: cast_nullable_to_non_nullable
              as String?,
      allowed: null == allowed
          ? _self._allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _self._disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class GuidedStorageTargetResize implements GuidedStorageTarget {
  const GuidedStorageTargetResize(
      {required this.diskId,
      required this.partitionNumber,
      required this.newSize,
      required this.minimum,
      required this.recommended,
      required this.maximum,
      final List<GuidedCapability> allowed = const [],
      final List<GuidedDisallowedCapability> disallowed = const [],
      final String? $type})
      : _allowed = allowed,
        _disallowed = disallowed,
        $type = $type ?? 'GuidedStorageTargetResize';
  factory GuidedStorageTargetResize.fromJson(Map<String, dynamic> json) =>
      _$GuidedStorageTargetResizeFromJson(json);

  final String diskId;
  final int partitionNumber;
  final int newSize;
  final int? minimum;
  final int? recommended;
  final int? maximum;
  final List<GuidedCapability> _allowed;
  @override
  @JsonKey()
  List<GuidedCapability> get allowed {
    if (_allowed is EqualUnmodifiableListView) return _allowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowed);
  }

  final List<GuidedDisallowedCapability> _disallowed;
  @override
  @JsonKey()
  List<GuidedDisallowedCapability> get disallowed {
    if (_disallowed is EqualUnmodifiableListView) return _disallowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disallowed);
  }

  @JsonKey(name: '\$type')
  final String $type;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuidedStorageTargetResizeCopyWith<GuidedStorageTargetResize> get copyWith =>
      _$GuidedStorageTargetResizeCopyWithImpl<GuidedStorageTargetResize>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuidedStorageTargetResizeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuidedStorageTargetResize &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            (identical(other.partitionNumber, partitionNumber) ||
                other.partitionNumber == partitionNumber) &&
            (identical(other.newSize, newSize) || other.newSize == newSize) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            const DeepCollectionEquality().equals(other._allowed, _allowed) &&
            const DeepCollectionEquality()
                .equals(other._disallowed, _disallowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diskId,
      partitionNumber,
      newSize,
      minimum,
      recommended,
      maximum,
      const DeepCollectionEquality().hash(_allowed),
      const DeepCollectionEquality().hash(_disallowed));

  @override
  String toString() {
    return 'GuidedStorageTarget.resize(diskId: $diskId, partitionNumber: $partitionNumber, newSize: $newSize, minimum: $minimum, recommended: $recommended, maximum: $maximum, allowed: $allowed, disallowed: $disallowed)';
  }
}

/// @nodoc
abstract mixin class $GuidedStorageTargetResizeCopyWith<$Res>
    implements $GuidedStorageTargetCopyWith<$Res> {
  factory $GuidedStorageTargetResizeCopyWith(GuidedStorageTargetResize value,
          $Res Function(GuidedStorageTargetResize) _then) =
      _$GuidedStorageTargetResizeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String diskId,
      int partitionNumber,
      int newSize,
      int? minimum,
      int? recommended,
      int? maximum,
      List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class _$GuidedStorageTargetResizeCopyWithImpl<$Res>
    implements $GuidedStorageTargetResizeCopyWith<$Res> {
  _$GuidedStorageTargetResizeCopyWithImpl(this._self, this._then);

  final GuidedStorageTargetResize _self;
  final $Res Function(GuidedStorageTargetResize) _then;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diskId = null,
    Object? partitionNumber = null,
    Object? newSize = null,
    Object? minimum = freezed,
    Object? recommended = freezed,
    Object? maximum = freezed,
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(GuidedStorageTargetResize(
      diskId: null == diskId
          ? _self.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partitionNumber: null == partitionNumber
          ? _self.partitionNumber
          : partitionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      newSize: null == newSize
          ? _self.newSize
          : newSize // ignore: cast_nullable_to_non_nullable
              as int,
      minimum: freezed == minimum
          ? _self.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int?,
      recommended: freezed == recommended
          ? _self.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as int?,
      maximum: freezed == maximum
          ? _self.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int?,
      allowed: null == allowed
          ? _self._allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _self._disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class GuidedStorageTargetEraseInstall implements GuidedStorageTarget {
  const GuidedStorageTargetEraseInstall(
      {required this.diskId,
      required this.partitionNumber,
      final List<GuidedCapability> allowed = const [],
      final List<GuidedDisallowedCapability> disallowed = const [],
      final String? $type})
      : _allowed = allowed,
        _disallowed = disallowed,
        $type = $type ?? 'GuidedStorageTargetEraseInstall';
  factory GuidedStorageTargetEraseInstall.fromJson(Map<String, dynamic> json) =>
      _$GuidedStorageTargetEraseInstallFromJson(json);

  final String diskId;
  final int partitionNumber;
  final List<GuidedCapability> _allowed;
  @override
  @JsonKey()
  List<GuidedCapability> get allowed {
    if (_allowed is EqualUnmodifiableListView) return _allowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowed);
  }

  final List<GuidedDisallowedCapability> _disallowed;
  @override
  @JsonKey()
  List<GuidedDisallowedCapability> get disallowed {
    if (_disallowed is EqualUnmodifiableListView) return _disallowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disallowed);
  }

  @JsonKey(name: '\$type')
  final String $type;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuidedStorageTargetEraseInstallCopyWith<GuidedStorageTargetEraseInstall>
      get copyWith => _$GuidedStorageTargetEraseInstallCopyWithImpl<
          GuidedStorageTargetEraseInstall>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuidedStorageTargetEraseInstallToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuidedStorageTargetEraseInstall &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            (identical(other.partitionNumber, partitionNumber) ||
                other.partitionNumber == partitionNumber) &&
            const DeepCollectionEquality().equals(other._allowed, _allowed) &&
            const DeepCollectionEquality()
                .equals(other._disallowed, _disallowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diskId,
      partitionNumber,
      const DeepCollectionEquality().hash(_allowed),
      const DeepCollectionEquality().hash(_disallowed));

  @override
  String toString() {
    return 'GuidedStorageTarget.eraseInstall(diskId: $diskId, partitionNumber: $partitionNumber, allowed: $allowed, disallowed: $disallowed)';
  }
}

/// @nodoc
abstract mixin class $GuidedStorageTargetEraseInstallCopyWith<$Res>
    implements $GuidedStorageTargetCopyWith<$Res> {
  factory $GuidedStorageTargetEraseInstallCopyWith(
          GuidedStorageTargetEraseInstall value,
          $Res Function(GuidedStorageTargetEraseInstall) _then) =
      _$GuidedStorageTargetEraseInstallCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String diskId,
      int partitionNumber,
      List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class _$GuidedStorageTargetEraseInstallCopyWithImpl<$Res>
    implements $GuidedStorageTargetEraseInstallCopyWith<$Res> {
  _$GuidedStorageTargetEraseInstallCopyWithImpl(this._self, this._then);

  final GuidedStorageTargetEraseInstall _self;
  final $Res Function(GuidedStorageTargetEraseInstall) _then;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diskId = null,
    Object? partitionNumber = null,
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(GuidedStorageTargetEraseInstall(
      diskId: null == diskId
          ? _self.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partitionNumber: null == partitionNumber
          ? _self.partitionNumber
          : partitionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      allowed: null == allowed
          ? _self._allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _self._disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class GuidedStorageTargetUseGap implements GuidedStorageTarget {
  const GuidedStorageTargetUseGap(
      {required this.diskId,
      required this.gap,
      final List<GuidedCapability> allowed = const [],
      final List<GuidedDisallowedCapability> disallowed = const [],
      final String? $type})
      : _allowed = allowed,
        _disallowed = disallowed,
        $type = $type ?? 'GuidedStorageTargetUseGap';
  factory GuidedStorageTargetUseGap.fromJson(Map<String, dynamic> json) =>
      _$GuidedStorageTargetUseGapFromJson(json);

  final String diskId;
  final Gap gap;
  final List<GuidedCapability> _allowed;
  @override
  @JsonKey()
  List<GuidedCapability> get allowed {
    if (_allowed is EqualUnmodifiableListView) return _allowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowed);
  }

  final List<GuidedDisallowedCapability> _disallowed;
  @override
  @JsonKey()
  List<GuidedDisallowedCapability> get disallowed {
    if (_disallowed is EqualUnmodifiableListView) return _disallowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disallowed);
  }

  @JsonKey(name: '\$type')
  final String $type;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuidedStorageTargetUseGapCopyWith<GuidedStorageTargetUseGap> get copyWith =>
      _$GuidedStorageTargetUseGapCopyWithImpl<GuidedStorageTargetUseGap>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuidedStorageTargetUseGapToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuidedStorageTargetUseGap &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            const DeepCollectionEquality().equals(other.gap, gap) &&
            const DeepCollectionEquality().equals(other._allowed, _allowed) &&
            const DeepCollectionEquality()
                .equals(other._disallowed, _disallowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diskId,
      const DeepCollectionEquality().hash(gap),
      const DeepCollectionEquality().hash(_allowed),
      const DeepCollectionEquality().hash(_disallowed));

  @override
  String toString() {
    return 'GuidedStorageTarget.useGap(diskId: $diskId, gap: $gap, allowed: $allowed, disallowed: $disallowed)';
  }
}

/// @nodoc
abstract mixin class $GuidedStorageTargetUseGapCopyWith<$Res>
    implements $GuidedStorageTargetCopyWith<$Res> {
  factory $GuidedStorageTargetUseGapCopyWith(GuidedStorageTargetUseGap value,
          $Res Function(GuidedStorageTargetUseGap) _then) =
      _$GuidedStorageTargetUseGapCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String diskId,
      Gap gap,
      List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class _$GuidedStorageTargetUseGapCopyWithImpl<$Res>
    implements $GuidedStorageTargetUseGapCopyWith<$Res> {
  _$GuidedStorageTargetUseGapCopyWithImpl(this._self, this._then);

  final GuidedStorageTargetUseGap _self;
  final $Res Function(GuidedStorageTargetUseGap) _then;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diskId = null,
    Object? gap = freezed,
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(GuidedStorageTargetUseGap(
      diskId: null == diskId
          ? _self.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      gap: freezed == gap
          ? _self.gap
          : gap // ignore: cast_nullable_to_non_nullable
              as Gap,
      allowed: null == allowed
          ? _self._allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _self._disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class GuidedStorageTargetManual implements GuidedStorageTarget {
  const GuidedStorageTargetManual(
      {required final List<GuidedCapability> allowed,
      final List<GuidedDisallowedCapability> disallowed = const [],
      final String? $type})
      : _allowed = allowed,
        _disallowed = disallowed,
        $type = $type ?? 'GuidedStorageTargetManual';
  factory GuidedStorageTargetManual.fromJson(Map<String, dynamic> json) =>
      _$GuidedStorageTargetManualFromJson(json);

  final List<GuidedCapability> _allowed;
  @override
  List<GuidedCapability> get allowed {
    if (_allowed is EqualUnmodifiableListView) return _allowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowed);
  }

  final List<GuidedDisallowedCapability> _disallowed;
  @override
  @JsonKey()
  List<GuidedDisallowedCapability> get disallowed {
    if (_disallowed is EqualUnmodifiableListView) return _disallowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disallowed);
  }

  @JsonKey(name: '\$type')
  final String $type;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuidedStorageTargetManualCopyWith<GuidedStorageTargetManual> get copyWith =>
      _$GuidedStorageTargetManualCopyWithImpl<GuidedStorageTargetManual>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuidedStorageTargetManualToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuidedStorageTargetManual &&
            const DeepCollectionEquality().equals(other._allowed, _allowed) &&
            const DeepCollectionEquality()
                .equals(other._disallowed, _disallowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allowed),
      const DeepCollectionEquality().hash(_disallowed));

  @override
  String toString() {
    return 'GuidedStorageTarget.manual(allowed: $allowed, disallowed: $disallowed)';
  }
}

/// @nodoc
abstract mixin class $GuidedStorageTargetManualCopyWith<$Res>
    implements $GuidedStorageTargetCopyWith<$Res> {
  factory $GuidedStorageTargetManualCopyWith(GuidedStorageTargetManual value,
          $Res Function(GuidedStorageTargetManual) _then) =
      _$GuidedStorageTargetManualCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class _$GuidedStorageTargetManualCopyWithImpl<$Res>
    implements $GuidedStorageTargetManualCopyWith<$Res> {
  _$GuidedStorageTargetManualCopyWithImpl(this._self, this._then);

  final GuidedStorageTargetManual _self;
  final $Res Function(GuidedStorageTargetManual) _then;

  /// Create a copy of GuidedStorageTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(GuidedStorageTargetManual(
      allowed: null == allowed
          ? _self._allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _self._disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ));
  }
}

/// @nodoc
mixin _$RecoveryKey {
  String? get liveLocation;
  String? get backupLocation;

  /// Create a copy of RecoveryKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<RecoveryKey> get copyWith =>
      _$RecoveryKeyCopyWithImpl<RecoveryKey>(this as RecoveryKey, _$identity);

  /// Serializes this RecoveryKey to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecoveryKey &&
            (identical(other.liveLocation, liveLocation) ||
                other.liveLocation == liveLocation) &&
            (identical(other.backupLocation, backupLocation) ||
                other.backupLocation == backupLocation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, liveLocation, backupLocation);

  @override
  String toString() {
    return 'RecoveryKey(liveLocation: $liveLocation, backupLocation: $backupLocation)';
  }
}

/// @nodoc
abstract mixin class $RecoveryKeyCopyWith<$Res> {
  factory $RecoveryKeyCopyWith(
          RecoveryKey value, $Res Function(RecoveryKey) _then) =
      _$RecoveryKeyCopyWithImpl;
  @useResult
  $Res call({String? liveLocation, String? backupLocation});
}

/// @nodoc
class _$RecoveryKeyCopyWithImpl<$Res> implements $RecoveryKeyCopyWith<$Res> {
  _$RecoveryKeyCopyWithImpl(this._self, this._then);

  final RecoveryKey _self;
  final $Res Function(RecoveryKey) _then;

  /// Create a copy of RecoveryKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveLocation = freezed,
    Object? backupLocation = freezed,
  }) {
    return _then(_self.copyWith(
      liveLocation: freezed == liveLocation
          ? _self.liveLocation
          : liveLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      backupLocation: freezed == backupLocation
          ? _self.backupLocation
          : backupLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RecoveryKey].
extension RecoveryKeyPatterns on RecoveryKey {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RecoveryKey value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RecoveryKey() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_RecoveryKey value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecoveryKey():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RecoveryKey value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecoveryKey() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? liveLocation, String? backupLocation)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RecoveryKey() when $default != null:
        return $default(_that.liveLocation, _that.backupLocation);
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
  TResult when<TResult extends Object?>(
    TResult Function(String? liveLocation, String? backupLocation) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecoveryKey():
        return $default(_that.liveLocation, _that.backupLocation);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? liveLocation, String? backupLocation)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecoveryKey() when $default != null:
        return $default(_that.liveLocation, _that.backupLocation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RecoveryKey implements RecoveryKey {
  const _RecoveryKey({this.liveLocation, this.backupLocation});
  factory _RecoveryKey.fromJson(Map<String, dynamic> json) =>
      _$RecoveryKeyFromJson(json);

  @override
  final String? liveLocation;
  @override
  final String? backupLocation;

  /// Create a copy of RecoveryKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RecoveryKeyCopyWith<_RecoveryKey> get copyWith =>
      __$RecoveryKeyCopyWithImpl<_RecoveryKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RecoveryKeyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecoveryKey &&
            (identical(other.liveLocation, liveLocation) ||
                other.liveLocation == liveLocation) &&
            (identical(other.backupLocation, backupLocation) ||
                other.backupLocation == backupLocation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, liveLocation, backupLocation);

  @override
  String toString() {
    return 'RecoveryKey(liveLocation: $liveLocation, backupLocation: $backupLocation)';
  }
}

/// @nodoc
abstract mixin class _$RecoveryKeyCopyWith<$Res>
    implements $RecoveryKeyCopyWith<$Res> {
  factory _$RecoveryKeyCopyWith(
          _RecoveryKey value, $Res Function(_RecoveryKey) _then) =
      __$RecoveryKeyCopyWithImpl;
  @override
  @useResult
  $Res call({String? liveLocation, String? backupLocation});
}

/// @nodoc
class __$RecoveryKeyCopyWithImpl<$Res> implements _$RecoveryKeyCopyWith<$Res> {
  __$RecoveryKeyCopyWithImpl(this._self, this._then);

  final _RecoveryKey _self;
  final $Res Function(_RecoveryKey) _then;

  /// Create a copy of RecoveryKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? liveLocation = freezed,
    Object? backupLocation = freezed,
  }) {
    return _then(_RecoveryKey(
      liveLocation: freezed == liveLocation
          ? _self.liveLocation
          : liveLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      backupLocation: freezed == backupLocation
          ? _self.backupLocation
          : backupLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$GuidedChoiceV2 {
  GuidedStorageTarget get target;
  GuidedCapability get capability;
  String? get password;
  String? get pin;
  RecoveryKey? get recoveryKey;
  SizingPolicy? get sizingPolicy;
  bool get resetPartition;
  int? get resetPartitionSize;

  /// Create a copy of GuidedChoiceV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuidedChoiceV2CopyWith<GuidedChoiceV2> get copyWith =>
      _$GuidedChoiceV2CopyWithImpl<GuidedChoiceV2>(
          this as GuidedChoiceV2, _$identity);

  /// Serializes this GuidedChoiceV2 to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuidedChoiceV2 &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.capability, capability) ||
                other.capability == capability) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.recoveryKey, recoveryKey) ||
                other.recoveryKey == recoveryKey) &&
            (identical(other.sizingPolicy, sizingPolicy) ||
                other.sizingPolicy == sizingPolicy) &&
            (identical(other.resetPartition, resetPartition) ||
                other.resetPartition == resetPartition) &&
            (identical(other.resetPartitionSize, resetPartitionSize) ||
                other.resetPartitionSize == resetPartitionSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, target, capability, password,
      pin, recoveryKey, sizingPolicy, resetPartition, resetPartitionSize);

  @override
  String toString() {
    return 'GuidedChoiceV2(target: $target, capability: $capability, password: $password, pin: $pin, recoveryKey: $recoveryKey, sizingPolicy: $sizingPolicy, resetPartition: $resetPartition, resetPartitionSize: $resetPartitionSize)';
  }
}

/// @nodoc
abstract mixin class $GuidedChoiceV2CopyWith<$Res> {
  factory $GuidedChoiceV2CopyWith(
          GuidedChoiceV2 value, $Res Function(GuidedChoiceV2) _then) =
      _$GuidedChoiceV2CopyWithImpl;
  @useResult
  $Res call(
      {GuidedStorageTarget target,
      GuidedCapability capability,
      String? password,
      String? pin,
      RecoveryKey? recoveryKey,
      SizingPolicy? sizingPolicy,
      bool resetPartition,
      int? resetPartitionSize});

  $GuidedStorageTargetCopyWith<$Res> get target;
  $RecoveryKeyCopyWith<$Res>? get recoveryKey;
}

/// @nodoc
class _$GuidedChoiceV2CopyWithImpl<$Res>
    implements $GuidedChoiceV2CopyWith<$Res> {
  _$GuidedChoiceV2CopyWithImpl(this._self, this._then);

  final GuidedChoiceV2 _self;
  final $Res Function(GuidedChoiceV2) _then;

  /// Create a copy of GuidedChoiceV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? capability = null,
    Object? password = freezed,
    Object? pin = freezed,
    Object? recoveryKey = freezed,
    Object? sizingPolicy = freezed,
    Object? resetPartition = null,
    Object? resetPartitionSize = freezed,
  }) {
    return _then(_self.copyWith(
      target: null == target
          ? _self.target
          : target // ignore: cast_nullable_to_non_nullable
              as GuidedStorageTarget,
      capability: null == capability
          ? _self.capability
          : capability // ignore: cast_nullable_to_non_nullable
              as GuidedCapability,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryKey: freezed == recoveryKey
          ? _self.recoveryKey
          : recoveryKey // ignore: cast_nullable_to_non_nullable
              as RecoveryKey?,
      sizingPolicy: freezed == sizingPolicy
          ? _self.sizingPolicy
          : sizingPolicy // ignore: cast_nullable_to_non_nullable
              as SizingPolicy?,
      resetPartition: null == resetPartition
          ? _self.resetPartition
          : resetPartition // ignore: cast_nullable_to_non_nullable
              as bool,
      resetPartitionSize: freezed == resetPartitionSize
          ? _self.resetPartitionSize
          : resetPartitionSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of GuidedChoiceV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuidedStorageTargetCopyWith<$Res> get target {
    return $GuidedStorageTargetCopyWith<$Res>(_self.target, (value) {
      return _then(_self.copyWith(target: value));
    });
  }

  /// Create a copy of GuidedChoiceV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<$Res>? get recoveryKey {
    if (_self.recoveryKey == null) {
      return null;
    }

    return $RecoveryKeyCopyWith<$Res>(_self.recoveryKey!, (value) {
      return _then(_self.copyWith(recoveryKey: value));
    });
  }
}

/// Adds pattern-matching-related methods to [GuidedChoiceV2].
extension GuidedChoiceV2Patterns on GuidedChoiceV2 {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GuidedChoiceV2 value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuidedChoiceV2() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_GuidedChoiceV2 value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedChoiceV2():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GuidedChoiceV2 value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedChoiceV2() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            GuidedStorageTarget target,
            GuidedCapability capability,
            String? password,
            String? pin,
            RecoveryKey? recoveryKey,
            SizingPolicy? sizingPolicy,
            bool resetPartition,
            int? resetPartitionSize)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuidedChoiceV2() when $default != null:
        return $default(
            _that.target,
            _that.capability,
            _that.password,
            _that.pin,
            _that.recoveryKey,
            _that.sizingPolicy,
            _that.resetPartition,
            _that.resetPartitionSize);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            GuidedStorageTarget target,
            GuidedCapability capability,
            String? password,
            String? pin,
            RecoveryKey? recoveryKey,
            SizingPolicy? sizingPolicy,
            bool resetPartition,
            int? resetPartitionSize)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedChoiceV2():
        return $default(
            _that.target,
            _that.capability,
            _that.password,
            _that.pin,
            _that.recoveryKey,
            _that.sizingPolicy,
            _that.resetPartition,
            _that.resetPartitionSize);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            GuidedStorageTarget target,
            GuidedCapability capability,
            String? password,
            String? pin,
            RecoveryKey? recoveryKey,
            SizingPolicy? sizingPolicy,
            bool resetPartition,
            int? resetPartitionSize)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedChoiceV2() when $default != null:
        return $default(
            _that.target,
            _that.capability,
            _that.password,
            _that.pin,
            _that.recoveryKey,
            _that.sizingPolicy,
            _that.resetPartition,
            _that.resetPartitionSize);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GuidedChoiceV2 implements GuidedChoiceV2 {
  const _GuidedChoiceV2(
      {required this.target,
      required this.capability,
      this.password,
      this.pin,
      this.recoveryKey,
      required this.sizingPolicy,
      this.resetPartition = false,
      this.resetPartitionSize});
  factory _GuidedChoiceV2.fromJson(Map<String, dynamic> json) =>
      _$GuidedChoiceV2FromJson(json);

  @override
  final GuidedStorageTarget target;
  @override
  final GuidedCapability capability;
  @override
  final String? password;
  @override
  final String? pin;
  @override
  final RecoveryKey? recoveryKey;
  @override
  final SizingPolicy? sizingPolicy;
  @override
  @JsonKey()
  final bool resetPartition;
  @override
  final int? resetPartitionSize;

  /// Create a copy of GuidedChoiceV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GuidedChoiceV2CopyWith<_GuidedChoiceV2> get copyWith =>
      __$GuidedChoiceV2CopyWithImpl<_GuidedChoiceV2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuidedChoiceV2ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuidedChoiceV2 &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.capability, capability) ||
                other.capability == capability) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.recoveryKey, recoveryKey) ||
                other.recoveryKey == recoveryKey) &&
            (identical(other.sizingPolicy, sizingPolicy) ||
                other.sizingPolicy == sizingPolicy) &&
            (identical(other.resetPartition, resetPartition) ||
                other.resetPartition == resetPartition) &&
            (identical(other.resetPartitionSize, resetPartitionSize) ||
                other.resetPartitionSize == resetPartitionSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, target, capability, password,
      pin, recoveryKey, sizingPolicy, resetPartition, resetPartitionSize);

  @override
  String toString() {
    return 'GuidedChoiceV2(target: $target, capability: $capability, password: $password, pin: $pin, recoveryKey: $recoveryKey, sizingPolicy: $sizingPolicy, resetPartition: $resetPartition, resetPartitionSize: $resetPartitionSize)';
  }
}

/// @nodoc
abstract mixin class _$GuidedChoiceV2CopyWith<$Res>
    implements $GuidedChoiceV2CopyWith<$Res> {
  factory _$GuidedChoiceV2CopyWith(
          _GuidedChoiceV2 value, $Res Function(_GuidedChoiceV2) _then) =
      __$GuidedChoiceV2CopyWithImpl;
  @override
  @useResult
  $Res call(
      {GuidedStorageTarget target,
      GuidedCapability capability,
      String? password,
      String? pin,
      RecoveryKey? recoveryKey,
      SizingPolicy? sizingPolicy,
      bool resetPartition,
      int? resetPartitionSize});

  @override
  $GuidedStorageTargetCopyWith<$Res> get target;
  @override
  $RecoveryKeyCopyWith<$Res>? get recoveryKey;
}

/// @nodoc
class __$GuidedChoiceV2CopyWithImpl<$Res>
    implements _$GuidedChoiceV2CopyWith<$Res> {
  __$GuidedChoiceV2CopyWithImpl(this._self, this._then);

  final _GuidedChoiceV2 _self;
  final $Res Function(_GuidedChoiceV2) _then;

  /// Create a copy of GuidedChoiceV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? target = null,
    Object? capability = null,
    Object? password = freezed,
    Object? pin = freezed,
    Object? recoveryKey = freezed,
    Object? sizingPolicy = freezed,
    Object? resetPartition = null,
    Object? resetPartitionSize = freezed,
  }) {
    return _then(_GuidedChoiceV2(
      target: null == target
          ? _self.target
          : target // ignore: cast_nullable_to_non_nullable
              as GuidedStorageTarget,
      capability: null == capability
          ? _self.capability
          : capability // ignore: cast_nullable_to_non_nullable
              as GuidedCapability,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryKey: freezed == recoveryKey
          ? _self.recoveryKey
          : recoveryKey // ignore: cast_nullable_to_non_nullable
              as RecoveryKey?,
      sizingPolicy: freezed == sizingPolicy
          ? _self.sizingPolicy
          : sizingPolicy // ignore: cast_nullable_to_non_nullable
              as SizingPolicy?,
      resetPartition: null == resetPartition
          ? _self.resetPartition
          : resetPartition // ignore: cast_nullable_to_non_nullable
              as bool,
      resetPartitionSize: freezed == resetPartitionSize
          ? _self.resetPartitionSize
          : resetPartitionSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of GuidedChoiceV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuidedStorageTargetCopyWith<$Res> get target {
    return $GuidedStorageTargetCopyWith<$Res>(_self.target, (value) {
      return _then(_self.copyWith(target: value));
    });
  }

  /// Create a copy of GuidedChoiceV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<$Res>? get recoveryKey {
    if (_self.recoveryKey == null) {
      return null;
    }

    return $RecoveryKeyCopyWith<$Res>(_self.recoveryKey!, (value) {
      return _then(_self.copyWith(recoveryKey: value));
    });
  }
}

/// @nodoc
mixin _$GuidedStorageResponseV2 {
  ProbeStatus get status;
  ErrorReportRef? get errorReport;
  GuidedChoiceV2? get configured;
  List<GuidedStorageTarget> get targets;

  /// Create a copy of GuidedStorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuidedStorageResponseV2CopyWith<GuidedStorageResponseV2> get copyWith =>
      _$GuidedStorageResponseV2CopyWithImpl<GuidedStorageResponseV2>(
          this as GuidedStorageResponseV2, _$identity);

  /// Serializes this GuidedStorageResponseV2 to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuidedStorageResponseV2 &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorReport, errorReport) ||
                other.errorReport == errorReport) &&
            (identical(other.configured, configured) ||
                other.configured == configured) &&
            const DeepCollectionEquality().equals(other.targets, targets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorReport, configured,
      const DeepCollectionEquality().hash(targets));

  @override
  String toString() {
    return 'GuidedStorageResponseV2(status: $status, errorReport: $errorReport, configured: $configured, targets: $targets)';
  }
}

/// @nodoc
abstract mixin class $GuidedStorageResponseV2CopyWith<$Res> {
  factory $GuidedStorageResponseV2CopyWith(GuidedStorageResponseV2 value,
          $Res Function(GuidedStorageResponseV2) _then) =
      _$GuidedStorageResponseV2CopyWithImpl;
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      GuidedChoiceV2? configured,
      List<GuidedStorageTarget> targets});

  $ErrorReportRefCopyWith<$Res>? get errorReport;
  $GuidedChoiceV2CopyWith<$Res>? get configured;
}

/// @nodoc
class _$GuidedStorageResponseV2CopyWithImpl<$Res>
    implements $GuidedStorageResponseV2CopyWith<$Res> {
  _$GuidedStorageResponseV2CopyWithImpl(this._self, this._then);

  final GuidedStorageResponseV2 _self;
  final $Res Function(GuidedStorageResponseV2) _then;

  /// Create a copy of GuidedStorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? configured = freezed,
    Object? targets = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _self.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      configured: freezed == configured
          ? _self.configured
          : configured // ignore: cast_nullable_to_non_nullable
              as GuidedChoiceV2?,
      targets: null == targets
          ? _self.targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<GuidedStorageTarget>,
    ));
  }

  /// Create a copy of GuidedStorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get errorReport {
    if (_self.errorReport == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_self.errorReport!, (value) {
      return _then(_self.copyWith(errorReport: value));
    });
  }

  /// Create a copy of GuidedStorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuidedChoiceV2CopyWith<$Res>? get configured {
    if (_self.configured == null) {
      return null;
    }

    return $GuidedChoiceV2CopyWith<$Res>(_self.configured!, (value) {
      return _then(_self.copyWith(configured: value));
    });
  }
}

/// Adds pattern-matching-related methods to [GuidedStorageResponseV2].
extension GuidedStorageResponseV2Patterns on GuidedStorageResponseV2 {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GuidedStorageResponseV2 value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuidedStorageResponseV2() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_GuidedStorageResponseV2 value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedStorageResponseV2():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GuidedStorageResponseV2 value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedStorageResponseV2() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ProbeStatus status, ErrorReportRef? errorReport,
            GuidedChoiceV2? configured, List<GuidedStorageTarget> targets)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuidedStorageResponseV2() when $default != null:
        return $default(
            _that.status, _that.errorReport, _that.configured, _that.targets);
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
  TResult when<TResult extends Object?>(
    TResult Function(ProbeStatus status, ErrorReportRef? errorReport,
            GuidedChoiceV2? configured, List<GuidedStorageTarget> targets)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedStorageResponseV2():
        return $default(
            _that.status, _that.errorReport, _that.configured, _that.targets);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ProbeStatus status, ErrorReportRef? errorReport,
            GuidedChoiceV2? configured, List<GuidedStorageTarget> targets)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuidedStorageResponseV2() when $default != null:
        return $default(
            _that.status, _that.errorReport, _that.configured, _that.targets);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GuidedStorageResponseV2 implements GuidedStorageResponseV2 {
  const _GuidedStorageResponseV2(
      {required this.status,
      this.errorReport,
      this.configured,
      final List<GuidedStorageTarget> targets = const []})
      : _targets = targets;
  factory _GuidedStorageResponseV2.fromJson(Map<String, dynamic> json) =>
      _$GuidedStorageResponseV2FromJson(json);

  @override
  final ProbeStatus status;
  @override
  final ErrorReportRef? errorReport;
  @override
  final GuidedChoiceV2? configured;
  final List<GuidedStorageTarget> _targets;
  @override
  @JsonKey()
  List<GuidedStorageTarget> get targets {
    if (_targets is EqualUnmodifiableListView) return _targets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targets);
  }

  /// Create a copy of GuidedStorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GuidedStorageResponseV2CopyWith<_GuidedStorageResponseV2> get copyWith =>
      __$GuidedStorageResponseV2CopyWithImpl<_GuidedStorageResponseV2>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuidedStorageResponseV2ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuidedStorageResponseV2 &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorReport, errorReport) ||
                other.errorReport == errorReport) &&
            (identical(other.configured, configured) ||
                other.configured == configured) &&
            const DeepCollectionEquality().equals(other._targets, _targets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorReport, configured,
      const DeepCollectionEquality().hash(_targets));

  @override
  String toString() {
    return 'GuidedStorageResponseV2(status: $status, errorReport: $errorReport, configured: $configured, targets: $targets)';
  }
}

/// @nodoc
abstract mixin class _$GuidedStorageResponseV2CopyWith<$Res>
    implements $GuidedStorageResponseV2CopyWith<$Res> {
  factory _$GuidedStorageResponseV2CopyWith(_GuidedStorageResponseV2 value,
          $Res Function(_GuidedStorageResponseV2) _then) =
      __$GuidedStorageResponseV2CopyWithImpl;
  @override
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      GuidedChoiceV2? configured,
      List<GuidedStorageTarget> targets});

  @override
  $ErrorReportRefCopyWith<$Res>? get errorReport;
  @override
  $GuidedChoiceV2CopyWith<$Res>? get configured;
}

/// @nodoc
class __$GuidedStorageResponseV2CopyWithImpl<$Res>
    implements _$GuidedStorageResponseV2CopyWith<$Res> {
  __$GuidedStorageResponseV2CopyWithImpl(this._self, this._then);

  final _GuidedStorageResponseV2 _self;
  final $Res Function(_GuidedStorageResponseV2) _then;

  /// Create a copy of GuidedStorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? configured = freezed,
    Object? targets = null,
  }) {
    return _then(_GuidedStorageResponseV2(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _self.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      configured: freezed == configured
          ? _self.configured
          : configured // ignore: cast_nullable_to_non_nullable
              as GuidedChoiceV2?,
      targets: null == targets
          ? _self._targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<GuidedStorageTarget>,
    ));
  }

  /// Create a copy of GuidedStorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get errorReport {
    if (_self.errorReport == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_self.errorReport!, (value) {
      return _then(_self.copyWith(errorReport: value));
    });
  }

  /// Create a copy of GuidedStorageResponseV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuidedChoiceV2CopyWith<$Res>? get configured {
    if (_self.configured == null) {
      return null;
    }

    return $GuidedChoiceV2CopyWith<$Res>(_self.configured!, (value) {
      return _then(_self.copyWith(configured: value));
    });
  }
}

/// @nodoc
mixin _$AddPartitionV2 {
  String get diskId;
  Partition get partition;
  Gap get gap;

  /// Create a copy of AddPartitionV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddPartitionV2CopyWith<AddPartitionV2> get copyWith =>
      _$AddPartitionV2CopyWithImpl<AddPartitionV2>(
          this as AddPartitionV2, _$identity);

  /// Serializes this AddPartitionV2 to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddPartitionV2 &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            const DeepCollectionEquality().equals(other.partition, partition) &&
            const DeepCollectionEquality().equals(other.gap, gap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diskId,
      const DeepCollectionEquality().hash(partition),
      const DeepCollectionEquality().hash(gap));

  @override
  String toString() {
    return 'AddPartitionV2(diskId: $diskId, partition: $partition, gap: $gap)';
  }
}

/// @nodoc
abstract mixin class $AddPartitionV2CopyWith<$Res> {
  factory $AddPartitionV2CopyWith(
          AddPartitionV2 value, $Res Function(AddPartitionV2) _then) =
      _$AddPartitionV2CopyWithImpl;
  @useResult
  $Res call({String diskId, Partition partition, Gap gap});
}

/// @nodoc
class _$AddPartitionV2CopyWithImpl<$Res>
    implements $AddPartitionV2CopyWith<$Res> {
  _$AddPartitionV2CopyWithImpl(this._self, this._then);

  final AddPartitionV2 _self;
  final $Res Function(AddPartitionV2) _then;

  /// Create a copy of AddPartitionV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? partition = freezed,
    Object? gap = freezed,
  }) {
    return _then(_self.copyWith(
      diskId: null == diskId
          ? _self.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partition: freezed == partition
          ? _self.partition
          : partition // ignore: cast_nullable_to_non_nullable
              as Partition,
      gap: freezed == gap
          ? _self.gap
          : gap // ignore: cast_nullable_to_non_nullable
              as Gap,
    ));
  }
}

/// Adds pattern-matching-related methods to [AddPartitionV2].
extension AddPartitionV2Patterns on AddPartitionV2 {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AddPartitionV2 value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddPartitionV2() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_AddPartitionV2 value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddPartitionV2():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AddPartitionV2 value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddPartitionV2() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String diskId, Partition partition, Gap gap)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddPartitionV2() when $default != null:
        return $default(_that.diskId, _that.partition, _that.gap);
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
  TResult when<TResult extends Object?>(
    TResult Function(String diskId, Partition partition, Gap gap) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddPartitionV2():
        return $default(_that.diskId, _that.partition, _that.gap);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String diskId, Partition partition, Gap gap)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddPartitionV2() when $default != null:
        return $default(_that.diskId, _that.partition, _that.gap);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AddPartitionV2 implements AddPartitionV2 {
  const _AddPartitionV2(
      {required this.diskId, required this.partition, required this.gap});
  factory _AddPartitionV2.fromJson(Map<String, dynamic> json) =>
      _$AddPartitionV2FromJson(json);

  @override
  final String diskId;
  @override
  final Partition partition;
  @override
  final Gap gap;

  /// Create a copy of AddPartitionV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddPartitionV2CopyWith<_AddPartitionV2> get copyWith =>
      __$AddPartitionV2CopyWithImpl<_AddPartitionV2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddPartitionV2ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddPartitionV2 &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            const DeepCollectionEquality().equals(other.partition, partition) &&
            const DeepCollectionEquality().equals(other.gap, gap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diskId,
      const DeepCollectionEquality().hash(partition),
      const DeepCollectionEquality().hash(gap));

  @override
  String toString() {
    return 'AddPartitionV2(diskId: $diskId, partition: $partition, gap: $gap)';
  }
}

/// @nodoc
abstract mixin class _$AddPartitionV2CopyWith<$Res>
    implements $AddPartitionV2CopyWith<$Res> {
  factory _$AddPartitionV2CopyWith(
          _AddPartitionV2 value, $Res Function(_AddPartitionV2) _then) =
      __$AddPartitionV2CopyWithImpl;
  @override
  @useResult
  $Res call({String diskId, Partition partition, Gap gap});
}

/// @nodoc
class __$AddPartitionV2CopyWithImpl<$Res>
    implements _$AddPartitionV2CopyWith<$Res> {
  __$AddPartitionV2CopyWithImpl(this._self, this._then);

  final _AddPartitionV2 _self;
  final $Res Function(_AddPartitionV2) _then;

  /// Create a copy of AddPartitionV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diskId = null,
    Object? partition = freezed,
    Object? gap = freezed,
  }) {
    return _then(_AddPartitionV2(
      diskId: null == diskId
          ? _self.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partition: freezed == partition
          ? _self.partition
          : partition // ignore: cast_nullable_to_non_nullable
              as Partition,
      gap: freezed == gap
          ? _self.gap
          : gap // ignore: cast_nullable_to_non_nullable
              as Gap,
    ));
  }
}

/// @nodoc
mixin _$ModifyPartitionV2 {
  String get diskId;
  Partition get partition;

  /// Create a copy of ModifyPartitionV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModifyPartitionV2CopyWith<ModifyPartitionV2> get copyWith =>
      _$ModifyPartitionV2CopyWithImpl<ModifyPartitionV2>(
          this as ModifyPartitionV2, _$identity);

  /// Serializes this ModifyPartitionV2 to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModifyPartitionV2 &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            const DeepCollectionEquality().equals(other.partition, partition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, diskId, const DeepCollectionEquality().hash(partition));

  @override
  String toString() {
    return 'ModifyPartitionV2(diskId: $diskId, partition: $partition)';
  }
}

/// @nodoc
abstract mixin class $ModifyPartitionV2CopyWith<$Res> {
  factory $ModifyPartitionV2CopyWith(
          ModifyPartitionV2 value, $Res Function(ModifyPartitionV2) _then) =
      _$ModifyPartitionV2CopyWithImpl;
  @useResult
  $Res call({String diskId, Partition partition});
}

/// @nodoc
class _$ModifyPartitionV2CopyWithImpl<$Res>
    implements $ModifyPartitionV2CopyWith<$Res> {
  _$ModifyPartitionV2CopyWithImpl(this._self, this._then);

  final ModifyPartitionV2 _self;
  final $Res Function(ModifyPartitionV2) _then;

  /// Create a copy of ModifyPartitionV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? partition = freezed,
  }) {
    return _then(_self.copyWith(
      diskId: null == diskId
          ? _self.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partition: freezed == partition
          ? _self.partition
          : partition // ignore: cast_nullable_to_non_nullable
              as Partition,
    ));
  }
}

/// Adds pattern-matching-related methods to [ModifyPartitionV2].
extension ModifyPartitionV2Patterns on ModifyPartitionV2 {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ModifyPartitionV2 value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModifyPartitionV2() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_ModifyPartitionV2 value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModifyPartitionV2():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ModifyPartitionV2 value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModifyPartitionV2() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String diskId, Partition partition)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModifyPartitionV2() when $default != null:
        return $default(_that.diskId, _that.partition);
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
  TResult when<TResult extends Object?>(
    TResult Function(String diskId, Partition partition) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModifyPartitionV2():
        return $default(_that.diskId, _that.partition);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String diskId, Partition partition)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModifyPartitionV2() when $default != null:
        return $default(_that.diskId, _that.partition);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ModifyPartitionV2 implements ModifyPartitionV2 {
  const _ModifyPartitionV2({required this.diskId, required this.partition});
  factory _ModifyPartitionV2.fromJson(Map<String, dynamic> json) =>
      _$ModifyPartitionV2FromJson(json);

  @override
  final String diskId;
  @override
  final Partition partition;

  /// Create a copy of ModifyPartitionV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModifyPartitionV2CopyWith<_ModifyPartitionV2> get copyWith =>
      __$ModifyPartitionV2CopyWithImpl<_ModifyPartitionV2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModifyPartitionV2ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModifyPartitionV2 &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            const DeepCollectionEquality().equals(other.partition, partition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, diskId, const DeepCollectionEquality().hash(partition));

  @override
  String toString() {
    return 'ModifyPartitionV2(diskId: $diskId, partition: $partition)';
  }
}

/// @nodoc
abstract mixin class _$ModifyPartitionV2CopyWith<$Res>
    implements $ModifyPartitionV2CopyWith<$Res> {
  factory _$ModifyPartitionV2CopyWith(
          _ModifyPartitionV2 value, $Res Function(_ModifyPartitionV2) _then) =
      __$ModifyPartitionV2CopyWithImpl;
  @override
  @useResult
  $Res call({String diskId, Partition partition});
}

/// @nodoc
class __$ModifyPartitionV2CopyWithImpl<$Res>
    implements _$ModifyPartitionV2CopyWith<$Res> {
  __$ModifyPartitionV2CopyWithImpl(this._self, this._then);

  final _ModifyPartitionV2 _self;
  final $Res Function(_ModifyPartitionV2) _then;

  /// Create a copy of ModifyPartitionV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diskId = null,
    Object? partition = freezed,
  }) {
    return _then(_ModifyPartitionV2(
      diskId: null == diskId
          ? _self.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partition: freezed == partition
          ? _self.partition
          : partition // ignore: cast_nullable_to_non_nullable
              as Partition,
    ));
  }
}

/// @nodoc
mixin _$ReformatDisk {
  String get diskId;
  String? get ptable;

  /// Create a copy of ReformatDisk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReformatDiskCopyWith<ReformatDisk> get copyWith =>
      _$ReformatDiskCopyWithImpl<ReformatDisk>(
          this as ReformatDisk, _$identity);

  /// Serializes this ReformatDisk to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReformatDisk &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            (identical(other.ptable, ptable) || other.ptable == ptable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, diskId, ptable);

  @override
  String toString() {
    return 'ReformatDisk(diskId: $diskId, ptable: $ptable)';
  }
}

/// @nodoc
abstract mixin class $ReformatDiskCopyWith<$Res> {
  factory $ReformatDiskCopyWith(
          ReformatDisk value, $Res Function(ReformatDisk) _then) =
      _$ReformatDiskCopyWithImpl;
  @useResult
  $Res call({String diskId, String? ptable});
}

/// @nodoc
class _$ReformatDiskCopyWithImpl<$Res> implements $ReformatDiskCopyWith<$Res> {
  _$ReformatDiskCopyWithImpl(this._self, this._then);

  final ReformatDisk _self;
  final $Res Function(ReformatDisk) _then;

  /// Create a copy of ReformatDisk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? ptable = freezed,
  }) {
    return _then(_self.copyWith(
      diskId: null == diskId
          ? _self.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      ptable: freezed == ptable
          ? _self.ptable
          : ptable // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReformatDisk].
extension ReformatDiskPatterns on ReformatDisk {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReformatDisk value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReformatDisk() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_ReformatDisk value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReformatDisk():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReformatDisk value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReformatDisk() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String diskId, String? ptable)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReformatDisk() when $default != null:
        return $default(_that.diskId, _that.ptable);
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
  TResult when<TResult extends Object?>(
    TResult Function(String diskId, String? ptable) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReformatDisk():
        return $default(_that.diskId, _that.ptable);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String diskId, String? ptable)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReformatDisk() when $default != null:
        return $default(_that.diskId, _that.ptable);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReformatDisk implements ReformatDisk {
  const _ReformatDisk({required this.diskId, this.ptable});
  factory _ReformatDisk.fromJson(Map<String, dynamic> json) =>
      _$ReformatDiskFromJson(json);

  @override
  final String diskId;
  @override
  final String? ptable;

  /// Create a copy of ReformatDisk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReformatDiskCopyWith<_ReformatDisk> get copyWith =>
      __$ReformatDiskCopyWithImpl<_ReformatDisk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReformatDiskToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReformatDisk &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            (identical(other.ptable, ptable) || other.ptable == ptable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, diskId, ptable);

  @override
  String toString() {
    return 'ReformatDisk(diskId: $diskId, ptable: $ptable)';
  }
}

/// @nodoc
abstract mixin class _$ReformatDiskCopyWith<$Res>
    implements $ReformatDiskCopyWith<$Res> {
  factory _$ReformatDiskCopyWith(
          _ReformatDisk value, $Res Function(_ReformatDisk) _then) =
      __$ReformatDiskCopyWithImpl;
  @override
  @useResult
  $Res call({String diskId, String? ptable});
}

/// @nodoc
class __$ReformatDiskCopyWithImpl<$Res>
    implements _$ReformatDiskCopyWith<$Res> {
  __$ReformatDiskCopyWithImpl(this._self, this._then);

  final _ReformatDisk _self;
  final $Res Function(_ReformatDisk) _then;

  /// Create a copy of ReformatDisk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diskId = null,
    Object? ptable = freezed,
  }) {
    return _then(_ReformatDisk(
      diskId: null == diskId
          ? _self.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      ptable: freezed == ptable
          ? _self.ptable
          : ptable // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CalculateEntropyRequest {
  String? get passphrase;
  String? get pin;

  /// Create a copy of CalculateEntropyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalculateEntropyRequestCopyWith<CalculateEntropyRequest> get copyWith =>
      _$CalculateEntropyRequestCopyWithImpl<CalculateEntropyRequest>(
          this as CalculateEntropyRequest, _$identity);

  /// Serializes this CalculateEntropyRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalculateEntropyRequest &&
            (identical(other.passphrase, passphrase) ||
                other.passphrase == passphrase) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, passphrase, pin);

  @override
  String toString() {
    return 'CalculateEntropyRequest(passphrase: $passphrase, pin: $pin)';
  }
}

/// @nodoc
abstract mixin class $CalculateEntropyRequestCopyWith<$Res> {
  factory $CalculateEntropyRequestCopyWith(CalculateEntropyRequest value,
          $Res Function(CalculateEntropyRequest) _then) =
      _$CalculateEntropyRequestCopyWithImpl;
  @useResult
  $Res call({String? passphrase, String? pin});
}

/// @nodoc
class _$CalculateEntropyRequestCopyWithImpl<$Res>
    implements $CalculateEntropyRequestCopyWith<$Res> {
  _$CalculateEntropyRequestCopyWithImpl(this._self, this._then);

  final CalculateEntropyRequest _self;
  final $Res Function(CalculateEntropyRequest) _then;

  /// Create a copy of CalculateEntropyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passphrase = freezed,
    Object? pin = freezed,
  }) {
    return _then(_self.copyWith(
      passphrase: freezed == passphrase
          ? _self.passphrase
          : passphrase // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CalculateEntropyRequest].
extension CalculateEntropyRequestPatterns on CalculateEntropyRequest {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CalculateEntropyRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CalculateEntropyRequest() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_CalculateEntropyRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalculateEntropyRequest():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CalculateEntropyRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalculateEntropyRequest() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? passphrase, String? pin)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CalculateEntropyRequest() when $default != null:
        return $default(_that.passphrase, _that.pin);
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
  TResult when<TResult extends Object?>(
    TResult Function(String? passphrase, String? pin) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalculateEntropyRequest():
        return $default(_that.passphrase, _that.pin);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? passphrase, String? pin)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CalculateEntropyRequest() when $default != null:
        return $default(_that.passphrase, _that.pin);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CalculateEntropyRequest implements CalculateEntropyRequest {
  const _CalculateEntropyRequest({this.passphrase, this.pin});
  factory _CalculateEntropyRequest.fromJson(Map<String, dynamic> json) =>
      _$CalculateEntropyRequestFromJson(json);

  @override
  final String? passphrase;
  @override
  final String? pin;

  /// Create a copy of CalculateEntropyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CalculateEntropyRequestCopyWith<_CalculateEntropyRequest> get copyWith =>
      __$CalculateEntropyRequestCopyWithImpl<_CalculateEntropyRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CalculateEntropyRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalculateEntropyRequest &&
            (identical(other.passphrase, passphrase) ||
                other.passphrase == passphrase) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, passphrase, pin);

  @override
  String toString() {
    return 'CalculateEntropyRequest(passphrase: $passphrase, pin: $pin)';
  }
}

/// @nodoc
abstract mixin class _$CalculateEntropyRequestCopyWith<$Res>
    implements $CalculateEntropyRequestCopyWith<$Res> {
  factory _$CalculateEntropyRequestCopyWith(_CalculateEntropyRequest value,
          $Res Function(_CalculateEntropyRequest) _then) =
      __$CalculateEntropyRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String? passphrase, String? pin});
}

/// @nodoc
class __$CalculateEntropyRequestCopyWithImpl<$Res>
    implements _$CalculateEntropyRequestCopyWith<$Res> {
  __$CalculateEntropyRequestCopyWithImpl(this._self, this._then);

  final _CalculateEntropyRequest _self;
  final $Res Function(_CalculateEntropyRequest) _then;

  /// Create a copy of CalculateEntropyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? passphrase = freezed,
    Object? pin = freezed,
  }) {
    return _then(_CalculateEntropyRequest(
      passphrase: freezed == passphrase
          ? _self.passphrase
          : passphrase // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$EntropyResponse {
  bool get success;
  int get entropyBits;
  int get minEntropyBits;
  int get optimalEntropyBits;
  List<String>? get failureReasons;

  /// Create a copy of EntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EntropyResponseCopyWith<EntropyResponse> get copyWith =>
      _$EntropyResponseCopyWithImpl<EntropyResponse>(
          this as EntropyResponse, _$identity);

  /// Serializes this EntropyResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EntropyResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.entropyBits, entropyBits) ||
                other.entropyBits == entropyBits) &&
            (identical(other.minEntropyBits, minEntropyBits) ||
                other.minEntropyBits == minEntropyBits) &&
            (identical(other.optimalEntropyBits, optimalEntropyBits) ||
                other.optimalEntropyBits == optimalEntropyBits) &&
            const DeepCollectionEquality()
                .equals(other.failureReasons, failureReasons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      entropyBits,
      minEntropyBits,
      optimalEntropyBits,
      const DeepCollectionEquality().hash(failureReasons));

  @override
  String toString() {
    return 'EntropyResponse(success: $success, entropyBits: $entropyBits, minEntropyBits: $minEntropyBits, optimalEntropyBits: $optimalEntropyBits, failureReasons: $failureReasons)';
  }
}

/// @nodoc
abstract mixin class $EntropyResponseCopyWith<$Res> {
  factory $EntropyResponseCopyWith(
          EntropyResponse value, $Res Function(EntropyResponse) _then) =
      _$EntropyResponseCopyWithImpl;
  @useResult
  $Res call(
      {bool success,
      int entropyBits,
      int minEntropyBits,
      int optimalEntropyBits,
      List<String>? failureReasons});
}

/// @nodoc
class _$EntropyResponseCopyWithImpl<$Res>
    implements $EntropyResponseCopyWith<$Res> {
  _$EntropyResponseCopyWithImpl(this._self, this._then);

  final EntropyResponse _self;
  final $Res Function(EntropyResponse) _then;

  /// Create a copy of EntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? entropyBits = null,
    Object? minEntropyBits = null,
    Object? optimalEntropyBits = null,
    Object? failureReasons = freezed,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      entropyBits: null == entropyBits
          ? _self.entropyBits
          : entropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      minEntropyBits: null == minEntropyBits
          ? _self.minEntropyBits
          : minEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      optimalEntropyBits: null == optimalEntropyBits
          ? _self.optimalEntropyBits
          : optimalEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      failureReasons: freezed == failureReasons
          ? _self.failureReasons
          : failureReasons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [EntropyResponse].
extension EntropyResponsePatterns on EntropyResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EntropyResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EntropyResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_EntropyResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntropyResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EntropyResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntropyResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool success, int entropyBits, int minEntropyBits,
            int optimalEntropyBits, List<String>? failureReasons)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EntropyResponse() when $default != null:
        return $default(_that.success, _that.entropyBits, _that.minEntropyBits,
            _that.optimalEntropyBits, _that.failureReasons);
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
  TResult when<TResult extends Object?>(
    TResult Function(bool success, int entropyBits, int minEntropyBits,
            int optimalEntropyBits, List<String>? failureReasons)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntropyResponse():
        return $default(_that.success, _that.entropyBits, _that.minEntropyBits,
            _that.optimalEntropyBits, _that.failureReasons);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool success, int entropyBits, int minEntropyBits,
            int optimalEntropyBits, List<String>? failureReasons)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EntropyResponse() when $default != null:
        return $default(_that.success, _that.entropyBits, _that.minEntropyBits,
            _that.optimalEntropyBits, _that.failureReasons);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EntropyResponse implements EntropyResponse {
  const _EntropyResponse(
      {required this.success,
      required this.entropyBits,
      required this.minEntropyBits,
      required this.optimalEntropyBits,
      final List<String>? failureReasons})
      : _failureReasons = failureReasons;
  factory _EntropyResponse.fromJson(Map<String, dynamic> json) =>
      _$EntropyResponseFromJson(json);

  @override
  final bool success;
  @override
  final int entropyBits;
  @override
  final int minEntropyBits;
  @override
  final int optimalEntropyBits;
  final List<String>? _failureReasons;
  @override
  List<String>? get failureReasons {
    final value = _failureReasons;
    if (value == null) return null;
    if (_failureReasons is EqualUnmodifiableListView) return _failureReasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of EntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EntropyResponseCopyWith<_EntropyResponse> get copyWith =>
      __$EntropyResponseCopyWithImpl<_EntropyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EntropyResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntropyResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.entropyBits, entropyBits) ||
                other.entropyBits == entropyBits) &&
            (identical(other.minEntropyBits, minEntropyBits) ||
                other.minEntropyBits == minEntropyBits) &&
            (identical(other.optimalEntropyBits, optimalEntropyBits) ||
                other.optimalEntropyBits == optimalEntropyBits) &&
            const DeepCollectionEquality()
                .equals(other._failureReasons, _failureReasons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      entropyBits,
      minEntropyBits,
      optimalEntropyBits,
      const DeepCollectionEquality().hash(_failureReasons));

  @override
  String toString() {
    return 'EntropyResponse(success: $success, entropyBits: $entropyBits, minEntropyBits: $minEntropyBits, optimalEntropyBits: $optimalEntropyBits, failureReasons: $failureReasons)';
  }
}

/// @nodoc
abstract mixin class _$EntropyResponseCopyWith<$Res>
    implements $EntropyResponseCopyWith<$Res> {
  factory _$EntropyResponseCopyWith(
          _EntropyResponse value, $Res Function(_EntropyResponse) _then) =
      __$EntropyResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool success,
      int entropyBits,
      int minEntropyBits,
      int optimalEntropyBits,
      List<String>? failureReasons});
}

/// @nodoc
class __$EntropyResponseCopyWithImpl<$Res>
    implements _$EntropyResponseCopyWith<$Res> {
  __$EntropyResponseCopyWithImpl(this._self, this._then);

  final _EntropyResponse _self;
  final $Res Function(_EntropyResponse) _then;

  /// Create a copy of EntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? entropyBits = null,
    Object? minEntropyBits = null,
    Object? optimalEntropyBits = null,
    Object? failureReasons = freezed,
  }) {
    return _then(_EntropyResponse(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      entropyBits: null == entropyBits
          ? _self.entropyBits
          : entropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      minEntropyBits: null == minEntropyBits
          ? _self.minEntropyBits
          : minEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      optimalEntropyBits: null == optimalEntropyBits
          ? _self.optimalEntropyBits
          : optimalEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      failureReasons: freezed == failureReasons
          ? _self._failureReasons
          : failureReasons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
mixin _$CoreBootFixEncryptionSupport {
  CoreBootFixAction get action;
  String? get systemLabel;

  /// Create a copy of CoreBootFixEncryptionSupport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoreBootFixEncryptionSupportCopyWith<CoreBootFixEncryptionSupport>
      get copyWith => _$CoreBootFixEncryptionSupportCopyWithImpl<
              CoreBootFixEncryptionSupport>(
          this as CoreBootFixEncryptionSupport, _$identity);

  /// Serializes this CoreBootFixEncryptionSupport to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoreBootFixEncryptionSupport &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.systemLabel, systemLabel) ||
                other.systemLabel == systemLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, action, systemLabel);

  @override
  String toString() {
    return 'CoreBootFixEncryptionSupport(action: $action, systemLabel: $systemLabel)';
  }
}

/// @nodoc
abstract mixin class $CoreBootFixEncryptionSupportCopyWith<$Res> {
  factory $CoreBootFixEncryptionSupportCopyWith(
          CoreBootFixEncryptionSupport value,
          $Res Function(CoreBootFixEncryptionSupport) _then) =
      _$CoreBootFixEncryptionSupportCopyWithImpl;
  @useResult
  $Res call({CoreBootFixAction action, String? systemLabel});
}

/// @nodoc
class _$CoreBootFixEncryptionSupportCopyWithImpl<$Res>
    implements $CoreBootFixEncryptionSupportCopyWith<$Res> {
  _$CoreBootFixEncryptionSupportCopyWithImpl(this._self, this._then);

  final CoreBootFixEncryptionSupport _self;
  final $Res Function(CoreBootFixEncryptionSupport) _then;

  /// Create a copy of CoreBootFixEncryptionSupport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? systemLabel = freezed,
  }) {
    return _then(_self.copyWith(
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as CoreBootFixAction,
      systemLabel: freezed == systemLabel
          ? _self.systemLabel
          : systemLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CoreBootFixEncryptionSupport].
extension CoreBootFixEncryptionSupportPatterns on CoreBootFixEncryptionSupport {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CoreBootFixEncryptionSupport value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixEncryptionSupport() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_CoreBootFixEncryptionSupport value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixEncryptionSupport():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CoreBootFixEncryptionSupport value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixEncryptionSupport() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CoreBootFixAction action, String? systemLabel)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixEncryptionSupport() when $default != null:
        return $default(_that.action, _that.systemLabel);
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
  TResult when<TResult extends Object?>(
    TResult Function(CoreBootFixAction action, String? systemLabel) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixEncryptionSupport():
        return $default(_that.action, _that.systemLabel);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CoreBootFixAction action, String? systemLabel)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoreBootFixEncryptionSupport() when $default != null:
        return $default(_that.action, _that.systemLabel);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CoreBootFixEncryptionSupport implements CoreBootFixEncryptionSupport {
  const _CoreBootFixEncryptionSupport({required this.action, this.systemLabel});
  factory _CoreBootFixEncryptionSupport.fromJson(Map<String, dynamic> json) =>
      _$CoreBootFixEncryptionSupportFromJson(json);

  @override
  final CoreBootFixAction action;
  @override
  final String? systemLabel;

  /// Create a copy of CoreBootFixEncryptionSupport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoreBootFixEncryptionSupportCopyWith<_CoreBootFixEncryptionSupport>
      get copyWith => __$CoreBootFixEncryptionSupportCopyWithImpl<
          _CoreBootFixEncryptionSupport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CoreBootFixEncryptionSupportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoreBootFixEncryptionSupport &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.systemLabel, systemLabel) ||
                other.systemLabel == systemLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, action, systemLabel);

  @override
  String toString() {
    return 'CoreBootFixEncryptionSupport(action: $action, systemLabel: $systemLabel)';
  }
}

/// @nodoc
abstract mixin class _$CoreBootFixEncryptionSupportCopyWith<$Res>
    implements $CoreBootFixEncryptionSupportCopyWith<$Res> {
  factory _$CoreBootFixEncryptionSupportCopyWith(
          _CoreBootFixEncryptionSupport value,
          $Res Function(_CoreBootFixEncryptionSupport) _then) =
      __$CoreBootFixEncryptionSupportCopyWithImpl;
  @override
  @useResult
  $Res call({CoreBootFixAction action, String? systemLabel});
}

/// @nodoc
class __$CoreBootFixEncryptionSupportCopyWithImpl<$Res>
    implements _$CoreBootFixEncryptionSupportCopyWith<$Res> {
  __$CoreBootFixEncryptionSupportCopyWithImpl(this._self, this._then);

  final _CoreBootFixEncryptionSupport _self;
  final $Res Function(_CoreBootFixEncryptionSupport) _then;

  /// Create a copy of CoreBootFixEncryptionSupport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? action = null,
    Object? systemLabel = freezed,
  }) {
    return _then(_CoreBootFixEncryptionSupport(
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as CoreBootFixAction,
      systemLabel: freezed == systemLabel
          ? _self.systemLabel
          : systemLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

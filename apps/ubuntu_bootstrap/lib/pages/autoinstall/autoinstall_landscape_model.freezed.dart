// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autoinstall_landscape_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LandscapeData {
  String get userCode;
  String get token;
  AuthenticationStatus get authenticationStatus;
  String get autoinstall;
  String get domainUrl;
  bool get isLoading;
  bool get unretriableError;
  Object? get error;

  /// Create a copy of LandscapeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LandscapeDataCopyWith<LandscapeData> get copyWith =>
      _$LandscapeDataCopyWithImpl<LandscapeData>(
          this as LandscapeData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LandscapeData &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.authenticationStatus, authenticationStatus) ||
                other.authenticationStatus == authenticationStatus) &&
            (identical(other.autoinstall, autoinstall) ||
                other.autoinstall == autoinstall) &&
            (identical(other.domainUrl, domainUrl) ||
                other.domainUrl == domainUrl) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.unretriableError, unretriableError) ||
                other.unretriableError == unretriableError) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userCode,
      token,
      authenticationStatus,
      autoinstall,
      domainUrl,
      isLoading,
      unretriableError,
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'LandscapeData(userCode: $userCode, token: $token, authenticationStatus: $authenticationStatus, autoinstall: $autoinstall, domainUrl: $domainUrl, isLoading: $isLoading, unretriableError: $unretriableError, error: $error)';
  }
}

/// @nodoc
abstract mixin class $LandscapeDataCopyWith<$Res> {
  factory $LandscapeDataCopyWith(
          LandscapeData value, $Res Function(LandscapeData) _then) =
      _$LandscapeDataCopyWithImpl;
  @useResult
  $Res call(
      {String userCode,
      String token,
      AuthenticationStatus authenticationStatus,
      String autoinstall,
      String domainUrl,
      bool isLoading,
      bool unretriableError,
      Object? error});
}

/// @nodoc
class _$LandscapeDataCopyWithImpl<$Res>
    implements $LandscapeDataCopyWith<$Res> {
  _$LandscapeDataCopyWithImpl(this._self, this._then);

  final LandscapeData _self;
  final $Res Function(LandscapeData) _then;

  /// Create a copy of LandscapeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? token = null,
    Object? authenticationStatus = null,
    Object? autoinstall = null,
    Object? domainUrl = null,
    Object? isLoading = null,
    Object? unretriableError = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      userCode: null == userCode
          ? _self.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationStatus: null == authenticationStatus
          ? _self.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      autoinstall: null == autoinstall
          ? _self.autoinstall
          : autoinstall // ignore: cast_nullable_to_non_nullable
              as String,
      domainUrl: null == domainUrl
          ? _self.domainUrl
          : domainUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      unretriableError: null == unretriableError
          ? _self.unretriableError
          : unretriableError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _self.error : error,
    ));
  }
}

/// Adds pattern-matching-related methods to [LandscapeData].
extension LandscapeDataPatterns on LandscapeData {
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
    TResult Function(_LandscapeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LandscapeData() when $default != null:
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
    TResult Function(_LandscapeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LandscapeData():
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
    TResult? Function(_LandscapeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LandscapeData() when $default != null:
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
            String userCode,
            String token,
            AuthenticationStatus authenticationStatus,
            String autoinstall,
            String domainUrl,
            bool isLoading,
            bool unretriableError,
            Object? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LandscapeData() when $default != null:
        return $default(
            _that.userCode,
            _that.token,
            _that.authenticationStatus,
            _that.autoinstall,
            _that.domainUrl,
            _that.isLoading,
            _that.unretriableError,
            _that.error);
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
            String userCode,
            String token,
            AuthenticationStatus authenticationStatus,
            String autoinstall,
            String domainUrl,
            bool isLoading,
            bool unretriableError,
            Object? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LandscapeData():
        return $default(
            _that.userCode,
            _that.token,
            _that.authenticationStatus,
            _that.autoinstall,
            _that.domainUrl,
            _that.isLoading,
            _that.unretriableError,
            _that.error);
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
            String userCode,
            String token,
            AuthenticationStatus authenticationStatus,
            String autoinstall,
            String domainUrl,
            bool isLoading,
            bool unretriableError,
            Object? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LandscapeData() when $default != null:
        return $default(
            _that.userCode,
            _that.token,
            _that.authenticationStatus,
            _that.autoinstall,
            _that.domainUrl,
            _that.isLoading,
            _that.unretriableError,
            _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LandscapeData extends LandscapeData {
  _LandscapeData(
      {this.userCode = '',
      this.token = '',
      this.authenticationStatus = AuthenticationStatus.authenticationPending,
      this.autoinstall = '',
      this.domainUrl = '',
      this.isLoading = false,
      this.unretriableError = false,
      this.error})
      : super._();

  @override
  @JsonKey()
  final String userCode;
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final AuthenticationStatus authenticationStatus;
  @override
  @JsonKey()
  final String autoinstall;
  @override
  @JsonKey()
  final String domainUrl;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool unretriableError;
  @override
  final Object? error;

  /// Create a copy of LandscapeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LandscapeDataCopyWith<_LandscapeData> get copyWith =>
      __$LandscapeDataCopyWithImpl<_LandscapeData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LandscapeData &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.authenticationStatus, authenticationStatus) ||
                other.authenticationStatus == authenticationStatus) &&
            (identical(other.autoinstall, autoinstall) ||
                other.autoinstall == autoinstall) &&
            (identical(other.domainUrl, domainUrl) ||
                other.domainUrl == domainUrl) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.unretriableError, unretriableError) ||
                other.unretriableError == unretriableError) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userCode,
      token,
      authenticationStatus,
      autoinstall,
      domainUrl,
      isLoading,
      unretriableError,
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'LandscapeData(userCode: $userCode, token: $token, authenticationStatus: $authenticationStatus, autoinstall: $autoinstall, domainUrl: $domainUrl, isLoading: $isLoading, unretriableError: $unretriableError, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$LandscapeDataCopyWith<$Res>
    implements $LandscapeDataCopyWith<$Res> {
  factory _$LandscapeDataCopyWith(
          _LandscapeData value, $Res Function(_LandscapeData) _then) =
      __$LandscapeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String userCode,
      String token,
      AuthenticationStatus authenticationStatus,
      String autoinstall,
      String domainUrl,
      bool isLoading,
      bool unretriableError,
      Object? error});
}

/// @nodoc
class __$LandscapeDataCopyWithImpl<$Res>
    implements _$LandscapeDataCopyWith<$Res> {
  __$LandscapeDataCopyWithImpl(this._self, this._then);

  final _LandscapeData _self;
  final $Res Function(_LandscapeData) _then;

  /// Create a copy of LandscapeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userCode = null,
    Object? token = null,
    Object? authenticationStatus = null,
    Object? autoinstall = null,
    Object? domainUrl = null,
    Object? isLoading = null,
    Object? unretriableError = null,
    Object? error = freezed,
  }) {
    return _then(_LandscapeData(
      userCode: null == userCode
          ? _self.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationStatus: null == authenticationStatus
          ? _self.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      autoinstall: null == autoinstall
          ? _self.autoinstall
          : autoinstall // ignore: cast_nullable_to_non_nullable
              as String,
      domainUrl: null == domainUrl
          ? _self.domainUrl
          : domainUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      unretriableError: null == unretriableError
          ? _self.unretriableError
          : unretriableError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _self.error : error,
    ));
  }
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autoinstall_direct_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AutoinstallDirectState {
  String get url;
  Uri? get localPath;
  bool get isLoading;
  AutoinstallDirectError? get error;

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AutoinstallDirectStateCopyWith<AutoinstallDirectState> get copyWith =>
      _$AutoinstallDirectStateCopyWithImpl<AutoinstallDirectState>(
          this as AutoinstallDirectState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoinstallDirectState &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, url, localPath, isLoading, error);

  @override
  String toString() {
    return 'AutoinstallDirectState(url: $url, localPath: $localPath, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class $AutoinstallDirectStateCopyWith<$Res> {
  factory $AutoinstallDirectStateCopyWith(AutoinstallDirectState value,
          $Res Function(AutoinstallDirectState) _then) =
      _$AutoinstallDirectStateCopyWithImpl;
  @useResult
  $Res call(
      {String url,
      Uri? localPath,
      bool isLoading,
      AutoinstallDirectError? error});

  $AutoinstallDirectErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$AutoinstallDirectStateCopyWithImpl<$Res>
    implements $AutoinstallDirectStateCopyWith<$Res> {
  _$AutoinstallDirectStateCopyWithImpl(this._self, this._then);

  final AutoinstallDirectState _self;
  final $Res Function(AutoinstallDirectState) _then;

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? localPath = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      localPath: freezed == localPath
          ? _self.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as Uri?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as AutoinstallDirectError?,
    ));
  }

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoinstallDirectErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $AutoinstallDirectErrorCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AutoinstallDirectState].
extension AutoinstallDirectStatePatterns on AutoinstallDirectState {
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
    TResult Function(_AutoinstallDirectState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AutoinstallDirectState() when $default != null:
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
    TResult Function(_AutoinstallDirectState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoinstallDirectState():
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
    TResult? Function(_AutoinstallDirectState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoinstallDirectState() when $default != null:
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
    TResult Function(String url, Uri? localPath, bool isLoading,
            AutoinstallDirectError? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AutoinstallDirectState() when $default != null:
        return $default(
            _that.url, _that.localPath, _that.isLoading, _that.error);
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
    TResult Function(String url, Uri? localPath, bool isLoading,
            AutoinstallDirectError? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoinstallDirectState():
        return $default(
            _that.url, _that.localPath, _that.isLoading, _that.error);
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
    TResult? Function(String url, Uri? localPath, bool isLoading,
            AutoinstallDirectError? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoinstallDirectState() when $default != null:
        return $default(
            _that.url, _that.localPath, _that.isLoading, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AutoinstallDirectState implements AutoinstallDirectState {
  _AutoinstallDirectState(
      {this.url = '', this.localPath, this.isLoading = false, this.error});

  @override
  @JsonKey()
  final String url;
  @override
  final Uri? localPath;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final AutoinstallDirectError? error;

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AutoinstallDirectStateCopyWith<_AutoinstallDirectState> get copyWith =>
      __$AutoinstallDirectStateCopyWithImpl<_AutoinstallDirectState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoinstallDirectState &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, url, localPath, isLoading, error);

  @override
  String toString() {
    return 'AutoinstallDirectState(url: $url, localPath: $localPath, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$AutoinstallDirectStateCopyWith<$Res>
    implements $AutoinstallDirectStateCopyWith<$Res> {
  factory _$AutoinstallDirectStateCopyWith(_AutoinstallDirectState value,
          $Res Function(_AutoinstallDirectState) _then) =
      __$AutoinstallDirectStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String url,
      Uri? localPath,
      bool isLoading,
      AutoinstallDirectError? error});

  @override
  $AutoinstallDirectErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$AutoinstallDirectStateCopyWithImpl<$Res>
    implements _$AutoinstallDirectStateCopyWith<$Res> {
  __$AutoinstallDirectStateCopyWithImpl(this._self, this._then);

  final _AutoinstallDirectState _self;
  final $Res Function(_AutoinstallDirectState) _then;

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? localPath = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_AutoinstallDirectState(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      localPath: freezed == localPath
          ? _self.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as Uri?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as AutoinstallDirectError?,
    ));
  }

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoinstallDirectErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $AutoinstallDirectErrorCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// @nodoc
mixin _$AutoinstallDirectError {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AutoinstallDirectError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AutoinstallDirectError()';
  }
}

/// @nodoc
class $AutoinstallDirectErrorCopyWith<$Res> {
  $AutoinstallDirectErrorCopyWith(
      AutoinstallDirectError _, $Res Function(AutoinstallDirectError) __);
}

/// Adds pattern-matching-related methods to [AutoinstallDirectError].
extension AutoinstallDirectErrorPatterns on AutoinstallDirectError {
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
    TResult Function(AutoinstallDirectErrorNetwork value)? network,
    TResult Function(AutoinstallDirectErrorInvalidUrl value)? invalidUrl,
    TResult Function(AutoinstallDirectErrorInvalidContent value)?
        invalidContent,
    TResult Function(AutoinstallDirectErrorFileSystem value)? fileSystem,
    TResult Function(AutoinstallDirectErrorUnknown value)? unknown,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AutoinstallDirectErrorNetwork() when network != null:
        return network(_that);
      case AutoinstallDirectErrorInvalidUrl() when invalidUrl != null:
        return invalidUrl(_that);
      case AutoinstallDirectErrorInvalidContent() when invalidContent != null:
        return invalidContent(_that);
      case AutoinstallDirectErrorFileSystem() when fileSystem != null:
        return fileSystem(_that);
      case AutoinstallDirectErrorUnknown() when unknown != null:
        return unknown(_that);
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
    required TResult Function(AutoinstallDirectErrorNetwork value) network,
    required TResult Function(AutoinstallDirectErrorInvalidUrl value)
        invalidUrl,
    required TResult Function(AutoinstallDirectErrorInvalidContent value)
        invalidContent,
    required TResult Function(AutoinstallDirectErrorFileSystem value)
        fileSystem,
    required TResult Function(AutoinstallDirectErrorUnknown value) unknown,
  }) {
    final _that = this;
    switch (_that) {
      case AutoinstallDirectErrorNetwork():
        return network(_that);
      case AutoinstallDirectErrorInvalidUrl():
        return invalidUrl(_that);
      case AutoinstallDirectErrorInvalidContent():
        return invalidContent(_that);
      case AutoinstallDirectErrorFileSystem():
        return fileSystem(_that);
      case AutoinstallDirectErrorUnknown():
        return unknown(_that);
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
    TResult? Function(AutoinstallDirectErrorNetwork value)? network,
    TResult? Function(AutoinstallDirectErrorInvalidUrl value)? invalidUrl,
    TResult? Function(AutoinstallDirectErrorInvalidContent value)?
        invalidContent,
    TResult? Function(AutoinstallDirectErrorFileSystem value)? fileSystem,
    TResult? Function(AutoinstallDirectErrorUnknown value)? unknown,
  }) {
    final _that = this;
    switch (_that) {
      case AutoinstallDirectErrorNetwork() when network != null:
        return network(_that);
      case AutoinstallDirectErrorInvalidUrl() when invalidUrl != null:
        return invalidUrl(_that);
      case AutoinstallDirectErrorInvalidContent() when invalidContent != null:
        return invalidContent(_that);
      case AutoinstallDirectErrorFileSystem() when fileSystem != null:
        return fileSystem(_that);
      case AutoinstallDirectErrorUnknown() when unknown != null:
        return unknown(_that);
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
    TResult Function()? network,
    TResult Function()? invalidUrl,
    TResult Function()? invalidContent,
    TResult Function()? fileSystem,
    TResult Function(String rawError)? unknown,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AutoinstallDirectErrorNetwork() when network != null:
        return network();
      case AutoinstallDirectErrorInvalidUrl() when invalidUrl != null:
        return invalidUrl();
      case AutoinstallDirectErrorInvalidContent() when invalidContent != null:
        return invalidContent();
      case AutoinstallDirectErrorFileSystem() when fileSystem != null:
        return fileSystem();
      case AutoinstallDirectErrorUnknown() when unknown != null:
        return unknown(_that.rawError);
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
    required TResult Function() network,
    required TResult Function() invalidUrl,
    required TResult Function() invalidContent,
    required TResult Function() fileSystem,
    required TResult Function(String rawError) unknown,
  }) {
    final _that = this;
    switch (_that) {
      case AutoinstallDirectErrorNetwork():
        return network();
      case AutoinstallDirectErrorInvalidUrl():
        return invalidUrl();
      case AutoinstallDirectErrorInvalidContent():
        return invalidContent();
      case AutoinstallDirectErrorFileSystem():
        return fileSystem();
      case AutoinstallDirectErrorUnknown():
        return unknown(_that.rawError);
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
    TResult? Function()? network,
    TResult? Function()? invalidUrl,
    TResult? Function()? invalidContent,
    TResult? Function()? fileSystem,
    TResult? Function(String rawError)? unknown,
  }) {
    final _that = this;
    switch (_that) {
      case AutoinstallDirectErrorNetwork() when network != null:
        return network();
      case AutoinstallDirectErrorInvalidUrl() when invalidUrl != null:
        return invalidUrl();
      case AutoinstallDirectErrorInvalidContent() when invalidContent != null:
        return invalidContent();
      case AutoinstallDirectErrorFileSystem() when fileSystem != null:
        return fileSystem();
      case AutoinstallDirectErrorUnknown() when unknown != null:
        return unknown(_that.rawError);
      case _:
        return null;
    }
  }
}

/// @nodoc

class AutoinstallDirectErrorNetwork extends AutoinstallDirectError {
  AutoinstallDirectErrorNetwork() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoinstallDirectErrorNetwork);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AutoinstallDirectError.network()';
  }
}

/// @nodoc

class AutoinstallDirectErrorInvalidUrl extends AutoinstallDirectError {
  AutoinstallDirectErrorInvalidUrl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoinstallDirectErrorInvalidUrl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AutoinstallDirectError.invalidUrl()';
  }
}

/// @nodoc

class AutoinstallDirectErrorInvalidContent extends AutoinstallDirectError {
  AutoinstallDirectErrorInvalidContent() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoinstallDirectErrorInvalidContent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AutoinstallDirectError.invalidContent()';
  }
}

/// @nodoc

class AutoinstallDirectErrorFileSystem extends AutoinstallDirectError {
  AutoinstallDirectErrorFileSystem() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoinstallDirectErrorFileSystem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AutoinstallDirectError.fileSystem()';
  }
}

/// @nodoc

class AutoinstallDirectErrorUnknown extends AutoinstallDirectError {
  AutoinstallDirectErrorUnknown({required this.rawError}) : super._();

  final String rawError;

  /// Create a copy of AutoinstallDirectError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AutoinstallDirectErrorUnknownCopyWith<AutoinstallDirectErrorUnknown>
      get copyWith => _$AutoinstallDirectErrorUnknownCopyWithImpl<
          AutoinstallDirectErrorUnknown>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoinstallDirectErrorUnknown &&
            (identical(other.rawError, rawError) ||
                other.rawError == rawError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawError);

  @override
  String toString() {
    return 'AutoinstallDirectError.unknown(rawError: $rawError)';
  }
}

/// @nodoc
abstract mixin class $AutoinstallDirectErrorUnknownCopyWith<$Res>
    implements $AutoinstallDirectErrorCopyWith<$Res> {
  factory $AutoinstallDirectErrorUnknownCopyWith(
          AutoinstallDirectErrorUnknown value,
          $Res Function(AutoinstallDirectErrorUnknown) _then) =
      _$AutoinstallDirectErrorUnknownCopyWithImpl;
  @useResult
  $Res call({String rawError});
}

/// @nodoc
class _$AutoinstallDirectErrorUnknownCopyWithImpl<$Res>
    implements $AutoinstallDirectErrorUnknownCopyWith<$Res> {
  _$AutoinstallDirectErrorUnknownCopyWithImpl(this._self, this._then);

  final AutoinstallDirectErrorUnknown _self;
  final $Res Function(AutoinstallDirectErrorUnknown) _then;

  /// Create a copy of AutoinstallDirectError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rawError = null,
  }) {
    return _then(AutoinstallDirectErrorUnknown(
      rawError: null == rawError
          ? _self.rawError
          : rawError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

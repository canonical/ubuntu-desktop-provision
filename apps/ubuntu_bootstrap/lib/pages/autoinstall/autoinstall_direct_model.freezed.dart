// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autoinstall_direct_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AutoinstallDirectState {
  String get url => throw _privateConstructorUsedError;
  Uri? get localPath => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  AutoinstallDirectError? get error => throw _privateConstructorUsedError;

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoinstallDirectStateCopyWith<AutoinstallDirectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoinstallDirectStateCopyWith<$Res> {
  factory $AutoinstallDirectStateCopyWith(AutoinstallDirectState value,
          $Res Function(AutoinstallDirectState) then) =
      _$AutoinstallDirectStateCopyWithImpl<$Res, AutoinstallDirectState>;
  @useResult
  $Res call(
      {String url,
      Uri? localPath,
      bool isLoading,
      AutoinstallDirectError? error});

  $AutoinstallDirectErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$AutoinstallDirectStateCopyWithImpl<$Res,
        $Val extends AutoinstallDirectState>
    implements $AutoinstallDirectStateCopyWith<$Res> {
  _$AutoinstallDirectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      localPath: freezed == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as Uri?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AutoinstallDirectError?,
    ) as $Val);
  }

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoinstallDirectErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AutoinstallDirectErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AutoinstallDirectStateImplCopyWith<$Res>
    implements $AutoinstallDirectStateCopyWith<$Res> {
  factory _$$AutoinstallDirectStateImplCopyWith(
          _$AutoinstallDirectStateImpl value,
          $Res Function(_$AutoinstallDirectStateImpl) then) =
      __$$AutoinstallDirectStateImplCopyWithImpl<$Res>;
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
class __$$AutoinstallDirectStateImplCopyWithImpl<$Res>
    extends _$AutoinstallDirectStateCopyWithImpl<$Res,
        _$AutoinstallDirectStateImpl>
    implements _$$AutoinstallDirectStateImplCopyWith<$Res> {
  __$$AutoinstallDirectStateImplCopyWithImpl(
      _$AutoinstallDirectStateImpl _value,
      $Res Function(_$AutoinstallDirectStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$AutoinstallDirectStateImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      localPath: freezed == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as Uri?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AutoinstallDirectError?,
    ));
  }
}

/// @nodoc

class _$AutoinstallDirectStateImpl implements _AutoinstallDirectState {
  _$AutoinstallDirectStateImpl(
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

  @override
  String toString() {
    return 'AutoinstallDirectState(url: $url, localPath: $localPath, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoinstallDirectStateImpl &&
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

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoinstallDirectStateImplCopyWith<_$AutoinstallDirectStateImpl>
      get copyWith => __$$AutoinstallDirectStateImplCopyWithImpl<
          _$AutoinstallDirectStateImpl>(this, _$identity);
}

abstract class _AutoinstallDirectState implements AutoinstallDirectState {
  factory _AutoinstallDirectState(
      {final String url,
      final Uri? localPath,
      final bool isLoading,
      final AutoinstallDirectError? error}) = _$AutoinstallDirectStateImpl;

  @override
  String get url;
  @override
  Uri? get localPath;
  @override
  bool get isLoading;
  @override
  AutoinstallDirectError? get error;

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoinstallDirectStateImplCopyWith<_$AutoinstallDirectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AutoinstallDirectError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() invalidUrl,
    required TResult Function() invalidContent,
    required TResult Function() fileSystem,
    required TResult Function(String rawError) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? invalidUrl,
    TResult? Function()? invalidContent,
    TResult? Function()? fileSystem,
    TResult? Function(String rawError)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? invalidUrl,
    TResult Function()? invalidContent,
    TResult Function()? fileSystem,
    TResult Function(String rawError)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoinstallDirectErrorNetwork value)? network,
    TResult? Function(AutoinstallDirectErrorInvalidUrl value)? invalidUrl,
    TResult? Function(AutoinstallDirectErrorInvalidContent value)?
        invalidContent,
    TResult? Function(AutoinstallDirectErrorFileSystem value)? fileSystem,
    TResult? Function(AutoinstallDirectErrorUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutoinstallDirectErrorNetwork value)? network,
    TResult Function(AutoinstallDirectErrorInvalidUrl value)? invalidUrl,
    TResult Function(AutoinstallDirectErrorInvalidContent value)?
        invalidContent,
    TResult Function(AutoinstallDirectErrorFileSystem value)? fileSystem,
    TResult Function(AutoinstallDirectErrorUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoinstallDirectErrorCopyWith<$Res> {
  factory $AutoinstallDirectErrorCopyWith(AutoinstallDirectError value,
          $Res Function(AutoinstallDirectError) then) =
      _$AutoinstallDirectErrorCopyWithImpl<$Res, AutoinstallDirectError>;
}

/// @nodoc
class _$AutoinstallDirectErrorCopyWithImpl<$Res,
        $Val extends AutoinstallDirectError>
    implements $AutoinstallDirectErrorCopyWith<$Res> {
  _$AutoinstallDirectErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoinstallDirectError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AutoinstallDirectErrorNetworkImplCopyWith<$Res> {
  factory _$$AutoinstallDirectErrorNetworkImplCopyWith(
          _$AutoinstallDirectErrorNetworkImpl value,
          $Res Function(_$AutoinstallDirectErrorNetworkImpl) then) =
      __$$AutoinstallDirectErrorNetworkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoinstallDirectErrorNetworkImplCopyWithImpl<$Res>
    extends _$AutoinstallDirectErrorCopyWithImpl<$Res,
        _$AutoinstallDirectErrorNetworkImpl>
    implements _$$AutoinstallDirectErrorNetworkImplCopyWith<$Res> {
  __$$AutoinstallDirectErrorNetworkImplCopyWithImpl(
      _$AutoinstallDirectErrorNetworkImpl _value,
      $Res Function(_$AutoinstallDirectErrorNetworkImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoinstallDirectError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AutoinstallDirectErrorNetworkImpl
    extends AutoinstallDirectErrorNetwork {
  _$AutoinstallDirectErrorNetworkImpl() : super._();

  @override
  String toString() {
    return 'AutoinstallDirectError.network()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoinstallDirectErrorNetworkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() invalidUrl,
    required TResult Function() invalidContent,
    required TResult Function() fileSystem,
    required TResult Function(String rawError) unknown,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? invalidUrl,
    TResult? Function()? invalidContent,
    TResult? Function()? fileSystem,
    TResult? Function(String rawError)? unknown,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? invalidUrl,
    TResult Function()? invalidContent,
    TResult Function()? fileSystem,
    TResult Function(String rawError)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
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
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoinstallDirectErrorNetwork value)? network,
    TResult? Function(AutoinstallDirectErrorInvalidUrl value)? invalidUrl,
    TResult? Function(AutoinstallDirectErrorInvalidContent value)?
        invalidContent,
    TResult? Function(AutoinstallDirectErrorFileSystem value)? fileSystem,
    TResult? Function(AutoinstallDirectErrorUnknown value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
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
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class AutoinstallDirectErrorNetwork extends AutoinstallDirectError {
  factory AutoinstallDirectErrorNetwork() = _$AutoinstallDirectErrorNetworkImpl;
  AutoinstallDirectErrorNetwork._() : super._();
}

/// @nodoc
abstract class _$$AutoinstallDirectErrorInvalidUrlImplCopyWith<$Res> {
  factory _$$AutoinstallDirectErrorInvalidUrlImplCopyWith(
          _$AutoinstallDirectErrorInvalidUrlImpl value,
          $Res Function(_$AutoinstallDirectErrorInvalidUrlImpl) then) =
      __$$AutoinstallDirectErrorInvalidUrlImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoinstallDirectErrorInvalidUrlImplCopyWithImpl<$Res>
    extends _$AutoinstallDirectErrorCopyWithImpl<$Res,
        _$AutoinstallDirectErrorInvalidUrlImpl>
    implements _$$AutoinstallDirectErrorInvalidUrlImplCopyWith<$Res> {
  __$$AutoinstallDirectErrorInvalidUrlImplCopyWithImpl(
      _$AutoinstallDirectErrorInvalidUrlImpl _value,
      $Res Function(_$AutoinstallDirectErrorInvalidUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoinstallDirectError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AutoinstallDirectErrorInvalidUrlImpl
    extends AutoinstallDirectErrorInvalidUrl {
  _$AutoinstallDirectErrorInvalidUrlImpl() : super._();

  @override
  String toString() {
    return 'AutoinstallDirectError.invalidUrl()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoinstallDirectErrorInvalidUrlImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() invalidUrl,
    required TResult Function() invalidContent,
    required TResult Function() fileSystem,
    required TResult Function(String rawError) unknown,
  }) {
    return invalidUrl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? invalidUrl,
    TResult? Function()? invalidContent,
    TResult? Function()? fileSystem,
    TResult? Function(String rawError)? unknown,
  }) {
    return invalidUrl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? invalidUrl,
    TResult Function()? invalidContent,
    TResult Function()? fileSystem,
    TResult Function(String rawError)? unknown,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl();
    }
    return orElse();
  }

  @override
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
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoinstallDirectErrorNetwork value)? network,
    TResult? Function(AutoinstallDirectErrorInvalidUrl value)? invalidUrl,
    TResult? Function(AutoinstallDirectErrorInvalidContent value)?
        invalidContent,
    TResult? Function(AutoinstallDirectErrorFileSystem value)? fileSystem,
    TResult? Function(AutoinstallDirectErrorUnknown value)? unknown,
  }) {
    return invalidUrl?.call(this);
  }

  @override
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
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class AutoinstallDirectErrorInvalidUrl extends AutoinstallDirectError {
  factory AutoinstallDirectErrorInvalidUrl() =
      _$AutoinstallDirectErrorInvalidUrlImpl;
  AutoinstallDirectErrorInvalidUrl._() : super._();
}

/// @nodoc
abstract class _$$AutoinstallDirectErrorInvalidContentImplCopyWith<$Res> {
  factory _$$AutoinstallDirectErrorInvalidContentImplCopyWith(
          _$AutoinstallDirectErrorInvalidContentImpl value,
          $Res Function(_$AutoinstallDirectErrorInvalidContentImpl) then) =
      __$$AutoinstallDirectErrorInvalidContentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoinstallDirectErrorInvalidContentImplCopyWithImpl<$Res>
    extends _$AutoinstallDirectErrorCopyWithImpl<$Res,
        _$AutoinstallDirectErrorInvalidContentImpl>
    implements _$$AutoinstallDirectErrorInvalidContentImplCopyWith<$Res> {
  __$$AutoinstallDirectErrorInvalidContentImplCopyWithImpl(
      _$AutoinstallDirectErrorInvalidContentImpl _value,
      $Res Function(_$AutoinstallDirectErrorInvalidContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoinstallDirectError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AutoinstallDirectErrorInvalidContentImpl
    extends AutoinstallDirectErrorInvalidContent {
  _$AutoinstallDirectErrorInvalidContentImpl() : super._();

  @override
  String toString() {
    return 'AutoinstallDirectError.invalidContent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoinstallDirectErrorInvalidContentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() invalidUrl,
    required TResult Function() invalidContent,
    required TResult Function() fileSystem,
    required TResult Function(String rawError) unknown,
  }) {
    return invalidContent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? invalidUrl,
    TResult? Function()? invalidContent,
    TResult? Function()? fileSystem,
    TResult? Function(String rawError)? unknown,
  }) {
    return invalidContent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? invalidUrl,
    TResult Function()? invalidContent,
    TResult Function()? fileSystem,
    TResult Function(String rawError)? unknown,
    required TResult orElse(),
  }) {
    if (invalidContent != null) {
      return invalidContent();
    }
    return orElse();
  }

  @override
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
    return invalidContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoinstallDirectErrorNetwork value)? network,
    TResult? Function(AutoinstallDirectErrorInvalidUrl value)? invalidUrl,
    TResult? Function(AutoinstallDirectErrorInvalidContent value)?
        invalidContent,
    TResult? Function(AutoinstallDirectErrorFileSystem value)? fileSystem,
    TResult? Function(AutoinstallDirectErrorUnknown value)? unknown,
  }) {
    return invalidContent?.call(this);
  }

  @override
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
    if (invalidContent != null) {
      return invalidContent(this);
    }
    return orElse();
  }
}

abstract class AutoinstallDirectErrorInvalidContent
    extends AutoinstallDirectError {
  factory AutoinstallDirectErrorInvalidContent() =
      _$AutoinstallDirectErrorInvalidContentImpl;
  AutoinstallDirectErrorInvalidContent._() : super._();
}

/// @nodoc
abstract class _$$AutoinstallDirectErrorFileSystemImplCopyWith<$Res> {
  factory _$$AutoinstallDirectErrorFileSystemImplCopyWith(
          _$AutoinstallDirectErrorFileSystemImpl value,
          $Res Function(_$AutoinstallDirectErrorFileSystemImpl) then) =
      __$$AutoinstallDirectErrorFileSystemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoinstallDirectErrorFileSystemImplCopyWithImpl<$Res>
    extends _$AutoinstallDirectErrorCopyWithImpl<$Res,
        _$AutoinstallDirectErrorFileSystemImpl>
    implements _$$AutoinstallDirectErrorFileSystemImplCopyWith<$Res> {
  __$$AutoinstallDirectErrorFileSystemImplCopyWithImpl(
      _$AutoinstallDirectErrorFileSystemImpl _value,
      $Res Function(_$AutoinstallDirectErrorFileSystemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoinstallDirectError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AutoinstallDirectErrorFileSystemImpl
    extends AutoinstallDirectErrorFileSystem {
  _$AutoinstallDirectErrorFileSystemImpl() : super._();

  @override
  String toString() {
    return 'AutoinstallDirectError.fileSystem()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoinstallDirectErrorFileSystemImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() invalidUrl,
    required TResult Function() invalidContent,
    required TResult Function() fileSystem,
    required TResult Function(String rawError) unknown,
  }) {
    return fileSystem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? invalidUrl,
    TResult? Function()? invalidContent,
    TResult? Function()? fileSystem,
    TResult? Function(String rawError)? unknown,
  }) {
    return fileSystem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? invalidUrl,
    TResult Function()? invalidContent,
    TResult Function()? fileSystem,
    TResult Function(String rawError)? unknown,
    required TResult orElse(),
  }) {
    if (fileSystem != null) {
      return fileSystem();
    }
    return orElse();
  }

  @override
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
    return fileSystem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoinstallDirectErrorNetwork value)? network,
    TResult? Function(AutoinstallDirectErrorInvalidUrl value)? invalidUrl,
    TResult? Function(AutoinstallDirectErrorInvalidContent value)?
        invalidContent,
    TResult? Function(AutoinstallDirectErrorFileSystem value)? fileSystem,
    TResult? Function(AutoinstallDirectErrorUnknown value)? unknown,
  }) {
    return fileSystem?.call(this);
  }

  @override
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
    if (fileSystem != null) {
      return fileSystem(this);
    }
    return orElse();
  }
}

abstract class AutoinstallDirectErrorFileSystem extends AutoinstallDirectError {
  factory AutoinstallDirectErrorFileSystem() =
      _$AutoinstallDirectErrorFileSystemImpl;
  AutoinstallDirectErrorFileSystem._() : super._();
}

/// @nodoc
abstract class _$$AutoinstallDirectErrorUnknownImplCopyWith<$Res> {
  factory _$$AutoinstallDirectErrorUnknownImplCopyWith(
          _$AutoinstallDirectErrorUnknownImpl value,
          $Res Function(_$AutoinstallDirectErrorUnknownImpl) then) =
      __$$AutoinstallDirectErrorUnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rawError});
}

/// @nodoc
class __$$AutoinstallDirectErrorUnknownImplCopyWithImpl<$Res>
    extends _$AutoinstallDirectErrorCopyWithImpl<$Res,
        _$AutoinstallDirectErrorUnknownImpl>
    implements _$$AutoinstallDirectErrorUnknownImplCopyWith<$Res> {
  __$$AutoinstallDirectErrorUnknownImplCopyWithImpl(
      _$AutoinstallDirectErrorUnknownImpl _value,
      $Res Function(_$AutoinstallDirectErrorUnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoinstallDirectError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawError = null,
  }) {
    return _then(_$AutoinstallDirectErrorUnknownImpl(
      rawError: null == rawError
          ? _value.rawError
          : rawError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AutoinstallDirectErrorUnknownImpl
    extends AutoinstallDirectErrorUnknown {
  _$AutoinstallDirectErrorUnknownImpl({required this.rawError}) : super._();

  @override
  final String rawError;

  @override
  String toString() {
    return 'AutoinstallDirectError.unknown(rawError: $rawError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoinstallDirectErrorUnknownImpl &&
            (identical(other.rawError, rawError) ||
                other.rawError == rawError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawError);

  /// Create a copy of AutoinstallDirectError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoinstallDirectErrorUnknownImplCopyWith<
          _$AutoinstallDirectErrorUnknownImpl>
      get copyWith => __$$AutoinstallDirectErrorUnknownImplCopyWithImpl<
          _$AutoinstallDirectErrorUnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() invalidUrl,
    required TResult Function() invalidContent,
    required TResult Function() fileSystem,
    required TResult Function(String rawError) unknown,
  }) {
    return unknown(rawError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? invalidUrl,
    TResult? Function()? invalidContent,
    TResult? Function()? fileSystem,
    TResult? Function(String rawError)? unknown,
  }) {
    return unknown?.call(rawError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? invalidUrl,
    TResult Function()? invalidContent,
    TResult Function()? fileSystem,
    TResult Function(String rawError)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(rawError);
    }
    return orElse();
  }

  @override
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
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoinstallDirectErrorNetwork value)? network,
    TResult? Function(AutoinstallDirectErrorInvalidUrl value)? invalidUrl,
    TResult? Function(AutoinstallDirectErrorInvalidContent value)?
        invalidContent,
    TResult? Function(AutoinstallDirectErrorFileSystem value)? fileSystem,
    TResult? Function(AutoinstallDirectErrorUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
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
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class AutoinstallDirectErrorUnknown extends AutoinstallDirectError {
  factory AutoinstallDirectErrorUnknown({required final String rawError}) =
      _$AutoinstallDirectErrorUnknownImpl;
  AutoinstallDirectErrorUnknown._() : super._();

  String get rawError;

  /// Create a copy of AutoinstallDirectError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoinstallDirectErrorUnknownImplCopyWith<
          _$AutoinstallDirectErrorUnknownImpl>
      get copyWith => throw _privateConstructorUsedError;
}

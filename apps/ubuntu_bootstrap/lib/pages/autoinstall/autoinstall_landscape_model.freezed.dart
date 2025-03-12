// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autoinstall_landscape_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LandscapeData {
  String get userCode => throw _privateConstructorUsedError;
  AuthenticationStatus get authenticationStatus =>
      throw _privateConstructorUsedError;
  String get autoinstall => throw _privateConstructorUsedError;
  String get domainUrl => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get unretriableError => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of LandscapeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LandscapeDataCopyWith<LandscapeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandscapeDataCopyWith<$Res> {
  factory $LandscapeDataCopyWith(
          LandscapeData value, $Res Function(LandscapeData) then) =
      _$LandscapeDataCopyWithImpl<$Res, LandscapeData>;
  @useResult
  $Res call(
      {String userCode,
      AuthenticationStatus authenticationStatus,
      String autoinstall,
      String domainUrl,
      bool isLoading,
      bool unretriableError,
      Object? error});
}

/// @nodoc
class _$LandscapeDataCopyWithImpl<$Res, $Val extends LandscapeData>
    implements $LandscapeDataCopyWith<$Res> {
  _$LandscapeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LandscapeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? authenticationStatus = null,
    Object? autoinstall = null,
    Object? domainUrl = null,
    Object? isLoading = null,
    Object? unretriableError = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      userCode: null == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationStatus: null == authenticationStatus
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      autoinstall: null == autoinstall
          ? _value.autoinstall
          : autoinstall // ignore: cast_nullable_to_non_nullable
              as String,
      domainUrl: null == domainUrl
          ? _value.domainUrl
          : domainUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      unretriableError: null == unretriableError
          ? _value.unretriableError
          : unretriableError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LandscapeDataImplCopyWith<$Res>
    implements $LandscapeDataCopyWith<$Res> {
  factory _$$LandscapeDataImplCopyWith(
          _$LandscapeDataImpl value, $Res Function(_$LandscapeDataImpl) then) =
      __$$LandscapeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userCode,
      AuthenticationStatus authenticationStatus,
      String autoinstall,
      String domainUrl,
      bool isLoading,
      bool unretriableError,
      Object? error});
}

/// @nodoc
class __$$LandscapeDataImplCopyWithImpl<$Res>
    extends _$LandscapeDataCopyWithImpl<$Res, _$LandscapeDataImpl>
    implements _$$LandscapeDataImplCopyWith<$Res> {
  __$$LandscapeDataImplCopyWithImpl(
      _$LandscapeDataImpl _value, $Res Function(_$LandscapeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LandscapeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? authenticationStatus = null,
    Object? autoinstall = null,
    Object? domainUrl = null,
    Object? isLoading = null,
    Object? unretriableError = null,
    Object? error = freezed,
  }) {
    return _then(_$LandscapeDataImpl(
      userCode: null == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationStatus: null == authenticationStatus
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      autoinstall: null == autoinstall
          ? _value.autoinstall
          : autoinstall // ignore: cast_nullable_to_non_nullable
              as String,
      domainUrl: null == domainUrl
          ? _value.domainUrl
          : domainUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      unretriableError: null == unretriableError
          ? _value.unretriableError
          : unretriableError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$LandscapeDataImpl extends _LandscapeData {
  _$LandscapeDataImpl(
      {this.userCode = '',
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

  @override
  String toString() {
    return 'LandscapeData(userCode: $userCode, authenticationStatus: $authenticationStatus, autoinstall: $autoinstall, domainUrl: $domainUrl, isLoading: $isLoading, unretriableError: $unretriableError, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LandscapeDataImpl &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
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
      authenticationStatus,
      autoinstall,
      domainUrl,
      isLoading,
      unretriableError,
      const DeepCollectionEquality().hash(error));

  /// Create a copy of LandscapeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LandscapeDataImplCopyWith<_$LandscapeDataImpl> get copyWith =>
      __$$LandscapeDataImplCopyWithImpl<_$LandscapeDataImpl>(this, _$identity);
}

abstract class _LandscapeData extends LandscapeData {
  factory _LandscapeData(
      {final String userCode,
      final AuthenticationStatus authenticationStatus,
      final String autoinstall,
      final String domainUrl,
      final bool isLoading,
      final bool unretriableError,
      final Object? error}) = _$LandscapeDataImpl;
  _LandscapeData._() : super._();

  @override
  String get userCode;
  @override
  AuthenticationStatus get authenticationStatus;
  @override
  String get autoinstall;
  @override
  String get domainUrl;
  @override
  bool get isLoading;
  @override
  bool get unretriableError;
  @override
  Object? get error;

  /// Create a copy of LandscapeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LandscapeDataImplCopyWith<_$LandscapeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

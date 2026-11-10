// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'done_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DoneState {
  ProvisioningMode get provisioningMode;
  ProductInfo get productInfo;

  /// Create a copy of DoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DoneStateCopyWith<DoneState> get copyWith =>
      _$DoneStateCopyWithImpl<DoneState>(this as DoneState, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as DoneState;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DoneState &&
            (identical(other.provisioningMode, _this.provisioningMode) ||
                other.provisioningMode == _this.provisioningMode) &&
            (identical(other.productInfo, _this.productInfo) ||
                other.productInfo == _this.productInfo));
  }

  @override
  int get hashCode {
    final _this = this as DoneState;
    return Object.hash(runtimeType, _this.provisioningMode, _this.productInfo);
  }

  @override
  String toString() {
    final _this = this as DoneState;
    return 'DoneState(provisioningMode: ${_this.provisioningMode}, productInfo: ${_this.productInfo})';
  }
}

/// @nodoc
abstract mixin class $DoneStateCopyWith<$Res> {
  factory $DoneStateCopyWith(DoneState value, $Res Function(DoneState) _then) =
      _$DoneStateCopyWithImpl;
  @useResult
  $Res call({ProvisioningMode provisioningMode, ProductInfo productInfo});
}

/// @nodoc
class _$DoneStateCopyWithImpl<$Res> implements $DoneStateCopyWith<$Res> {
  _$DoneStateCopyWithImpl(this._self, this._then);

  final DoneState _self;
  final $Res Function(DoneState) _then;

  /// Create a copy of DoneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provisioningMode = null,
    Object? productInfo = null,
  }) {
    return _then(DoneState(
      provisioningMode: null == provisioningMode
          ? _self.provisioningMode
          : provisioningMode // ignore: cast_nullable_to_non_nullable
              as ProvisioningMode,
      productInfo: null == productInfo
          ? _self.productInfo
          : productInfo // ignore: cast_nullable_to_non_nullable
              as ProductInfo,
    ));
  }
}

/// Adds pattern-matching-related methods to [DoneState].
extension DoneStatePatterns on DoneState {
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
    TResult Function(_DoneState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DoneState() when $default != null:
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
    TResult Function(_DoneState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DoneState():
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
    TResult? Function(_DoneState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DoneState() when $default != null:
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
            ProvisioningMode provisioningMode, ProductInfo productInfo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DoneState() when $default != null:
        return $default(_that.provisioningMode, _that.productInfo);
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
    TResult Function(ProvisioningMode provisioningMode, ProductInfo productInfo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DoneState():
        return $default(_that.provisioningMode, _that.productInfo);
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
            ProvisioningMode provisioningMode, ProductInfo productInfo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DoneState() when $default != null:
        return $default(_that.provisioningMode, _that.productInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DoneState implements DoneState {
  _DoneState({required this.provisioningMode, required this.productInfo});

  @override
  final ProvisioningMode provisioningMode;
  @override
  final ProductInfo productInfo;

  /// Create a copy of DoneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DoneStateCopyWith<_DoneState> get copyWith =>
      __$DoneStateCopyWithImpl<_DoneState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoneState &&
            (identical(other.provisioningMode, provisioningMode) ||
                other.provisioningMode == provisioningMode) &&
            (identical(other.productInfo, productInfo) ||
                other.productInfo == productInfo));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, provisioningMode, productInfo);
  }

  @override
  String toString() {
    return 'DoneState(provisioningMode: $provisioningMode, productInfo: $productInfo)';
  }
}

/// @nodoc
abstract mixin class _$DoneStateCopyWith<$Res>
    implements $DoneStateCopyWith<$Res> {
  factory _$DoneStateCopyWith(
          _DoneState value, $Res Function(_DoneState) _then) =
      __$DoneStateCopyWithImpl;
  @override
  @useResult
  $Res call({ProvisioningMode provisioningMode, ProductInfo productInfo});
}

/// @nodoc
class __$DoneStateCopyWithImpl<$Res> implements _$DoneStateCopyWith<$Res> {
  __$DoneStateCopyWithImpl(this._self, this._then);

  final _DoneState _self;
  final $Res Function(_DoneState) _then;

  /// Create a copy of DoneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? provisioningMode = null,
    Object? productInfo = null,
  }) {
    return _then(_DoneState(
      provisioningMode: null == provisioningMode
          ? _self.provisioningMode
          : provisioningMode // ignore: cast_nullable_to_non_nullable
              as ProvisioningMode,
      productInfo: null == productInfo
          ? _self.productInfo
          : productInfo // ignore: cast_nullable_to_non_nullable
              as ProductInfo,
    ));
  }
}

// dart format on

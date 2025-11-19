// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autoinstall_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AutoinstallState implements DiagnosticableTreeMixin {
  AutoinstallType get type;

  /// Create a copy of AutoinstallState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AutoinstallStateCopyWith<AutoinstallState> get copyWith =>
      _$AutoinstallStateCopyWithImpl<AutoinstallState>(
          this as AutoinstallState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AutoinstallState'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoinstallState &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AutoinstallState(type: $type)';
  }
}

/// @nodoc
abstract mixin class $AutoinstallStateCopyWith<$Res> {
  factory $AutoinstallStateCopyWith(
          AutoinstallState value, $Res Function(AutoinstallState) _then) =
      _$AutoinstallStateCopyWithImpl;
  @useResult
  $Res call({AutoinstallType type});
}

/// @nodoc
class _$AutoinstallStateCopyWithImpl<$Res>
    implements $AutoinstallStateCopyWith<$Res> {
  _$AutoinstallStateCopyWithImpl(this._self, this._then);

  final AutoinstallState _self;
  final $Res Function(AutoinstallState) _then;

  /// Create a copy of AutoinstallState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AutoinstallType,
    ));
  }
}

/// Adds pattern-matching-related methods to [AutoinstallState].
extension AutoinstallStatePatterns on AutoinstallState {
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
    TResult Function(_AutoinstallState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AutoinstallState() when $default != null:
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
    TResult Function(_AutoinstallState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoinstallState():
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
    TResult? Function(_AutoinstallState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoinstallState() when $default != null:
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
    TResult Function(AutoinstallType type)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AutoinstallState() when $default != null:
        return $default(_that.type);
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
    TResult Function(AutoinstallType type) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoinstallState():
        return $default(_that.type);
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
    TResult? Function(AutoinstallType type)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoinstallState() when $default != null:
        return $default(_that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AutoinstallState
    with DiagnosticableTreeMixin
    implements AutoinstallState {
  _AutoinstallState({required this.type});

  @override
  final AutoinstallType type;

  /// Create a copy of AutoinstallState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AutoinstallStateCopyWith<_AutoinstallState> get copyWith =>
      __$AutoinstallStateCopyWithImpl<_AutoinstallState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AutoinstallState'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoinstallState &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AutoinstallState(type: $type)';
  }
}

/// @nodoc
abstract mixin class _$AutoinstallStateCopyWith<$Res>
    implements $AutoinstallStateCopyWith<$Res> {
  factory _$AutoinstallStateCopyWith(
          _AutoinstallState value, $Res Function(_AutoinstallState) _then) =
      __$AutoinstallStateCopyWithImpl;
  @override
  @useResult
  $Res call({AutoinstallType type});
}

/// @nodoc
class __$AutoinstallStateCopyWithImpl<$Res>
    implements _$AutoinstallStateCopyWith<$Res> {
  __$AutoinstallStateCopyWithImpl(this._self, this._then);

  final _AutoinstallState _self;
  final $Res Function(_AutoinstallState) _then;

  /// Create a copy of AutoinstallState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(_AutoinstallState(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AutoinstallType,
    ));
  }
}

// dart format on

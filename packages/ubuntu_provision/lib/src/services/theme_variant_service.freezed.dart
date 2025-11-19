// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_variant_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemeConfig {
  String? get accentColor;
  String? get elevatedButtonColor;
  String? get elevatedButtonTextColor;

  /// Create a copy of ThemeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeConfigCopyWith<ThemeConfig> get copyWith =>
      _$ThemeConfigCopyWithImpl<ThemeConfig>(this as ThemeConfig, _$identity);

  /// Serializes this ThemeConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeConfig &&
            (identical(other.accentColor, accentColor) ||
                other.accentColor == accentColor) &&
            (identical(other.elevatedButtonColor, elevatedButtonColor) ||
                other.elevatedButtonColor == elevatedButtonColor) &&
            (identical(
                    other.elevatedButtonTextColor, elevatedButtonTextColor) ||
                other.elevatedButtonTextColor == elevatedButtonTextColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, accentColor, elevatedButtonColor, elevatedButtonTextColor);

  @override
  String toString() {
    return 'ThemeConfig(accentColor: $accentColor, elevatedButtonColor: $elevatedButtonColor, elevatedButtonTextColor: $elevatedButtonTextColor)';
  }
}

/// @nodoc
abstract mixin class $ThemeConfigCopyWith<$Res> {
  factory $ThemeConfigCopyWith(
          ThemeConfig value, $Res Function(ThemeConfig) _then) =
      _$ThemeConfigCopyWithImpl;
  @useResult
  $Res call(
      {String? accentColor,
      String? elevatedButtonColor,
      String? elevatedButtonTextColor});
}

/// @nodoc
class _$ThemeConfigCopyWithImpl<$Res> implements $ThemeConfigCopyWith<$Res> {
  _$ThemeConfigCopyWithImpl(this._self, this._then);

  final ThemeConfig _self;
  final $Res Function(ThemeConfig) _then;

  /// Create a copy of ThemeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accentColor = freezed,
    Object? elevatedButtonColor = freezed,
    Object? elevatedButtonTextColor = freezed,
  }) {
    return _then(_self.copyWith(
      accentColor: freezed == accentColor
          ? _self.accentColor
          : accentColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevatedButtonColor: freezed == elevatedButtonColor
          ? _self.elevatedButtonColor
          : elevatedButtonColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevatedButtonTextColor: freezed == elevatedButtonTextColor
          ? _self.elevatedButtonTextColor
          : elevatedButtonTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ThemeConfig].
extension ThemeConfigPatterns on ThemeConfig {
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
    TResult Function(_ThemeConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ThemeConfig() when $default != null:
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
    TResult Function(_ThemeConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThemeConfig():
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
    TResult? Function(_ThemeConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThemeConfig() when $default != null:
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
    TResult Function(String? accentColor, String? elevatedButtonColor,
            String? elevatedButtonTextColor)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ThemeConfig() when $default != null:
        return $default(_that.accentColor, _that.elevatedButtonColor,
            _that.elevatedButtonTextColor);
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
    TResult Function(String? accentColor, String? elevatedButtonColor,
            String? elevatedButtonTextColor)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThemeConfig():
        return $default(_that.accentColor, _that.elevatedButtonColor,
            _that.elevatedButtonTextColor);
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
    TResult? Function(String? accentColor, String? elevatedButtonColor,
            String? elevatedButtonTextColor)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThemeConfig() when $default != null:
        return $default(_that.accentColor, _that.elevatedButtonColor,
            _that.elevatedButtonTextColor);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ThemeConfig implements ThemeConfig {
  const _ThemeConfig(
      {this.accentColor,
      this.elevatedButtonColor,
      this.elevatedButtonTextColor});
  factory _ThemeConfig.fromJson(Map<String, dynamic> json) =>
      _$ThemeConfigFromJson(json);

  @override
  final String? accentColor;
  @override
  final String? elevatedButtonColor;
  @override
  final String? elevatedButtonTextColor;

  /// Create a copy of ThemeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThemeConfigCopyWith<_ThemeConfig> get copyWith =>
      __$ThemeConfigCopyWithImpl<_ThemeConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThemeConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeConfig &&
            (identical(other.accentColor, accentColor) ||
                other.accentColor == accentColor) &&
            (identical(other.elevatedButtonColor, elevatedButtonColor) ||
                other.elevatedButtonColor == elevatedButtonColor) &&
            (identical(
                    other.elevatedButtonTextColor, elevatedButtonTextColor) ||
                other.elevatedButtonTextColor == elevatedButtonTextColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, accentColor, elevatedButtonColor, elevatedButtonTextColor);

  @override
  String toString() {
    return 'ThemeConfig(accentColor: $accentColor, elevatedButtonColor: $elevatedButtonColor, elevatedButtonTextColor: $elevatedButtonTextColor)';
  }
}

/// @nodoc
abstract mixin class _$ThemeConfigCopyWith<$Res>
    implements $ThemeConfigCopyWith<$Res> {
  factory _$ThemeConfigCopyWith(
          _ThemeConfig value, $Res Function(_ThemeConfig) _then) =
      __$ThemeConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? accentColor,
      String? elevatedButtonColor,
      String? elevatedButtonTextColor});
}

/// @nodoc
class __$ThemeConfigCopyWithImpl<$Res> implements _$ThemeConfigCopyWith<$Res> {
  __$ThemeConfigCopyWithImpl(this._self, this._then);

  final _ThemeConfig _self;
  final $Res Function(_ThemeConfig) _then;

  /// Create a copy of ThemeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accentColor = freezed,
    Object? elevatedButtonColor = freezed,
    Object? elevatedButtonTextColor = freezed,
  }) {
    return _then(_ThemeConfig(
      accentColor: freezed == accentColor
          ? _self.accentColor
          : accentColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevatedButtonColor: freezed == elevatedButtonColor
          ? _self.elevatedButtonColor
          : elevatedButtonColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevatedButtonTextColor: freezed == elevatedButtonTextColor
          ? _self.elevatedButtonTextColor
          : elevatedButtonTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

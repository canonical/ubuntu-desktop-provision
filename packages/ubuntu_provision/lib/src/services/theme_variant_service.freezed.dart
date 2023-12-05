// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_variant_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeConfig _$ThemeConfigFromJson(Map<String, dynamic> json) {
  return _ThemeConfig.fromJson(json);
}

/// @nodoc
mixin _$ThemeConfig {
  String? get accentColor => throw _privateConstructorUsedError;
  String? get elevatedButtonColor => throw _privateConstructorUsedError;
  String? get elevatedButtonTextColor => throw _privateConstructorUsedError;
  String? get windowTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeConfigCopyWith<ThemeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeConfigCopyWith<$Res> {
  factory $ThemeConfigCopyWith(
          ThemeConfig value, $Res Function(ThemeConfig) then) =
      _$ThemeConfigCopyWithImpl<$Res, ThemeConfig>;
  @useResult
  $Res call(
      {String? accentColor,
      String? elevatedButtonColor,
      String? elevatedButtonTextColor,
      String? windowTitle});
}

/// @nodoc
class _$ThemeConfigCopyWithImpl<$Res, $Val extends ThemeConfig>
    implements $ThemeConfigCopyWith<$Res> {
  _$ThemeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accentColor = freezed,
    Object? elevatedButtonColor = freezed,
    Object? elevatedButtonTextColor = freezed,
    Object? windowTitle = freezed,
  }) {
    return _then(_value.copyWith(
      accentColor: freezed == accentColor
          ? _value.accentColor
          : accentColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevatedButtonColor: freezed == elevatedButtonColor
          ? _value.elevatedButtonColor
          : elevatedButtonColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevatedButtonTextColor: freezed == elevatedButtonTextColor
          ? _value.elevatedButtonTextColor
          : elevatedButtonTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
      windowTitle: freezed == windowTitle
          ? _value.windowTitle
          : windowTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeConfigImplCopyWith<$Res>
    implements $ThemeConfigCopyWith<$Res> {
  factory _$$ThemeConfigImplCopyWith(
          _$ThemeConfigImpl value, $Res Function(_$ThemeConfigImpl) then) =
      __$$ThemeConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accentColor,
      String? elevatedButtonColor,
      String? elevatedButtonTextColor,
      String? windowTitle});
}

/// @nodoc
class __$$ThemeConfigImplCopyWithImpl<$Res>
    extends _$ThemeConfigCopyWithImpl<$Res, _$ThemeConfigImpl>
    implements _$$ThemeConfigImplCopyWith<$Res> {
  __$$ThemeConfigImplCopyWithImpl(
      _$ThemeConfigImpl _value, $Res Function(_$ThemeConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accentColor = freezed,
    Object? elevatedButtonColor = freezed,
    Object? elevatedButtonTextColor = freezed,
    Object? windowTitle = freezed,
  }) {
    return _then(_$ThemeConfigImpl(
      accentColor: freezed == accentColor
          ? _value.accentColor
          : accentColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevatedButtonColor: freezed == elevatedButtonColor
          ? _value.elevatedButtonColor
          : elevatedButtonColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevatedButtonTextColor: freezed == elevatedButtonTextColor
          ? _value.elevatedButtonTextColor
          : elevatedButtonTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
      windowTitle: freezed == windowTitle
          ? _value.windowTitle
          : windowTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeConfigImpl implements _ThemeConfig {
  const _$ThemeConfigImpl(
      {this.accentColor,
      this.elevatedButtonColor,
      this.elevatedButtonTextColor,
      this.windowTitle});

  factory _$ThemeConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeConfigImplFromJson(json);

  @override
  final String? accentColor;
  @override
  final String? elevatedButtonColor;
  @override
  final String? elevatedButtonTextColor;
  @override
  final String? windowTitle;

  @override
  String toString() {
    return 'ThemeConfig(accentColor: $accentColor, elevatedButtonColor: $elevatedButtonColor, elevatedButtonTextColor: $elevatedButtonTextColor, windowTitle: $windowTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeConfigImpl &&
            (identical(other.accentColor, accentColor) ||
                other.accentColor == accentColor) &&
            (identical(other.elevatedButtonColor, elevatedButtonColor) ||
                other.elevatedButtonColor == elevatedButtonColor) &&
            (identical(
                    other.elevatedButtonTextColor, elevatedButtonTextColor) ||
                other.elevatedButtonTextColor == elevatedButtonTextColor) &&
            (identical(other.windowTitle, windowTitle) ||
                other.windowTitle == windowTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accentColor, elevatedButtonColor,
      elevatedButtonTextColor, windowTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeConfigImplCopyWith<_$ThemeConfigImpl> get copyWith =>
      __$$ThemeConfigImplCopyWithImpl<_$ThemeConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeConfigImplToJson(
      this,
    );
  }
}

abstract class _ThemeConfig implements ThemeConfig {
  const factory _ThemeConfig(
      {final String? accentColor,
      final String? elevatedButtonColor,
      final String? elevatedButtonTextColor,
      final String? windowTitle}) = _$ThemeConfigImpl;

  factory _ThemeConfig.fromJson(Map<String, dynamic> json) =
      _$ThemeConfigImpl.fromJson;

  @override
  String? get accentColor;
  @override
  String? get elevatedButtonColor;
  @override
  String? get elevatedButtonTextColor;
  @override
  String? get windowTitle;
  @override
  @JsonKey(ignore: true)
  _$$ThemeConfigImplCopyWith<_$ThemeConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

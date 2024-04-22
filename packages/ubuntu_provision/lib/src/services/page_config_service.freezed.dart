// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_config_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageConfigEntry _$PageConfigEntryFromJson(Map<String, dynamic> json) {
  return _PageConfigEntry.fromJson(json);
}

/// @nodoc
mixin _$PageConfigEntry {
  String? get image => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageConfigEntryCopyWith<PageConfigEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageConfigEntryCopyWith<$Res> {
  factory $PageConfigEntryCopyWith(
          PageConfigEntry value, $Res Function(PageConfigEntry) then) =
      _$PageConfigEntryCopyWithImpl<$Res, PageConfigEntry>;
  @useResult
  $Res call({String? image, bool visible});
}

/// @nodoc
class _$PageConfigEntryCopyWithImpl<$Res, $Val extends PageConfigEntry>
    implements $PageConfigEntryCopyWith<$Res> {
  _$PageConfigEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? visible = null,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageConfigEntryImplCopyWith<$Res>
    implements $PageConfigEntryCopyWith<$Res> {
  factory _$$PageConfigEntryImplCopyWith(_$PageConfigEntryImpl value,
          $Res Function(_$PageConfigEntryImpl) then) =
      __$$PageConfigEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, bool visible});
}

/// @nodoc
class __$$PageConfigEntryImplCopyWithImpl<$Res>
    extends _$PageConfigEntryCopyWithImpl<$Res, _$PageConfigEntryImpl>
    implements _$$PageConfigEntryImplCopyWith<$Res> {
  __$$PageConfigEntryImplCopyWithImpl(
      _$PageConfigEntryImpl _value, $Res Function(_$PageConfigEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? visible = null,
  }) {
    return _then(_$PageConfigEntryImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageConfigEntryImpl implements _PageConfigEntry {
  const _$PageConfigEntryImpl({this.image, this.visible = true});

  factory _$PageConfigEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageConfigEntryImplFromJson(json);

  @override
  final String? image;
  @override
  @JsonKey()
  final bool visible;

  @override
  String toString() {
    return 'PageConfigEntry(image: $image, visible: $visible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageConfigEntryImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, visible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageConfigEntryImplCopyWith<_$PageConfigEntryImpl> get copyWith =>
      __$$PageConfigEntryImplCopyWithImpl<_$PageConfigEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageConfigEntryImplToJson(
      this,
    );
  }
}

abstract class _PageConfigEntry implements PageConfigEntry {
  const factory _PageConfigEntry({final String? image, final bool visible}) =
      _$PageConfigEntryImpl;

  factory _PageConfigEntry.fromJson(Map<String, dynamic> json) =
      _$PageConfigEntryImpl.fromJson;

  @override
  String? get image;
  @override
  bool get visible;
  @override
  @JsonKey(ignore: true)
  _$$PageConfigEntryImplCopyWith<_$PageConfigEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageConfig _$PageConfigFromJson(Map<String, dynamic> json) {
  return _PageConfig.fromJson(json);
}

/// @nodoc
mixin _$PageConfig {
  @PageConfigEntryConverter()
  Map<String, PageConfigEntry> get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageConfigCopyWith<PageConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageConfigCopyWith<$Res> {
  factory $PageConfigCopyWith(
          PageConfig value, $Res Function(PageConfig) then) =
      _$PageConfigCopyWithImpl<$Res, PageConfig>;
  @useResult
  $Res call({@PageConfigEntryConverter() Map<String, PageConfigEntry> pages});
}

/// @nodoc
class _$PageConfigCopyWithImpl<$Res, $Val extends PageConfig>
    implements $PageConfigCopyWith<$Res> {
  _$PageConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as Map<String, PageConfigEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageConfigImplCopyWith<$Res>
    implements $PageConfigCopyWith<$Res> {
  factory _$$PageConfigImplCopyWith(
          _$PageConfigImpl value, $Res Function(_$PageConfigImpl) then) =
      __$$PageConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@PageConfigEntryConverter() Map<String, PageConfigEntry> pages});
}

/// @nodoc
class __$$PageConfigImplCopyWithImpl<$Res>
    extends _$PageConfigCopyWithImpl<$Res, _$PageConfigImpl>
    implements _$$PageConfigImplCopyWith<$Res> {
  __$$PageConfigImplCopyWithImpl(
      _$PageConfigImpl _value, $Res Function(_$PageConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pages = null,
  }) {
    return _then(_$PageConfigImpl(
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as Map<String, PageConfigEntry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageConfigImpl implements _PageConfig {
  const _$PageConfigImpl(
      {@PageConfigEntryConverter()
      final Map<String, PageConfigEntry> pages = const {}})
      : _pages = pages;

  factory _$PageConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageConfigImplFromJson(json);

  final Map<String, PageConfigEntry> _pages;
  @override
  @JsonKey()
  @PageConfigEntryConverter()
  Map<String, PageConfigEntry> get pages {
    if (_pages is EqualUnmodifiableMapView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pages);
  }

  @override
  String toString() {
    return 'PageConfig(pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageConfigImpl &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageConfigImplCopyWith<_$PageConfigImpl> get copyWith =>
      __$$PageConfigImplCopyWithImpl<_$PageConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageConfigImplToJson(
      this,
    );
  }
}

abstract class _PageConfig implements PageConfig {
  const factory _PageConfig(
      {@PageConfigEntryConverter()
      final Map<String, PageConfigEntry> pages}) = _$PageConfigImpl;

  factory _PageConfig.fromJson(Map<String, dynamic> json) =
      _$PageConfigImpl.fromJson;

  @override
  @PageConfigEntryConverter()
  Map<String, PageConfigEntry> get pages;
  @override
  @JsonKey(ignore: true)
  _$$PageConfigImplCopyWith<_$PageConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

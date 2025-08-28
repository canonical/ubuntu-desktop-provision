// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_config_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageConfigEntry {
  String? get image;
  String? get imageDark;
  bool get visible;

  /// Create a copy of PageConfigEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageConfigEntryCopyWith<PageConfigEntry> get copyWith =>
      _$PageConfigEntryCopyWithImpl<PageConfigEntry>(
          this as PageConfigEntry, _$identity);

  /// Serializes this PageConfigEntry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageConfigEntry &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageDark, imageDark) ||
                other.imageDark == imageDark) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, imageDark, visible);

  @override
  String toString() {
    return 'PageConfigEntry(image: $image, imageDark: $imageDark, visible: $visible)';
  }
}

/// @nodoc
abstract mixin class $PageConfigEntryCopyWith<$Res> {
  factory $PageConfigEntryCopyWith(
          PageConfigEntry value, $Res Function(PageConfigEntry) _then) =
      _$PageConfigEntryCopyWithImpl;
  @useResult
  $Res call({String? image, String? imageDark, bool visible});
}

/// @nodoc
class _$PageConfigEntryCopyWithImpl<$Res>
    implements $PageConfigEntryCopyWith<$Res> {
  _$PageConfigEntryCopyWithImpl(this._self, this._then);

  final PageConfigEntry _self;
  final $Res Function(PageConfigEntry) _then;

  /// Create a copy of PageConfigEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? imageDark = freezed,
    Object? visible = null,
  }) {
    return _then(_self.copyWith(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageDark: freezed == imageDark
          ? _self.imageDark
          : imageDark // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: null == visible
          ? _self.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [PageConfigEntry].
extension PageConfigEntryPatterns on PageConfigEntry {
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
    TResult Function(_PageConfigEntry value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageConfigEntry() when $default != null:
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
    TResult Function(_PageConfigEntry value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageConfigEntry():
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
    TResult? Function(_PageConfigEntry value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageConfigEntry() when $default != null:
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
    TResult Function(String? image, String? imageDark, bool visible)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageConfigEntry() when $default != null:
        return $default(_that.image, _that.imageDark, _that.visible);
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
    TResult Function(String? image, String? imageDark, bool visible) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageConfigEntry():
        return $default(_that.image, _that.imageDark, _that.visible);
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
    TResult? Function(String? image, String? imageDark, bool visible)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageConfigEntry() when $default != null:
        return $default(_that.image, _that.imageDark, _that.visible);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PageConfigEntry implements PageConfigEntry {
  const _PageConfigEntry({this.image, this.imageDark, this.visible = true});
  factory _PageConfigEntry.fromJson(Map<String, dynamic> json) =>
      _$PageConfigEntryFromJson(json);

  @override
  final String? image;
  @override
  final String? imageDark;
  @override
  @JsonKey()
  final bool visible;

  /// Create a copy of PageConfigEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageConfigEntryCopyWith<_PageConfigEntry> get copyWith =>
      __$PageConfigEntryCopyWithImpl<_PageConfigEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageConfigEntryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageConfigEntry &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageDark, imageDark) ||
                other.imageDark == imageDark) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, imageDark, visible);

  @override
  String toString() {
    return 'PageConfigEntry(image: $image, imageDark: $imageDark, visible: $visible)';
  }
}

/// @nodoc
abstract mixin class _$PageConfigEntryCopyWith<$Res>
    implements $PageConfigEntryCopyWith<$Res> {
  factory _$PageConfigEntryCopyWith(
          _PageConfigEntry value, $Res Function(_PageConfigEntry) _then) =
      __$PageConfigEntryCopyWithImpl;
  @override
  @useResult
  $Res call({String? image, String? imageDark, bool visible});
}

/// @nodoc
class __$PageConfigEntryCopyWithImpl<$Res>
    implements _$PageConfigEntryCopyWith<$Res> {
  __$PageConfigEntryCopyWithImpl(this._self, this._then);

  final _PageConfigEntry _self;
  final $Res Function(_PageConfigEntry) _then;

  /// Create a copy of PageConfigEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = freezed,
    Object? imageDark = freezed,
    Object? visible = null,
  }) {
    return _then(_PageConfigEntry(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageDark: freezed == imageDark
          ? _self.imageDark
          : imageDark // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: null == visible
          ? _self.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$PageConfig {
  @PageConfigEntryConverter()
  Map<String, PageConfigEntry> get pages;

  /// Create a copy of PageConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageConfigCopyWith<PageConfig> get copyWith =>
      _$PageConfigCopyWithImpl<PageConfig>(this as PageConfig, _$identity);

  /// Serializes this PageConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageConfig &&
            const DeepCollectionEquality().equals(other.pages, pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pages));

  @override
  String toString() {
    return 'PageConfig(pages: $pages)';
  }
}

/// @nodoc
abstract mixin class $PageConfigCopyWith<$Res> {
  factory $PageConfigCopyWith(
          PageConfig value, $Res Function(PageConfig) _then) =
      _$PageConfigCopyWithImpl;
  @useResult
  $Res call({@PageConfigEntryConverter() Map<String, PageConfigEntry> pages});
}

/// @nodoc
class _$PageConfigCopyWithImpl<$Res> implements $PageConfigCopyWith<$Res> {
  _$PageConfigCopyWithImpl(this._self, this._then);

  final PageConfig _self;
  final $Res Function(PageConfig) _then;

  /// Create a copy of PageConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pages = null,
  }) {
    return _then(_self.copyWith(
      pages: null == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as Map<String, PageConfigEntry>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PageConfig].
extension PageConfigPatterns on PageConfig {
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
    TResult Function(_PageConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageConfig() when $default != null:
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
    TResult Function(_PageConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageConfig():
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
    TResult? Function(_PageConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageConfig() when $default != null:
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
            @PageConfigEntryConverter() Map<String, PageConfigEntry> pages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageConfig() when $default != null:
        return $default(_that.pages);
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
            @PageConfigEntryConverter() Map<String, PageConfigEntry> pages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageConfig():
        return $default(_that.pages);
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
            @PageConfigEntryConverter() Map<String, PageConfigEntry> pages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageConfig() when $default != null:
        return $default(_that.pages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PageConfig implements PageConfig {
  const _PageConfig(
      {@PageConfigEntryConverter()
      final Map<String, PageConfigEntry> pages = const {}})
      : _pages = pages;
  factory _PageConfig.fromJson(Map<String, dynamic> json) =>
      _$PageConfigFromJson(json);

  final Map<String, PageConfigEntry> _pages;
  @override
  @JsonKey()
  @PageConfigEntryConverter()
  Map<String, PageConfigEntry> get pages {
    if (_pages is EqualUnmodifiableMapView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pages);
  }

  /// Create a copy of PageConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageConfigCopyWith<_PageConfig> get copyWith =>
      __$PageConfigCopyWithImpl<_PageConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageConfig &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pages));

  @override
  String toString() {
    return 'PageConfig(pages: $pages)';
  }
}

/// @nodoc
abstract mixin class _$PageConfigCopyWith<$Res>
    implements $PageConfigCopyWith<$Res> {
  factory _$PageConfigCopyWith(
          _PageConfig value, $Res Function(_PageConfig) _then) =
      __$PageConfigCopyWithImpl;
  @override
  @useResult
  $Res call({@PageConfigEntryConverter() Map<String, PageConfigEntry> pages});
}

/// @nodoc
class __$PageConfigCopyWithImpl<$Res> implements _$PageConfigCopyWith<$Res> {
  __$PageConfigCopyWithImpl(this._self, this._then);

  final _PageConfig _self;
  final $Res Function(_PageConfig) _then;

  /// Create a copy of PageConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pages = null,
  }) {
    return _then(_PageConfig(
      pages: null == pages
          ? _self._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as Map<String, PageConfigEntry>,
    ));
  }
}

// dart format on

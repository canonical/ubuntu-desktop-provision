// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_key_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecoveryKeyException implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'RecoveryKeyException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecoveryKeyException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecoveryKeyException()';
  }
}

/// @nodoc
class $RecoveryKeyExceptionCopyWith<$Res> {
  $RecoveryKeyExceptionCopyWith(
      RecoveryKeyException _, $Res Function(RecoveryKeyException) __);
}

/// Adds pattern-matching-related methods to [RecoveryKeyException].
extension RecoveryKeyExceptionPatterns on RecoveryKeyException {
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
    TResult Function(RecoveryKeyExceptionDisallowedPath value)? disallowedPath,
    TResult Function(RecoveryKeyExceptionFileSystem value)? fileSystem,
    TResult Function(RecoveryKeyExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RecoveryKeyExceptionDisallowedPath() when disallowedPath != null:
        return disallowedPath(_that);
      case RecoveryKeyExceptionFileSystem() when fileSystem != null:
        return fileSystem(_that);
      case RecoveryKeyExceptionUnknown() when unknown != null:
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
    required TResult Function(RecoveryKeyExceptionDisallowedPath value)
        disallowedPath,
    required TResult Function(RecoveryKeyExceptionFileSystem value) fileSystem,
    required TResult Function(RecoveryKeyExceptionUnknown value) unknown,
  }) {
    final _that = this;
    switch (_that) {
      case RecoveryKeyExceptionDisallowedPath():
        return disallowedPath(_that);
      case RecoveryKeyExceptionFileSystem():
        return fileSystem(_that);
      case RecoveryKeyExceptionUnknown():
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
    TResult? Function(RecoveryKeyExceptionDisallowedPath value)? disallowedPath,
    TResult? Function(RecoveryKeyExceptionFileSystem value)? fileSystem,
    TResult? Function(RecoveryKeyExceptionUnknown value)? unknown,
  }) {
    final _that = this;
    switch (_that) {
      case RecoveryKeyExceptionDisallowedPath() when disallowedPath != null:
        return disallowedPath(_that);
      case RecoveryKeyExceptionFileSystem() when fileSystem != null:
        return fileSystem(_that);
      case RecoveryKeyExceptionUnknown() when unknown != null:
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
    TResult Function()? disallowedPath,
    TResult Function()? fileSystem,
    TResult Function(String rawError)? unknown,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RecoveryKeyExceptionDisallowedPath() when disallowedPath != null:
        return disallowedPath();
      case RecoveryKeyExceptionFileSystem() when fileSystem != null:
        return fileSystem();
      case RecoveryKeyExceptionUnknown() when unknown != null:
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
    required TResult Function() disallowedPath,
    required TResult Function() fileSystem,
    required TResult Function(String rawError) unknown,
  }) {
    final _that = this;
    switch (_that) {
      case RecoveryKeyExceptionDisallowedPath():
        return disallowedPath();
      case RecoveryKeyExceptionFileSystem():
        return fileSystem();
      case RecoveryKeyExceptionUnknown():
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
    TResult? Function()? disallowedPath,
    TResult? Function()? fileSystem,
    TResult? Function(String rawError)? unknown,
  }) {
    final _that = this;
    switch (_that) {
      case RecoveryKeyExceptionDisallowedPath() when disallowedPath != null:
        return disallowedPath();
      case RecoveryKeyExceptionFileSystem() when fileSystem != null:
        return fileSystem();
      case RecoveryKeyExceptionUnknown() when unknown != null:
        return unknown(_that.rawError);
      case _:
        return null;
    }
  }
}

/// @nodoc

class RecoveryKeyExceptionDisallowedPath
    with DiagnosticableTreeMixin
    implements RecoveryKeyException {
  RecoveryKeyExceptionDisallowedPath();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RecoveryKeyException.disallowedPath'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecoveryKeyExceptionDisallowedPath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecoveryKeyException.disallowedPath()';
  }
}

/// @nodoc

class RecoveryKeyExceptionFileSystem
    with DiagnosticableTreeMixin
    implements RecoveryKeyException {
  RecoveryKeyExceptionFileSystem();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RecoveryKeyException.fileSystem'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecoveryKeyExceptionFileSystem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecoveryKeyException.fileSystem()';
  }
}

/// @nodoc

class RecoveryKeyExceptionUnknown
    with DiagnosticableTreeMixin
    implements RecoveryKeyException {
  RecoveryKeyExceptionUnknown({required this.rawError});

  final String rawError;

  /// Create a copy of RecoveryKeyException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecoveryKeyExceptionUnknownCopyWith<RecoveryKeyExceptionUnknown>
      get copyWith => _$RecoveryKeyExceptionUnknownCopyWithImpl<
          RecoveryKeyExceptionUnknown>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RecoveryKeyException.unknown'))
      ..add(DiagnosticsProperty('rawError', rawError));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecoveryKeyExceptionUnknown &&
            (identical(other.rawError, rawError) ||
                other.rawError == rawError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawError);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecoveryKeyException.unknown(rawError: $rawError)';
  }
}

/// @nodoc
abstract mixin class $RecoveryKeyExceptionUnknownCopyWith<$Res>
    implements $RecoveryKeyExceptionCopyWith<$Res> {
  factory $RecoveryKeyExceptionUnknownCopyWith(
          RecoveryKeyExceptionUnknown value,
          $Res Function(RecoveryKeyExceptionUnknown) _then) =
      _$RecoveryKeyExceptionUnknownCopyWithImpl;
  @useResult
  $Res call({String rawError});
}

/// @nodoc
class _$RecoveryKeyExceptionUnknownCopyWithImpl<$Res>
    implements $RecoveryKeyExceptionUnknownCopyWith<$Res> {
  _$RecoveryKeyExceptionUnknownCopyWithImpl(this._self, this._then);

  final RecoveryKeyExceptionUnknown _self;
  final $Res Function(RecoveryKeyExceptionUnknown) _then;

  /// Create a copy of RecoveryKeyException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rawError = null,
  }) {
    return _then(RecoveryKeyExceptionUnknown(
      rawError: null == rawError
          ? _self.rawError
          : rawError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorReportRef _$ErrorReportRefFromJson(Map<String, dynamic> json) {
  return _ErrorReportRef.fromJson(json);
}

/// @nodoc
mixin _$ErrorReportRef {
  ErrorReportState get state => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  ErrorReportKind get kind => throw _privateConstructorUsedError;
  bool get seen => throw _privateConstructorUsedError;
  String? get oopsId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorReportRefCopyWith<ErrorReportRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorReportRefCopyWith<$Res> {
  factory $ErrorReportRefCopyWith(
          ErrorReportRef value, $Res Function(ErrorReportRef) then) =
      _$ErrorReportRefCopyWithImpl<$Res, ErrorReportRef>;
  @useResult
  $Res call(
      {ErrorReportState state,
      String base,
      ErrorReportKind kind,
      bool seen,
      String? oopsId});
}

/// @nodoc
class _$ErrorReportRefCopyWithImpl<$Res, $Val extends ErrorReportRef>
    implements $ErrorReportRefCopyWith<$Res> {
  _$ErrorReportRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? base = null,
    Object? kind = null,
    Object? seen = null,
    Object? oopsId = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ErrorReportState,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as ErrorReportKind,
      seen: null == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      oopsId: freezed == oopsId
          ? _value.oopsId
          : oopsId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorReportRefImplCopyWith<$Res>
    implements $ErrorReportRefCopyWith<$Res> {
  factory _$$ErrorReportRefImplCopyWith(_$ErrorReportRefImpl value,
          $Res Function(_$ErrorReportRefImpl) then) =
      __$$ErrorReportRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ErrorReportState state,
      String base,
      ErrorReportKind kind,
      bool seen,
      String? oopsId});
}

/// @nodoc
class __$$ErrorReportRefImplCopyWithImpl<$Res>
    extends _$ErrorReportRefCopyWithImpl<$Res, _$ErrorReportRefImpl>
    implements _$$ErrorReportRefImplCopyWith<$Res> {
  __$$ErrorReportRefImplCopyWithImpl(
      _$ErrorReportRefImpl _value, $Res Function(_$ErrorReportRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? base = null,
    Object? kind = null,
    Object? seen = null,
    Object? oopsId = freezed,
  }) {
    return _then(_$ErrorReportRefImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ErrorReportState,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as ErrorReportKind,
      seen: null == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      oopsId: freezed == oopsId
          ? _value.oopsId
          : oopsId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorReportRefImpl implements _ErrorReportRef {
  const _$ErrorReportRefImpl(
      {required this.state,
      required this.base,
      required this.kind,
      required this.seen,
      required this.oopsId});

  factory _$ErrorReportRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorReportRefImplFromJson(json);

  @override
  final ErrorReportState state;
  @override
  final String base;
  @override
  final ErrorReportKind kind;
  @override
  final bool seen;
  @override
  final String? oopsId;

  @override
  String toString() {
    return 'ErrorReportRef(state: $state, base: $base, kind: $kind, seen: $seen, oopsId: $oopsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorReportRefImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.seen, seen) || other.seen == seen) &&
            (identical(other.oopsId, oopsId) || other.oopsId == oopsId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, base, kind, seen, oopsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorReportRefImplCopyWith<_$ErrorReportRefImpl> get copyWith =>
      __$$ErrorReportRefImplCopyWithImpl<_$ErrorReportRefImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorReportRefImplToJson(
      this,
    );
  }
}

abstract class _ErrorReportRef implements ErrorReportRef {
  const factory _ErrorReportRef(
      {required final ErrorReportState state,
      required final String base,
      required final ErrorReportKind kind,
      required final bool seen,
      required final String? oopsId}) = _$ErrorReportRefImpl;

  factory _ErrorReportRef.fromJson(Map<String, dynamic> json) =
      _$ErrorReportRefImpl.fromJson;

  @override
  ErrorReportState get state;
  @override
  String get base;
  @override
  ErrorReportKind get kind;
  @override
  bool get seen;
  @override
  String? get oopsId;
  @override
  @JsonKey(ignore: true)
  _$$ErrorReportRefImplCopyWith<_$ErrorReportRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApplicationStatus _$ApplicationStatusFromJson(Map<String, dynamic> json) {
  return _ApplicationStatus.fromJson(json);
}

/// @nodoc
mixin _$ApplicationStatus {
  ApplicationState get state => throw _privateConstructorUsedError;
  String get confirmingTty => throw _privateConstructorUsedError;
  ErrorReportRef? get error => throw _privateConstructorUsedError;
  bool? get cloudInitOk => throw _privateConstructorUsedError;
  bool? get interactive => throw _privateConstructorUsedError;
  String get echoSyslogId => throw _privateConstructorUsedError;
  String get logSyslogId => throw _privateConstructorUsedError;
  String get eventSyslogId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationStatusCopyWith<ApplicationStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStatusCopyWith<$Res> {
  factory $ApplicationStatusCopyWith(
          ApplicationStatus value, $Res Function(ApplicationStatus) then) =
      _$ApplicationStatusCopyWithImpl<$Res, ApplicationStatus>;
  @useResult
  $Res call(
      {ApplicationState state,
      String confirmingTty,
      ErrorReportRef? error,
      bool? cloudInitOk,
      bool? interactive,
      String echoSyslogId,
      String logSyslogId,
      String eventSyslogId});

  $ErrorReportRefCopyWith<$Res>? get error;
}

/// @nodoc
class _$ApplicationStatusCopyWithImpl<$Res, $Val extends ApplicationStatus>
    implements $ApplicationStatusCopyWith<$Res> {
  _$ApplicationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? confirmingTty = null,
    Object? error = freezed,
    Object? cloudInitOk = freezed,
    Object? interactive = freezed,
    Object? echoSyslogId = null,
    Object? logSyslogId = null,
    Object? eventSyslogId = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ApplicationState,
      confirmingTty: null == confirmingTty
          ? _value.confirmingTty
          : confirmingTty // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      cloudInitOk: freezed == cloudInitOk
          ? _value.cloudInitOk
          : cloudInitOk // ignore: cast_nullable_to_non_nullable
              as bool?,
      interactive: freezed == interactive
          ? _value.interactive
          : interactive // ignore: cast_nullable_to_non_nullable
              as bool?,
      echoSyslogId: null == echoSyslogId
          ? _value.echoSyslogId
          : echoSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
      logSyslogId: null == logSyslogId
          ? _value.logSyslogId
          : logSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
      eventSyslogId: null == eventSyslogId
          ? _value.eventSyslogId
          : eventSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApplicationStatusImplCopyWith<$Res>
    implements $ApplicationStatusCopyWith<$Res> {
  factory _$$ApplicationStatusImplCopyWith(_$ApplicationStatusImpl value,
          $Res Function(_$ApplicationStatusImpl) then) =
      __$$ApplicationStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApplicationState state,
      String confirmingTty,
      ErrorReportRef? error,
      bool? cloudInitOk,
      bool? interactive,
      String echoSyslogId,
      String logSyslogId,
      String eventSyslogId});

  @override
  $ErrorReportRefCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ApplicationStatusImplCopyWithImpl<$Res>
    extends _$ApplicationStatusCopyWithImpl<$Res, _$ApplicationStatusImpl>
    implements _$$ApplicationStatusImplCopyWith<$Res> {
  __$$ApplicationStatusImplCopyWithImpl(_$ApplicationStatusImpl _value,
      $Res Function(_$ApplicationStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? confirmingTty = null,
    Object? error = freezed,
    Object? cloudInitOk = freezed,
    Object? interactive = freezed,
    Object? echoSyslogId = null,
    Object? logSyslogId = null,
    Object? eventSyslogId = null,
  }) {
    return _then(_$ApplicationStatusImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ApplicationState,
      confirmingTty: null == confirmingTty
          ? _value.confirmingTty
          : confirmingTty // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      cloudInitOk: freezed == cloudInitOk
          ? _value.cloudInitOk
          : cloudInitOk // ignore: cast_nullable_to_non_nullable
              as bool?,
      interactive: freezed == interactive
          ? _value.interactive
          : interactive // ignore: cast_nullable_to_non_nullable
              as bool?,
      echoSyslogId: null == echoSyslogId
          ? _value.echoSyslogId
          : echoSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
      logSyslogId: null == logSyslogId
          ? _value.logSyslogId
          : logSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
      eventSyslogId: null == eventSyslogId
          ? _value.eventSyslogId
          : eventSyslogId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplicationStatusImpl implements _ApplicationStatus {
  const _$ApplicationStatusImpl(
      {required this.state,
      required this.confirmingTty,
      required this.error,
      required this.cloudInitOk,
      required this.interactive,
      required this.echoSyslogId,
      required this.logSyslogId,
      required this.eventSyslogId});

  factory _$ApplicationStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplicationStatusImplFromJson(json);

  @override
  final ApplicationState state;
  @override
  final String confirmingTty;
  @override
  final ErrorReportRef? error;
  @override
  final bool? cloudInitOk;
  @override
  final bool? interactive;
  @override
  final String echoSyslogId;
  @override
  final String logSyslogId;
  @override
  final String eventSyslogId;

  @override
  String toString() {
    return 'ApplicationStatus(state: $state, confirmingTty: $confirmingTty, error: $error, cloudInitOk: $cloudInitOk, interactive: $interactive, echoSyslogId: $echoSyslogId, logSyslogId: $logSyslogId, eventSyslogId: $eventSyslogId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationStatusImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.confirmingTty, confirmingTty) ||
                other.confirmingTty == confirmingTty) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.cloudInitOk, cloudInitOk) ||
                other.cloudInitOk == cloudInitOk) &&
            (identical(other.interactive, interactive) ||
                other.interactive == interactive) &&
            (identical(other.echoSyslogId, echoSyslogId) ||
                other.echoSyslogId == echoSyslogId) &&
            (identical(other.logSyslogId, logSyslogId) ||
                other.logSyslogId == logSyslogId) &&
            (identical(other.eventSyslogId, eventSyslogId) ||
                other.eventSyslogId == eventSyslogId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, confirmingTty, error,
      cloudInitOk, interactive, echoSyslogId, logSyslogId, eventSyslogId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationStatusImplCopyWith<_$ApplicationStatusImpl> get copyWith =>
      __$$ApplicationStatusImplCopyWithImpl<_$ApplicationStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplicationStatusImplToJson(
      this,
    );
  }
}

abstract class _ApplicationStatus implements ApplicationStatus {
  const factory _ApplicationStatus(
      {required final ApplicationState state,
      required final String confirmingTty,
      required final ErrorReportRef? error,
      required final bool? cloudInitOk,
      required final bool? interactive,
      required final String echoSyslogId,
      required final String logSyslogId,
      required final String eventSyslogId}) = _$ApplicationStatusImpl;

  factory _ApplicationStatus.fromJson(Map<String, dynamic> json) =
      _$ApplicationStatusImpl.fromJson;

  @override
  ApplicationState get state;
  @override
  String get confirmingTty;
  @override
  ErrorReportRef? get error;
  @override
  bool? get cloudInitOk;
  @override
  bool? get interactive;
  @override
  String get echoSyslogId;
  @override
  String get logSyslogId;
  @override
  String get eventSyslogId;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationStatusImplCopyWith<_$ApplicationStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyFingerprint _$KeyFingerprintFromJson(Map<String, dynamic> json) {
  return _KeyFingerprint.fromJson(json);
}

/// @nodoc
mixin _$KeyFingerprint {
  String get keytype => throw _privateConstructorUsedError;
  String get fingerprint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyFingerprintCopyWith<KeyFingerprint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyFingerprintCopyWith<$Res> {
  factory $KeyFingerprintCopyWith(
          KeyFingerprint value, $Res Function(KeyFingerprint) then) =
      _$KeyFingerprintCopyWithImpl<$Res, KeyFingerprint>;
  @useResult
  $Res call({String keytype, String fingerprint});
}

/// @nodoc
class _$KeyFingerprintCopyWithImpl<$Res, $Val extends KeyFingerprint>
    implements $KeyFingerprintCopyWith<$Res> {
  _$KeyFingerprintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keytype = null,
    Object? fingerprint = null,
  }) {
    return _then(_value.copyWith(
      keytype: null == keytype
          ? _value.keytype
          : keytype // ignore: cast_nullable_to_non_nullable
              as String,
      fingerprint: null == fingerprint
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyFingerprintImplCopyWith<$Res>
    implements $KeyFingerprintCopyWith<$Res> {
  factory _$$KeyFingerprintImplCopyWith(_$KeyFingerprintImpl value,
          $Res Function(_$KeyFingerprintImpl) then) =
      __$$KeyFingerprintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keytype, String fingerprint});
}

/// @nodoc
class __$$KeyFingerprintImplCopyWithImpl<$Res>
    extends _$KeyFingerprintCopyWithImpl<$Res, _$KeyFingerprintImpl>
    implements _$$KeyFingerprintImplCopyWith<$Res> {
  __$$KeyFingerprintImplCopyWithImpl(
      _$KeyFingerprintImpl _value, $Res Function(_$KeyFingerprintImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keytype = null,
    Object? fingerprint = null,
  }) {
    return _then(_$KeyFingerprintImpl(
      keytype: null == keytype
          ? _value.keytype
          : keytype // ignore: cast_nullable_to_non_nullable
              as String,
      fingerprint: null == fingerprint
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyFingerprintImpl implements _KeyFingerprint {
  const _$KeyFingerprintImpl(
      {required this.keytype, required this.fingerprint});

  factory _$KeyFingerprintImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyFingerprintImplFromJson(json);

  @override
  final String keytype;
  @override
  final String fingerprint;

  @override
  String toString() {
    return 'KeyFingerprint(keytype: $keytype, fingerprint: $fingerprint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyFingerprintImpl &&
            (identical(other.keytype, keytype) || other.keytype == keytype) &&
            (identical(other.fingerprint, fingerprint) ||
                other.fingerprint == fingerprint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keytype, fingerprint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyFingerprintImplCopyWith<_$KeyFingerprintImpl> get copyWith =>
      __$$KeyFingerprintImplCopyWithImpl<_$KeyFingerprintImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyFingerprintImplToJson(
      this,
    );
  }
}

abstract class _KeyFingerprint implements KeyFingerprint {
  const factory _KeyFingerprint(
      {required final String keytype,
      required final String fingerprint}) = _$KeyFingerprintImpl;

  factory _KeyFingerprint.fromJson(Map<String, dynamic> json) =
      _$KeyFingerprintImpl.fromJson;

  @override
  String get keytype;
  @override
  String get fingerprint;
  @override
  @JsonKey(ignore: true)
  _$$KeyFingerprintImplCopyWith<_$KeyFingerprintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LiveSessionSSHInfo _$LiveSessionSSHInfoFromJson(Map<String, dynamic> json) {
  return _LiveSessionSSHInfo.fromJson(json);
}

/// @nodoc
mixin _$LiveSessionSSHInfo {
  String get username => throw _privateConstructorUsedError;
  PasswordKind get passwordKind => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  List<KeyFingerprint> get authorizedKeyFingerprints =>
      throw _privateConstructorUsedError;
  List<String> get ips => throw _privateConstructorUsedError;
  List<KeyFingerprint> get hostKeyFingerprints =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveSessionSSHInfoCopyWith<LiveSessionSSHInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveSessionSSHInfoCopyWith<$Res> {
  factory $LiveSessionSSHInfoCopyWith(
          LiveSessionSSHInfo value, $Res Function(LiveSessionSSHInfo) then) =
      _$LiveSessionSSHInfoCopyWithImpl<$Res, LiveSessionSSHInfo>;
  @useResult
  $Res call(
      {String username,
      PasswordKind passwordKind,
      String? password,
      List<KeyFingerprint> authorizedKeyFingerprints,
      List<String> ips,
      List<KeyFingerprint> hostKeyFingerprints});
}

/// @nodoc
class _$LiveSessionSSHInfoCopyWithImpl<$Res, $Val extends LiveSessionSSHInfo>
    implements $LiveSessionSSHInfoCopyWith<$Res> {
  _$LiveSessionSSHInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? passwordKind = null,
    Object? password = freezed,
    Object? authorizedKeyFingerprints = null,
    Object? ips = null,
    Object? hostKeyFingerprints = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      passwordKind: null == passwordKind
          ? _value.passwordKind
          : passwordKind // ignore: cast_nullable_to_non_nullable
              as PasswordKind,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizedKeyFingerprints: null == authorizedKeyFingerprints
          ? _value.authorizedKeyFingerprints
          : authorizedKeyFingerprints // ignore: cast_nullable_to_non_nullable
              as List<KeyFingerprint>,
      ips: null == ips
          ? _value.ips
          : ips // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hostKeyFingerprints: null == hostKeyFingerprints
          ? _value.hostKeyFingerprints
          : hostKeyFingerprints // ignore: cast_nullable_to_non_nullable
              as List<KeyFingerprint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveSessionSSHInfoImplCopyWith<$Res>
    implements $LiveSessionSSHInfoCopyWith<$Res> {
  factory _$$LiveSessionSSHInfoImplCopyWith(_$LiveSessionSSHInfoImpl value,
          $Res Function(_$LiveSessionSSHInfoImpl) then) =
      __$$LiveSessionSSHInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      PasswordKind passwordKind,
      String? password,
      List<KeyFingerprint> authorizedKeyFingerprints,
      List<String> ips,
      List<KeyFingerprint> hostKeyFingerprints});
}

/// @nodoc
class __$$LiveSessionSSHInfoImplCopyWithImpl<$Res>
    extends _$LiveSessionSSHInfoCopyWithImpl<$Res, _$LiveSessionSSHInfoImpl>
    implements _$$LiveSessionSSHInfoImplCopyWith<$Res> {
  __$$LiveSessionSSHInfoImplCopyWithImpl(_$LiveSessionSSHInfoImpl _value,
      $Res Function(_$LiveSessionSSHInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? passwordKind = null,
    Object? password = freezed,
    Object? authorizedKeyFingerprints = null,
    Object? ips = null,
    Object? hostKeyFingerprints = null,
  }) {
    return _then(_$LiveSessionSSHInfoImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      passwordKind: null == passwordKind
          ? _value.passwordKind
          : passwordKind // ignore: cast_nullable_to_non_nullable
              as PasswordKind,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizedKeyFingerprints: null == authorizedKeyFingerprints
          ? _value._authorizedKeyFingerprints
          : authorizedKeyFingerprints // ignore: cast_nullable_to_non_nullable
              as List<KeyFingerprint>,
      ips: null == ips
          ? _value._ips
          : ips // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hostKeyFingerprints: null == hostKeyFingerprints
          ? _value._hostKeyFingerprints
          : hostKeyFingerprints // ignore: cast_nullable_to_non_nullable
              as List<KeyFingerprint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LiveSessionSSHInfoImpl implements _LiveSessionSSHInfo {
  const _$LiveSessionSSHInfoImpl(
      {required this.username,
      required this.passwordKind,
      required this.password,
      required final List<KeyFingerprint> authorizedKeyFingerprints,
      required final List<String> ips,
      required final List<KeyFingerprint> hostKeyFingerprints})
      : _authorizedKeyFingerprints = authorizedKeyFingerprints,
        _ips = ips,
        _hostKeyFingerprints = hostKeyFingerprints;

  factory _$LiveSessionSSHInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiveSessionSSHInfoImplFromJson(json);

  @override
  final String username;
  @override
  final PasswordKind passwordKind;
  @override
  final String? password;
  final List<KeyFingerprint> _authorizedKeyFingerprints;
  @override
  List<KeyFingerprint> get authorizedKeyFingerprints {
    if (_authorizedKeyFingerprints is EqualUnmodifiableListView)
      return _authorizedKeyFingerprints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authorizedKeyFingerprints);
  }

  final List<String> _ips;
  @override
  List<String> get ips {
    if (_ips is EqualUnmodifiableListView) return _ips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ips);
  }

  final List<KeyFingerprint> _hostKeyFingerprints;
  @override
  List<KeyFingerprint> get hostKeyFingerprints {
    if (_hostKeyFingerprints is EqualUnmodifiableListView)
      return _hostKeyFingerprints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hostKeyFingerprints);
  }

  @override
  String toString() {
    return 'LiveSessionSSHInfo(username: $username, passwordKind: $passwordKind, password: $password, authorizedKeyFingerprints: $authorizedKeyFingerprints, ips: $ips, hostKeyFingerprints: $hostKeyFingerprints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveSessionSSHInfoImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.passwordKind, passwordKind) ||
                other.passwordKind == passwordKind) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(
                other._authorizedKeyFingerprints, _authorizedKeyFingerprints) &&
            const DeepCollectionEquality().equals(other._ips, _ips) &&
            const DeepCollectionEquality()
                .equals(other._hostKeyFingerprints, _hostKeyFingerprints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      passwordKind,
      password,
      const DeepCollectionEquality().hash(_authorizedKeyFingerprints),
      const DeepCollectionEquality().hash(_ips),
      const DeepCollectionEquality().hash(_hostKeyFingerprints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveSessionSSHInfoImplCopyWith<_$LiveSessionSSHInfoImpl> get copyWith =>
      __$$LiveSessionSSHInfoImplCopyWithImpl<_$LiveSessionSSHInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiveSessionSSHInfoImplToJson(
      this,
    );
  }
}

abstract class _LiveSessionSSHInfo implements LiveSessionSSHInfo {
  const factory _LiveSessionSSHInfo(
          {required final String username,
          required final PasswordKind passwordKind,
          required final String? password,
          required final List<KeyFingerprint> authorizedKeyFingerprints,
          required final List<String> ips,
          required final List<KeyFingerprint> hostKeyFingerprints}) =
      _$LiveSessionSSHInfoImpl;

  factory _LiveSessionSSHInfo.fromJson(Map<String, dynamic> json) =
      _$LiveSessionSSHInfoImpl.fromJson;

  @override
  String get username;
  @override
  PasswordKind get passwordKind;
  @override
  String? get password;
  @override
  List<KeyFingerprint> get authorizedKeyFingerprints;
  @override
  List<String> get ips;
  @override
  List<KeyFingerprint> get hostKeyFingerprints;
  @override
  @JsonKey(ignore: true)
  _$$LiveSessionSSHInfoImplCopyWith<_$LiveSessionSSHInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshStatus _$RefreshStatusFromJson(Map<String, dynamic> json) {
  return _RefreshStatus.fromJson(json);
}

/// @nodoc
mixin _$RefreshStatus {
  RefreshCheckState get availability => throw _privateConstructorUsedError;
  String get currentSnapVersion => throw _privateConstructorUsedError;
  String get newSnapVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshStatusCopyWith<RefreshStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshStatusCopyWith<$Res> {
  factory $RefreshStatusCopyWith(
          RefreshStatus value, $Res Function(RefreshStatus) then) =
      _$RefreshStatusCopyWithImpl<$Res, RefreshStatus>;
  @useResult
  $Res call(
      {RefreshCheckState availability,
      String currentSnapVersion,
      String newSnapVersion});
}

/// @nodoc
class _$RefreshStatusCopyWithImpl<$Res, $Val extends RefreshStatus>
    implements $RefreshStatusCopyWith<$Res> {
  _$RefreshStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availability = null,
    Object? currentSnapVersion = null,
    Object? newSnapVersion = null,
  }) {
    return _then(_value.copyWith(
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as RefreshCheckState,
      currentSnapVersion: null == currentSnapVersion
          ? _value.currentSnapVersion
          : currentSnapVersion // ignore: cast_nullable_to_non_nullable
              as String,
      newSnapVersion: null == newSnapVersion
          ? _value.newSnapVersion
          : newSnapVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshStatusImplCopyWith<$Res>
    implements $RefreshStatusCopyWith<$Res> {
  factory _$$RefreshStatusImplCopyWith(
          _$RefreshStatusImpl value, $Res Function(_$RefreshStatusImpl) then) =
      __$$RefreshStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RefreshCheckState availability,
      String currentSnapVersion,
      String newSnapVersion});
}

/// @nodoc
class __$$RefreshStatusImplCopyWithImpl<$Res>
    extends _$RefreshStatusCopyWithImpl<$Res, _$RefreshStatusImpl>
    implements _$$RefreshStatusImplCopyWith<$Res> {
  __$$RefreshStatusImplCopyWithImpl(
      _$RefreshStatusImpl _value, $Res Function(_$RefreshStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availability = null,
    Object? currentSnapVersion = null,
    Object? newSnapVersion = null,
  }) {
    return _then(_$RefreshStatusImpl(
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as RefreshCheckState,
      currentSnapVersion: null == currentSnapVersion
          ? _value.currentSnapVersion
          : currentSnapVersion // ignore: cast_nullable_to_non_nullable
              as String,
      newSnapVersion: null == newSnapVersion
          ? _value.newSnapVersion
          : newSnapVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshStatusImpl implements _RefreshStatus {
  const _$RefreshStatusImpl(
      {required this.availability,
      this.currentSnapVersion = '',
      this.newSnapVersion = ''});

  factory _$RefreshStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshStatusImplFromJson(json);

  @override
  final RefreshCheckState availability;
  @override
  @JsonKey()
  final String currentSnapVersion;
  @override
  @JsonKey()
  final String newSnapVersion;

  @override
  String toString() {
    return 'RefreshStatus(availability: $availability, currentSnapVersion: $currentSnapVersion, newSnapVersion: $newSnapVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshStatusImpl &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.currentSnapVersion, currentSnapVersion) ||
                other.currentSnapVersion == currentSnapVersion) &&
            (identical(other.newSnapVersion, newSnapVersion) ||
                other.newSnapVersion == newSnapVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, availability, currentSnapVersion, newSnapVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshStatusImplCopyWith<_$RefreshStatusImpl> get copyWith =>
      __$$RefreshStatusImplCopyWithImpl<_$RefreshStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshStatusImplToJson(
      this,
    );
  }
}

abstract class _RefreshStatus implements RefreshStatus {
  const factory _RefreshStatus(
      {required final RefreshCheckState availability,
      final String currentSnapVersion,
      final String newSnapVersion}) = _$RefreshStatusImpl;

  factory _RefreshStatus.fromJson(Map<String, dynamic> json) =
      _$RefreshStatusImpl.fromJson;

  @override
  RefreshCheckState get availability;
  @override
  String get currentSnapVersion;
  @override
  String get newSnapVersion;
  @override
  @JsonKey(ignore: true)
  _$$RefreshStatusImplCopyWith<_$RefreshStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnyStep _$AnyStepFromJson(Map<String, dynamic> json) {
  switch (json['\$type']) {
    case 'StepPressKey':
      return StepPressKey.fromJson(json);
    case 'StepKeyPresent':
      return StepKeyPresent.fromJson(json);
    case 'StepResult':
      return StepResult.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, '\$type', 'AnyStep', 'Invalid union type "${json['\$type']}"!');
  }
}

/// @nodoc
mixin _$AnyStep {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> symbols, Map<int, String> keycodes)
        stepPressKey,
    required TResult Function(String symbol, String yes, String no)
        stepKeyPresent,
    required TResult Function(String layout, String variant) stepResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> symbols, Map<int, String> keycodes)?
        stepPressKey,
    TResult? Function(String symbol, String yes, String no)? stepKeyPresent,
    TResult? Function(String layout, String variant)? stepResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> symbols, Map<int, String> keycodes)?
        stepPressKey,
    TResult Function(String symbol, String yes, String no)? stepKeyPresent,
    TResult Function(String layout, String variant)? stepResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StepPressKey value) stepPressKey,
    required TResult Function(StepKeyPresent value) stepKeyPresent,
    required TResult Function(StepResult value) stepResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StepPressKey value)? stepPressKey,
    TResult? Function(StepKeyPresent value)? stepKeyPresent,
    TResult? Function(StepResult value)? stepResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StepPressKey value)? stepPressKey,
    TResult Function(StepKeyPresent value)? stepKeyPresent,
    TResult Function(StepResult value)? stepResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnyStepCopyWith<$Res> {
  factory $AnyStepCopyWith(AnyStep value, $Res Function(AnyStep) then) =
      _$AnyStepCopyWithImpl<$Res, AnyStep>;
}

/// @nodoc
class _$AnyStepCopyWithImpl<$Res, $Val extends AnyStep>
    implements $AnyStepCopyWith<$Res> {
  _$AnyStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StepPressKeyImplCopyWith<$Res> {
  factory _$$StepPressKeyImplCopyWith(
          _$StepPressKeyImpl value, $Res Function(_$StepPressKeyImpl) then) =
      __$$StepPressKeyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> symbols, Map<int, String> keycodes});
}

/// @nodoc
class __$$StepPressKeyImplCopyWithImpl<$Res>
    extends _$AnyStepCopyWithImpl<$Res, _$StepPressKeyImpl>
    implements _$$StepPressKeyImplCopyWith<$Res> {
  __$$StepPressKeyImplCopyWithImpl(
      _$StepPressKeyImpl _value, $Res Function(_$StepPressKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbols = null,
    Object? keycodes = null,
  }) {
    return _then(_$StepPressKeyImpl(
      symbols: null == symbols
          ? _value._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      keycodes: null == keycodes
          ? _value._keycodes
          : keycodes // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@JsonMapConverter()
class _$StepPressKeyImpl implements StepPressKey {
  const _$StepPressKeyImpl(
      {required final List<String> symbols,
      required final Map<int, String> keycodes,
      final String? $type})
      : _symbols = symbols,
        _keycodes = keycodes,
        $type = $type ?? 'StepPressKey';

  factory _$StepPressKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepPressKeyImplFromJson(json);

  final List<String> _symbols;
  @override
  List<String> get symbols {
    if (_symbols is EqualUnmodifiableListView) return _symbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symbols);
  }

  final Map<int, String> _keycodes;
  @override
  Map<int, String> get keycodes {
    if (_keycodes is EqualUnmodifiableMapView) return _keycodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_keycodes);
  }

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'AnyStep.stepPressKey(symbols: $symbols, keycodes: $keycodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepPressKeyImpl &&
            const DeepCollectionEquality().equals(other._symbols, _symbols) &&
            const DeepCollectionEquality().equals(other._keycodes, _keycodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_symbols),
      const DeepCollectionEquality().hash(_keycodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepPressKeyImplCopyWith<_$StepPressKeyImpl> get copyWith =>
      __$$StepPressKeyImplCopyWithImpl<_$StepPressKeyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> symbols, Map<int, String> keycodes)
        stepPressKey,
    required TResult Function(String symbol, String yes, String no)
        stepKeyPresent,
    required TResult Function(String layout, String variant) stepResult,
  }) {
    return stepPressKey(symbols, keycodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> symbols, Map<int, String> keycodes)?
        stepPressKey,
    TResult? Function(String symbol, String yes, String no)? stepKeyPresent,
    TResult? Function(String layout, String variant)? stepResult,
  }) {
    return stepPressKey?.call(symbols, keycodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> symbols, Map<int, String> keycodes)?
        stepPressKey,
    TResult Function(String symbol, String yes, String no)? stepKeyPresent,
    TResult Function(String layout, String variant)? stepResult,
    required TResult orElse(),
  }) {
    if (stepPressKey != null) {
      return stepPressKey(symbols, keycodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StepPressKey value) stepPressKey,
    required TResult Function(StepKeyPresent value) stepKeyPresent,
    required TResult Function(StepResult value) stepResult,
  }) {
    return stepPressKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StepPressKey value)? stepPressKey,
    TResult? Function(StepKeyPresent value)? stepKeyPresent,
    TResult? Function(StepResult value)? stepResult,
  }) {
    return stepPressKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StepPressKey value)? stepPressKey,
    TResult Function(StepKeyPresent value)? stepKeyPresent,
    TResult Function(StepResult value)? stepResult,
    required TResult orElse(),
  }) {
    if (stepPressKey != null) {
      return stepPressKey(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StepPressKeyImplToJson(
      this,
    );
  }
}

abstract class StepPressKey implements AnyStep {
  const factory StepPressKey(
      {required final List<String> symbols,
      required final Map<int, String> keycodes}) = _$StepPressKeyImpl;

  factory StepPressKey.fromJson(Map<String, dynamic> json) =
      _$StepPressKeyImpl.fromJson;

  List<String> get symbols;
  Map<int, String> get keycodes;
  @JsonKey(ignore: true)
  _$$StepPressKeyImplCopyWith<_$StepPressKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StepKeyPresentImplCopyWith<$Res> {
  factory _$$StepKeyPresentImplCopyWith(_$StepKeyPresentImpl value,
          $Res Function(_$StepKeyPresentImpl) then) =
      __$$StepKeyPresentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String symbol, String yes, String no});
}

/// @nodoc
class __$$StepKeyPresentImplCopyWithImpl<$Res>
    extends _$AnyStepCopyWithImpl<$Res, _$StepKeyPresentImpl>
    implements _$$StepKeyPresentImplCopyWith<$Res> {
  __$$StepKeyPresentImplCopyWithImpl(
      _$StepKeyPresentImpl _value, $Res Function(_$StepKeyPresentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? yes = null,
    Object? no = null,
  }) {
    return _then(_$StepKeyPresentImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      yes: null == yes
          ? _value.yes
          : yes // ignore: cast_nullable_to_non_nullable
              as String,
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepKeyPresentImpl implements StepKeyPresent {
  const _$StepKeyPresentImpl(
      {required this.symbol,
      required this.yes,
      required this.no,
      final String? $type})
      : $type = $type ?? 'StepKeyPresent';

  factory _$StepKeyPresentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepKeyPresentImplFromJson(json);

  @override
  final String symbol;
  @override
  final String yes;
  @override
  final String no;

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'AnyStep.stepKeyPresent(symbol: $symbol, yes: $yes, no: $no)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepKeyPresentImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.yes, yes) || other.yes == yes) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, yes, no);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepKeyPresentImplCopyWith<_$StepKeyPresentImpl> get copyWith =>
      __$$StepKeyPresentImplCopyWithImpl<_$StepKeyPresentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> symbols, Map<int, String> keycodes)
        stepPressKey,
    required TResult Function(String symbol, String yes, String no)
        stepKeyPresent,
    required TResult Function(String layout, String variant) stepResult,
  }) {
    return stepKeyPresent(symbol, yes, no);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> symbols, Map<int, String> keycodes)?
        stepPressKey,
    TResult? Function(String symbol, String yes, String no)? stepKeyPresent,
    TResult? Function(String layout, String variant)? stepResult,
  }) {
    return stepKeyPresent?.call(symbol, yes, no);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> symbols, Map<int, String> keycodes)?
        stepPressKey,
    TResult Function(String symbol, String yes, String no)? stepKeyPresent,
    TResult Function(String layout, String variant)? stepResult,
    required TResult orElse(),
  }) {
    if (stepKeyPresent != null) {
      return stepKeyPresent(symbol, yes, no);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StepPressKey value) stepPressKey,
    required TResult Function(StepKeyPresent value) stepKeyPresent,
    required TResult Function(StepResult value) stepResult,
  }) {
    return stepKeyPresent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StepPressKey value)? stepPressKey,
    TResult? Function(StepKeyPresent value)? stepKeyPresent,
    TResult? Function(StepResult value)? stepResult,
  }) {
    return stepKeyPresent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StepPressKey value)? stepPressKey,
    TResult Function(StepKeyPresent value)? stepKeyPresent,
    TResult Function(StepResult value)? stepResult,
    required TResult orElse(),
  }) {
    if (stepKeyPresent != null) {
      return stepKeyPresent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StepKeyPresentImplToJson(
      this,
    );
  }
}

abstract class StepKeyPresent implements AnyStep {
  const factory StepKeyPresent(
      {required final String symbol,
      required final String yes,
      required final String no}) = _$StepKeyPresentImpl;

  factory StepKeyPresent.fromJson(Map<String, dynamic> json) =
      _$StepKeyPresentImpl.fromJson;

  String get symbol;
  String get yes;
  String get no;
  @JsonKey(ignore: true)
  _$$StepKeyPresentImplCopyWith<_$StepKeyPresentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StepResultImplCopyWith<$Res> {
  factory _$$StepResultImplCopyWith(
          _$StepResultImpl value, $Res Function(_$StepResultImpl) then) =
      __$$StepResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String layout, String variant});
}

/// @nodoc
class __$$StepResultImplCopyWithImpl<$Res>
    extends _$AnyStepCopyWithImpl<$Res, _$StepResultImpl>
    implements _$$StepResultImplCopyWith<$Res> {
  __$$StepResultImplCopyWithImpl(
      _$StepResultImpl _value, $Res Function(_$StepResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layout = null,
    Object? variant = null,
  }) {
    return _then(_$StepResultImpl(
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepResultImpl implements StepResult {
  const _$StepResultImpl(
      {required this.layout, required this.variant, final String? $type})
      : $type = $type ?? 'StepResult';

  factory _$StepResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepResultImplFromJson(json);

  @override
  final String layout;
  @override
  final String variant;

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'AnyStep.stepResult(layout: $layout, variant: $variant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepResultImpl &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.variant, variant) || other.variant == variant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, layout, variant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepResultImplCopyWith<_$StepResultImpl> get copyWith =>
      __$$StepResultImplCopyWithImpl<_$StepResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> symbols, Map<int, String> keycodes)
        stepPressKey,
    required TResult Function(String symbol, String yes, String no)
        stepKeyPresent,
    required TResult Function(String layout, String variant) stepResult,
  }) {
    return stepResult(layout, variant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> symbols, Map<int, String> keycodes)?
        stepPressKey,
    TResult? Function(String symbol, String yes, String no)? stepKeyPresent,
    TResult? Function(String layout, String variant)? stepResult,
  }) {
    return stepResult?.call(layout, variant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> symbols, Map<int, String> keycodes)?
        stepPressKey,
    TResult Function(String symbol, String yes, String no)? stepKeyPresent,
    TResult Function(String layout, String variant)? stepResult,
    required TResult orElse(),
  }) {
    if (stepResult != null) {
      return stepResult(layout, variant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StepPressKey value) stepPressKey,
    required TResult Function(StepKeyPresent value) stepKeyPresent,
    required TResult Function(StepResult value) stepResult,
  }) {
    return stepResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StepPressKey value)? stepPressKey,
    TResult? Function(StepKeyPresent value)? stepKeyPresent,
    TResult? Function(StepResult value)? stepResult,
  }) {
    return stepResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StepPressKey value)? stepPressKey,
    TResult Function(StepKeyPresent value)? stepKeyPresent,
    TResult Function(StepResult value)? stepResult,
    required TResult orElse(),
  }) {
    if (stepResult != null) {
      return stepResult(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StepResultImplToJson(
      this,
    );
  }
}

abstract class StepResult implements AnyStep {
  const factory StepResult(
      {required final String layout,
      required final String variant}) = _$StepResultImpl;

  factory StepResult.fromJson(Map<String, dynamic> json) =
      _$StepResultImpl.fromJson;

  String get layout;
  String get variant;
  @JsonKey(ignore: true)
  _$$StepResultImplCopyWith<_$StepResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyboardSetting _$KeyboardSettingFromJson(Map<String, dynamic> json) {
  return _KeyboardSetting.fromJson(json);
}

/// @nodoc
mixin _$KeyboardSetting {
  String get layout => throw _privateConstructorUsedError;
  String get variant => throw _privateConstructorUsedError;
  String? get toggle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyboardSettingCopyWith<KeyboardSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardSettingCopyWith<$Res> {
  factory $KeyboardSettingCopyWith(
          KeyboardSetting value, $Res Function(KeyboardSetting) then) =
      _$KeyboardSettingCopyWithImpl<$Res, KeyboardSetting>;
  @useResult
  $Res call({String layout, String variant, String? toggle});
}

/// @nodoc
class _$KeyboardSettingCopyWithImpl<$Res, $Val extends KeyboardSetting>
    implements $KeyboardSettingCopyWith<$Res> {
  _$KeyboardSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layout = null,
    Object? variant = null,
    Object? toggle = freezed,
  }) {
    return _then(_value.copyWith(
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
      toggle: freezed == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyboardSettingImplCopyWith<$Res>
    implements $KeyboardSettingCopyWith<$Res> {
  factory _$$KeyboardSettingImplCopyWith(_$KeyboardSettingImpl value,
          $Res Function(_$KeyboardSettingImpl) then) =
      __$$KeyboardSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String layout, String variant, String? toggle});
}

/// @nodoc
class __$$KeyboardSettingImplCopyWithImpl<$Res>
    extends _$KeyboardSettingCopyWithImpl<$Res, _$KeyboardSettingImpl>
    implements _$$KeyboardSettingImplCopyWith<$Res> {
  __$$KeyboardSettingImplCopyWithImpl(
      _$KeyboardSettingImpl _value, $Res Function(_$KeyboardSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layout = null,
    Object? variant = null,
    Object? toggle = freezed,
  }) {
    return _then(_$KeyboardSettingImpl(
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
      toggle: freezed == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyboardSettingImpl implements _KeyboardSetting {
  const _$KeyboardSettingImpl(
      {required this.layout, this.variant = '', this.toggle});

  factory _$KeyboardSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyboardSettingImplFromJson(json);

  @override
  final String layout;
  @override
  @JsonKey()
  final String variant;
  @override
  final String? toggle;

  @override
  String toString() {
    return 'KeyboardSetting(layout: $layout, variant: $variant, toggle: $toggle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyboardSettingImpl &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.toggle, toggle) || other.toggle == toggle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, layout, variant, toggle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardSettingImplCopyWith<_$KeyboardSettingImpl> get copyWith =>
      __$$KeyboardSettingImplCopyWithImpl<_$KeyboardSettingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyboardSettingImplToJson(
      this,
    );
  }
}

abstract class _KeyboardSetting implements KeyboardSetting {
  const factory _KeyboardSetting(
      {required final String layout,
      final String variant,
      final String? toggle}) = _$KeyboardSettingImpl;

  factory _KeyboardSetting.fromJson(Map<String, dynamic> json) =
      _$KeyboardSettingImpl.fromJson;

  @override
  String get layout;
  @override
  String get variant;
  @override
  String? get toggle;
  @override
  @JsonKey(ignore: true)
  _$$KeyboardSettingImplCopyWith<_$KeyboardSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyboardVariant _$KeyboardVariantFromJson(Map<String, dynamic> json) {
  return _KeyboardVariant.fromJson(json);
}

/// @nodoc
mixin _$KeyboardVariant {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyboardVariantCopyWith<KeyboardVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardVariantCopyWith<$Res> {
  factory $KeyboardVariantCopyWith(
          KeyboardVariant value, $Res Function(KeyboardVariant) then) =
      _$KeyboardVariantCopyWithImpl<$Res, KeyboardVariant>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$KeyboardVariantCopyWithImpl<$Res, $Val extends KeyboardVariant>
    implements $KeyboardVariantCopyWith<$Res> {
  _$KeyboardVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyboardVariantImplCopyWith<$Res>
    implements $KeyboardVariantCopyWith<$Res> {
  factory _$$KeyboardVariantImplCopyWith(_$KeyboardVariantImpl value,
          $Res Function(_$KeyboardVariantImpl) then) =
      __$$KeyboardVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$KeyboardVariantImplCopyWithImpl<$Res>
    extends _$KeyboardVariantCopyWithImpl<$Res, _$KeyboardVariantImpl>
    implements _$$KeyboardVariantImplCopyWith<$Res> {
  __$$KeyboardVariantImplCopyWithImpl(
      _$KeyboardVariantImpl _value, $Res Function(_$KeyboardVariantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$KeyboardVariantImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyboardVariantImpl implements _KeyboardVariant {
  const _$KeyboardVariantImpl({required this.code, required this.name});

  factory _$KeyboardVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyboardVariantImplFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'KeyboardVariant(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyboardVariantImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardVariantImplCopyWith<_$KeyboardVariantImpl> get copyWith =>
      __$$KeyboardVariantImplCopyWithImpl<_$KeyboardVariantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyboardVariantImplToJson(
      this,
    );
  }
}

abstract class _KeyboardVariant implements KeyboardVariant {
  const factory _KeyboardVariant(
      {required final String code,
      required final String name}) = _$KeyboardVariantImpl;

  factory _KeyboardVariant.fromJson(Map<String, dynamic> json) =
      _$KeyboardVariantImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$KeyboardVariantImplCopyWith<_$KeyboardVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyboardLayout _$KeyboardLayoutFromJson(Map<String, dynamic> json) {
  return _KeyboardLayout.fromJson(json);
}

/// @nodoc
mixin _$KeyboardLayout {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<KeyboardVariant> get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyboardLayoutCopyWith<KeyboardLayout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardLayoutCopyWith<$Res> {
  factory $KeyboardLayoutCopyWith(
          KeyboardLayout value, $Res Function(KeyboardLayout) then) =
      _$KeyboardLayoutCopyWithImpl<$Res, KeyboardLayout>;
  @useResult
  $Res call({String code, String name, List<KeyboardVariant> variants});
}

/// @nodoc
class _$KeyboardLayoutCopyWithImpl<$Res, $Val extends KeyboardLayout>
    implements $KeyboardLayoutCopyWith<$Res> {
  _$KeyboardLayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? variants = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<KeyboardVariant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyboardLayoutImplCopyWith<$Res>
    implements $KeyboardLayoutCopyWith<$Res> {
  factory _$$KeyboardLayoutImplCopyWith(_$KeyboardLayoutImpl value,
          $Res Function(_$KeyboardLayoutImpl) then) =
      __$$KeyboardLayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, List<KeyboardVariant> variants});
}

/// @nodoc
class __$$KeyboardLayoutImplCopyWithImpl<$Res>
    extends _$KeyboardLayoutCopyWithImpl<$Res, _$KeyboardLayoutImpl>
    implements _$$KeyboardLayoutImplCopyWith<$Res> {
  __$$KeyboardLayoutImplCopyWithImpl(
      _$KeyboardLayoutImpl _value, $Res Function(_$KeyboardLayoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? variants = null,
  }) {
    return _then(_$KeyboardLayoutImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<KeyboardVariant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyboardLayoutImpl implements _KeyboardLayout {
  const _$KeyboardLayoutImpl(
      {required this.code,
      required this.name,
      required final List<KeyboardVariant> variants})
      : _variants = variants;

  factory _$KeyboardLayoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyboardLayoutImplFromJson(json);

  @override
  final String code;
  @override
  final String name;
  final List<KeyboardVariant> _variants;
  @override
  List<KeyboardVariant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'KeyboardLayout(code: $code, name: $name, variants: $variants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyboardLayoutImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, name, const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardLayoutImplCopyWith<_$KeyboardLayoutImpl> get copyWith =>
      __$$KeyboardLayoutImplCopyWithImpl<_$KeyboardLayoutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyboardLayoutImplToJson(
      this,
    );
  }
}

abstract class _KeyboardLayout implements KeyboardLayout {
  const factory _KeyboardLayout(
      {required final String code,
      required final String name,
      required final List<KeyboardVariant> variants}) = _$KeyboardLayoutImpl;

  factory _KeyboardLayout.fromJson(Map<String, dynamic> json) =
      _$KeyboardLayoutImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  List<KeyboardVariant> get variants;
  @override
  @JsonKey(ignore: true)
  _$$KeyboardLayoutImplCopyWith<_$KeyboardLayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyboardSetup _$KeyboardSetupFromJson(Map<String, dynamic> json) {
  return _KeyboardSetup.fromJson(json);
}

/// @nodoc
mixin _$KeyboardSetup {
  KeyboardSetting get setting => throw _privateConstructorUsedError;
  List<KeyboardLayout> get layouts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyboardSetupCopyWith<KeyboardSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardSetupCopyWith<$Res> {
  factory $KeyboardSetupCopyWith(
          KeyboardSetup value, $Res Function(KeyboardSetup) then) =
      _$KeyboardSetupCopyWithImpl<$Res, KeyboardSetup>;
  @useResult
  $Res call({KeyboardSetting setting, List<KeyboardLayout> layouts});

  $KeyboardSettingCopyWith<$Res> get setting;
}

/// @nodoc
class _$KeyboardSetupCopyWithImpl<$Res, $Val extends KeyboardSetup>
    implements $KeyboardSetupCopyWith<$Res> {
  _$KeyboardSetupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setting = null,
    Object? layouts = null,
  }) {
    return _then(_value.copyWith(
      setting: null == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as KeyboardSetting,
      layouts: null == layouts
          ? _value.layouts
          : layouts // ignore: cast_nullable_to_non_nullable
              as List<KeyboardLayout>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KeyboardSettingCopyWith<$Res> get setting {
    return $KeyboardSettingCopyWith<$Res>(_value.setting, (value) {
      return _then(_value.copyWith(setting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KeyboardSetupImplCopyWith<$Res>
    implements $KeyboardSetupCopyWith<$Res> {
  factory _$$KeyboardSetupImplCopyWith(
          _$KeyboardSetupImpl value, $Res Function(_$KeyboardSetupImpl) then) =
      __$$KeyboardSetupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KeyboardSetting setting, List<KeyboardLayout> layouts});

  @override
  $KeyboardSettingCopyWith<$Res> get setting;
}

/// @nodoc
class __$$KeyboardSetupImplCopyWithImpl<$Res>
    extends _$KeyboardSetupCopyWithImpl<$Res, _$KeyboardSetupImpl>
    implements _$$KeyboardSetupImplCopyWith<$Res> {
  __$$KeyboardSetupImplCopyWithImpl(
      _$KeyboardSetupImpl _value, $Res Function(_$KeyboardSetupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setting = null,
    Object? layouts = null,
  }) {
    return _then(_$KeyboardSetupImpl(
      setting: null == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as KeyboardSetting,
      layouts: null == layouts
          ? _value._layouts
          : layouts // ignore: cast_nullable_to_non_nullable
              as List<KeyboardLayout>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyboardSetupImpl implements _KeyboardSetup {
  const _$KeyboardSetupImpl(
      {required this.setting, required final List<KeyboardLayout> layouts})
      : _layouts = layouts;

  factory _$KeyboardSetupImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyboardSetupImplFromJson(json);

  @override
  final KeyboardSetting setting;
  final List<KeyboardLayout> _layouts;
  @override
  List<KeyboardLayout> get layouts {
    if (_layouts is EqualUnmodifiableListView) return _layouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layouts);
  }

  @override
  String toString() {
    return 'KeyboardSetup(setting: $setting, layouts: $layouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyboardSetupImpl &&
            (identical(other.setting, setting) || other.setting == setting) &&
            const DeepCollectionEquality().equals(other._layouts, _layouts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, setting, const DeepCollectionEquality().hash(_layouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardSetupImplCopyWith<_$KeyboardSetupImpl> get copyWith =>
      __$$KeyboardSetupImplCopyWithImpl<_$KeyboardSetupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyboardSetupImplToJson(
      this,
    );
  }
}

abstract class _KeyboardSetup implements KeyboardSetup {
  const factory _KeyboardSetup(
      {required final KeyboardSetting setting,
      required final List<KeyboardLayout> layouts}) = _$KeyboardSetupImpl;

  factory _KeyboardSetup.fromJson(Map<String, dynamic> json) =
      _$KeyboardSetupImpl.fromJson;

  @override
  KeyboardSetting get setting;
  @override
  List<KeyboardLayout> get layouts;
  @override
  @JsonKey(ignore: true)
  _$$KeyboardSetupImplCopyWith<_$KeyboardSetupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceSelection _$SourceSelectionFromJson(Map<String, dynamic> json) {
  return _SourceSelection.fromJson(json);
}

/// @nodoc
mixin _$SourceSelection {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get variant => throw _privateConstructorUsedError;
  @JsonKey(name: 'default')
  bool get isDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceSelectionCopyWith<SourceSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceSelectionCopyWith<$Res> {
  factory $SourceSelectionCopyWith(
          SourceSelection value, $Res Function(SourceSelection) then) =
      _$SourceSelectionCopyWithImpl<$Res, SourceSelection>;
  @useResult
  $Res call(
      {String name,
      String description,
      String id,
      int size,
      String variant,
      @JsonKey(name: 'default') bool isDefault});
}

/// @nodoc
class _$SourceSelectionCopyWithImpl<$Res, $Val extends SourceSelection>
    implements $SourceSelectionCopyWith<$Res> {
  _$SourceSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? id = null,
    Object? size = null,
    Object? variant = null,
    Object? isDefault = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceSelectionImplCopyWith<$Res>
    implements $SourceSelectionCopyWith<$Res> {
  factory _$$SourceSelectionImplCopyWith(_$SourceSelectionImpl value,
          $Res Function(_$SourceSelectionImpl) then) =
      __$$SourceSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String id,
      int size,
      String variant,
      @JsonKey(name: 'default') bool isDefault});
}

/// @nodoc
class __$$SourceSelectionImplCopyWithImpl<$Res>
    extends _$SourceSelectionCopyWithImpl<$Res, _$SourceSelectionImpl>
    implements _$$SourceSelectionImplCopyWith<$Res> {
  __$$SourceSelectionImplCopyWithImpl(
      _$SourceSelectionImpl _value, $Res Function(_$SourceSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? id = null,
    Object? size = null,
    Object? variant = null,
    Object? isDefault = null,
  }) {
    return _then(_$SourceSelectionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceSelectionImpl implements _SourceSelection {
  const _$SourceSelectionImpl(
      {required this.name,
      required this.description,
      required this.id,
      required this.size,
      required this.variant,
      @JsonKey(name: 'default') required this.isDefault});

  factory _$SourceSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceSelectionImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String id;
  @override
  final int size;
  @override
  final String variant;
  @override
  @JsonKey(name: 'default')
  final bool isDefault;

  @override
  String toString() {
    return 'SourceSelection(name: $name, description: $description, id: $id, size: $size, variant: $variant, isDefault: $isDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceSelectionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, id, size, variant, isDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceSelectionImplCopyWith<_$SourceSelectionImpl> get copyWith =>
      __$$SourceSelectionImplCopyWithImpl<_$SourceSelectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceSelectionImplToJson(
      this,
    );
  }
}

abstract class _SourceSelection implements SourceSelection {
  const factory _SourceSelection(
          {required final String name,
          required final String description,
          required final String id,
          required final int size,
          required final String variant,
          @JsonKey(name: 'default') required final bool isDefault}) =
      _$SourceSelectionImpl;

  factory _SourceSelection.fromJson(Map<String, dynamic> json) =
      _$SourceSelectionImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get id;
  @override
  int get size;
  @override
  String get variant;
  @override
  @JsonKey(name: 'default')
  bool get isDefault;
  @override
  @JsonKey(ignore: true)
  _$$SourceSelectionImplCopyWith<_$SourceSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceSelectionAndSetting _$SourceSelectionAndSettingFromJson(
    Map<String, dynamic> json) {
  return _SourceSelectionAndSetting.fromJson(json);
}

/// @nodoc
mixin _$SourceSelectionAndSetting {
  List<SourceSelection> get sources => throw _privateConstructorUsedError;
  String get currentId => throw _privateConstructorUsedError;
  bool get searchDrivers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceSelectionAndSettingCopyWith<SourceSelectionAndSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceSelectionAndSettingCopyWith<$Res> {
  factory $SourceSelectionAndSettingCopyWith(SourceSelectionAndSetting value,
          $Res Function(SourceSelectionAndSetting) then) =
      _$SourceSelectionAndSettingCopyWithImpl<$Res, SourceSelectionAndSetting>;
  @useResult
  $Res call(
      {List<SourceSelection> sources, String currentId, bool searchDrivers});
}

/// @nodoc
class _$SourceSelectionAndSettingCopyWithImpl<$Res,
        $Val extends SourceSelectionAndSetting>
    implements $SourceSelectionAndSettingCopyWith<$Res> {
  _$SourceSelectionAndSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sources = null,
    Object? currentId = null,
    Object? searchDrivers = null,
  }) {
    return _then(_value.copyWith(
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SourceSelection>,
      currentId: null == currentId
          ? _value.currentId
          : currentId // ignore: cast_nullable_to_non_nullable
              as String,
      searchDrivers: null == searchDrivers
          ? _value.searchDrivers
          : searchDrivers // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceSelectionAndSettingImplCopyWith<$Res>
    implements $SourceSelectionAndSettingCopyWith<$Res> {
  factory _$$SourceSelectionAndSettingImplCopyWith(
          _$SourceSelectionAndSettingImpl value,
          $Res Function(_$SourceSelectionAndSettingImpl) then) =
      __$$SourceSelectionAndSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SourceSelection> sources, String currentId, bool searchDrivers});
}

/// @nodoc
class __$$SourceSelectionAndSettingImplCopyWithImpl<$Res>
    extends _$SourceSelectionAndSettingCopyWithImpl<$Res,
        _$SourceSelectionAndSettingImpl>
    implements _$$SourceSelectionAndSettingImplCopyWith<$Res> {
  __$$SourceSelectionAndSettingImplCopyWithImpl(
      _$SourceSelectionAndSettingImpl _value,
      $Res Function(_$SourceSelectionAndSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sources = null,
    Object? currentId = null,
    Object? searchDrivers = null,
  }) {
    return _then(_$SourceSelectionAndSettingImpl(
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SourceSelection>,
      currentId: null == currentId
          ? _value.currentId
          : currentId // ignore: cast_nullable_to_non_nullable
              as String,
      searchDrivers: null == searchDrivers
          ? _value.searchDrivers
          : searchDrivers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceSelectionAndSettingImpl implements _SourceSelectionAndSetting {
  const _$SourceSelectionAndSettingImpl(
      {required final List<SourceSelection> sources,
      required this.currentId,
      required this.searchDrivers})
      : _sources = sources;

  factory _$SourceSelectionAndSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceSelectionAndSettingImplFromJson(json);

  final List<SourceSelection> _sources;
  @override
  List<SourceSelection> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  final String currentId;
  @override
  final bool searchDrivers;

  @override
  String toString() {
    return 'SourceSelectionAndSetting(sources: $sources, currentId: $currentId, searchDrivers: $searchDrivers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceSelectionAndSettingImpl &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.currentId, currentId) ||
                other.currentId == currentId) &&
            (identical(other.searchDrivers, searchDrivers) ||
                other.searchDrivers == searchDrivers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_sources), currentId, searchDrivers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceSelectionAndSettingImplCopyWith<_$SourceSelectionAndSettingImpl>
      get copyWith => __$$SourceSelectionAndSettingImplCopyWithImpl<
          _$SourceSelectionAndSettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceSelectionAndSettingImplToJson(
      this,
    );
  }
}

abstract class _SourceSelectionAndSetting implements SourceSelectionAndSetting {
  const factory _SourceSelectionAndSetting(
      {required final List<SourceSelection> sources,
      required final String currentId,
      required final bool searchDrivers}) = _$SourceSelectionAndSettingImpl;

  factory _SourceSelectionAndSetting.fromJson(Map<String, dynamic> json) =
      _$SourceSelectionAndSettingImpl.fromJson;

  @override
  List<SourceSelection> get sources;
  @override
  String get currentId;
  @override
  bool get searchDrivers;
  @override
  @JsonKey(ignore: true)
  _$$SourceSelectionAndSettingImplCopyWith<_$SourceSelectionAndSettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ZdevInfo _$ZdevInfoFromJson(Map<String, dynamic> json) {
  return _ZdevInfo.fromJson(json);
}

/// @nodoc
mixin _$ZdevInfo {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get on => throw _privateConstructorUsedError;
  bool get exists => throw _privateConstructorUsedError;
  bool get pers => throw _privateConstructorUsedError;
  bool get auto => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  String get names => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZdevInfoCopyWith<ZdevInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZdevInfoCopyWith<$Res> {
  factory $ZdevInfoCopyWith(ZdevInfo value, $Res Function(ZdevInfo) then) =
      _$ZdevInfoCopyWithImpl<$Res, ZdevInfo>;
  @useResult
  $Res call(
      {String id,
      String type,
      bool on,
      bool exists,
      bool pers,
      bool auto,
      bool failed,
      String names});
}

/// @nodoc
class _$ZdevInfoCopyWithImpl<$Res, $Val extends ZdevInfo>
    implements $ZdevInfoCopyWith<$Res> {
  _$ZdevInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? on = null,
    Object? exists = null,
    Object? pers = null,
    Object? auto = null,
    Object? failed = null,
    Object? names = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      on: null == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool,
      exists: null == exists
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
      pers: null == pers
          ? _value.pers
          : pers // ignore: cast_nullable_to_non_nullable
              as bool,
      auto: null == auto
          ? _value.auto
          : auto // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZdevInfoImplCopyWith<$Res>
    implements $ZdevInfoCopyWith<$Res> {
  factory _$$ZdevInfoImplCopyWith(
          _$ZdevInfoImpl value, $Res Function(_$ZdevInfoImpl) then) =
      __$$ZdevInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      bool on,
      bool exists,
      bool pers,
      bool auto,
      bool failed,
      String names});
}

/// @nodoc
class __$$ZdevInfoImplCopyWithImpl<$Res>
    extends _$ZdevInfoCopyWithImpl<$Res, _$ZdevInfoImpl>
    implements _$$ZdevInfoImplCopyWith<$Res> {
  __$$ZdevInfoImplCopyWithImpl(
      _$ZdevInfoImpl _value, $Res Function(_$ZdevInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? on = null,
    Object? exists = null,
    Object? pers = null,
    Object? auto = null,
    Object? failed = null,
    Object? names = null,
  }) {
    return _then(_$ZdevInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      on: null == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool,
      exists: null == exists
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
      pers: null == pers
          ? _value.pers
          : pers // ignore: cast_nullable_to_non_nullable
              as bool,
      auto: null == auto
          ? _value.auto
          : auto // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZdevInfoImpl implements _ZdevInfo {
  const _$ZdevInfoImpl(
      {required this.id,
      required this.type,
      required this.on,
      required this.exists,
      required this.pers,
      required this.auto,
      required this.failed,
      required this.names});

  factory _$ZdevInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZdevInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final bool on;
  @override
  final bool exists;
  @override
  final bool pers;
  @override
  final bool auto;
  @override
  final bool failed;
  @override
  final String names;

  @override
  String toString() {
    return 'ZdevInfo(id: $id, type: $type, on: $on, exists: $exists, pers: $pers, auto: $auto, failed: $failed, names: $names)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZdevInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.on, on) || other.on == on) &&
            (identical(other.exists, exists) || other.exists == exists) &&
            (identical(other.pers, pers) || other.pers == pers) &&
            (identical(other.auto, auto) || other.auto == auto) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.names, names) || other.names == names));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, on, exists, pers, auto, failed, names);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZdevInfoImplCopyWith<_$ZdevInfoImpl> get copyWith =>
      __$$ZdevInfoImplCopyWithImpl<_$ZdevInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZdevInfoImplToJson(
      this,
    );
  }
}

abstract class _ZdevInfo implements ZdevInfo {
  const factory _ZdevInfo(
      {required final String id,
      required final String type,
      required final bool on,
      required final bool exists,
      required final bool pers,
      required final bool auto,
      required final bool failed,
      required final String names}) = _$ZdevInfoImpl;

  factory _ZdevInfo.fromJson(Map<String, dynamic> json) =
      _$ZdevInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  bool get on;
  @override
  bool get exists;
  @override
  bool get pers;
  @override
  bool get auto;
  @override
  bool get failed;
  @override
  String get names;
  @override
  @JsonKey(ignore: true)
  _$$ZdevInfoImplCopyWith<_$ZdevInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NetworkStatus _$NetworkStatusFromJson(Map<String, dynamic> json) {
  return _NetworkStatus.fromJson(json);
}

/// @nodoc
mixin _$NetworkStatus {
  List<NetDevInfo> get devices => throw _privateConstructorUsedError;
  PackageInstallState get wlanSupportInstallState =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworkStatusCopyWith<NetworkStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStatusCopyWith<$Res> {
  factory $NetworkStatusCopyWith(
          NetworkStatus value, $Res Function(NetworkStatus) then) =
      _$NetworkStatusCopyWithImpl<$Res, NetworkStatus>;
  @useResult
  $Res call(
      {List<NetDevInfo> devices, PackageInstallState wlanSupportInstallState});
}

/// @nodoc
class _$NetworkStatusCopyWithImpl<$Res, $Val extends NetworkStatus>
    implements $NetworkStatusCopyWith<$Res> {
  _$NetworkStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
    Object? wlanSupportInstallState = null,
  }) {
    return _then(_value.copyWith(
      devices: null == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<NetDevInfo>,
      wlanSupportInstallState: null == wlanSupportInstallState
          ? _value.wlanSupportInstallState
          : wlanSupportInstallState // ignore: cast_nullable_to_non_nullable
              as PackageInstallState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkStatusImplCopyWith<$Res>
    implements $NetworkStatusCopyWith<$Res> {
  factory _$$NetworkStatusImplCopyWith(
          _$NetworkStatusImpl value, $Res Function(_$NetworkStatusImpl) then) =
      __$$NetworkStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NetDevInfo> devices, PackageInstallState wlanSupportInstallState});
}

/// @nodoc
class __$$NetworkStatusImplCopyWithImpl<$Res>
    extends _$NetworkStatusCopyWithImpl<$Res, _$NetworkStatusImpl>
    implements _$$NetworkStatusImplCopyWith<$Res> {
  __$$NetworkStatusImplCopyWithImpl(
      _$NetworkStatusImpl _value, $Res Function(_$NetworkStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
    Object? wlanSupportInstallState = null,
  }) {
    return _then(_$NetworkStatusImpl(
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<NetDevInfo>,
      wlanSupportInstallState: null == wlanSupportInstallState
          ? _value.wlanSupportInstallState
          : wlanSupportInstallState // ignore: cast_nullable_to_non_nullable
              as PackageInstallState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkStatusImpl implements _NetworkStatus {
  const _$NetworkStatusImpl(
      {required final List<NetDevInfo> devices,
      required this.wlanSupportInstallState})
      : _devices = devices;

  factory _$NetworkStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkStatusImplFromJson(json);

  final List<NetDevInfo> _devices;
  @override
  List<NetDevInfo> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  final PackageInstallState wlanSupportInstallState;

  @override
  String toString() {
    return 'NetworkStatus(devices: $devices, wlanSupportInstallState: $wlanSupportInstallState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkStatusImpl &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            (identical(
                    other.wlanSupportInstallState, wlanSupportInstallState) ||
                other.wlanSupportInstallState == wlanSupportInstallState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_devices), wlanSupportInstallState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkStatusImplCopyWith<_$NetworkStatusImpl> get copyWith =>
      __$$NetworkStatusImplCopyWithImpl<_$NetworkStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkStatusImplToJson(
      this,
    );
  }
}

abstract class _NetworkStatus implements NetworkStatus {
  const factory _NetworkStatus(
          {required final List<NetDevInfo> devices,
          required final PackageInstallState wlanSupportInstallState}) =
      _$NetworkStatusImpl;

  factory _NetworkStatus.fromJson(Map<String, dynamic> json) =
      _$NetworkStatusImpl.fromJson;

  @override
  List<NetDevInfo> get devices;
  @override
  PackageInstallState get wlanSupportInstallState;
  @override
  @JsonKey(ignore: true)
  _$$NetworkStatusImplCopyWith<_$NetworkStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OsProber _$OsProberFromJson(Map<String, dynamic> json) {
  return _OsProber.fromJson(json);
}

/// @nodoc
mixin _$OsProber {
  String get long => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get subpath => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OsProberCopyWith<OsProber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsProberCopyWith<$Res> {
  factory $OsProberCopyWith(OsProber value, $Res Function(OsProber) then) =
      _$OsProberCopyWithImpl<$Res, OsProber>;
  @useResult
  $Res call(
      {String long,
      String label,
      String type,
      String? subpath,
      String? version});
}

/// @nodoc
class _$OsProberCopyWithImpl<$Res, $Val extends OsProber>
    implements $OsProberCopyWith<$Res> {
  _$OsProberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long = null,
    Object? label = null,
    Object? type = null,
    Object? subpath = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subpath: freezed == subpath
          ? _value.subpath
          : subpath // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OsProberImplCopyWith<$Res>
    implements $OsProberCopyWith<$Res> {
  factory _$$OsProberImplCopyWith(
          _$OsProberImpl value, $Res Function(_$OsProberImpl) then) =
      __$$OsProberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String long,
      String label,
      String type,
      String? subpath,
      String? version});
}

/// @nodoc
class __$$OsProberImplCopyWithImpl<$Res>
    extends _$OsProberCopyWithImpl<$Res, _$OsProberImpl>
    implements _$$OsProberImplCopyWith<$Res> {
  __$$OsProberImplCopyWithImpl(
      _$OsProberImpl _value, $Res Function(_$OsProberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long = null,
    Object? label = null,
    Object? type = null,
    Object? subpath = freezed,
    Object? version = freezed,
  }) {
    return _then(_$OsProberImpl(
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subpath: freezed == subpath
          ? _value.subpath
          : subpath // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OsProberImpl implements _OsProber {
  const _$OsProberImpl(
      {required this.long,
      required this.label,
      required this.type,
      this.subpath,
      this.version});

  factory _$OsProberImpl.fromJson(Map<String, dynamic> json) =>
      _$$OsProberImplFromJson(json);

  @override
  final String long;
  @override
  final String label;
  @override
  final String type;
  @override
  final String? subpath;
  @override
  final String? version;

  @override
  String toString() {
    return 'OsProber(long: $long, label: $label, type: $type, subpath: $subpath, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OsProberImpl &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subpath, subpath) || other.subpath == subpath) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, long, label, type, subpath, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OsProberImplCopyWith<_$OsProberImpl> get copyWith =>
      __$$OsProberImplCopyWithImpl<_$OsProberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OsProberImplToJson(
      this,
    );
  }
}

abstract class _OsProber implements OsProber {
  const factory _OsProber(
      {required final String long,
      required final String label,
      required final String type,
      final String? subpath,
      final String? version}) = _$OsProberImpl;

  factory _OsProber.fromJson(Map<String, dynamic> json) =
      _$OsProberImpl.fromJson;

  @override
  String get long;
  @override
  String get label;
  @override
  String get type;
  @override
  String? get subpath;
  @override
  String? get version;
  @override
  @JsonKey(ignore: true)
  _$$OsProberImplCopyWith<_$OsProberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartitionOrGap _$PartitionOrGapFromJson(Map<String, dynamic> json) {
  switch (json['\$type']) {
    case 'Partition':
      return Partition.fromJson(json);
    case 'Gap':
      return Gap.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '\$type', 'PartitionOrGap',
          'Invalid union type "${json['\$type']}"!');
  }
}

/// @nodoc
mixin _$PartitionOrGap {
  int? get size => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            bool isInUse)
        partition,
    required TResult Function(int offset, int size, GapUsable usable) gap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            bool isInUse)?
        partition,
    TResult? Function(int offset, int size, GapUsable usable)? gap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            bool isInUse)?
        partition,
    TResult Function(int offset, int size, GapUsable usable)? gap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Partition value) partition,
    required TResult Function(Gap value) gap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Partition value)? partition,
    TResult? Function(Gap value)? gap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Partition value)? partition,
    TResult Function(Gap value)? gap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartitionOrGapCopyWith<PartitionOrGap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartitionOrGapCopyWith<$Res> {
  factory $PartitionOrGapCopyWith(
          PartitionOrGap value, $Res Function(PartitionOrGap) then) =
      _$PartitionOrGapCopyWithImpl<$Res, PartitionOrGap>;
  @useResult
  $Res call({int size, int offset});
}

/// @nodoc
class _$PartitionOrGapCopyWithImpl<$Res, $Val extends PartitionOrGap>
    implements $PartitionOrGapCopyWith<$Res> {
  _$PartitionOrGapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size!
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset!
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartitionImplCopyWith<$Res>
    implements $PartitionOrGapCopyWith<$Res> {
  factory _$$PartitionImplCopyWith(
          _$PartitionImpl value, $Res Function(_$PartitionImpl) then) =
      __$$PartitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? size,
      int? number,
      bool? preserve,
      String? wipe,
      List<String> annotations,
      String? mount,
      String? format,
      bool? grubDevice,
      bool? boot,
      OsProber? os,
      int? offset,
      int? estimatedMinSize,
      bool? resize,
      String? path,
      bool isInUse});

  $OsProberCopyWith<$Res>? get os;
}

/// @nodoc
class __$$PartitionImplCopyWithImpl<$Res>
    extends _$PartitionOrGapCopyWithImpl<$Res, _$PartitionImpl>
    implements _$$PartitionImplCopyWith<$Res> {
  __$$PartitionImplCopyWithImpl(
      _$PartitionImpl _value, $Res Function(_$PartitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? number = freezed,
    Object? preserve = freezed,
    Object? wipe = freezed,
    Object? annotations = null,
    Object? mount = freezed,
    Object? format = freezed,
    Object? grubDevice = freezed,
    Object? boot = freezed,
    Object? os = freezed,
    Object? offset = freezed,
    Object? estimatedMinSize = freezed,
    Object? resize = freezed,
    Object? path = freezed,
    Object? isInUse = null,
  }) {
    return _then(_$PartitionImpl(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      preserve: freezed == preserve
          ? _value.preserve
          : preserve // ignore: cast_nullable_to_non_nullable
              as bool?,
      wipe: freezed == wipe
          ? _value.wipe
          : wipe // ignore: cast_nullable_to_non_nullable
              as String?,
      annotations: null == annotations
          ? _value._annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mount: freezed == mount
          ? _value.mount
          : mount // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      grubDevice: freezed == grubDevice
          ? _value.grubDevice
          : grubDevice // ignore: cast_nullable_to_non_nullable
              as bool?,
      boot: freezed == boot
          ? _value.boot
          : boot // ignore: cast_nullable_to_non_nullable
              as bool?,
      os: freezed == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as OsProber?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      estimatedMinSize: freezed == estimatedMinSize
          ? _value.estimatedMinSize
          : estimatedMinSize // ignore: cast_nullable_to_non_nullable
              as int?,
      resize: freezed == resize
          ? _value.resize
          : resize // ignore: cast_nullable_to_non_nullable
              as bool?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      isInUse: null == isInUse
          ? _value.isInUse
          : isInUse // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OsProberCopyWith<$Res>? get os {
    if (_value.os == null) {
      return null;
    }

    return $OsProberCopyWith<$Res>(_value.os!, (value) {
      return _then(_value.copyWith(os: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PartitionImpl implements Partition {
  const _$PartitionImpl(
      {this.size,
      this.number,
      this.preserve,
      this.wipe,
      final List<String> annotations = const [],
      this.mount,
      this.format,
      this.grubDevice,
      this.boot,
      this.os,
      this.offset,
      this.estimatedMinSize = -1,
      this.resize,
      this.path,
      this.isInUse = false,
      final String? $type})
      : _annotations = annotations,
        $type = $type ?? 'Partition';

  factory _$PartitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartitionImplFromJson(json);

  @override
  final int? size;
  @override
  final int? number;
  @override
  final bool? preserve;
  @override
  final String? wipe;
  final List<String> _annotations;
  @override
  @JsonKey()
  List<String> get annotations {
    if (_annotations is EqualUnmodifiableListView) return _annotations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_annotations);
  }

  @override
  final String? mount;
  @override
  final String? format;
  @override
  final bool? grubDevice;
  @override
  final bool? boot;
  @override
  final OsProber? os;
  @override
  final int? offset;
  @override
  @JsonKey()
  final int? estimatedMinSize;
  @override
  final bool? resize;
  @override
  final String? path;
  @override
  @JsonKey()
  final bool isInUse;

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'PartitionOrGap.partition(size: $size, number: $number, preserve: $preserve, wipe: $wipe, annotations: $annotations, mount: $mount, format: $format, grubDevice: $grubDevice, boot: $boot, os: $os, offset: $offset, estimatedMinSize: $estimatedMinSize, resize: $resize, path: $path, isInUse: $isInUse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartitionImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.preserve, preserve) ||
                other.preserve == preserve) &&
            (identical(other.wipe, wipe) || other.wipe == wipe) &&
            const DeepCollectionEquality()
                .equals(other._annotations, _annotations) &&
            (identical(other.mount, mount) || other.mount == mount) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.grubDevice, grubDevice) ||
                other.grubDevice == grubDevice) &&
            (identical(other.boot, boot) || other.boot == boot) &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.estimatedMinSize, estimatedMinSize) ||
                other.estimatedMinSize == estimatedMinSize) &&
            (identical(other.resize, resize) || other.resize == resize) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.isInUse, isInUse) || other.isInUse == isInUse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      size,
      number,
      preserve,
      wipe,
      const DeepCollectionEquality().hash(_annotations),
      mount,
      format,
      grubDevice,
      boot,
      os,
      offset,
      estimatedMinSize,
      resize,
      path,
      isInUse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartitionImplCopyWith<_$PartitionImpl> get copyWith =>
      __$$PartitionImplCopyWithImpl<_$PartitionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            bool isInUse)
        partition,
    required TResult Function(int offset, int size, GapUsable usable) gap,
  }) {
    return partition(size, number, preserve, wipe, annotations, mount, format,
        grubDevice, boot, os, offset, estimatedMinSize, resize, path, isInUse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            bool isInUse)?
        partition,
    TResult? Function(int offset, int size, GapUsable usable)? gap,
  }) {
    return partition?.call(
        size,
        number,
        preserve,
        wipe,
        annotations,
        mount,
        format,
        grubDevice,
        boot,
        os,
        offset,
        estimatedMinSize,
        resize,
        path,
        isInUse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            bool isInUse)?
        partition,
    TResult Function(int offset, int size, GapUsable usable)? gap,
    required TResult orElse(),
  }) {
    if (partition != null) {
      return partition(
          size,
          number,
          preserve,
          wipe,
          annotations,
          mount,
          format,
          grubDevice,
          boot,
          os,
          offset,
          estimatedMinSize,
          resize,
          path,
          isInUse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Partition value) partition,
    required TResult Function(Gap value) gap,
  }) {
    return partition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Partition value)? partition,
    TResult? Function(Gap value)? gap,
  }) {
    return partition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Partition value)? partition,
    TResult Function(Gap value)? gap,
    required TResult orElse(),
  }) {
    if (partition != null) {
      return partition(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PartitionImplToJson(
      this,
    );
  }
}

abstract class Partition implements PartitionOrGap {
  const factory Partition(
      {final int? size,
      final int? number,
      final bool? preserve,
      final String? wipe,
      final List<String> annotations,
      final String? mount,
      final String? format,
      final bool? grubDevice,
      final bool? boot,
      final OsProber? os,
      final int? offset,
      final int? estimatedMinSize,
      final bool? resize,
      final String? path,
      final bool isInUse}) = _$PartitionImpl;

  factory Partition.fromJson(Map<String, dynamic> json) =
      _$PartitionImpl.fromJson;

  @override
  int? get size;
  int? get number;
  bool? get preserve;
  String? get wipe;
  List<String> get annotations;
  String? get mount;
  String? get format;
  bool? get grubDevice;
  bool? get boot;
  OsProber? get os;
  @override
  int? get offset;
  int? get estimatedMinSize;
  bool? get resize;
  String? get path;
  bool get isInUse;
  @override
  @JsonKey(ignore: true)
  _$$PartitionImplCopyWith<_$PartitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GapImplCopyWith<$Res>
    implements $PartitionOrGapCopyWith<$Res> {
  factory _$$GapImplCopyWith(_$GapImpl value, $Res Function(_$GapImpl) then) =
      __$$GapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset, int size, GapUsable usable});
}

/// @nodoc
class __$$GapImplCopyWithImpl<$Res>
    extends _$PartitionOrGapCopyWithImpl<$Res, _$GapImpl>
    implements _$$GapImplCopyWith<$Res> {
  __$$GapImplCopyWithImpl(_$GapImpl _value, $Res Function(_$GapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? size = null,
    Object? usable = null,
  }) {
    return _then(_$GapImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      usable: null == usable
          ? _value.usable
          : usable // ignore: cast_nullable_to_non_nullable
              as GapUsable,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GapImpl implements Gap {
  const _$GapImpl(
      {required this.offset,
      required this.size,
      required this.usable,
      final String? $type})
      : $type = $type ?? 'Gap';

  factory _$GapImpl.fromJson(Map<String, dynamic> json) =>
      _$$GapImplFromJson(json);

  @override
  final int offset;
  @override
  final int size;
  @override
  final GapUsable usable;

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'PartitionOrGap.gap(offset: $offset, size: $size, usable: $usable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GapImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.usable, usable) || other.usable == usable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, size, usable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GapImplCopyWith<_$GapImpl> get copyWith =>
      __$$GapImplCopyWithImpl<_$GapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            bool isInUse)
        partition,
    required TResult Function(int offset, int size, GapUsable usable) gap,
  }) {
    return gap(offset, size, usable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            bool isInUse)?
        partition,
    TResult? Function(int offset, int size, GapUsable usable)? gap,
  }) {
    return gap?.call(offset, size, usable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? size,
            int? number,
            bool? preserve,
            String? wipe,
            List<String> annotations,
            String? mount,
            String? format,
            bool? grubDevice,
            bool? boot,
            OsProber? os,
            int? offset,
            int? estimatedMinSize,
            bool? resize,
            String? path,
            bool isInUse)?
        partition,
    TResult Function(int offset, int size, GapUsable usable)? gap,
    required TResult orElse(),
  }) {
    if (gap != null) {
      return gap(offset, size, usable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Partition value) partition,
    required TResult Function(Gap value) gap,
  }) {
    return gap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Partition value)? partition,
    TResult? Function(Gap value)? gap,
  }) {
    return gap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Partition value)? partition,
    TResult Function(Gap value)? gap,
    required TResult orElse(),
  }) {
    if (gap != null) {
      return gap(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GapImplToJson(
      this,
    );
  }
}

abstract class Gap implements PartitionOrGap {
  const factory Gap(
      {required final int offset,
      required final int size,
      required final GapUsable usable}) = _$GapImpl;

  factory Gap.fromJson(Map<String, dynamic> json) = _$GapImpl.fromJson;

  @override
  int get offset;
  @override
  int get size;
  GapUsable get usable;
  @override
  @JsonKey(ignore: true)
  _$$GapImplCopyWith<_$GapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ZFS _$ZFSFromJson(Map<String, dynamic> json) {
  return _ZFS.fromJson(json);
}

/// @nodoc
mixin _$ZFS {
  String get volume => throw _privateConstructorUsedError;
  Map<String, dynamic>? get properties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZFSCopyWith<ZFS> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZFSCopyWith<$Res> {
  factory $ZFSCopyWith(ZFS value, $Res Function(ZFS) then) =
      _$ZFSCopyWithImpl<$Res, ZFS>;
  @useResult
  $Res call({String volume, Map<String, dynamic>? properties});
}

/// @nodoc
class _$ZFSCopyWithImpl<$Res, $Val extends ZFS> implements $ZFSCopyWith<$Res> {
  _$ZFSCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
    Object? properties = freezed,
  }) {
    return _then(_value.copyWith(
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZFSImplCopyWith<$Res> implements $ZFSCopyWith<$Res> {
  factory _$$ZFSImplCopyWith(_$ZFSImpl value, $Res Function(_$ZFSImpl) then) =
      __$$ZFSImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String volume, Map<String, dynamic>? properties});
}

/// @nodoc
class __$$ZFSImplCopyWithImpl<$Res> extends _$ZFSCopyWithImpl<$Res, _$ZFSImpl>
    implements _$$ZFSImplCopyWith<$Res> {
  __$$ZFSImplCopyWithImpl(_$ZFSImpl _value, $Res Function(_$ZFSImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
    Object? properties = freezed,
  }) {
    return _then(_$ZFSImpl(
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      properties: freezed == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZFSImpl implements _ZFS {
  const _$ZFSImpl(
      {required this.volume, final Map<String, dynamic>? properties})
      : _properties = properties;

  factory _$ZFSImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZFSImplFromJson(json);

  @override
  final String volume;
  final Map<String, dynamic>? _properties;
  @override
  Map<String, dynamic>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ZFS(volume: $volume, properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZFSImpl &&
            (identical(other.volume, volume) || other.volume == volume) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, volume, const DeepCollectionEquality().hash(_properties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZFSImplCopyWith<_$ZFSImpl> get copyWith =>
      __$$ZFSImplCopyWithImpl<_$ZFSImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZFSImplToJson(
      this,
    );
  }
}

abstract class _ZFS implements ZFS {
  const factory _ZFS(
      {required final String volume,
      final Map<String, dynamic>? properties}) = _$ZFSImpl;

  factory _ZFS.fromJson(Map<String, dynamic> json) = _$ZFSImpl.fromJson;

  @override
  String get volume;
  @override
  Map<String, dynamic>? get properties;
  @override
  @JsonKey(ignore: true)
  _$$ZFSImplCopyWith<_$ZFSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ZPool _$ZPoolFromJson(Map<String, dynamic> json) {
  return _ZPool.fromJson(json);
}

/// @nodoc
mixin _$ZPool {
  String get pool => throw _privateConstructorUsedError;
  String get mountpoint => throw _privateConstructorUsedError;
  ZFS? get zfses => throw _privateConstructorUsedError;
  Map<String, dynamic>? get poolProperties =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get fsProperties => throw _privateConstructorUsedError;
  bool? get defaultFeatures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZPoolCopyWith<ZPool> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZPoolCopyWith<$Res> {
  factory $ZPoolCopyWith(ZPool value, $Res Function(ZPool) then) =
      _$ZPoolCopyWithImpl<$Res, ZPool>;
  @useResult
  $Res call(
      {String pool,
      String mountpoint,
      ZFS? zfses,
      Map<String, dynamic>? poolProperties,
      Map<String, dynamic>? fsProperties,
      bool? defaultFeatures});

  $ZFSCopyWith<$Res>? get zfses;
}

/// @nodoc
class _$ZPoolCopyWithImpl<$Res, $Val extends ZPool>
    implements $ZPoolCopyWith<$Res> {
  _$ZPoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pool = null,
    Object? mountpoint = null,
    Object? zfses = freezed,
    Object? poolProperties = freezed,
    Object? fsProperties = freezed,
    Object? defaultFeatures = freezed,
  }) {
    return _then(_value.copyWith(
      pool: null == pool
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String,
      mountpoint: null == mountpoint
          ? _value.mountpoint
          : mountpoint // ignore: cast_nullable_to_non_nullable
              as String,
      zfses: freezed == zfses
          ? _value.zfses
          : zfses // ignore: cast_nullable_to_non_nullable
              as ZFS?,
      poolProperties: freezed == poolProperties
          ? _value.poolProperties
          : poolProperties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fsProperties: freezed == fsProperties
          ? _value.fsProperties
          : fsProperties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      defaultFeatures: freezed == defaultFeatures
          ? _value.defaultFeatures
          : defaultFeatures // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ZFSCopyWith<$Res>? get zfses {
    if (_value.zfses == null) {
      return null;
    }

    return $ZFSCopyWith<$Res>(_value.zfses!, (value) {
      return _then(_value.copyWith(zfses: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ZPoolImplCopyWith<$Res> implements $ZPoolCopyWith<$Res> {
  factory _$$ZPoolImplCopyWith(
          _$ZPoolImpl value, $Res Function(_$ZPoolImpl) then) =
      __$$ZPoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pool,
      String mountpoint,
      ZFS? zfses,
      Map<String, dynamic>? poolProperties,
      Map<String, dynamic>? fsProperties,
      bool? defaultFeatures});

  @override
  $ZFSCopyWith<$Res>? get zfses;
}

/// @nodoc
class __$$ZPoolImplCopyWithImpl<$Res>
    extends _$ZPoolCopyWithImpl<$Res, _$ZPoolImpl>
    implements _$$ZPoolImplCopyWith<$Res> {
  __$$ZPoolImplCopyWithImpl(
      _$ZPoolImpl _value, $Res Function(_$ZPoolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pool = null,
    Object? mountpoint = null,
    Object? zfses = freezed,
    Object? poolProperties = freezed,
    Object? fsProperties = freezed,
    Object? defaultFeatures = freezed,
  }) {
    return _then(_$ZPoolImpl(
      pool: null == pool
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as String,
      mountpoint: null == mountpoint
          ? _value.mountpoint
          : mountpoint // ignore: cast_nullable_to_non_nullable
              as String,
      zfses: freezed == zfses
          ? _value.zfses
          : zfses // ignore: cast_nullable_to_non_nullable
              as ZFS?,
      poolProperties: freezed == poolProperties
          ? _value._poolProperties
          : poolProperties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fsProperties: freezed == fsProperties
          ? _value._fsProperties
          : fsProperties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      defaultFeatures: freezed == defaultFeatures
          ? _value.defaultFeatures
          : defaultFeatures // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZPoolImpl implements _ZPool {
  const _$ZPoolImpl(
      {required this.pool,
      required this.mountpoint,
      this.zfses,
      final Map<String, dynamic>? poolProperties,
      final Map<String, dynamic>? fsProperties,
      this.defaultFeatures = true})
      : _poolProperties = poolProperties,
        _fsProperties = fsProperties;

  factory _$ZPoolImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZPoolImplFromJson(json);

  @override
  final String pool;
  @override
  final String mountpoint;
  @override
  final ZFS? zfses;
  final Map<String, dynamic>? _poolProperties;
  @override
  Map<String, dynamic>? get poolProperties {
    final value = _poolProperties;
    if (value == null) return null;
    if (_poolProperties is EqualUnmodifiableMapView) return _poolProperties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _fsProperties;
  @override
  Map<String, dynamic>? get fsProperties {
    final value = _fsProperties;
    if (value == null) return null;
    if (_fsProperties is EqualUnmodifiableMapView) return _fsProperties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool? defaultFeatures;

  @override
  String toString() {
    return 'ZPool(pool: $pool, mountpoint: $mountpoint, zfses: $zfses, poolProperties: $poolProperties, fsProperties: $fsProperties, defaultFeatures: $defaultFeatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZPoolImpl &&
            (identical(other.pool, pool) || other.pool == pool) &&
            (identical(other.mountpoint, mountpoint) ||
                other.mountpoint == mountpoint) &&
            (identical(other.zfses, zfses) || other.zfses == zfses) &&
            const DeepCollectionEquality()
                .equals(other._poolProperties, _poolProperties) &&
            const DeepCollectionEquality()
                .equals(other._fsProperties, _fsProperties) &&
            (identical(other.defaultFeatures, defaultFeatures) ||
                other.defaultFeatures == defaultFeatures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pool,
      mountpoint,
      zfses,
      const DeepCollectionEquality().hash(_poolProperties),
      const DeepCollectionEquality().hash(_fsProperties),
      defaultFeatures);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZPoolImplCopyWith<_$ZPoolImpl> get copyWith =>
      __$$ZPoolImplCopyWithImpl<_$ZPoolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZPoolImplToJson(
      this,
    );
  }
}

abstract class _ZPool implements ZPool {
  const factory _ZPool(
      {required final String pool,
      required final String mountpoint,
      final ZFS? zfses,
      final Map<String, dynamic>? poolProperties,
      final Map<String, dynamic>? fsProperties,
      final bool? defaultFeatures}) = _$ZPoolImpl;

  factory _ZPool.fromJson(Map<String, dynamic> json) = _$ZPoolImpl.fromJson;

  @override
  String get pool;
  @override
  String get mountpoint;
  @override
  ZFS? get zfses;
  @override
  Map<String, dynamic>? get poolProperties;
  @override
  Map<String, dynamic>? get fsProperties;
  @override
  bool? get defaultFeatures;
  @override
  @JsonKey(ignore: true)
  _$$ZPoolImplCopyWith<_$ZPoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Disk _$DiskFromJson(Map<String, dynamic> json) {
  return _Disk.fromJson(json);
}

/// @nodoc
mixin _$Disk {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<String> get usageLabels => throw _privateConstructorUsedError;
  List<PartitionOrGap> get partitions => throw _privateConstructorUsedError;
  bool get okForGuided => throw _privateConstructorUsedError;
  String? get ptable => throw _privateConstructorUsedError;
  bool get preserve => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  bool get bootDevice => throw _privateConstructorUsedError;
  bool get canBeBootDevice => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get vendor => throw _privateConstructorUsedError;
  bool get hasInUsePartition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiskCopyWith<Disk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiskCopyWith<$Res> {
  factory $DiskCopyWith(Disk value, $Res Function(Disk) then) =
      _$DiskCopyWithImpl<$Res, Disk>;
  @useResult
  $Res call(
      {String id,
      String label,
      String type,
      int size,
      List<String> usageLabels,
      List<PartitionOrGap> partitions,
      bool okForGuided,
      String? ptable,
      bool preserve,
      String? path,
      bool bootDevice,
      bool canBeBootDevice,
      String? model,
      String? vendor,
      bool hasInUsePartition});
}

/// @nodoc
class _$DiskCopyWithImpl<$Res, $Val extends Disk>
    implements $DiskCopyWith<$Res> {
  _$DiskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? type = null,
    Object? size = null,
    Object? usageLabels = null,
    Object? partitions = null,
    Object? okForGuided = null,
    Object? ptable = freezed,
    Object? preserve = null,
    Object? path = freezed,
    Object? bootDevice = null,
    Object? canBeBootDevice = null,
    Object? model = freezed,
    Object? vendor = freezed,
    Object? hasInUsePartition = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      usageLabels: null == usageLabels
          ? _value.usageLabels
          : usageLabels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      partitions: null == partitions
          ? _value.partitions
          : partitions // ignore: cast_nullable_to_non_nullable
              as List<PartitionOrGap>,
      okForGuided: null == okForGuided
          ? _value.okForGuided
          : okForGuided // ignore: cast_nullable_to_non_nullable
              as bool,
      ptable: freezed == ptable
          ? _value.ptable
          : ptable // ignore: cast_nullable_to_non_nullable
              as String?,
      preserve: null == preserve
          ? _value.preserve
          : preserve // ignore: cast_nullable_to_non_nullable
              as bool,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      bootDevice: null == bootDevice
          ? _value.bootDevice
          : bootDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      canBeBootDevice: null == canBeBootDevice
          ? _value.canBeBootDevice
          : canBeBootDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasInUsePartition: null == hasInUsePartition
          ? _value.hasInUsePartition
          : hasInUsePartition // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiskImplCopyWith<$Res> implements $DiskCopyWith<$Res> {
  factory _$$DiskImplCopyWith(
          _$DiskImpl value, $Res Function(_$DiskImpl) then) =
      __$$DiskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String label,
      String type,
      int size,
      List<String> usageLabels,
      List<PartitionOrGap> partitions,
      bool okForGuided,
      String? ptable,
      bool preserve,
      String? path,
      bool bootDevice,
      bool canBeBootDevice,
      String? model,
      String? vendor,
      bool hasInUsePartition});
}

/// @nodoc
class __$$DiskImplCopyWithImpl<$Res>
    extends _$DiskCopyWithImpl<$Res, _$DiskImpl>
    implements _$$DiskImplCopyWith<$Res> {
  __$$DiskImplCopyWithImpl(_$DiskImpl _value, $Res Function(_$DiskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? type = null,
    Object? size = null,
    Object? usageLabels = null,
    Object? partitions = null,
    Object? okForGuided = null,
    Object? ptable = freezed,
    Object? preserve = null,
    Object? path = freezed,
    Object? bootDevice = null,
    Object? canBeBootDevice = null,
    Object? model = freezed,
    Object? vendor = freezed,
    Object? hasInUsePartition = null,
  }) {
    return _then(_$DiskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      usageLabels: null == usageLabels
          ? _value._usageLabels
          : usageLabels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      partitions: null == partitions
          ? _value._partitions
          : partitions // ignore: cast_nullable_to_non_nullable
              as List<PartitionOrGap>,
      okForGuided: null == okForGuided
          ? _value.okForGuided
          : okForGuided // ignore: cast_nullable_to_non_nullable
              as bool,
      ptable: freezed == ptable
          ? _value.ptable
          : ptable // ignore: cast_nullable_to_non_nullable
              as String?,
      preserve: null == preserve
          ? _value.preserve
          : preserve // ignore: cast_nullable_to_non_nullable
              as bool,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      bootDevice: null == bootDevice
          ? _value.bootDevice
          : bootDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      canBeBootDevice: null == canBeBootDevice
          ? _value.canBeBootDevice
          : canBeBootDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasInUsePartition: null == hasInUsePartition
          ? _value.hasInUsePartition
          : hasInUsePartition // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiskImpl implements _Disk {
  const _$DiskImpl(
      {required this.id,
      required this.label,
      required this.type,
      required this.size,
      required final List<String> usageLabels,
      required final List<PartitionOrGap> partitions,
      required this.okForGuided,
      required this.ptable,
      required this.preserve,
      required this.path,
      required this.bootDevice,
      required this.canBeBootDevice,
      this.model,
      this.vendor,
      this.hasInUsePartition = false})
      : _usageLabels = usageLabels,
        _partitions = partitions;

  factory _$DiskImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiskImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String type;
  @override
  final int size;
  final List<String> _usageLabels;
  @override
  List<String> get usageLabels {
    if (_usageLabels is EqualUnmodifiableListView) return _usageLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usageLabels);
  }

  final List<PartitionOrGap> _partitions;
  @override
  List<PartitionOrGap> get partitions {
    if (_partitions is EqualUnmodifiableListView) return _partitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partitions);
  }

  @override
  final bool okForGuided;
  @override
  final String? ptable;
  @override
  final bool preserve;
  @override
  final String? path;
  @override
  final bool bootDevice;
  @override
  final bool canBeBootDevice;
  @override
  final String? model;
  @override
  final String? vendor;
  @override
  @JsonKey()
  final bool hasInUsePartition;

  @override
  String toString() {
    return 'Disk(id: $id, label: $label, type: $type, size: $size, usageLabels: $usageLabels, partitions: $partitions, okForGuided: $okForGuided, ptable: $ptable, preserve: $preserve, path: $path, bootDevice: $bootDevice, canBeBootDevice: $canBeBootDevice, model: $model, vendor: $vendor, hasInUsePartition: $hasInUsePartition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality()
                .equals(other._usageLabels, _usageLabels) &&
            const DeepCollectionEquality()
                .equals(other._partitions, _partitions) &&
            (identical(other.okForGuided, okForGuided) ||
                other.okForGuided == okForGuided) &&
            (identical(other.ptable, ptable) || other.ptable == ptable) &&
            (identical(other.preserve, preserve) ||
                other.preserve == preserve) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.bootDevice, bootDevice) ||
                other.bootDevice == bootDevice) &&
            (identical(other.canBeBootDevice, canBeBootDevice) ||
                other.canBeBootDevice == canBeBootDevice) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.hasInUsePartition, hasInUsePartition) ||
                other.hasInUsePartition == hasInUsePartition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      type,
      size,
      const DeepCollectionEquality().hash(_usageLabels),
      const DeepCollectionEquality().hash(_partitions),
      okForGuided,
      ptable,
      preserve,
      path,
      bootDevice,
      canBeBootDevice,
      model,
      vendor,
      hasInUsePartition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiskImplCopyWith<_$DiskImpl> get copyWith =>
      __$$DiskImplCopyWithImpl<_$DiskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiskImplToJson(
      this,
    );
  }
}

abstract class _Disk implements Disk {
  const factory _Disk(
      {required final String id,
      required final String label,
      required final String type,
      required final int size,
      required final List<String> usageLabels,
      required final List<PartitionOrGap> partitions,
      required final bool okForGuided,
      required final String? ptable,
      required final bool preserve,
      required final String? path,
      required final bool bootDevice,
      required final bool canBeBootDevice,
      final String? model,
      final String? vendor,
      final bool hasInUsePartition}) = _$DiskImpl;

  factory _Disk.fromJson(Map<String, dynamic> json) = _$DiskImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String get type;
  @override
  int get size;
  @override
  List<String> get usageLabels;
  @override
  List<PartitionOrGap> get partitions;
  @override
  bool get okForGuided;
  @override
  String? get ptable;
  @override
  bool get preserve;
  @override
  String? get path;
  @override
  bool get bootDevice;
  @override
  bool get canBeBootDevice;
  @override
  String? get model;
  @override
  String? get vendor;
  @override
  bool get hasInUsePartition;
  @override
  @JsonKey(ignore: true)
  _$$DiskImplCopyWith<_$DiskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuidedDisallowedCapability _$GuidedDisallowedCapabilityFromJson(
    Map<String, dynamic> json) {
  return _GuidedDisallowedCapability.fromJson(json);
}

/// @nodoc
mixin _$GuidedDisallowedCapability {
  GuidedCapability get capability => throw _privateConstructorUsedError;
  GuidedDisallowedCapabilityReason get reason =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuidedDisallowedCapabilityCopyWith<GuidedDisallowedCapability>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuidedDisallowedCapabilityCopyWith<$Res> {
  factory $GuidedDisallowedCapabilityCopyWith(GuidedDisallowedCapability value,
          $Res Function(GuidedDisallowedCapability) then) =
      _$GuidedDisallowedCapabilityCopyWithImpl<$Res,
          GuidedDisallowedCapability>;
  @useResult
  $Res call(
      {GuidedCapability capability,
      GuidedDisallowedCapabilityReason reason,
      String? message});
}

/// @nodoc
class _$GuidedDisallowedCapabilityCopyWithImpl<$Res,
        $Val extends GuidedDisallowedCapability>
    implements $GuidedDisallowedCapabilityCopyWith<$Res> {
  _$GuidedDisallowedCapabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capability = null,
    Object? reason = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      capability: null == capability
          ? _value.capability
          : capability // ignore: cast_nullable_to_non_nullable
              as GuidedCapability,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as GuidedDisallowedCapabilityReason,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuidedDisallowedCapabilityImplCopyWith<$Res>
    implements $GuidedDisallowedCapabilityCopyWith<$Res> {
  factory _$$GuidedDisallowedCapabilityImplCopyWith(
          _$GuidedDisallowedCapabilityImpl value,
          $Res Function(_$GuidedDisallowedCapabilityImpl) then) =
      __$$GuidedDisallowedCapabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GuidedCapability capability,
      GuidedDisallowedCapabilityReason reason,
      String? message});
}

/// @nodoc
class __$$GuidedDisallowedCapabilityImplCopyWithImpl<$Res>
    extends _$GuidedDisallowedCapabilityCopyWithImpl<$Res,
        _$GuidedDisallowedCapabilityImpl>
    implements _$$GuidedDisallowedCapabilityImplCopyWith<$Res> {
  __$$GuidedDisallowedCapabilityImplCopyWithImpl(
      _$GuidedDisallowedCapabilityImpl _value,
      $Res Function(_$GuidedDisallowedCapabilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capability = null,
    Object? reason = null,
    Object? message = freezed,
  }) {
    return _then(_$GuidedDisallowedCapabilityImpl(
      capability: null == capability
          ? _value.capability
          : capability // ignore: cast_nullable_to_non_nullable
              as GuidedCapability,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as GuidedDisallowedCapabilityReason,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuidedDisallowedCapabilityImpl implements _GuidedDisallowedCapability {
  const _$GuidedDisallowedCapabilityImpl(
      {required this.capability, required this.reason, this.message});

  factory _$GuidedDisallowedCapabilityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GuidedDisallowedCapabilityImplFromJson(json);

  @override
  final GuidedCapability capability;
  @override
  final GuidedDisallowedCapabilityReason reason;
  @override
  final String? message;

  @override
  String toString() {
    return 'GuidedDisallowedCapability(capability: $capability, reason: $reason, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuidedDisallowedCapabilityImpl &&
            (identical(other.capability, capability) ||
                other.capability == capability) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, capability, reason, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuidedDisallowedCapabilityImplCopyWith<_$GuidedDisallowedCapabilityImpl>
      get copyWith => __$$GuidedDisallowedCapabilityImplCopyWithImpl<
          _$GuidedDisallowedCapabilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuidedDisallowedCapabilityImplToJson(
      this,
    );
  }
}

abstract class _GuidedDisallowedCapability
    implements GuidedDisallowedCapability {
  const factory _GuidedDisallowedCapability(
      {required final GuidedCapability capability,
      required final GuidedDisallowedCapabilityReason reason,
      final String? message}) = _$GuidedDisallowedCapabilityImpl;

  factory _GuidedDisallowedCapability.fromJson(Map<String, dynamic> json) =
      _$GuidedDisallowedCapabilityImpl.fromJson;

  @override
  GuidedCapability get capability;
  @override
  GuidedDisallowedCapabilityReason get reason;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$GuidedDisallowedCapabilityImplCopyWith<_$GuidedDisallowedCapabilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StorageResponse _$StorageResponseFromJson(Map<String, dynamic> json) {
  return _StorageResponse.fromJson(json);
}

/// @nodoc
mixin _$StorageResponse {
  ProbeStatus get status => throw _privateConstructorUsedError;
  ErrorReportRef? get errorReport => throw _privateConstructorUsedError;
  Bootloader? get bootloader => throw _privateConstructorUsedError;
  List<dynamic>? get origConfig => throw _privateConstructorUsedError;
  List<dynamic>? get config => throw _privateConstructorUsedError;
  Map<String, dynamic>? get dasd => throw _privateConstructorUsedError;
  int get storageVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageResponseCopyWith<StorageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageResponseCopyWith<$Res> {
  factory $StorageResponseCopyWith(
          StorageResponse value, $Res Function(StorageResponse) then) =
      _$StorageResponseCopyWithImpl<$Res, StorageResponse>;
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      Bootloader? bootloader,
      List<dynamic>? origConfig,
      List<dynamic>? config,
      Map<String, dynamic>? dasd,
      int storageVersion});

  $ErrorReportRefCopyWith<$Res>? get errorReport;
}

/// @nodoc
class _$StorageResponseCopyWithImpl<$Res, $Val extends StorageResponse>
    implements $StorageResponseCopyWith<$Res> {
  _$StorageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? bootloader = freezed,
    Object? origConfig = freezed,
    Object? config = freezed,
    Object? dasd = freezed,
    Object? storageVersion = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _value.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      bootloader: freezed == bootloader
          ? _value.bootloader
          : bootloader // ignore: cast_nullable_to_non_nullable
              as Bootloader?,
      origConfig: freezed == origConfig
          ? _value.origConfig
          : origConfig // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      dasd: freezed == dasd
          ? _value.dasd
          : dasd // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      storageVersion: null == storageVersion
          ? _value.storageVersion
          : storageVersion // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get errorReport {
    if (_value.errorReport == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_value.errorReport!, (value) {
      return _then(_value.copyWith(errorReport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StorageResponseImplCopyWith<$Res>
    implements $StorageResponseCopyWith<$Res> {
  factory _$$StorageResponseImplCopyWith(_$StorageResponseImpl value,
          $Res Function(_$StorageResponseImpl) then) =
      __$$StorageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      Bootloader? bootloader,
      List<dynamic>? origConfig,
      List<dynamic>? config,
      Map<String, dynamic>? dasd,
      int storageVersion});

  @override
  $ErrorReportRefCopyWith<$Res>? get errorReport;
}

/// @nodoc
class __$$StorageResponseImplCopyWithImpl<$Res>
    extends _$StorageResponseCopyWithImpl<$Res, _$StorageResponseImpl>
    implements _$$StorageResponseImplCopyWith<$Res> {
  __$$StorageResponseImplCopyWithImpl(
      _$StorageResponseImpl _value, $Res Function(_$StorageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? bootloader = freezed,
    Object? origConfig = freezed,
    Object? config = freezed,
    Object? dasd = freezed,
    Object? storageVersion = null,
  }) {
    return _then(_$StorageResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _value.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      bootloader: freezed == bootloader
          ? _value.bootloader
          : bootloader // ignore: cast_nullable_to_non_nullable
              as Bootloader?,
      origConfig: freezed == origConfig
          ? _value._origConfig
          : origConfig // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      config: freezed == config
          ? _value._config
          : config // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      dasd: freezed == dasd
          ? _value._dasd
          : dasd // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      storageVersion: null == storageVersion
          ? _value.storageVersion
          : storageVersion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorageResponseImpl implements _StorageResponse {
  const _$StorageResponseImpl(
      {required this.status,
      this.errorReport,
      this.bootloader,
      final List<dynamic>? origConfig,
      final List<dynamic>? config,
      final Map<String, dynamic>? dasd,
      this.storageVersion = 1})
      : _origConfig = origConfig,
        _config = config,
        _dasd = dasd;

  factory _$StorageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorageResponseImplFromJson(json);

  @override
  final ProbeStatus status;
  @override
  final ErrorReportRef? errorReport;
  @override
  final Bootloader? bootloader;
  final List<dynamic>? _origConfig;
  @override
  List<dynamic>? get origConfig {
    final value = _origConfig;
    if (value == null) return null;
    if (_origConfig is EqualUnmodifiableListView) return _origConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _config;
  @override
  List<dynamic>? get config {
    final value = _config;
    if (value == null) return null;
    if (_config is EqualUnmodifiableListView) return _config;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _dasd;
  @override
  Map<String, dynamic>? get dasd {
    final value = _dasd;
    if (value == null) return null;
    if (_dasd is EqualUnmodifiableMapView) return _dasd;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final int storageVersion;

  @override
  String toString() {
    return 'StorageResponse(status: $status, errorReport: $errorReport, bootloader: $bootloader, origConfig: $origConfig, config: $config, dasd: $dasd, storageVersion: $storageVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorReport, errorReport) ||
                other.errorReport == errorReport) &&
            (identical(other.bootloader, bootloader) ||
                other.bootloader == bootloader) &&
            const DeepCollectionEquality()
                .equals(other._origConfig, _origConfig) &&
            const DeepCollectionEquality().equals(other._config, _config) &&
            const DeepCollectionEquality().equals(other._dasd, _dasd) &&
            (identical(other.storageVersion, storageVersion) ||
                other.storageVersion == storageVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      errorReport,
      bootloader,
      const DeepCollectionEquality().hash(_origConfig),
      const DeepCollectionEquality().hash(_config),
      const DeepCollectionEquality().hash(_dasd),
      storageVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageResponseImplCopyWith<_$StorageResponseImpl> get copyWith =>
      __$$StorageResponseImplCopyWithImpl<_$StorageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorageResponseImplToJson(
      this,
    );
  }
}

abstract class _StorageResponse implements StorageResponse {
  const factory _StorageResponse(
      {required final ProbeStatus status,
      final ErrorReportRef? errorReport,
      final Bootloader? bootloader,
      final List<dynamic>? origConfig,
      final List<dynamic>? config,
      final Map<String, dynamic>? dasd,
      final int storageVersion}) = _$StorageResponseImpl;

  factory _StorageResponse.fromJson(Map<String, dynamic> json) =
      _$StorageResponseImpl.fromJson;

  @override
  ProbeStatus get status;
  @override
  ErrorReportRef? get errorReport;
  @override
  Bootloader? get bootloader;
  @override
  List<dynamic>? get origConfig;
  @override
  List<dynamic>? get config;
  @override
  Map<String, dynamic>? get dasd;
  @override
  int get storageVersion;
  @override
  @JsonKey(ignore: true)
  _$$StorageResponseImplCopyWith<_$StorageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StorageResponseV2 _$StorageResponseV2FromJson(Map<String, dynamic> json) {
  return _StorageResponseV2.fromJson(json);
}

/// @nodoc
mixin _$StorageResponseV2 {
  ProbeStatus get status => throw _privateConstructorUsedError;
  ErrorReportRef? get errorReport => throw _privateConstructorUsedError;
  List<Disk> get disks => throw _privateConstructorUsedError;
  bool? get needRoot => throw _privateConstructorUsedError;
  bool? get needBoot => throw _privateConstructorUsedError;
  int? get installMinimumSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageResponseV2CopyWith<StorageResponseV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageResponseV2CopyWith<$Res> {
  factory $StorageResponseV2CopyWith(
          StorageResponseV2 value, $Res Function(StorageResponseV2) then) =
      _$StorageResponseV2CopyWithImpl<$Res, StorageResponseV2>;
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      List<Disk> disks,
      bool? needRoot,
      bool? needBoot,
      int? installMinimumSize});

  $ErrorReportRefCopyWith<$Res>? get errorReport;
}

/// @nodoc
class _$StorageResponseV2CopyWithImpl<$Res, $Val extends StorageResponseV2>
    implements $StorageResponseV2CopyWith<$Res> {
  _$StorageResponseV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? disks = null,
    Object? needRoot = freezed,
    Object? needBoot = freezed,
    Object? installMinimumSize = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _value.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      disks: null == disks
          ? _value.disks
          : disks // ignore: cast_nullable_to_non_nullable
              as List<Disk>,
      needRoot: freezed == needRoot
          ? _value.needRoot
          : needRoot // ignore: cast_nullable_to_non_nullable
              as bool?,
      needBoot: freezed == needBoot
          ? _value.needBoot
          : needBoot // ignore: cast_nullable_to_non_nullable
              as bool?,
      installMinimumSize: freezed == installMinimumSize
          ? _value.installMinimumSize
          : installMinimumSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get errorReport {
    if (_value.errorReport == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_value.errorReport!, (value) {
      return _then(_value.copyWith(errorReport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StorageResponseV2ImplCopyWith<$Res>
    implements $StorageResponseV2CopyWith<$Res> {
  factory _$$StorageResponseV2ImplCopyWith(_$StorageResponseV2Impl value,
          $Res Function(_$StorageResponseV2Impl) then) =
      __$$StorageResponseV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      List<Disk> disks,
      bool? needRoot,
      bool? needBoot,
      int? installMinimumSize});

  @override
  $ErrorReportRefCopyWith<$Res>? get errorReport;
}

/// @nodoc
class __$$StorageResponseV2ImplCopyWithImpl<$Res>
    extends _$StorageResponseV2CopyWithImpl<$Res, _$StorageResponseV2Impl>
    implements _$$StorageResponseV2ImplCopyWith<$Res> {
  __$$StorageResponseV2ImplCopyWithImpl(_$StorageResponseV2Impl _value,
      $Res Function(_$StorageResponseV2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? disks = null,
    Object? needRoot = freezed,
    Object? needBoot = freezed,
    Object? installMinimumSize = freezed,
  }) {
    return _then(_$StorageResponseV2Impl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _value.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      disks: null == disks
          ? _value._disks
          : disks // ignore: cast_nullable_to_non_nullable
              as List<Disk>,
      needRoot: freezed == needRoot
          ? _value.needRoot
          : needRoot // ignore: cast_nullable_to_non_nullable
              as bool?,
      needBoot: freezed == needBoot
          ? _value.needBoot
          : needBoot // ignore: cast_nullable_to_non_nullable
              as bool?,
      installMinimumSize: freezed == installMinimumSize
          ? _value.installMinimumSize
          : installMinimumSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorageResponseV2Impl implements _StorageResponseV2 {
  const _$StorageResponseV2Impl(
      {required this.status,
      this.errorReport,
      final List<Disk> disks = const [],
      this.needRoot,
      this.needBoot,
      this.installMinimumSize})
      : _disks = disks;

  factory _$StorageResponseV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$StorageResponseV2ImplFromJson(json);

  @override
  final ProbeStatus status;
  @override
  final ErrorReportRef? errorReport;
  final List<Disk> _disks;
  @override
  @JsonKey()
  List<Disk> get disks {
    if (_disks is EqualUnmodifiableListView) return _disks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disks);
  }

  @override
  final bool? needRoot;
  @override
  final bool? needBoot;
  @override
  final int? installMinimumSize;

  @override
  String toString() {
    return 'StorageResponseV2(status: $status, errorReport: $errorReport, disks: $disks, needRoot: $needRoot, needBoot: $needBoot, installMinimumSize: $installMinimumSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageResponseV2Impl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorReport, errorReport) ||
                other.errorReport == errorReport) &&
            const DeepCollectionEquality().equals(other._disks, _disks) &&
            (identical(other.needRoot, needRoot) ||
                other.needRoot == needRoot) &&
            (identical(other.needBoot, needBoot) ||
                other.needBoot == needBoot) &&
            (identical(other.installMinimumSize, installMinimumSize) ||
                other.installMinimumSize == installMinimumSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      errorReport,
      const DeepCollectionEquality().hash(_disks),
      needRoot,
      needBoot,
      installMinimumSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageResponseV2ImplCopyWith<_$StorageResponseV2Impl> get copyWith =>
      __$$StorageResponseV2ImplCopyWithImpl<_$StorageResponseV2Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorageResponseV2ImplToJson(
      this,
    );
  }
}

abstract class _StorageResponseV2 implements StorageResponseV2 {
  const factory _StorageResponseV2(
      {required final ProbeStatus status,
      final ErrorReportRef? errorReport,
      final List<Disk> disks,
      final bool? needRoot,
      final bool? needBoot,
      final int? installMinimumSize}) = _$StorageResponseV2Impl;

  factory _StorageResponseV2.fromJson(Map<String, dynamic> json) =
      _$StorageResponseV2Impl.fromJson;

  @override
  ProbeStatus get status;
  @override
  ErrorReportRef? get errorReport;
  @override
  List<Disk> get disks;
  @override
  bool? get needRoot;
  @override
  bool? get needBoot;
  @override
  int? get installMinimumSize;
  @override
  @JsonKey(ignore: true)
  _$$StorageResponseV2ImplCopyWith<_$StorageResponseV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuidedResizeValues _$GuidedResizeValuesFromJson(Map<String, dynamic> json) {
  return _GuidedResizeValues.fromJson(json);
}

/// @nodoc
mixin _$GuidedResizeValues {
  int get installMax => throw _privateConstructorUsedError;
  int get minimum => throw _privateConstructorUsedError;
  int get recommended => throw _privateConstructorUsedError;
  int get maximum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuidedResizeValuesCopyWith<GuidedResizeValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuidedResizeValuesCopyWith<$Res> {
  factory $GuidedResizeValuesCopyWith(
          GuidedResizeValues value, $Res Function(GuidedResizeValues) then) =
      _$GuidedResizeValuesCopyWithImpl<$Res, GuidedResizeValues>;
  @useResult
  $Res call({int installMax, int minimum, int recommended, int maximum});
}

/// @nodoc
class _$GuidedResizeValuesCopyWithImpl<$Res, $Val extends GuidedResizeValues>
    implements $GuidedResizeValuesCopyWith<$Res> {
  _$GuidedResizeValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? installMax = null,
    Object? minimum = null,
    Object? recommended = null,
    Object? maximum = null,
  }) {
    return _then(_value.copyWith(
      installMax: null == installMax
          ? _value.installMax
          : installMax // ignore: cast_nullable_to_non_nullable
              as int,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int,
      recommended: null == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as int,
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuidedResizeValuesImplCopyWith<$Res>
    implements $GuidedResizeValuesCopyWith<$Res> {
  factory _$$GuidedResizeValuesImplCopyWith(_$GuidedResizeValuesImpl value,
          $Res Function(_$GuidedResizeValuesImpl) then) =
      __$$GuidedResizeValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int installMax, int minimum, int recommended, int maximum});
}

/// @nodoc
class __$$GuidedResizeValuesImplCopyWithImpl<$Res>
    extends _$GuidedResizeValuesCopyWithImpl<$Res, _$GuidedResizeValuesImpl>
    implements _$$GuidedResizeValuesImplCopyWith<$Res> {
  __$$GuidedResizeValuesImplCopyWithImpl(_$GuidedResizeValuesImpl _value,
      $Res Function(_$GuidedResizeValuesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? installMax = null,
    Object? minimum = null,
    Object? recommended = null,
    Object? maximum = null,
  }) {
    return _then(_$GuidedResizeValuesImpl(
      installMax: null == installMax
          ? _value.installMax
          : installMax // ignore: cast_nullable_to_non_nullable
              as int,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int,
      recommended: null == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as int,
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuidedResizeValuesImpl implements _GuidedResizeValues {
  const _$GuidedResizeValuesImpl(
      {required this.installMax,
      required this.minimum,
      required this.recommended,
      required this.maximum});

  factory _$GuidedResizeValuesImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuidedResizeValuesImplFromJson(json);

  @override
  final int installMax;
  @override
  final int minimum;
  @override
  final int recommended;
  @override
  final int maximum;

  @override
  String toString() {
    return 'GuidedResizeValues(installMax: $installMax, minimum: $minimum, recommended: $recommended, maximum: $maximum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuidedResizeValuesImpl &&
            (identical(other.installMax, installMax) ||
                other.installMax == installMax) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.maximum, maximum) || other.maximum == maximum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, installMax, minimum, recommended, maximum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuidedResizeValuesImplCopyWith<_$GuidedResizeValuesImpl> get copyWith =>
      __$$GuidedResizeValuesImplCopyWithImpl<_$GuidedResizeValuesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuidedResizeValuesImplToJson(
      this,
    );
  }
}

abstract class _GuidedResizeValues implements GuidedResizeValues {
  const factory _GuidedResizeValues(
      {required final int installMax,
      required final int minimum,
      required final int recommended,
      required final int maximum}) = _$GuidedResizeValuesImpl;

  factory _GuidedResizeValues.fromJson(Map<String, dynamic> json) =
      _$GuidedResizeValuesImpl.fromJson;

  @override
  int get installMax;
  @override
  int get minimum;
  @override
  int get recommended;
  @override
  int get maximum;
  @override
  @JsonKey(ignore: true)
  _$$GuidedResizeValuesImplCopyWith<_$GuidedResizeValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuidedStorageTarget _$GuidedStorageTargetFromJson(Map<String, dynamic> json) {
  switch (json['\$type']) {
    case 'GuidedStorageTargetReformat':
      return GuidedStorageTargetReformat.fromJson(json);
    case 'GuidedStorageTargetResize':
      return GuidedStorageTargetResize.fromJson(json);
    case 'GuidedStorageTargetUseGap':
      return GuidedStorageTargetUseGap.fromJson(json);
    case 'GuidedStorageTargetManual':
      return GuidedStorageTargetManual.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '\$type', 'GuidedStorageTarget',
          'Invalid union type "${json['\$type']}"!');
  }
}

/// @nodoc
mixin _$GuidedStorageTarget {
  List<GuidedCapability> get allowed => throw _privateConstructorUsedError;
  List<GuidedDisallowedCapability> get disallowed =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        reformat,
    required TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        resize,
    required TResult Function(
            String diskId,
            Gap gap,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        useGap,
    required TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        manual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult? Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult? Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult? Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuidedStorageTargetReformat value) reformat,
    required TResult Function(GuidedStorageTargetResize value) resize,
    required TResult Function(GuidedStorageTargetUseGap value) useGap,
    required TResult Function(GuidedStorageTargetManual value) manual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuidedStorageTargetReformat value)? reformat,
    TResult? Function(GuidedStorageTargetResize value)? resize,
    TResult? Function(GuidedStorageTargetUseGap value)? useGap,
    TResult? Function(GuidedStorageTargetManual value)? manual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuidedStorageTargetReformat value)? reformat,
    TResult Function(GuidedStorageTargetResize value)? resize,
    TResult Function(GuidedStorageTargetUseGap value)? useGap,
    TResult Function(GuidedStorageTargetManual value)? manual,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuidedStorageTargetCopyWith<GuidedStorageTarget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuidedStorageTargetCopyWith<$Res> {
  factory $GuidedStorageTargetCopyWith(
          GuidedStorageTarget value, $Res Function(GuidedStorageTarget) then) =
      _$GuidedStorageTargetCopyWithImpl<$Res, GuidedStorageTarget>;
  @useResult
  $Res call(
      {List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class _$GuidedStorageTargetCopyWithImpl<$Res, $Val extends GuidedStorageTarget>
    implements $GuidedStorageTargetCopyWith<$Res> {
  _$GuidedStorageTargetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(_value.copyWith(
      allowed: null == allowed
          ? _value.allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _value.disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuidedStorageTargetReformatImplCopyWith<$Res>
    implements $GuidedStorageTargetCopyWith<$Res> {
  factory _$$GuidedStorageTargetReformatImplCopyWith(
          _$GuidedStorageTargetReformatImpl value,
          $Res Function(_$GuidedStorageTargetReformatImpl) then) =
      __$$GuidedStorageTargetReformatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String diskId,
      List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class __$$GuidedStorageTargetReformatImplCopyWithImpl<$Res>
    extends _$GuidedStorageTargetCopyWithImpl<$Res,
        _$GuidedStorageTargetReformatImpl>
    implements _$$GuidedStorageTargetReformatImplCopyWith<$Res> {
  __$$GuidedStorageTargetReformatImplCopyWithImpl(
      _$GuidedStorageTargetReformatImpl _value,
      $Res Function(_$GuidedStorageTargetReformatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(_$GuidedStorageTargetReformatImpl(
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      allowed: null == allowed
          ? _value._allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _value._disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuidedStorageTargetReformatImpl implements GuidedStorageTargetReformat {
  const _$GuidedStorageTargetReformatImpl(
      {required this.diskId,
      final List<GuidedCapability> allowed = const [],
      final List<GuidedDisallowedCapability> disallowed = const [],
      final String? $type})
      : _allowed = allowed,
        _disallowed = disallowed,
        $type = $type ?? 'GuidedStorageTargetReformat';

  factory _$GuidedStorageTargetReformatImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GuidedStorageTargetReformatImplFromJson(json);

  @override
  final String diskId;
  final List<GuidedCapability> _allowed;
  @override
  @JsonKey()
  List<GuidedCapability> get allowed {
    if (_allowed is EqualUnmodifiableListView) return _allowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowed);
  }

  final List<GuidedDisallowedCapability> _disallowed;
  @override
  @JsonKey()
  List<GuidedDisallowedCapability> get disallowed {
    if (_disallowed is EqualUnmodifiableListView) return _disallowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disallowed);
  }

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'GuidedStorageTarget.reformat(diskId: $diskId, allowed: $allowed, disallowed: $disallowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuidedStorageTargetReformatImpl &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            const DeepCollectionEquality().equals(other._allowed, _allowed) &&
            const DeepCollectionEquality()
                .equals(other._disallowed, _disallowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diskId,
      const DeepCollectionEquality().hash(_allowed),
      const DeepCollectionEquality().hash(_disallowed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuidedStorageTargetReformatImplCopyWith<_$GuidedStorageTargetReformatImpl>
      get copyWith => __$$GuidedStorageTargetReformatImplCopyWithImpl<
          _$GuidedStorageTargetReformatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        reformat,
    required TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        resize,
    required TResult Function(
            String diskId,
            Gap gap,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        useGap,
    required TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        manual,
  }) {
    return reformat(diskId, allowed, disallowed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult? Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult? Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult? Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
  }) {
    return reformat?.call(diskId, allowed, disallowed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
    required TResult orElse(),
  }) {
    if (reformat != null) {
      return reformat(diskId, allowed, disallowed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuidedStorageTargetReformat value) reformat,
    required TResult Function(GuidedStorageTargetResize value) resize,
    required TResult Function(GuidedStorageTargetUseGap value) useGap,
    required TResult Function(GuidedStorageTargetManual value) manual,
  }) {
    return reformat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuidedStorageTargetReformat value)? reformat,
    TResult? Function(GuidedStorageTargetResize value)? resize,
    TResult? Function(GuidedStorageTargetUseGap value)? useGap,
    TResult? Function(GuidedStorageTargetManual value)? manual,
  }) {
    return reformat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuidedStorageTargetReformat value)? reformat,
    TResult Function(GuidedStorageTargetResize value)? resize,
    TResult Function(GuidedStorageTargetUseGap value)? useGap,
    TResult Function(GuidedStorageTargetManual value)? manual,
    required TResult orElse(),
  }) {
    if (reformat != null) {
      return reformat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GuidedStorageTargetReformatImplToJson(
      this,
    );
  }
}

abstract class GuidedStorageTargetReformat implements GuidedStorageTarget {
  const factory GuidedStorageTargetReformat(
          {required final String diskId,
          final List<GuidedCapability> allowed,
          final List<GuidedDisallowedCapability> disallowed}) =
      _$GuidedStorageTargetReformatImpl;

  factory GuidedStorageTargetReformat.fromJson(Map<String, dynamic> json) =
      _$GuidedStorageTargetReformatImpl.fromJson;

  String get diskId;
  @override
  List<GuidedCapability> get allowed;
  @override
  List<GuidedDisallowedCapability> get disallowed;
  @override
  @JsonKey(ignore: true)
  _$$GuidedStorageTargetReformatImplCopyWith<_$GuidedStorageTargetReformatImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuidedStorageTargetResizeImplCopyWith<$Res>
    implements $GuidedStorageTargetCopyWith<$Res> {
  factory _$$GuidedStorageTargetResizeImplCopyWith(
          _$GuidedStorageTargetResizeImpl value,
          $Res Function(_$GuidedStorageTargetResizeImpl) then) =
      __$$GuidedStorageTargetResizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String diskId,
      int partitionNumber,
      int newSize,
      int? minimum,
      int? recommended,
      int? maximum,
      List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class __$$GuidedStorageTargetResizeImplCopyWithImpl<$Res>
    extends _$GuidedStorageTargetCopyWithImpl<$Res,
        _$GuidedStorageTargetResizeImpl>
    implements _$$GuidedStorageTargetResizeImplCopyWith<$Res> {
  __$$GuidedStorageTargetResizeImplCopyWithImpl(
      _$GuidedStorageTargetResizeImpl _value,
      $Res Function(_$GuidedStorageTargetResizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? partitionNumber = null,
    Object? newSize = null,
    Object? minimum = freezed,
    Object? recommended = freezed,
    Object? maximum = freezed,
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(_$GuidedStorageTargetResizeImpl(
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partitionNumber: null == partitionNumber
          ? _value.partitionNumber
          : partitionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      newSize: null == newSize
          ? _value.newSize
          : newSize // ignore: cast_nullable_to_non_nullable
              as int,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as int?,
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int?,
      allowed: null == allowed
          ? _value._allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _value._disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuidedStorageTargetResizeImpl implements GuidedStorageTargetResize {
  const _$GuidedStorageTargetResizeImpl(
      {required this.diskId,
      required this.partitionNumber,
      required this.newSize,
      required this.minimum,
      required this.recommended,
      required this.maximum,
      final List<GuidedCapability> allowed = const [],
      final List<GuidedDisallowedCapability> disallowed = const [],
      final String? $type})
      : _allowed = allowed,
        _disallowed = disallowed,
        $type = $type ?? 'GuidedStorageTargetResize';

  factory _$GuidedStorageTargetResizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuidedStorageTargetResizeImplFromJson(json);

  @override
  final String diskId;
  @override
  final int partitionNumber;
  @override
  final int newSize;
  @override
  final int? minimum;
  @override
  final int? recommended;
  @override
  final int? maximum;
  final List<GuidedCapability> _allowed;
  @override
  @JsonKey()
  List<GuidedCapability> get allowed {
    if (_allowed is EqualUnmodifiableListView) return _allowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowed);
  }

  final List<GuidedDisallowedCapability> _disallowed;
  @override
  @JsonKey()
  List<GuidedDisallowedCapability> get disallowed {
    if (_disallowed is EqualUnmodifiableListView) return _disallowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disallowed);
  }

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'GuidedStorageTarget.resize(diskId: $diskId, partitionNumber: $partitionNumber, newSize: $newSize, minimum: $minimum, recommended: $recommended, maximum: $maximum, allowed: $allowed, disallowed: $disallowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuidedStorageTargetResizeImpl &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            (identical(other.partitionNumber, partitionNumber) ||
                other.partitionNumber == partitionNumber) &&
            (identical(other.newSize, newSize) || other.newSize == newSize) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            const DeepCollectionEquality().equals(other._allowed, _allowed) &&
            const DeepCollectionEquality()
                .equals(other._disallowed, _disallowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diskId,
      partitionNumber,
      newSize,
      minimum,
      recommended,
      maximum,
      const DeepCollectionEquality().hash(_allowed),
      const DeepCollectionEquality().hash(_disallowed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuidedStorageTargetResizeImplCopyWith<_$GuidedStorageTargetResizeImpl>
      get copyWith => __$$GuidedStorageTargetResizeImplCopyWithImpl<
          _$GuidedStorageTargetResizeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        reformat,
    required TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        resize,
    required TResult Function(
            String diskId,
            Gap gap,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        useGap,
    required TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        manual,
  }) {
    return resize(diskId, partitionNumber, newSize, minimum, recommended,
        maximum, allowed, disallowed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult? Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult? Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult? Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
  }) {
    return resize?.call(diskId, partitionNumber, newSize, minimum, recommended,
        maximum, allowed, disallowed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
    required TResult orElse(),
  }) {
    if (resize != null) {
      return resize(diskId, partitionNumber, newSize, minimum, recommended,
          maximum, allowed, disallowed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuidedStorageTargetReformat value) reformat,
    required TResult Function(GuidedStorageTargetResize value) resize,
    required TResult Function(GuidedStorageTargetUseGap value) useGap,
    required TResult Function(GuidedStorageTargetManual value) manual,
  }) {
    return resize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuidedStorageTargetReformat value)? reformat,
    TResult? Function(GuidedStorageTargetResize value)? resize,
    TResult? Function(GuidedStorageTargetUseGap value)? useGap,
    TResult? Function(GuidedStorageTargetManual value)? manual,
  }) {
    return resize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuidedStorageTargetReformat value)? reformat,
    TResult Function(GuidedStorageTargetResize value)? resize,
    TResult Function(GuidedStorageTargetUseGap value)? useGap,
    TResult Function(GuidedStorageTargetManual value)? manual,
    required TResult orElse(),
  }) {
    if (resize != null) {
      return resize(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GuidedStorageTargetResizeImplToJson(
      this,
    );
  }
}

abstract class GuidedStorageTargetResize implements GuidedStorageTarget {
  const factory GuidedStorageTargetResize(
          {required final String diskId,
          required final int partitionNumber,
          required final int newSize,
          required final int? minimum,
          required final int? recommended,
          required final int? maximum,
          final List<GuidedCapability> allowed,
          final List<GuidedDisallowedCapability> disallowed}) =
      _$GuidedStorageTargetResizeImpl;

  factory GuidedStorageTargetResize.fromJson(Map<String, dynamic> json) =
      _$GuidedStorageTargetResizeImpl.fromJson;

  String get diskId;
  int get partitionNumber;
  int get newSize;
  int? get minimum;
  int? get recommended;
  int? get maximum;
  @override
  List<GuidedCapability> get allowed;
  @override
  List<GuidedDisallowedCapability> get disallowed;
  @override
  @JsonKey(ignore: true)
  _$$GuidedStorageTargetResizeImplCopyWith<_$GuidedStorageTargetResizeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuidedStorageTargetUseGapImplCopyWith<$Res>
    implements $GuidedStorageTargetCopyWith<$Res> {
  factory _$$GuidedStorageTargetUseGapImplCopyWith(
          _$GuidedStorageTargetUseGapImpl value,
          $Res Function(_$GuidedStorageTargetUseGapImpl) then) =
      __$$GuidedStorageTargetUseGapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String diskId,
      Gap gap,
      List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class __$$GuidedStorageTargetUseGapImplCopyWithImpl<$Res>
    extends _$GuidedStorageTargetCopyWithImpl<$Res,
        _$GuidedStorageTargetUseGapImpl>
    implements _$$GuidedStorageTargetUseGapImplCopyWith<$Res> {
  __$$GuidedStorageTargetUseGapImplCopyWithImpl(
      _$GuidedStorageTargetUseGapImpl _value,
      $Res Function(_$GuidedStorageTargetUseGapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? gap = freezed,
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(_$GuidedStorageTargetUseGapImpl(
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      gap: freezed == gap
          ? _value.gap
          : gap // ignore: cast_nullable_to_non_nullable
              as Gap,
      allowed: null == allowed
          ? _value._allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _value._disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuidedStorageTargetUseGapImpl implements GuidedStorageTargetUseGap {
  const _$GuidedStorageTargetUseGapImpl(
      {required this.diskId,
      required this.gap,
      final List<GuidedCapability> allowed = const [],
      final List<GuidedDisallowedCapability> disallowed = const [],
      final String? $type})
      : _allowed = allowed,
        _disallowed = disallowed,
        $type = $type ?? 'GuidedStorageTargetUseGap';

  factory _$GuidedStorageTargetUseGapImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuidedStorageTargetUseGapImplFromJson(json);

  @override
  final String diskId;
  @override
  final Gap gap;
  final List<GuidedCapability> _allowed;
  @override
  @JsonKey()
  List<GuidedCapability> get allowed {
    if (_allowed is EqualUnmodifiableListView) return _allowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowed);
  }

  final List<GuidedDisallowedCapability> _disallowed;
  @override
  @JsonKey()
  List<GuidedDisallowedCapability> get disallowed {
    if (_disallowed is EqualUnmodifiableListView) return _disallowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disallowed);
  }

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'GuidedStorageTarget.useGap(diskId: $diskId, gap: $gap, allowed: $allowed, disallowed: $disallowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuidedStorageTargetUseGapImpl &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            const DeepCollectionEquality().equals(other.gap, gap) &&
            const DeepCollectionEquality().equals(other._allowed, _allowed) &&
            const DeepCollectionEquality()
                .equals(other._disallowed, _disallowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diskId,
      const DeepCollectionEquality().hash(gap),
      const DeepCollectionEquality().hash(_allowed),
      const DeepCollectionEquality().hash(_disallowed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuidedStorageTargetUseGapImplCopyWith<_$GuidedStorageTargetUseGapImpl>
      get copyWith => __$$GuidedStorageTargetUseGapImplCopyWithImpl<
          _$GuidedStorageTargetUseGapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        reformat,
    required TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        resize,
    required TResult Function(
            String diskId,
            Gap gap,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        useGap,
    required TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        manual,
  }) {
    return useGap(diskId, gap, allowed, disallowed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult? Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult? Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult? Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
  }) {
    return useGap?.call(diskId, gap, allowed, disallowed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
    required TResult orElse(),
  }) {
    if (useGap != null) {
      return useGap(diskId, gap, allowed, disallowed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuidedStorageTargetReformat value) reformat,
    required TResult Function(GuidedStorageTargetResize value) resize,
    required TResult Function(GuidedStorageTargetUseGap value) useGap,
    required TResult Function(GuidedStorageTargetManual value) manual,
  }) {
    return useGap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuidedStorageTargetReformat value)? reformat,
    TResult? Function(GuidedStorageTargetResize value)? resize,
    TResult? Function(GuidedStorageTargetUseGap value)? useGap,
    TResult? Function(GuidedStorageTargetManual value)? manual,
  }) {
    return useGap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuidedStorageTargetReformat value)? reformat,
    TResult Function(GuidedStorageTargetResize value)? resize,
    TResult Function(GuidedStorageTargetUseGap value)? useGap,
    TResult Function(GuidedStorageTargetManual value)? manual,
    required TResult orElse(),
  }) {
    if (useGap != null) {
      return useGap(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GuidedStorageTargetUseGapImplToJson(
      this,
    );
  }
}

abstract class GuidedStorageTargetUseGap implements GuidedStorageTarget {
  const factory GuidedStorageTargetUseGap(
          {required final String diskId,
          required final Gap gap,
          final List<GuidedCapability> allowed,
          final List<GuidedDisallowedCapability> disallowed}) =
      _$GuidedStorageTargetUseGapImpl;

  factory GuidedStorageTargetUseGap.fromJson(Map<String, dynamic> json) =
      _$GuidedStorageTargetUseGapImpl.fromJson;

  String get diskId;
  Gap get gap;
  @override
  List<GuidedCapability> get allowed;
  @override
  List<GuidedDisallowedCapability> get disallowed;
  @override
  @JsonKey(ignore: true)
  _$$GuidedStorageTargetUseGapImplCopyWith<_$GuidedStorageTargetUseGapImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuidedStorageTargetManualImplCopyWith<$Res>
    implements $GuidedStorageTargetCopyWith<$Res> {
  factory _$$GuidedStorageTargetManualImplCopyWith(
          _$GuidedStorageTargetManualImpl value,
          $Res Function(_$GuidedStorageTargetManualImpl) then) =
      __$$GuidedStorageTargetManualImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GuidedCapability> allowed,
      List<GuidedDisallowedCapability> disallowed});
}

/// @nodoc
class __$$GuidedStorageTargetManualImplCopyWithImpl<$Res>
    extends _$GuidedStorageTargetCopyWithImpl<$Res,
        _$GuidedStorageTargetManualImpl>
    implements _$$GuidedStorageTargetManualImplCopyWith<$Res> {
  __$$GuidedStorageTargetManualImplCopyWithImpl(
      _$GuidedStorageTargetManualImpl _value,
      $Res Function(_$GuidedStorageTargetManualImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowed = null,
    Object? disallowed = null,
  }) {
    return _then(_$GuidedStorageTargetManualImpl(
      allowed: null == allowed
          ? _value._allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedCapability>,
      disallowed: null == disallowed
          ? _value._disallowed
          : disallowed // ignore: cast_nullable_to_non_nullable
              as List<GuidedDisallowedCapability>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuidedStorageTargetManualImpl implements GuidedStorageTargetManual {
  const _$GuidedStorageTargetManualImpl(
      {required final List<GuidedCapability> allowed,
      final List<GuidedDisallowedCapability> disallowed = const [],
      final String? $type})
      : _allowed = allowed,
        _disallowed = disallowed,
        $type = $type ?? 'GuidedStorageTargetManual';

  factory _$GuidedStorageTargetManualImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuidedStorageTargetManualImplFromJson(json);

  final List<GuidedCapability> _allowed;
  @override
  List<GuidedCapability> get allowed {
    if (_allowed is EqualUnmodifiableListView) return _allowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowed);
  }

  final List<GuidedDisallowedCapability> _disallowed;
  @override
  @JsonKey()
  List<GuidedDisallowedCapability> get disallowed {
    if (_disallowed is EqualUnmodifiableListView) return _disallowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disallowed);
  }

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'GuidedStorageTarget.manual(allowed: $allowed, disallowed: $disallowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuidedStorageTargetManualImpl &&
            const DeepCollectionEquality().equals(other._allowed, _allowed) &&
            const DeepCollectionEquality()
                .equals(other._disallowed, _disallowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allowed),
      const DeepCollectionEquality().hash(_disallowed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuidedStorageTargetManualImplCopyWith<_$GuidedStorageTargetManualImpl>
      get copyWith => __$$GuidedStorageTargetManualImplCopyWithImpl<
          _$GuidedStorageTargetManualImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        reformat,
    required TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        resize,
    required TResult Function(
            String diskId,
            Gap gap,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        useGap,
    required TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)
        manual,
  }) {
    return manual(allowed, disallowed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult? Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult? Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult? Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
  }) {
    return manual?.call(allowed, disallowed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String diskId, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        reformat,
    TResult Function(
            String diskId,
            int partitionNumber,
            int newSize,
            int? minimum,
            int? recommended,
            int? maximum,
            List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        resize,
    TResult Function(String diskId, Gap gap, List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        useGap,
    TResult Function(List<GuidedCapability> allowed,
            List<GuidedDisallowedCapability> disallowed)?
        manual,
    required TResult orElse(),
  }) {
    if (manual != null) {
      return manual(allowed, disallowed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuidedStorageTargetReformat value) reformat,
    required TResult Function(GuidedStorageTargetResize value) resize,
    required TResult Function(GuidedStorageTargetUseGap value) useGap,
    required TResult Function(GuidedStorageTargetManual value) manual,
  }) {
    return manual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuidedStorageTargetReformat value)? reformat,
    TResult? Function(GuidedStorageTargetResize value)? resize,
    TResult? Function(GuidedStorageTargetUseGap value)? useGap,
    TResult? Function(GuidedStorageTargetManual value)? manual,
  }) {
    return manual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuidedStorageTargetReformat value)? reformat,
    TResult Function(GuidedStorageTargetResize value)? resize,
    TResult Function(GuidedStorageTargetUseGap value)? useGap,
    TResult Function(GuidedStorageTargetManual value)? manual,
    required TResult orElse(),
  }) {
    if (manual != null) {
      return manual(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GuidedStorageTargetManualImplToJson(
      this,
    );
  }
}

abstract class GuidedStorageTargetManual implements GuidedStorageTarget {
  const factory GuidedStorageTargetManual(
          {required final List<GuidedCapability> allowed,
          final List<GuidedDisallowedCapability> disallowed}) =
      _$GuidedStorageTargetManualImpl;

  factory GuidedStorageTargetManual.fromJson(Map<String, dynamic> json) =
      _$GuidedStorageTargetManualImpl.fromJson;

  @override
  List<GuidedCapability> get allowed;
  @override
  List<GuidedDisallowedCapability> get disallowed;
  @override
  @JsonKey(ignore: true)
  _$$GuidedStorageTargetManualImplCopyWith<_$GuidedStorageTargetManualImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecoveryKey _$RecoveryKeyFromJson(Map<String, dynamic> json) {
  return _RecoveryKey.fromJson(json);
}

/// @nodoc
mixin _$RecoveryKey {
  String? get liveLocation => throw _privateConstructorUsedError;
  String? get backupLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecoveryKeyCopyWith<RecoveryKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryKeyCopyWith<$Res> {
  factory $RecoveryKeyCopyWith(
          RecoveryKey value, $Res Function(RecoveryKey) then) =
      _$RecoveryKeyCopyWithImpl<$Res, RecoveryKey>;
  @useResult
  $Res call({String? liveLocation, String? backupLocation});
}

/// @nodoc
class _$RecoveryKeyCopyWithImpl<$Res, $Val extends RecoveryKey>
    implements $RecoveryKeyCopyWith<$Res> {
  _$RecoveryKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveLocation = freezed,
    Object? backupLocation = freezed,
  }) {
    return _then(_value.copyWith(
      liveLocation: freezed == liveLocation
          ? _value.liveLocation
          : liveLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      backupLocation: freezed == backupLocation
          ? _value.backupLocation
          : backupLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecoveryKeyImplCopyWith<$Res>
    implements $RecoveryKeyCopyWith<$Res> {
  factory _$$RecoveryKeyImplCopyWith(
          _$RecoveryKeyImpl value, $Res Function(_$RecoveryKeyImpl) then) =
      __$$RecoveryKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? liveLocation, String? backupLocation});
}

/// @nodoc
class __$$RecoveryKeyImplCopyWithImpl<$Res>
    extends _$RecoveryKeyCopyWithImpl<$Res, _$RecoveryKeyImpl>
    implements _$$RecoveryKeyImplCopyWith<$Res> {
  __$$RecoveryKeyImplCopyWithImpl(
      _$RecoveryKeyImpl _value, $Res Function(_$RecoveryKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveLocation = freezed,
    Object? backupLocation = freezed,
  }) {
    return _then(_$RecoveryKeyImpl(
      liveLocation: freezed == liveLocation
          ? _value.liveLocation
          : liveLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      backupLocation: freezed == backupLocation
          ? _value.backupLocation
          : backupLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecoveryKeyImpl implements _RecoveryKey {
  const _$RecoveryKeyImpl({this.liveLocation, this.backupLocation});

  factory _$RecoveryKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecoveryKeyImplFromJson(json);

  @override
  final String? liveLocation;
  @override
  final String? backupLocation;

  @override
  String toString() {
    return 'RecoveryKey(liveLocation: $liveLocation, backupLocation: $backupLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoveryKeyImpl &&
            (identical(other.liveLocation, liveLocation) ||
                other.liveLocation == liveLocation) &&
            (identical(other.backupLocation, backupLocation) ||
                other.backupLocation == backupLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, liveLocation, backupLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoveryKeyImplCopyWith<_$RecoveryKeyImpl> get copyWith =>
      __$$RecoveryKeyImplCopyWithImpl<_$RecoveryKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecoveryKeyImplToJson(
      this,
    );
  }
}

abstract class _RecoveryKey implements RecoveryKey {
  const factory _RecoveryKey(
      {final String? liveLocation,
      final String? backupLocation}) = _$RecoveryKeyImpl;

  factory _RecoveryKey.fromJson(Map<String, dynamic> json) =
      _$RecoveryKeyImpl.fromJson;

  @override
  String? get liveLocation;
  @override
  String? get backupLocation;
  @override
  @JsonKey(ignore: true)
  _$$RecoveryKeyImplCopyWith<_$RecoveryKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuidedChoiceV2 _$GuidedChoiceV2FromJson(Map<String, dynamic> json) {
  return _GuidedChoiceV2.fromJson(json);
}

/// @nodoc
mixin _$GuidedChoiceV2 {
  GuidedStorageTarget get target => throw _privateConstructorUsedError;
  GuidedCapability get capability => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  RecoveryKey? get recoveryKey =>
      throw _privateConstructorUsedError; // TODO(Lukas): Change `generator.py` to accommodate for putting the
// SizingPolicy parameter together with the other required parameters.
// ignore: always_put_required_named_parameters_first
  SizingPolicy? get sizingPolicy => throw _privateConstructorUsedError;
  bool get resetPartition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuidedChoiceV2CopyWith<GuidedChoiceV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuidedChoiceV2CopyWith<$Res> {
  factory $GuidedChoiceV2CopyWith(
          GuidedChoiceV2 value, $Res Function(GuidedChoiceV2) then) =
      _$GuidedChoiceV2CopyWithImpl<$Res, GuidedChoiceV2>;
  @useResult
  $Res call(
      {GuidedStorageTarget target,
      GuidedCapability capability,
      String? password,
      RecoveryKey? recoveryKey,
      SizingPolicy? sizingPolicy,
      bool resetPartition});

  $GuidedStorageTargetCopyWith<$Res> get target;
  $RecoveryKeyCopyWith<$Res>? get recoveryKey;
}

/// @nodoc
class _$GuidedChoiceV2CopyWithImpl<$Res, $Val extends GuidedChoiceV2>
    implements $GuidedChoiceV2CopyWith<$Res> {
  _$GuidedChoiceV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? capability = null,
    Object? password = freezed,
    Object? recoveryKey = freezed,
    Object? sizingPolicy = freezed,
    Object? resetPartition = null,
  }) {
    return _then(_value.copyWith(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as GuidedStorageTarget,
      capability: null == capability
          ? _value.capability
          : capability // ignore: cast_nullable_to_non_nullable
              as GuidedCapability,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryKey: freezed == recoveryKey
          ? _value.recoveryKey
          : recoveryKey // ignore: cast_nullable_to_non_nullable
              as RecoveryKey?,
      sizingPolicy: freezed == sizingPolicy
          ? _value.sizingPolicy
          : sizingPolicy // ignore: cast_nullable_to_non_nullable
              as SizingPolicy?,
      resetPartition: null == resetPartition
          ? _value.resetPartition
          : resetPartition // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GuidedStorageTargetCopyWith<$Res> get target {
    return $GuidedStorageTargetCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecoveryKeyCopyWith<$Res>? get recoveryKey {
    if (_value.recoveryKey == null) {
      return null;
    }

    return $RecoveryKeyCopyWith<$Res>(_value.recoveryKey!, (value) {
      return _then(_value.copyWith(recoveryKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuidedChoiceV2ImplCopyWith<$Res>
    implements $GuidedChoiceV2CopyWith<$Res> {
  factory _$$GuidedChoiceV2ImplCopyWith(_$GuidedChoiceV2Impl value,
          $Res Function(_$GuidedChoiceV2Impl) then) =
      __$$GuidedChoiceV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GuidedStorageTarget target,
      GuidedCapability capability,
      String? password,
      RecoveryKey? recoveryKey,
      SizingPolicy? sizingPolicy,
      bool resetPartition});

  @override
  $GuidedStorageTargetCopyWith<$Res> get target;
  @override
  $RecoveryKeyCopyWith<$Res>? get recoveryKey;
}

/// @nodoc
class __$$GuidedChoiceV2ImplCopyWithImpl<$Res>
    extends _$GuidedChoiceV2CopyWithImpl<$Res, _$GuidedChoiceV2Impl>
    implements _$$GuidedChoiceV2ImplCopyWith<$Res> {
  __$$GuidedChoiceV2ImplCopyWithImpl(
      _$GuidedChoiceV2Impl _value, $Res Function(_$GuidedChoiceV2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? capability = null,
    Object? password = freezed,
    Object? recoveryKey = freezed,
    Object? sizingPolicy = freezed,
    Object? resetPartition = null,
  }) {
    return _then(_$GuidedChoiceV2Impl(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as GuidedStorageTarget,
      capability: null == capability
          ? _value.capability
          : capability // ignore: cast_nullable_to_non_nullable
              as GuidedCapability,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryKey: freezed == recoveryKey
          ? _value.recoveryKey
          : recoveryKey // ignore: cast_nullable_to_non_nullable
              as RecoveryKey?,
      sizingPolicy: freezed == sizingPolicy
          ? _value.sizingPolicy
          : sizingPolicy // ignore: cast_nullable_to_non_nullable
              as SizingPolicy?,
      resetPartition: null == resetPartition
          ? _value.resetPartition
          : resetPartition // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuidedChoiceV2Impl implements _GuidedChoiceV2 {
  const _$GuidedChoiceV2Impl(
      {required this.target,
      required this.capability,
      this.password,
      this.recoveryKey,
      required this.sizingPolicy,
      this.resetPartition = false});

  factory _$GuidedChoiceV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$GuidedChoiceV2ImplFromJson(json);

  @override
  final GuidedStorageTarget target;
  @override
  final GuidedCapability capability;
  @override
  final String? password;
  @override
  final RecoveryKey? recoveryKey;
// TODO(Lukas): Change `generator.py` to accommodate for putting the
// SizingPolicy parameter together with the other required parameters.
// ignore: always_put_required_named_parameters_first
  @override
  final SizingPolicy? sizingPolicy;
  @override
  @JsonKey()
  final bool resetPartition;

  @override
  String toString() {
    return 'GuidedChoiceV2(target: $target, capability: $capability, password: $password, recoveryKey: $recoveryKey, sizingPolicy: $sizingPolicy, resetPartition: $resetPartition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuidedChoiceV2Impl &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.capability, capability) ||
                other.capability == capability) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.recoveryKey, recoveryKey) ||
                other.recoveryKey == recoveryKey) &&
            (identical(other.sizingPolicy, sizingPolicy) ||
                other.sizingPolicy == sizingPolicy) &&
            (identical(other.resetPartition, resetPartition) ||
                other.resetPartition == resetPartition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, target, capability, password,
      recoveryKey, sizingPolicy, resetPartition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuidedChoiceV2ImplCopyWith<_$GuidedChoiceV2Impl> get copyWith =>
      __$$GuidedChoiceV2ImplCopyWithImpl<_$GuidedChoiceV2Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuidedChoiceV2ImplToJson(
      this,
    );
  }
}

abstract class _GuidedChoiceV2 implements GuidedChoiceV2 {
  const factory _GuidedChoiceV2(
      {required final GuidedStorageTarget target,
      required final GuidedCapability capability,
      final String? password,
      final RecoveryKey? recoveryKey,
      required final SizingPolicy? sizingPolicy,
      final bool resetPartition}) = _$GuidedChoiceV2Impl;

  factory _GuidedChoiceV2.fromJson(Map<String, dynamic> json) =
      _$GuidedChoiceV2Impl.fromJson;

  @override
  GuidedStorageTarget get target;
  @override
  GuidedCapability get capability;
  @override
  String? get password;
  @override
  RecoveryKey? get recoveryKey;
  @override // TODO(Lukas): Change `generator.py` to accommodate for putting the
// SizingPolicy parameter together with the other required parameters.
// ignore: always_put_required_named_parameters_first
  SizingPolicy? get sizingPolicy;
  @override
  bool get resetPartition;
  @override
  @JsonKey(ignore: true)
  _$$GuidedChoiceV2ImplCopyWith<_$GuidedChoiceV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuidedStorageResponseV2 _$GuidedStorageResponseV2FromJson(
    Map<String, dynamic> json) {
  return _GuidedStorageResponseV2.fromJson(json);
}

/// @nodoc
mixin _$GuidedStorageResponseV2 {
  ProbeStatus get status => throw _privateConstructorUsedError;
  ErrorReportRef? get errorReport => throw _privateConstructorUsedError;
  GuidedChoiceV2? get configured => throw _privateConstructorUsedError;
  List<GuidedStorageTarget> get targets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuidedStorageResponseV2CopyWith<GuidedStorageResponseV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuidedStorageResponseV2CopyWith<$Res> {
  factory $GuidedStorageResponseV2CopyWith(GuidedStorageResponseV2 value,
          $Res Function(GuidedStorageResponseV2) then) =
      _$GuidedStorageResponseV2CopyWithImpl<$Res, GuidedStorageResponseV2>;
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      GuidedChoiceV2? configured,
      List<GuidedStorageTarget> targets});

  $ErrorReportRefCopyWith<$Res>? get errorReport;
  $GuidedChoiceV2CopyWith<$Res>? get configured;
}

/// @nodoc
class _$GuidedStorageResponseV2CopyWithImpl<$Res,
        $Val extends GuidedStorageResponseV2>
    implements $GuidedStorageResponseV2CopyWith<$Res> {
  _$GuidedStorageResponseV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? configured = freezed,
    Object? targets = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _value.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      configured: freezed == configured
          ? _value.configured
          : configured // ignore: cast_nullable_to_non_nullable
              as GuidedChoiceV2?,
      targets: null == targets
          ? _value.targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<GuidedStorageTarget>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorReportRefCopyWith<$Res>? get errorReport {
    if (_value.errorReport == null) {
      return null;
    }

    return $ErrorReportRefCopyWith<$Res>(_value.errorReport!, (value) {
      return _then(_value.copyWith(errorReport: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GuidedChoiceV2CopyWith<$Res>? get configured {
    if (_value.configured == null) {
      return null;
    }

    return $GuidedChoiceV2CopyWith<$Res>(_value.configured!, (value) {
      return _then(_value.copyWith(configured: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuidedStorageResponseV2ImplCopyWith<$Res>
    implements $GuidedStorageResponseV2CopyWith<$Res> {
  factory _$$GuidedStorageResponseV2ImplCopyWith(
          _$GuidedStorageResponseV2Impl value,
          $Res Function(_$GuidedStorageResponseV2Impl) then) =
      __$$GuidedStorageResponseV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProbeStatus status,
      ErrorReportRef? errorReport,
      GuidedChoiceV2? configured,
      List<GuidedStorageTarget> targets});

  @override
  $ErrorReportRefCopyWith<$Res>? get errorReport;
  @override
  $GuidedChoiceV2CopyWith<$Res>? get configured;
}

/// @nodoc
class __$$GuidedStorageResponseV2ImplCopyWithImpl<$Res>
    extends _$GuidedStorageResponseV2CopyWithImpl<$Res,
        _$GuidedStorageResponseV2Impl>
    implements _$$GuidedStorageResponseV2ImplCopyWith<$Res> {
  __$$GuidedStorageResponseV2ImplCopyWithImpl(
      _$GuidedStorageResponseV2Impl _value,
      $Res Function(_$GuidedStorageResponseV2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorReport = freezed,
    Object? configured = freezed,
    Object? targets = null,
  }) {
    return _then(_$GuidedStorageResponseV2Impl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProbeStatus,
      errorReport: freezed == errorReport
          ? _value.errorReport
          : errorReport // ignore: cast_nullable_to_non_nullable
              as ErrorReportRef?,
      configured: freezed == configured
          ? _value.configured
          : configured // ignore: cast_nullable_to_non_nullable
              as GuidedChoiceV2?,
      targets: null == targets
          ? _value._targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<GuidedStorageTarget>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuidedStorageResponseV2Impl implements _GuidedStorageResponseV2 {
  const _$GuidedStorageResponseV2Impl(
      {required this.status,
      this.errorReport,
      this.configured,
      final List<GuidedStorageTarget> targets = const []})
      : _targets = targets;

  factory _$GuidedStorageResponseV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$GuidedStorageResponseV2ImplFromJson(json);

  @override
  final ProbeStatus status;
  @override
  final ErrorReportRef? errorReport;
  @override
  final GuidedChoiceV2? configured;
  final List<GuidedStorageTarget> _targets;
  @override
  @JsonKey()
  List<GuidedStorageTarget> get targets {
    if (_targets is EqualUnmodifiableListView) return _targets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targets);
  }

  @override
  String toString() {
    return 'GuidedStorageResponseV2(status: $status, errorReport: $errorReport, configured: $configured, targets: $targets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuidedStorageResponseV2Impl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorReport, errorReport) ||
                other.errorReport == errorReport) &&
            (identical(other.configured, configured) ||
                other.configured == configured) &&
            const DeepCollectionEquality().equals(other._targets, _targets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorReport, configured,
      const DeepCollectionEquality().hash(_targets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuidedStorageResponseV2ImplCopyWith<_$GuidedStorageResponseV2Impl>
      get copyWith => __$$GuidedStorageResponseV2ImplCopyWithImpl<
          _$GuidedStorageResponseV2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuidedStorageResponseV2ImplToJson(
      this,
    );
  }
}

abstract class _GuidedStorageResponseV2 implements GuidedStorageResponseV2 {
  const factory _GuidedStorageResponseV2(
      {required final ProbeStatus status,
      final ErrorReportRef? errorReport,
      final GuidedChoiceV2? configured,
      final List<GuidedStorageTarget> targets}) = _$GuidedStorageResponseV2Impl;

  factory _GuidedStorageResponseV2.fromJson(Map<String, dynamic> json) =
      _$GuidedStorageResponseV2Impl.fromJson;

  @override
  ProbeStatus get status;
  @override
  ErrorReportRef? get errorReport;
  @override
  GuidedChoiceV2? get configured;
  @override
  List<GuidedStorageTarget> get targets;
  @override
  @JsonKey(ignore: true)
  _$$GuidedStorageResponseV2ImplCopyWith<_$GuidedStorageResponseV2Impl>
      get copyWith => throw _privateConstructorUsedError;
}

AddPartitionV2 _$AddPartitionV2FromJson(Map<String, dynamic> json) {
  return _AddPartitionV2.fromJson(json);
}

/// @nodoc
mixin _$AddPartitionV2 {
  String get diskId => throw _privateConstructorUsedError;
  Partition get partition => throw _privateConstructorUsedError;
  Gap get gap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPartitionV2CopyWith<AddPartitionV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPartitionV2CopyWith<$Res> {
  factory $AddPartitionV2CopyWith(
          AddPartitionV2 value, $Res Function(AddPartitionV2) then) =
      _$AddPartitionV2CopyWithImpl<$Res, AddPartitionV2>;
  @useResult
  $Res call({String diskId, Partition partition, Gap gap});
}

/// @nodoc
class _$AddPartitionV2CopyWithImpl<$Res, $Val extends AddPartitionV2>
    implements $AddPartitionV2CopyWith<$Res> {
  _$AddPartitionV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? partition = freezed,
    Object? gap = freezed,
  }) {
    return _then(_value.copyWith(
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partition: freezed == partition
          ? _value.partition
          : partition // ignore: cast_nullable_to_non_nullable
              as Partition,
      gap: freezed == gap
          ? _value.gap
          : gap // ignore: cast_nullable_to_non_nullable
              as Gap,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPartitionV2ImplCopyWith<$Res>
    implements $AddPartitionV2CopyWith<$Res> {
  factory _$$AddPartitionV2ImplCopyWith(_$AddPartitionV2Impl value,
          $Res Function(_$AddPartitionV2Impl) then) =
      __$$AddPartitionV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String diskId, Partition partition, Gap gap});
}

/// @nodoc
class __$$AddPartitionV2ImplCopyWithImpl<$Res>
    extends _$AddPartitionV2CopyWithImpl<$Res, _$AddPartitionV2Impl>
    implements _$$AddPartitionV2ImplCopyWith<$Res> {
  __$$AddPartitionV2ImplCopyWithImpl(
      _$AddPartitionV2Impl _value, $Res Function(_$AddPartitionV2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? partition = freezed,
    Object? gap = freezed,
  }) {
    return _then(_$AddPartitionV2Impl(
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partition: freezed == partition
          ? _value.partition
          : partition // ignore: cast_nullable_to_non_nullable
              as Partition,
      gap: freezed == gap
          ? _value.gap
          : gap // ignore: cast_nullable_to_non_nullable
              as Gap,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddPartitionV2Impl implements _AddPartitionV2 {
  const _$AddPartitionV2Impl(
      {required this.diskId, required this.partition, required this.gap});

  factory _$AddPartitionV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$AddPartitionV2ImplFromJson(json);

  @override
  final String diskId;
  @override
  final Partition partition;
  @override
  final Gap gap;

  @override
  String toString() {
    return 'AddPartitionV2(diskId: $diskId, partition: $partition, gap: $gap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPartitionV2Impl &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            const DeepCollectionEquality().equals(other.partition, partition) &&
            const DeepCollectionEquality().equals(other.gap, gap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diskId,
      const DeepCollectionEquality().hash(partition),
      const DeepCollectionEquality().hash(gap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPartitionV2ImplCopyWith<_$AddPartitionV2Impl> get copyWith =>
      __$$AddPartitionV2ImplCopyWithImpl<_$AddPartitionV2Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddPartitionV2ImplToJson(
      this,
    );
  }
}

abstract class _AddPartitionV2 implements AddPartitionV2 {
  const factory _AddPartitionV2(
      {required final String diskId,
      required final Partition partition,
      required final Gap gap}) = _$AddPartitionV2Impl;

  factory _AddPartitionV2.fromJson(Map<String, dynamic> json) =
      _$AddPartitionV2Impl.fromJson;

  @override
  String get diskId;
  @override
  Partition get partition;
  @override
  Gap get gap;
  @override
  @JsonKey(ignore: true)
  _$$AddPartitionV2ImplCopyWith<_$AddPartitionV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModifyPartitionV2 _$ModifyPartitionV2FromJson(Map<String, dynamic> json) {
  return _ModifyPartitionV2.fromJson(json);
}

/// @nodoc
mixin _$ModifyPartitionV2 {
  String get diskId => throw _privateConstructorUsedError;
  Partition get partition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModifyPartitionV2CopyWith<ModifyPartitionV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifyPartitionV2CopyWith<$Res> {
  factory $ModifyPartitionV2CopyWith(
          ModifyPartitionV2 value, $Res Function(ModifyPartitionV2) then) =
      _$ModifyPartitionV2CopyWithImpl<$Res, ModifyPartitionV2>;
  @useResult
  $Res call({String diskId, Partition partition});
}

/// @nodoc
class _$ModifyPartitionV2CopyWithImpl<$Res, $Val extends ModifyPartitionV2>
    implements $ModifyPartitionV2CopyWith<$Res> {
  _$ModifyPartitionV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? partition = freezed,
  }) {
    return _then(_value.copyWith(
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partition: freezed == partition
          ? _value.partition
          : partition // ignore: cast_nullable_to_non_nullable
              as Partition,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModifyPartitionV2ImplCopyWith<$Res>
    implements $ModifyPartitionV2CopyWith<$Res> {
  factory _$$ModifyPartitionV2ImplCopyWith(_$ModifyPartitionV2Impl value,
          $Res Function(_$ModifyPartitionV2Impl) then) =
      __$$ModifyPartitionV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String diskId, Partition partition});
}

/// @nodoc
class __$$ModifyPartitionV2ImplCopyWithImpl<$Res>
    extends _$ModifyPartitionV2CopyWithImpl<$Res, _$ModifyPartitionV2Impl>
    implements _$$ModifyPartitionV2ImplCopyWith<$Res> {
  __$$ModifyPartitionV2ImplCopyWithImpl(_$ModifyPartitionV2Impl _value,
      $Res Function(_$ModifyPartitionV2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? partition = freezed,
  }) {
    return _then(_$ModifyPartitionV2Impl(
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      partition: freezed == partition
          ? _value.partition
          : partition // ignore: cast_nullable_to_non_nullable
              as Partition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModifyPartitionV2Impl implements _ModifyPartitionV2 {
  const _$ModifyPartitionV2Impl(
      {required this.diskId, required this.partition});

  factory _$ModifyPartitionV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$ModifyPartitionV2ImplFromJson(json);

  @override
  final String diskId;
  @override
  final Partition partition;

  @override
  String toString() {
    return 'ModifyPartitionV2(diskId: $diskId, partition: $partition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifyPartitionV2Impl &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            const DeepCollectionEquality().equals(other.partition, partition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, diskId, const DeepCollectionEquality().hash(partition));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifyPartitionV2ImplCopyWith<_$ModifyPartitionV2Impl> get copyWith =>
      __$$ModifyPartitionV2ImplCopyWithImpl<_$ModifyPartitionV2Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModifyPartitionV2ImplToJson(
      this,
    );
  }
}

abstract class _ModifyPartitionV2 implements ModifyPartitionV2 {
  const factory _ModifyPartitionV2(
      {required final String diskId,
      required final Partition partition}) = _$ModifyPartitionV2Impl;

  factory _ModifyPartitionV2.fromJson(Map<String, dynamic> json) =
      _$ModifyPartitionV2Impl.fromJson;

  @override
  String get diskId;
  @override
  Partition get partition;
  @override
  @JsonKey(ignore: true)
  _$$ModifyPartitionV2ImplCopyWith<_$ModifyPartitionV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReformatDisk _$ReformatDiskFromJson(Map<String, dynamic> json) {
  return _ReformatDisk.fromJson(json);
}

/// @nodoc
mixin _$ReformatDisk {
  String get diskId => throw _privateConstructorUsedError;
  String? get ptable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReformatDiskCopyWith<ReformatDisk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReformatDiskCopyWith<$Res> {
  factory $ReformatDiskCopyWith(
          ReformatDisk value, $Res Function(ReformatDisk) then) =
      _$ReformatDiskCopyWithImpl<$Res, ReformatDisk>;
  @useResult
  $Res call({String diskId, String? ptable});
}

/// @nodoc
class _$ReformatDiskCopyWithImpl<$Res, $Val extends ReformatDisk>
    implements $ReformatDiskCopyWith<$Res> {
  _$ReformatDiskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? ptable = freezed,
  }) {
    return _then(_value.copyWith(
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      ptable: freezed == ptable
          ? _value.ptable
          : ptable // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReformatDiskImplCopyWith<$Res>
    implements $ReformatDiskCopyWith<$Res> {
  factory _$$ReformatDiskImplCopyWith(
          _$ReformatDiskImpl value, $Res Function(_$ReformatDiskImpl) then) =
      __$$ReformatDiskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String diskId, String? ptable});
}

/// @nodoc
class __$$ReformatDiskImplCopyWithImpl<$Res>
    extends _$ReformatDiskCopyWithImpl<$Res, _$ReformatDiskImpl>
    implements _$$ReformatDiskImplCopyWith<$Res> {
  __$$ReformatDiskImplCopyWithImpl(
      _$ReformatDiskImpl _value, $Res Function(_$ReformatDiskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diskId = null,
    Object? ptable = freezed,
  }) {
    return _then(_$ReformatDiskImpl(
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      ptable: freezed == ptable
          ? _value.ptable
          : ptable // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReformatDiskImpl implements _ReformatDisk {
  const _$ReformatDiskImpl({required this.diskId, this.ptable});

  factory _$ReformatDiskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReformatDiskImplFromJson(json);

  @override
  final String diskId;
  @override
  final String? ptable;

  @override
  String toString() {
    return 'ReformatDisk(diskId: $diskId, ptable: $ptable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReformatDiskImpl &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            (identical(other.ptable, ptable) || other.ptable == ptable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, diskId, ptable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReformatDiskImplCopyWith<_$ReformatDiskImpl> get copyWith =>
      __$$ReformatDiskImplCopyWithImpl<_$ReformatDiskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReformatDiskImplToJson(
      this,
    );
  }
}

abstract class _ReformatDisk implements ReformatDisk {
  const factory _ReformatDisk(
      {required final String diskId,
      final String? ptable}) = _$ReformatDiskImpl;

  factory _ReformatDisk.fromJson(Map<String, dynamic> json) =
      _$ReformatDiskImpl.fromJson;

  @override
  String get diskId;
  @override
  String? get ptable;
  @override
  @JsonKey(ignore: true)
  _$$ReformatDiskImplCopyWith<_$ReformatDiskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdentityData _$IdentityDataFromJson(Map<String, dynamic> json) {
  return _IdentityData.fromJson(json);
}

/// @nodoc
mixin _$IdentityData {
  String get realname => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get cryptedPassword => throw _privateConstructorUsedError;
  String get hostname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityDataCopyWith<IdentityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityDataCopyWith<$Res> {
  factory $IdentityDataCopyWith(
          IdentityData value, $Res Function(IdentityData) then) =
      _$IdentityDataCopyWithImpl<$Res, IdentityData>;
  @useResult
  $Res call(
      {String realname,
      String username,
      String cryptedPassword,
      String hostname});
}

/// @nodoc
class _$IdentityDataCopyWithImpl<$Res, $Val extends IdentityData>
    implements $IdentityDataCopyWith<$Res> {
  _$IdentityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? realname = null,
    Object? username = null,
    Object? cryptedPassword = null,
    Object? hostname = null,
  }) {
    return _then(_value.copyWith(
      realname: null == realname
          ? _value.realname
          : realname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      cryptedPassword: null == cryptedPassword
          ? _value.cryptedPassword
          : cryptedPassword // ignore: cast_nullable_to_non_nullable
              as String,
      hostname: null == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdentityDataImplCopyWith<$Res>
    implements $IdentityDataCopyWith<$Res> {
  factory _$$IdentityDataImplCopyWith(
          _$IdentityDataImpl value, $Res Function(_$IdentityDataImpl) then) =
      __$$IdentityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String realname,
      String username,
      String cryptedPassword,
      String hostname});
}

/// @nodoc
class __$$IdentityDataImplCopyWithImpl<$Res>
    extends _$IdentityDataCopyWithImpl<$Res, _$IdentityDataImpl>
    implements _$$IdentityDataImplCopyWith<$Res> {
  __$$IdentityDataImplCopyWithImpl(
      _$IdentityDataImpl _value, $Res Function(_$IdentityDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? realname = null,
    Object? username = null,
    Object? cryptedPassword = null,
    Object? hostname = null,
  }) {
    return _then(_$IdentityDataImpl(
      realname: null == realname
          ? _value.realname
          : realname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      cryptedPassword: null == cryptedPassword
          ? _value.cryptedPassword
          : cryptedPassword // ignore: cast_nullable_to_non_nullable
              as String,
      hostname: null == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentityDataImpl implements _IdentityData {
  const _$IdentityDataImpl(
      {this.realname = '',
      this.username = '',
      this.cryptedPassword = '',
      this.hostname = ''});

  factory _$IdentityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentityDataImplFromJson(json);

  @override
  @JsonKey()
  final String realname;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String cryptedPassword;
  @override
  @JsonKey()
  final String hostname;

  @override
  String toString() {
    return 'IdentityData(realname: $realname, username: $username, cryptedPassword: $cryptedPassword, hostname: $hostname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentityDataImpl &&
            (identical(other.realname, realname) ||
                other.realname == realname) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.cryptedPassword, cryptedPassword) ||
                other.cryptedPassword == cryptedPassword) &&
            (identical(other.hostname, hostname) ||
                other.hostname == hostname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, realname, username, cryptedPassword, hostname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentityDataImplCopyWith<_$IdentityDataImpl> get copyWith =>
      __$$IdentityDataImplCopyWithImpl<_$IdentityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentityDataImplToJson(
      this,
    );
  }
}

abstract class _IdentityData implements IdentityData {
  const factory _IdentityData(
      {final String realname,
      final String username,
      final String cryptedPassword,
      final String hostname}) = _$IdentityDataImpl;

  factory _IdentityData.fromJson(Map<String, dynamic> json) =
      _$IdentityDataImpl.fromJson;

  @override
  String get realname;
  @override
  String get username;
  @override
  String get cryptedPassword;
  @override
  String get hostname;
  @override
  @JsonKey(ignore: true)
  _$$IdentityDataImplCopyWith<_$IdentityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SSHData _$SSHDataFromJson(Map<String, dynamic> json) {
  return _SSHData.fromJson(json);
}

/// @nodoc
mixin _$SSHData {
  bool get installServer => throw _privateConstructorUsedError;
  bool get allowPw => throw _privateConstructorUsedError;
  List<String> get authorizedKeys => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SSHDataCopyWith<SSHData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SSHDataCopyWith<$Res> {
  factory $SSHDataCopyWith(SSHData value, $Res Function(SSHData) then) =
      _$SSHDataCopyWithImpl<$Res, SSHData>;
  @useResult
  $Res call({bool installServer, bool allowPw, List<String> authorizedKeys});
}

/// @nodoc
class _$SSHDataCopyWithImpl<$Res, $Val extends SSHData>
    implements $SSHDataCopyWith<$Res> {
  _$SSHDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? installServer = null,
    Object? allowPw = null,
    Object? authorizedKeys = null,
  }) {
    return _then(_value.copyWith(
      installServer: null == installServer
          ? _value.installServer
          : installServer // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPw: null == allowPw
          ? _value.allowPw
          : allowPw // ignore: cast_nullable_to_non_nullable
              as bool,
      authorizedKeys: null == authorizedKeys
          ? _value.authorizedKeys
          : authorizedKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SSHDataImplCopyWith<$Res> implements $SSHDataCopyWith<$Res> {
  factory _$$SSHDataImplCopyWith(
          _$SSHDataImpl value, $Res Function(_$SSHDataImpl) then) =
      __$$SSHDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool installServer, bool allowPw, List<String> authorizedKeys});
}

/// @nodoc
class __$$SSHDataImplCopyWithImpl<$Res>
    extends _$SSHDataCopyWithImpl<$Res, _$SSHDataImpl>
    implements _$$SSHDataImplCopyWith<$Res> {
  __$$SSHDataImplCopyWithImpl(
      _$SSHDataImpl _value, $Res Function(_$SSHDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? installServer = null,
    Object? allowPw = null,
    Object? authorizedKeys = null,
  }) {
    return _then(_$SSHDataImpl(
      installServer: null == installServer
          ? _value.installServer
          : installServer // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPw: null == allowPw
          ? _value.allowPw
          : allowPw // ignore: cast_nullable_to_non_nullable
              as bool,
      authorizedKeys: null == authorizedKeys
          ? _value._authorizedKeys
          : authorizedKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SSHDataImpl implements _SSHData {
  const _$SSHDataImpl(
      {required this.installServer,
      required this.allowPw,
      final List<String> authorizedKeys = const []})
      : _authorizedKeys = authorizedKeys;

  factory _$SSHDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SSHDataImplFromJson(json);

  @override
  final bool installServer;
  @override
  final bool allowPw;
  final List<String> _authorizedKeys;
  @override
  @JsonKey()
  List<String> get authorizedKeys {
    if (_authorizedKeys is EqualUnmodifiableListView) return _authorizedKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authorizedKeys);
  }

  @override
  String toString() {
    return 'SSHData(installServer: $installServer, allowPw: $allowPw, authorizedKeys: $authorizedKeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SSHDataImpl &&
            (identical(other.installServer, installServer) ||
                other.installServer == installServer) &&
            (identical(other.allowPw, allowPw) || other.allowPw == allowPw) &&
            const DeepCollectionEquality()
                .equals(other._authorizedKeys, _authorizedKeys));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, installServer, allowPw,
      const DeepCollectionEquality().hash(_authorizedKeys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SSHDataImplCopyWith<_$SSHDataImpl> get copyWith =>
      __$$SSHDataImplCopyWithImpl<_$SSHDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SSHDataImplToJson(
      this,
    );
  }
}

abstract class _SSHData implements SSHData {
  const factory _SSHData(
      {required final bool installServer,
      required final bool allowPw,
      final List<String> authorizedKeys}) = _$SSHDataImpl;

  factory _SSHData.fromJson(Map<String, dynamic> json) = _$SSHDataImpl.fromJson;

  @override
  bool get installServer;
  @override
  bool get allowPw;
  @override
  List<String> get authorizedKeys;
  @override
  @JsonKey(ignore: true)
  _$$SSHDataImplCopyWith<_$SSHDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SSHIdentity _$SSHIdentityFromJson(Map<String, dynamic> json) {
  return _SSHIdentity.fromJson(json);
}

/// @nodoc
mixin _$SSHIdentity {
  String get keyType => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get keyComment => throw _privateConstructorUsedError;
  String get keyFingerprint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SSHIdentityCopyWith<SSHIdentity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SSHIdentityCopyWith<$Res> {
  factory $SSHIdentityCopyWith(
          SSHIdentity value, $Res Function(SSHIdentity) then) =
      _$SSHIdentityCopyWithImpl<$Res, SSHIdentity>;
  @useResult
  $Res call(
      {String keyType, String key, String keyComment, String keyFingerprint});
}

/// @nodoc
class _$SSHIdentityCopyWithImpl<$Res, $Val extends SSHIdentity>
    implements $SSHIdentityCopyWith<$Res> {
  _$SSHIdentityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyType = null,
    Object? key = null,
    Object? keyComment = null,
    Object? keyFingerprint = null,
  }) {
    return _then(_value.copyWith(
      keyType: null == keyType
          ? _value.keyType
          : keyType // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      keyComment: null == keyComment
          ? _value.keyComment
          : keyComment // ignore: cast_nullable_to_non_nullable
              as String,
      keyFingerprint: null == keyFingerprint
          ? _value.keyFingerprint
          : keyFingerprint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SSHIdentityImplCopyWith<$Res>
    implements $SSHIdentityCopyWith<$Res> {
  factory _$$SSHIdentityImplCopyWith(
          _$SSHIdentityImpl value, $Res Function(_$SSHIdentityImpl) then) =
      __$$SSHIdentityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String keyType, String key, String keyComment, String keyFingerprint});
}

/// @nodoc
class __$$SSHIdentityImplCopyWithImpl<$Res>
    extends _$SSHIdentityCopyWithImpl<$Res, _$SSHIdentityImpl>
    implements _$$SSHIdentityImplCopyWith<$Res> {
  __$$SSHIdentityImplCopyWithImpl(
      _$SSHIdentityImpl _value, $Res Function(_$SSHIdentityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyType = null,
    Object? key = null,
    Object? keyComment = null,
    Object? keyFingerprint = null,
  }) {
    return _then(_$SSHIdentityImpl(
      keyType: null == keyType
          ? _value.keyType
          : keyType // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      keyComment: null == keyComment
          ? _value.keyComment
          : keyComment // ignore: cast_nullable_to_non_nullable
              as String,
      keyFingerprint: null == keyFingerprint
          ? _value.keyFingerprint
          : keyFingerprint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SSHIdentityImpl implements _SSHIdentity {
  const _$SSHIdentityImpl(
      {required this.keyType,
      required this.key,
      required this.keyComment,
      required this.keyFingerprint});

  factory _$SSHIdentityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SSHIdentityImplFromJson(json);

  @override
  final String keyType;
  @override
  final String key;
  @override
  final String keyComment;
  @override
  final String keyFingerprint;

  @override
  String toString() {
    return 'SSHIdentity(keyType: $keyType, key: $key, keyComment: $keyComment, keyFingerprint: $keyFingerprint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SSHIdentityImpl &&
            (identical(other.keyType, keyType) || other.keyType == keyType) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.keyComment, keyComment) ||
                other.keyComment == keyComment) &&
            (identical(other.keyFingerprint, keyFingerprint) ||
                other.keyFingerprint == keyFingerprint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, keyType, key, keyComment, keyFingerprint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SSHIdentityImplCopyWith<_$SSHIdentityImpl> get copyWith =>
      __$$SSHIdentityImplCopyWithImpl<_$SSHIdentityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SSHIdentityImplToJson(
      this,
    );
  }
}

abstract class _SSHIdentity implements SSHIdentity {
  const factory _SSHIdentity(
      {required final String keyType,
      required final String key,
      required final String keyComment,
      required final String keyFingerprint}) = _$SSHIdentityImpl;

  factory _SSHIdentity.fromJson(Map<String, dynamic> json) =
      _$SSHIdentityImpl.fromJson;

  @override
  String get keyType;
  @override
  String get key;
  @override
  String get keyComment;
  @override
  String get keyFingerprint;
  @override
  @JsonKey(ignore: true)
  _$$SSHIdentityImplCopyWith<_$SSHIdentityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SSHFetchIdResponse _$SSHFetchIdResponseFromJson(Map<String, dynamic> json) {
  return _SSHFetchIdResponse.fromJson(json);
}

/// @nodoc
mixin _$SSHFetchIdResponse {
  SSHFetchIdStatus get status => throw _privateConstructorUsedError;
  List<SSHIdentity>? get identities => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SSHFetchIdResponseCopyWith<SSHFetchIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SSHFetchIdResponseCopyWith<$Res> {
  factory $SSHFetchIdResponseCopyWith(
          SSHFetchIdResponse value, $Res Function(SSHFetchIdResponse) then) =
      _$SSHFetchIdResponseCopyWithImpl<$Res, SSHFetchIdResponse>;
  @useResult
  $Res call(
      {SSHFetchIdStatus status, List<SSHIdentity>? identities, String? error});
}

/// @nodoc
class _$SSHFetchIdResponseCopyWithImpl<$Res, $Val extends SSHFetchIdResponse>
    implements $SSHFetchIdResponseCopyWith<$Res> {
  _$SSHFetchIdResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? identities = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SSHFetchIdStatus,
      identities: freezed == identities
          ? _value.identities
          : identities // ignore: cast_nullable_to_non_nullable
              as List<SSHIdentity>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SSHFetchIdResponseImplCopyWith<$Res>
    implements $SSHFetchIdResponseCopyWith<$Res> {
  factory _$$SSHFetchIdResponseImplCopyWith(_$SSHFetchIdResponseImpl value,
          $Res Function(_$SSHFetchIdResponseImpl) then) =
      __$$SSHFetchIdResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SSHFetchIdStatus status, List<SSHIdentity>? identities, String? error});
}

/// @nodoc
class __$$SSHFetchIdResponseImplCopyWithImpl<$Res>
    extends _$SSHFetchIdResponseCopyWithImpl<$Res, _$SSHFetchIdResponseImpl>
    implements _$$SSHFetchIdResponseImplCopyWith<$Res> {
  __$$SSHFetchIdResponseImplCopyWithImpl(_$SSHFetchIdResponseImpl _value,
      $Res Function(_$SSHFetchIdResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? identities = freezed,
    Object? error = freezed,
  }) {
    return _then(_$SSHFetchIdResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SSHFetchIdStatus,
      identities: freezed == identities
          ? _value._identities
          : identities // ignore: cast_nullable_to_non_nullable
              as List<SSHIdentity>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SSHFetchIdResponseImpl implements _SSHFetchIdResponse {
  const _$SSHFetchIdResponseImpl(
      {required this.status,
      required final List<SSHIdentity>? identities,
      required this.error})
      : _identities = identities;

  factory _$SSHFetchIdResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SSHFetchIdResponseImplFromJson(json);

  @override
  final SSHFetchIdStatus status;
  final List<SSHIdentity>? _identities;
  @override
  List<SSHIdentity>? get identities {
    final value = _identities;
    if (value == null) return null;
    if (_identities is EqualUnmodifiableListView) return _identities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'SSHFetchIdResponse(status: $status, identities: $identities, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SSHFetchIdResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._identities, _identities) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_identities), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SSHFetchIdResponseImplCopyWith<_$SSHFetchIdResponseImpl> get copyWith =>
      __$$SSHFetchIdResponseImplCopyWithImpl<_$SSHFetchIdResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SSHFetchIdResponseImplToJson(
      this,
    );
  }
}

abstract class _SSHFetchIdResponse implements SSHFetchIdResponse {
  const factory _SSHFetchIdResponse(
      {required final SSHFetchIdStatus status,
      required final List<SSHIdentity>? identities,
      required final String? error}) = _$SSHFetchIdResponseImpl;

  factory _SSHFetchIdResponse.fromJson(Map<String, dynamic> json) =
      _$SSHFetchIdResponseImpl.fromJson;

  @override
  SSHFetchIdStatus get status;
  @override
  List<SSHIdentity>? get identities;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$SSHFetchIdResponseImplCopyWith<_$SSHFetchIdResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelSnapInfo _$ChannelSnapInfoFromJson(Map<String, dynamic> json) {
  return _ChannelSnapInfo.fromJson(json);
}

/// @nodoc
mixin _$ChannelSnapInfo {
  String get channelName => throw _privateConstructorUsedError;
  String get revision => throw _privateConstructorUsedError;
  String get confinement => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  DateTime get releasedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelSnapInfoCopyWith<ChannelSnapInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelSnapInfoCopyWith<$Res> {
  factory $ChannelSnapInfoCopyWith(
          ChannelSnapInfo value, $Res Function(ChannelSnapInfo) then) =
      _$ChannelSnapInfoCopyWithImpl<$Res, ChannelSnapInfo>;
  @useResult
  $Res call(
      {String channelName,
      String revision,
      String confinement,
      String version,
      int size,
      DateTime releasedAt});
}

/// @nodoc
class _$ChannelSnapInfoCopyWithImpl<$Res, $Val extends ChannelSnapInfo>
    implements $ChannelSnapInfoCopyWith<$Res> {
  _$ChannelSnapInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = null,
    Object? revision = null,
    Object? confinement = null,
    Object? version = null,
    Object? size = null,
    Object? releasedAt = null,
  }) {
    return _then(_value.copyWith(
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as String,
      confinement: null == confinement
          ? _value.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      releasedAt: null == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelSnapInfoImplCopyWith<$Res>
    implements $ChannelSnapInfoCopyWith<$Res> {
  factory _$$ChannelSnapInfoImplCopyWith(_$ChannelSnapInfoImpl value,
          $Res Function(_$ChannelSnapInfoImpl) then) =
      __$$ChannelSnapInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String channelName,
      String revision,
      String confinement,
      String version,
      int size,
      DateTime releasedAt});
}

/// @nodoc
class __$$ChannelSnapInfoImplCopyWithImpl<$Res>
    extends _$ChannelSnapInfoCopyWithImpl<$Res, _$ChannelSnapInfoImpl>
    implements _$$ChannelSnapInfoImplCopyWith<$Res> {
  __$$ChannelSnapInfoImplCopyWithImpl(
      _$ChannelSnapInfoImpl _value, $Res Function(_$ChannelSnapInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = null,
    Object? revision = null,
    Object? confinement = null,
    Object? version = null,
    Object? size = null,
    Object? releasedAt = null,
  }) {
    return _then(_$ChannelSnapInfoImpl(
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as String,
      confinement: null == confinement
          ? _value.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      releasedAt: null == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelSnapInfoImpl implements _ChannelSnapInfo {
  const _$ChannelSnapInfoImpl(
      {required this.channelName,
      required this.revision,
      required this.confinement,
      required this.version,
      required this.size,
      required this.releasedAt});

  factory _$ChannelSnapInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelSnapInfoImplFromJson(json);

  @override
  final String channelName;
  @override
  final String revision;
  @override
  final String confinement;
  @override
  final String version;
  @override
  final int size;
  @override
  final DateTime releasedAt;

  @override
  String toString() {
    return 'ChannelSnapInfo(channelName: $channelName, revision: $revision, confinement: $confinement, version: $version, size: $size, releasedAt: $releasedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelSnapInfoImpl &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.revision, revision) ||
                other.revision == revision) &&
            (identical(other.confinement, confinement) ||
                other.confinement == confinement) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channelName, revision,
      confinement, version, size, releasedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelSnapInfoImplCopyWith<_$ChannelSnapInfoImpl> get copyWith =>
      __$$ChannelSnapInfoImplCopyWithImpl<_$ChannelSnapInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelSnapInfoImplToJson(
      this,
    );
  }
}

abstract class _ChannelSnapInfo implements ChannelSnapInfo {
  const factory _ChannelSnapInfo(
      {required final String channelName,
      required final String revision,
      required final String confinement,
      required final String version,
      required final int size,
      required final DateTime releasedAt}) = _$ChannelSnapInfoImpl;

  factory _ChannelSnapInfo.fromJson(Map<String, dynamic> json) =
      _$ChannelSnapInfoImpl.fromJson;

  @override
  String get channelName;
  @override
  String get revision;
  @override
  String get confinement;
  @override
  String get version;
  @override
  int get size;
  @override
  DateTime get releasedAt;
  @override
  @JsonKey(ignore: true)
  _$$ChannelSnapInfoImplCopyWith<_$ChannelSnapInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapInfo _$SnapInfoFromJson(Map<String, dynamic> json) {
  return _SnapInfo.fromJson(json);
}

/// @nodoc
mixin _$SnapInfo {
  String get name => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  bool get starred => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get confinement => throw _privateConstructorUsedError;
  String get license => throw _privateConstructorUsedError;
  List<ChannelSnapInfo> get channels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnapInfoCopyWith<SnapInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapInfoCopyWith<$Res> {
  factory $SnapInfoCopyWith(SnapInfo value, $Res Function(SnapInfo) then) =
      _$SnapInfoCopyWithImpl<$Res, SnapInfo>;
  @useResult
  $Res call(
      {String name,
      String summary,
      String publisher,
      bool verified,
      bool starred,
      String description,
      String confinement,
      String license,
      List<ChannelSnapInfo> channels});
}

/// @nodoc
class _$SnapInfoCopyWithImpl<$Res, $Val extends SnapInfo>
    implements $SnapInfoCopyWith<$Res> {
  _$SnapInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? summary = null,
    Object? publisher = null,
    Object? verified = null,
    Object? starred = null,
    Object? description = null,
    Object? confinement = null,
    Object? license = null,
    Object? channels = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      starred: null == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      confinement: null == confinement
          ? _value.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as String,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<ChannelSnapInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapInfoImplCopyWith<$Res>
    implements $SnapInfoCopyWith<$Res> {
  factory _$$SnapInfoImplCopyWith(
          _$SnapInfoImpl value, $Res Function(_$SnapInfoImpl) then) =
      __$$SnapInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String summary,
      String publisher,
      bool verified,
      bool starred,
      String description,
      String confinement,
      String license,
      List<ChannelSnapInfo> channels});
}

/// @nodoc
class __$$SnapInfoImplCopyWithImpl<$Res>
    extends _$SnapInfoCopyWithImpl<$Res, _$SnapInfoImpl>
    implements _$$SnapInfoImplCopyWith<$Res> {
  __$$SnapInfoImplCopyWithImpl(
      _$SnapInfoImpl _value, $Res Function(_$SnapInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? summary = null,
    Object? publisher = null,
    Object? verified = null,
    Object? starred = null,
    Object? description = null,
    Object? confinement = null,
    Object? license = null,
    Object? channels = null,
  }) {
    return _then(_$SnapInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      starred: null == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      confinement: null == confinement
          ? _value.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as String,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<ChannelSnapInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapInfoImpl implements _SnapInfo {
  const _$SnapInfoImpl(
      {required this.name,
      this.summary = '',
      this.publisher = '',
      this.verified = false,
      this.starred = false,
      this.description = '',
      this.confinement = '',
      this.license = '',
      final List<ChannelSnapInfo> channels = const []})
      : _channels = channels;

  factory _$SnapInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapInfoImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String summary;
  @override
  @JsonKey()
  final String publisher;
  @override
  @JsonKey()
  final bool verified;
  @override
  @JsonKey()
  final bool starred;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String confinement;
  @override
  @JsonKey()
  final String license;
  final List<ChannelSnapInfo> _channels;
  @override
  @JsonKey()
  List<ChannelSnapInfo> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  String toString() {
    return 'SnapInfo(name: $name, summary: $summary, publisher: $publisher, verified: $verified, starred: $starred, description: $description, confinement: $confinement, license: $license, channels: $channels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.starred, starred) || other.starred == starred) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.confinement, confinement) ||
                other.confinement == confinement) &&
            (identical(other.license, license) || other.license == license) &&
            const DeepCollectionEquality().equals(other._channels, _channels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      summary,
      publisher,
      verified,
      starred,
      description,
      confinement,
      license,
      const DeepCollectionEquality().hash(_channels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapInfoImplCopyWith<_$SnapInfoImpl> get copyWith =>
      __$$SnapInfoImplCopyWithImpl<_$SnapInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapInfoImplToJson(
      this,
    );
  }
}

abstract class _SnapInfo implements SnapInfo {
  const factory _SnapInfo(
      {required final String name,
      final String summary,
      final String publisher,
      final bool verified,
      final bool starred,
      final String description,
      final String confinement,
      final String license,
      final List<ChannelSnapInfo> channels}) = _$SnapInfoImpl;

  factory _SnapInfo.fromJson(Map<String, dynamic> json) =
      _$SnapInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get summary;
  @override
  String get publisher;
  @override
  bool get verified;
  @override
  bool get starred;
  @override
  String get description;
  @override
  String get confinement;
  @override
  String get license;
  @override
  List<ChannelSnapInfo> get channels;
  @override
  @JsonKey(ignore: true)
  _$$SnapInfoImplCopyWith<_$SnapInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriversResponse _$DriversResponseFromJson(Map<String, dynamic> json) {
  return _DriversResponse.fromJson(json);
}

/// @nodoc
mixin _$DriversResponse {
  bool get install => throw _privateConstructorUsedError;
  List<String>? get drivers => throw _privateConstructorUsedError;
  bool get localOnly => throw _privateConstructorUsedError;
  bool get searchDrivers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriversResponseCopyWith<DriversResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriversResponseCopyWith<$Res> {
  factory $DriversResponseCopyWith(
          DriversResponse value, $Res Function(DriversResponse) then) =
      _$DriversResponseCopyWithImpl<$Res, DriversResponse>;
  @useResult
  $Res call(
      {bool install,
      List<String>? drivers,
      bool localOnly,
      bool searchDrivers});
}

/// @nodoc
class _$DriversResponseCopyWithImpl<$Res, $Val extends DriversResponse>
    implements $DriversResponseCopyWith<$Res> {
  _$DriversResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? install = null,
    Object? drivers = freezed,
    Object? localOnly = null,
    Object? searchDrivers = null,
  }) {
    return _then(_value.copyWith(
      install: null == install
          ? _value.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
      drivers: freezed == drivers
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      localOnly: null == localOnly
          ? _value.localOnly
          : localOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDrivers: null == searchDrivers
          ? _value.searchDrivers
          : searchDrivers // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriversResponseImplCopyWith<$Res>
    implements $DriversResponseCopyWith<$Res> {
  factory _$$DriversResponseImplCopyWith(_$DriversResponseImpl value,
          $Res Function(_$DriversResponseImpl) then) =
      __$$DriversResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool install,
      List<String>? drivers,
      bool localOnly,
      bool searchDrivers});
}

/// @nodoc
class __$$DriversResponseImplCopyWithImpl<$Res>
    extends _$DriversResponseCopyWithImpl<$Res, _$DriversResponseImpl>
    implements _$$DriversResponseImplCopyWith<$Res> {
  __$$DriversResponseImplCopyWithImpl(
      _$DriversResponseImpl _value, $Res Function(_$DriversResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? install = null,
    Object? drivers = freezed,
    Object? localOnly = null,
    Object? searchDrivers = null,
  }) {
    return _then(_$DriversResponseImpl(
      install: null == install
          ? _value.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
      drivers: freezed == drivers
          ? _value._drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      localOnly: null == localOnly
          ? _value.localOnly
          : localOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDrivers: null == searchDrivers
          ? _value.searchDrivers
          : searchDrivers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriversResponseImpl implements _DriversResponse {
  const _$DriversResponseImpl(
      {required this.install,
      required final List<String>? drivers,
      required this.localOnly,
      required this.searchDrivers})
      : _drivers = drivers;

  factory _$DriversResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriversResponseImplFromJson(json);

  @override
  final bool install;
  final List<String>? _drivers;
  @override
  List<String>? get drivers {
    final value = _drivers;
    if (value == null) return null;
    if (_drivers is EqualUnmodifiableListView) return _drivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool localOnly;
  @override
  final bool searchDrivers;

  @override
  String toString() {
    return 'DriversResponse(install: $install, drivers: $drivers, localOnly: $localOnly, searchDrivers: $searchDrivers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriversResponseImpl &&
            (identical(other.install, install) || other.install == install) &&
            const DeepCollectionEquality().equals(other._drivers, _drivers) &&
            (identical(other.localOnly, localOnly) ||
                other.localOnly == localOnly) &&
            (identical(other.searchDrivers, searchDrivers) ||
                other.searchDrivers == searchDrivers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, install,
      const DeepCollectionEquality().hash(_drivers), localOnly, searchDrivers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriversResponseImplCopyWith<_$DriversResponseImpl> get copyWith =>
      __$$DriversResponseImplCopyWithImpl<_$DriversResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriversResponseImplToJson(
      this,
    );
  }
}

abstract class _DriversResponse implements DriversResponse {
  const factory _DriversResponse(
      {required final bool install,
      required final List<String>? drivers,
      required final bool localOnly,
      required final bool searchDrivers}) = _$DriversResponseImpl;

  factory _DriversResponse.fromJson(Map<String, dynamic> json) =
      _$DriversResponseImpl.fromJson;

  @override
  bool get install;
  @override
  List<String>? get drivers;
  @override
  bool get localOnly;
  @override
  bool get searchDrivers;
  @override
  @JsonKey(ignore: true)
  _$$DriversResponseImplCopyWith<_$DriversResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OEMResponse _$OEMResponseFromJson(Map<String, dynamic> json) {
  return _OEMResponse.fromJson(json);
}

/// @nodoc
mixin _$OEMResponse {
  List<String>? get metapackages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OEMResponseCopyWith<OEMResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OEMResponseCopyWith<$Res> {
  factory $OEMResponseCopyWith(
          OEMResponse value, $Res Function(OEMResponse) then) =
      _$OEMResponseCopyWithImpl<$Res, OEMResponse>;
  @useResult
  $Res call({List<String>? metapackages});
}

/// @nodoc
class _$OEMResponseCopyWithImpl<$Res, $Val extends OEMResponse>
    implements $OEMResponseCopyWith<$Res> {
  _$OEMResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metapackages = freezed,
  }) {
    return _then(_value.copyWith(
      metapackages: freezed == metapackages
          ? _value.metapackages
          : metapackages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OEMResponseImplCopyWith<$Res>
    implements $OEMResponseCopyWith<$Res> {
  factory _$$OEMResponseImplCopyWith(
          _$OEMResponseImpl value, $Res Function(_$OEMResponseImpl) then) =
      __$$OEMResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? metapackages});
}

/// @nodoc
class __$$OEMResponseImplCopyWithImpl<$Res>
    extends _$OEMResponseCopyWithImpl<$Res, _$OEMResponseImpl>
    implements _$$OEMResponseImplCopyWith<$Res> {
  __$$OEMResponseImplCopyWithImpl(
      _$OEMResponseImpl _value, $Res Function(_$OEMResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metapackages = freezed,
  }) {
    return _then(_$OEMResponseImpl(
      metapackages: freezed == metapackages
          ? _value._metapackages
          : metapackages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OEMResponseImpl implements _OEMResponse {
  const _$OEMResponseImpl({required final List<String>? metapackages})
      : _metapackages = metapackages;

  factory _$OEMResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OEMResponseImplFromJson(json);

  final List<String>? _metapackages;
  @override
  List<String>? get metapackages {
    final value = _metapackages;
    if (value == null) return null;
    if (_metapackages is EqualUnmodifiableListView) return _metapackages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OEMResponse(metapackages: $metapackages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OEMResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._metapackages, _metapackages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_metapackages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OEMResponseImplCopyWith<_$OEMResponseImpl> get copyWith =>
      __$$OEMResponseImplCopyWithImpl<_$OEMResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OEMResponseImplToJson(
      this,
    );
  }
}

abstract class _OEMResponse implements OEMResponse {
  const factory _OEMResponse({required final List<String>? metapackages}) =
      _$OEMResponseImpl;

  factory _OEMResponse.fromJson(Map<String, dynamic> json) =
      _$OEMResponseImpl.fromJson;

  @override
  List<String>? get metapackages;
  @override
  @JsonKey(ignore: true)
  _$$OEMResponseImplCopyWith<_$OEMResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CodecsData _$CodecsDataFromJson(Map<String, dynamic> json) {
  return _CodecsData.fromJson(json);
}

/// @nodoc
mixin _$CodecsData {
  bool get install => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodecsDataCopyWith<CodecsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodecsDataCopyWith<$Res> {
  factory $CodecsDataCopyWith(
          CodecsData value, $Res Function(CodecsData) then) =
      _$CodecsDataCopyWithImpl<$Res, CodecsData>;
  @useResult
  $Res call({bool install});
}

/// @nodoc
class _$CodecsDataCopyWithImpl<$Res, $Val extends CodecsData>
    implements $CodecsDataCopyWith<$Res> {
  _$CodecsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? install = null,
  }) {
    return _then(_value.copyWith(
      install: null == install
          ? _value.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodecsDataImplCopyWith<$Res>
    implements $CodecsDataCopyWith<$Res> {
  factory _$$CodecsDataImplCopyWith(
          _$CodecsDataImpl value, $Res Function(_$CodecsDataImpl) then) =
      __$$CodecsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool install});
}

/// @nodoc
class __$$CodecsDataImplCopyWithImpl<$Res>
    extends _$CodecsDataCopyWithImpl<$Res, _$CodecsDataImpl>
    implements _$$CodecsDataImplCopyWith<$Res> {
  __$$CodecsDataImplCopyWithImpl(
      _$CodecsDataImpl _value, $Res Function(_$CodecsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? install = null,
  }) {
    return _then(_$CodecsDataImpl(
      install: null == install
          ? _value.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodecsDataImpl implements _CodecsData {
  const _$CodecsDataImpl({required this.install});

  factory _$CodecsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodecsDataImplFromJson(json);

  @override
  final bool install;

  @override
  String toString() {
    return 'CodecsData(install: $install)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodecsDataImpl &&
            (identical(other.install, install) || other.install == install));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, install);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodecsDataImplCopyWith<_$CodecsDataImpl> get copyWith =>
      __$$CodecsDataImplCopyWithImpl<_$CodecsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodecsDataImplToJson(
      this,
    );
  }
}

abstract class _CodecsData implements CodecsData {
  const factory _CodecsData({required final bool install}) = _$CodecsDataImpl;

  factory _CodecsData.fromJson(Map<String, dynamic> json) =
      _$CodecsDataImpl.fromJson;

  @override
  bool get install;
  @override
  @JsonKey(ignore: true)
  _$$CodecsDataImplCopyWith<_$CodecsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriversPayload _$DriversPayloadFromJson(Map<String, dynamic> json) {
  return _DriversPayload.fromJson(json);
}

/// @nodoc
mixin _$DriversPayload {
  bool get install => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriversPayloadCopyWith<DriversPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriversPayloadCopyWith<$Res> {
  factory $DriversPayloadCopyWith(
          DriversPayload value, $Res Function(DriversPayload) then) =
      _$DriversPayloadCopyWithImpl<$Res, DriversPayload>;
  @useResult
  $Res call({bool install});
}

/// @nodoc
class _$DriversPayloadCopyWithImpl<$Res, $Val extends DriversPayload>
    implements $DriversPayloadCopyWith<$Res> {
  _$DriversPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? install = null,
  }) {
    return _then(_value.copyWith(
      install: null == install
          ? _value.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriversPayloadImplCopyWith<$Res>
    implements $DriversPayloadCopyWith<$Res> {
  factory _$$DriversPayloadImplCopyWith(_$DriversPayloadImpl value,
          $Res Function(_$DriversPayloadImpl) then) =
      __$$DriversPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool install});
}

/// @nodoc
class __$$DriversPayloadImplCopyWithImpl<$Res>
    extends _$DriversPayloadCopyWithImpl<$Res, _$DriversPayloadImpl>
    implements _$$DriversPayloadImplCopyWith<$Res> {
  __$$DriversPayloadImplCopyWithImpl(
      _$DriversPayloadImpl _value, $Res Function(_$DriversPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? install = null,
  }) {
    return _then(_$DriversPayloadImpl(
      install: null == install
          ? _value.install
          : install // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriversPayloadImpl implements _DriversPayload {
  const _$DriversPayloadImpl({required this.install});

  factory _$DriversPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriversPayloadImplFromJson(json);

  @override
  final bool install;

  @override
  String toString() {
    return 'DriversPayload(install: $install)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriversPayloadImpl &&
            (identical(other.install, install) || other.install == install));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, install);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriversPayloadImplCopyWith<_$DriversPayloadImpl> get copyWith =>
      __$$DriversPayloadImplCopyWithImpl<_$DriversPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriversPayloadImplToJson(
      this,
    );
  }
}

abstract class _DriversPayload implements DriversPayload {
  const factory _DriversPayload({required final bool install}) =
      _$DriversPayloadImpl;

  factory _DriversPayload.fromJson(Map<String, dynamic> json) =
      _$DriversPayloadImpl.fromJson;

  @override
  bool get install;
  @override
  @JsonKey(ignore: true)
  _$$DriversPayloadImplCopyWith<_$DriversPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapSelection _$SnapSelectionFromJson(Map<String, dynamic> json) {
  return _SnapSelection.fromJson(json);
}

/// @nodoc
mixin _$SnapSelection {
  String get name => throw _privateConstructorUsedError;
  String get channel => throw _privateConstructorUsedError;
  bool get classic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnapSelectionCopyWith<SnapSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapSelectionCopyWith<$Res> {
  factory $SnapSelectionCopyWith(
          SnapSelection value, $Res Function(SnapSelection) then) =
      _$SnapSelectionCopyWithImpl<$Res, SnapSelection>;
  @useResult
  $Res call({String name, String channel, bool classic});
}

/// @nodoc
class _$SnapSelectionCopyWithImpl<$Res, $Val extends SnapSelection>
    implements $SnapSelectionCopyWith<$Res> {
  _$SnapSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? channel = null,
    Object? classic = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      classic: null == classic
          ? _value.classic
          : classic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapSelectionImplCopyWith<$Res>
    implements $SnapSelectionCopyWith<$Res> {
  factory _$$SnapSelectionImplCopyWith(
          _$SnapSelectionImpl value, $Res Function(_$SnapSelectionImpl) then) =
      __$$SnapSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String channel, bool classic});
}

/// @nodoc
class __$$SnapSelectionImplCopyWithImpl<$Res>
    extends _$SnapSelectionCopyWithImpl<$Res, _$SnapSelectionImpl>
    implements _$$SnapSelectionImplCopyWith<$Res> {
  __$$SnapSelectionImplCopyWithImpl(
      _$SnapSelectionImpl _value, $Res Function(_$SnapSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? channel = null,
    Object? classic = null,
  }) {
    return _then(_$SnapSelectionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      classic: null == classic
          ? _value.classic
          : classic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapSelectionImpl implements _SnapSelection {
  const _$SnapSelectionImpl(
      {required this.name, required this.channel, this.classic = false});

  factory _$SnapSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapSelectionImplFromJson(json);

  @override
  final String name;
  @override
  final String channel;
  @override
  @JsonKey()
  final bool classic;

  @override
  String toString() {
    return 'SnapSelection(name: $name, channel: $channel, classic: $classic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapSelectionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.classic, classic) || other.classic == classic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, channel, classic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapSelectionImplCopyWith<_$SnapSelectionImpl> get copyWith =>
      __$$SnapSelectionImplCopyWithImpl<_$SnapSelectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapSelectionImplToJson(
      this,
    );
  }
}

abstract class _SnapSelection implements SnapSelection {
  const factory _SnapSelection(
      {required final String name,
      required final String channel,
      final bool classic}) = _$SnapSelectionImpl;

  factory _SnapSelection.fromJson(Map<String, dynamic> json) =
      _$SnapSelectionImpl.fromJson;

  @override
  String get name;
  @override
  String get channel;
  @override
  bool get classic;
  @override
  @JsonKey(ignore: true)
  _$$SnapSelectionImplCopyWith<_$SnapSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapListResponse _$SnapListResponseFromJson(Map<String, dynamic> json) {
  return _SnapListResponse.fromJson(json);
}

/// @nodoc
mixin _$SnapListResponse {
  SnapCheckState get status => throw _privateConstructorUsedError;
  List<SnapInfo> get snaps => throw _privateConstructorUsedError;
  List<SnapSelection> get selections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnapListResponseCopyWith<SnapListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapListResponseCopyWith<$Res> {
  factory $SnapListResponseCopyWith(
          SnapListResponse value, $Res Function(SnapListResponse) then) =
      _$SnapListResponseCopyWithImpl<$Res, SnapListResponse>;
  @useResult
  $Res call(
      {SnapCheckState status,
      List<SnapInfo> snaps,
      List<SnapSelection> selections});
}

/// @nodoc
class _$SnapListResponseCopyWithImpl<$Res, $Val extends SnapListResponse>
    implements $SnapListResponseCopyWith<$Res> {
  _$SnapListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? snaps = null,
    Object? selections = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SnapCheckState,
      snaps: null == snaps
          ? _value.snaps
          : snaps // ignore: cast_nullable_to_non_nullable
              as List<SnapInfo>,
      selections: null == selections
          ? _value.selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<SnapSelection>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapListResponseImplCopyWith<$Res>
    implements $SnapListResponseCopyWith<$Res> {
  factory _$$SnapListResponseImplCopyWith(_$SnapListResponseImpl value,
          $Res Function(_$SnapListResponseImpl) then) =
      __$$SnapListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SnapCheckState status,
      List<SnapInfo> snaps,
      List<SnapSelection> selections});
}

/// @nodoc
class __$$SnapListResponseImplCopyWithImpl<$Res>
    extends _$SnapListResponseCopyWithImpl<$Res, _$SnapListResponseImpl>
    implements _$$SnapListResponseImplCopyWith<$Res> {
  __$$SnapListResponseImplCopyWithImpl(_$SnapListResponseImpl _value,
      $Res Function(_$SnapListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? snaps = null,
    Object? selections = null,
  }) {
    return _then(_$SnapListResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SnapCheckState,
      snaps: null == snaps
          ? _value._snaps
          : snaps // ignore: cast_nullable_to_non_nullable
              as List<SnapInfo>,
      selections: null == selections
          ? _value._selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<SnapSelection>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapListResponseImpl implements _SnapListResponse {
  const _$SnapListResponseImpl(
      {required this.status,
      final List<SnapInfo> snaps = const [],
      final List<SnapSelection> selections = const []})
      : _snaps = snaps,
        _selections = selections;

  factory _$SnapListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapListResponseImplFromJson(json);

  @override
  final SnapCheckState status;
  final List<SnapInfo> _snaps;
  @override
  @JsonKey()
  List<SnapInfo> get snaps {
    if (_snaps is EqualUnmodifiableListView) return _snaps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snaps);
  }

  final List<SnapSelection> _selections;
  @override
  @JsonKey()
  List<SnapSelection> get selections {
    if (_selections is EqualUnmodifiableListView) return _selections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selections);
  }

  @override
  String toString() {
    return 'SnapListResponse(status: $status, snaps: $snaps, selections: $selections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapListResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._snaps, _snaps) &&
            const DeepCollectionEquality()
                .equals(other._selections, _selections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_snaps),
      const DeepCollectionEquality().hash(_selections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapListResponseImplCopyWith<_$SnapListResponseImpl> get copyWith =>
      __$$SnapListResponseImplCopyWithImpl<_$SnapListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapListResponseImplToJson(
      this,
    );
  }
}

abstract class _SnapListResponse implements SnapListResponse {
  const factory _SnapListResponse(
      {required final SnapCheckState status,
      final List<SnapInfo> snaps,
      final List<SnapSelection> selections}) = _$SnapListResponseImpl;

  factory _SnapListResponse.fromJson(Map<String, dynamic> json) =
      _$SnapListResponseImpl.fromJson;

  @override
  SnapCheckState get status;
  @override
  List<SnapInfo> get snaps;
  @override
  List<SnapSelection> get selections;
  @override
  @JsonKey(ignore: true)
  _$$SnapListResponseImplCopyWith<_$SnapListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeZoneInfo _$TimeZoneInfoFromJson(Map<String, dynamic> json) {
  return _TimeZoneInfo.fromJson(json);
}

/// @nodoc
mixin _$TimeZoneInfo {
  String get timezone => throw _privateConstructorUsedError;
  bool get fromGeoip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeZoneInfoCopyWith<TimeZoneInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeZoneInfoCopyWith<$Res> {
  factory $TimeZoneInfoCopyWith(
          TimeZoneInfo value, $Res Function(TimeZoneInfo) then) =
      _$TimeZoneInfoCopyWithImpl<$Res, TimeZoneInfo>;
  @useResult
  $Res call({String timezone, bool fromGeoip});
}

/// @nodoc
class _$TimeZoneInfoCopyWithImpl<$Res, $Val extends TimeZoneInfo>
    implements $TimeZoneInfoCopyWith<$Res> {
  _$TimeZoneInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timezone = null,
    Object? fromGeoip = null,
  }) {
    return _then(_value.copyWith(
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      fromGeoip: null == fromGeoip
          ? _value.fromGeoip
          : fromGeoip // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeZoneInfoImplCopyWith<$Res>
    implements $TimeZoneInfoCopyWith<$Res> {
  factory _$$TimeZoneInfoImplCopyWith(
          _$TimeZoneInfoImpl value, $Res Function(_$TimeZoneInfoImpl) then) =
      __$$TimeZoneInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String timezone, bool fromGeoip});
}

/// @nodoc
class __$$TimeZoneInfoImplCopyWithImpl<$Res>
    extends _$TimeZoneInfoCopyWithImpl<$Res, _$TimeZoneInfoImpl>
    implements _$$TimeZoneInfoImplCopyWith<$Res> {
  __$$TimeZoneInfoImplCopyWithImpl(
      _$TimeZoneInfoImpl _value, $Res Function(_$TimeZoneInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timezone = null,
    Object? fromGeoip = null,
  }) {
    return _then(_$TimeZoneInfoImpl(
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      fromGeoip: null == fromGeoip
          ? _value.fromGeoip
          : fromGeoip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeZoneInfoImpl implements _TimeZoneInfo {
  const _$TimeZoneInfoImpl({required this.timezone, required this.fromGeoip});

  factory _$TimeZoneInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeZoneInfoImplFromJson(json);

  @override
  final String timezone;
  @override
  final bool fromGeoip;

  @override
  String toString() {
    return 'TimeZoneInfo(timezone: $timezone, fromGeoip: $fromGeoip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeZoneInfoImpl &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.fromGeoip, fromGeoip) ||
                other.fromGeoip == fromGeoip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timezone, fromGeoip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeZoneInfoImplCopyWith<_$TimeZoneInfoImpl> get copyWith =>
      __$$TimeZoneInfoImplCopyWithImpl<_$TimeZoneInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeZoneInfoImplToJson(
      this,
    );
  }
}

abstract class _TimeZoneInfo implements TimeZoneInfo {
  const factory _TimeZoneInfo(
      {required final String timezone,
      required final bool fromGeoip}) = _$TimeZoneInfoImpl;

  factory _TimeZoneInfo.fromJson(Map<String, dynamic> json) =
      _$TimeZoneInfoImpl.fromJson;

  @override
  String get timezone;
  @override
  bool get fromGeoip;
  @override
  @JsonKey(ignore: true)
  _$$TimeZoneInfoImplCopyWith<_$TimeZoneInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UbuntuProInfo _$UbuntuProInfoFromJson(Map<String, dynamic> json) {
  return _UbuntuProInfo.fromJson(json);
}

/// @nodoc
mixin _$UbuntuProInfo {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UbuntuProInfoCopyWith<UbuntuProInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UbuntuProInfoCopyWith<$Res> {
  factory $UbuntuProInfoCopyWith(
          UbuntuProInfo value, $Res Function(UbuntuProInfo) then) =
      _$UbuntuProInfoCopyWithImpl<$Res, UbuntuProInfo>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$UbuntuProInfoCopyWithImpl<$Res, $Val extends UbuntuProInfo>
    implements $UbuntuProInfoCopyWith<$Res> {
  _$UbuntuProInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UbuntuProInfoImplCopyWith<$Res>
    implements $UbuntuProInfoCopyWith<$Res> {
  factory _$$UbuntuProInfoImplCopyWith(
          _$UbuntuProInfoImpl value, $Res Function(_$UbuntuProInfoImpl) then) =
      __$$UbuntuProInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$UbuntuProInfoImplCopyWithImpl<$Res>
    extends _$UbuntuProInfoCopyWithImpl<$Res, _$UbuntuProInfoImpl>
    implements _$$UbuntuProInfoImplCopyWith<$Res> {
  __$$UbuntuProInfoImplCopyWithImpl(
      _$UbuntuProInfoImpl _value, $Res Function(_$UbuntuProInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$UbuntuProInfoImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UbuntuProInfoImpl implements _UbuntuProInfo {
  const _$UbuntuProInfoImpl({required this.token});

  factory _$UbuntuProInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UbuntuProInfoImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'UbuntuProInfo(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UbuntuProInfoImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UbuntuProInfoImplCopyWith<_$UbuntuProInfoImpl> get copyWith =>
      __$$UbuntuProInfoImplCopyWithImpl<_$UbuntuProInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UbuntuProInfoImplToJson(
      this,
    );
  }
}

abstract class _UbuntuProInfo implements UbuntuProInfo {
  const factory _UbuntuProInfo({required final String token}) =
      _$UbuntuProInfoImpl;

  factory _UbuntuProInfo.fromJson(Map<String, dynamic> json) =
      _$UbuntuProInfoImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$UbuntuProInfoImplCopyWith<_$UbuntuProInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UbuntuProResponse _$UbuntuProResponseFromJson(Map<String, dynamic> json) {
  return _UbuntuProResponse.fromJson(json);
}

/// @nodoc
mixin _$UbuntuProResponse {
  String get token => throw _privateConstructorUsedError;
  bool get hasNetwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UbuntuProResponseCopyWith<UbuntuProResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UbuntuProResponseCopyWith<$Res> {
  factory $UbuntuProResponseCopyWith(
          UbuntuProResponse value, $Res Function(UbuntuProResponse) then) =
      _$UbuntuProResponseCopyWithImpl<$Res, UbuntuProResponse>;
  @useResult
  $Res call({String token, bool hasNetwork});
}

/// @nodoc
class _$UbuntuProResponseCopyWithImpl<$Res, $Val extends UbuntuProResponse>
    implements $UbuntuProResponseCopyWith<$Res> {
  _$UbuntuProResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? hasNetwork = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      hasNetwork: null == hasNetwork
          ? _value.hasNetwork
          : hasNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UbuntuProResponseImplCopyWith<$Res>
    implements $UbuntuProResponseCopyWith<$Res> {
  factory _$$UbuntuProResponseImplCopyWith(_$UbuntuProResponseImpl value,
          $Res Function(_$UbuntuProResponseImpl) then) =
      __$$UbuntuProResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, bool hasNetwork});
}

/// @nodoc
class __$$UbuntuProResponseImplCopyWithImpl<$Res>
    extends _$UbuntuProResponseCopyWithImpl<$Res, _$UbuntuProResponseImpl>
    implements _$$UbuntuProResponseImplCopyWith<$Res> {
  __$$UbuntuProResponseImplCopyWithImpl(_$UbuntuProResponseImpl _value,
      $Res Function(_$UbuntuProResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? hasNetwork = null,
  }) {
    return _then(_$UbuntuProResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      hasNetwork: null == hasNetwork
          ? _value.hasNetwork
          : hasNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UbuntuProResponseImpl implements _UbuntuProResponse {
  const _$UbuntuProResponseImpl(
      {required this.token, required this.hasNetwork});

  factory _$UbuntuProResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UbuntuProResponseImplFromJson(json);

  @override
  final String token;
  @override
  final bool hasNetwork;

  @override
  String toString() {
    return 'UbuntuProResponse(token: $token, hasNetwork: $hasNetwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UbuntuProResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.hasNetwork, hasNetwork) ||
                other.hasNetwork == hasNetwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, hasNetwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UbuntuProResponseImplCopyWith<_$UbuntuProResponseImpl> get copyWith =>
      __$$UbuntuProResponseImplCopyWithImpl<_$UbuntuProResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UbuntuProResponseImplToJson(
      this,
    );
  }
}

abstract class _UbuntuProResponse implements UbuntuProResponse {
  const factory _UbuntuProResponse(
      {required final String token,
      required final bool hasNetwork}) = _$UbuntuProResponseImpl;

  factory _UbuntuProResponse.fromJson(Map<String, dynamic> json) =
      _$UbuntuProResponseImpl.fromJson;

  @override
  String get token;
  @override
  bool get hasNetwork;
  @override
  @JsonKey(ignore: true)
  _$$UbuntuProResponseImplCopyWith<_$UbuntuProResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UPCSInitiateResponse _$UPCSInitiateResponseFromJson(Map<String, dynamic> json) {
  return _UPCSInitiateResponse.fromJson(json);
}

/// @nodoc
mixin _$UPCSInitiateResponse {
  String get userCode => throw _privateConstructorUsedError;
  int get validitySeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UPCSInitiateResponseCopyWith<UPCSInitiateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UPCSInitiateResponseCopyWith<$Res> {
  factory $UPCSInitiateResponseCopyWith(UPCSInitiateResponse value,
          $Res Function(UPCSInitiateResponse) then) =
      _$UPCSInitiateResponseCopyWithImpl<$Res, UPCSInitiateResponse>;
  @useResult
  $Res call({String userCode, int validitySeconds});
}

/// @nodoc
class _$UPCSInitiateResponseCopyWithImpl<$Res,
        $Val extends UPCSInitiateResponse>
    implements $UPCSInitiateResponseCopyWith<$Res> {
  _$UPCSInitiateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? validitySeconds = null,
  }) {
    return _then(_value.copyWith(
      userCode: null == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      validitySeconds: null == validitySeconds
          ? _value.validitySeconds
          : validitySeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UPCSInitiateResponseImplCopyWith<$Res>
    implements $UPCSInitiateResponseCopyWith<$Res> {
  factory _$$UPCSInitiateResponseImplCopyWith(_$UPCSInitiateResponseImpl value,
          $Res Function(_$UPCSInitiateResponseImpl) then) =
      __$$UPCSInitiateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userCode, int validitySeconds});
}

/// @nodoc
class __$$UPCSInitiateResponseImplCopyWithImpl<$Res>
    extends _$UPCSInitiateResponseCopyWithImpl<$Res, _$UPCSInitiateResponseImpl>
    implements _$$UPCSInitiateResponseImplCopyWith<$Res> {
  __$$UPCSInitiateResponseImplCopyWithImpl(_$UPCSInitiateResponseImpl _value,
      $Res Function(_$UPCSInitiateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? validitySeconds = null,
  }) {
    return _then(_$UPCSInitiateResponseImpl(
      userCode: null == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      validitySeconds: null == validitySeconds
          ? _value.validitySeconds
          : validitySeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UPCSInitiateResponseImpl implements _UPCSInitiateResponse {
  const _$UPCSInitiateResponseImpl(
      {required this.userCode, required this.validitySeconds});

  factory _$UPCSInitiateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UPCSInitiateResponseImplFromJson(json);

  @override
  final String userCode;
  @override
  final int validitySeconds;

  @override
  String toString() {
    return 'UPCSInitiateResponse(userCode: $userCode, validitySeconds: $validitySeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UPCSInitiateResponseImpl &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.validitySeconds, validitySeconds) ||
                other.validitySeconds == validitySeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userCode, validitySeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UPCSInitiateResponseImplCopyWith<_$UPCSInitiateResponseImpl>
      get copyWith =>
          __$$UPCSInitiateResponseImplCopyWithImpl<_$UPCSInitiateResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UPCSInitiateResponseImplToJson(
      this,
    );
  }
}

abstract class _UPCSInitiateResponse implements UPCSInitiateResponse {
  const factory _UPCSInitiateResponse(
      {required final String userCode,
      required final int validitySeconds}) = _$UPCSInitiateResponseImpl;

  factory _UPCSInitiateResponse.fromJson(Map<String, dynamic> json) =
      _$UPCSInitiateResponseImpl.fromJson;

  @override
  String get userCode;
  @override
  int get validitySeconds;
  @override
  @JsonKey(ignore: true)
  _$$UPCSInitiateResponseImplCopyWith<_$UPCSInitiateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UPCSWaitResponse _$UPCSWaitResponseFromJson(Map<String, dynamic> json) {
  return _UPCSWaitResponse.fromJson(json);
}

/// @nodoc
mixin _$UPCSWaitResponse {
  UPCSWaitStatus get status => throw _privateConstructorUsedError;
  String? get contractToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UPCSWaitResponseCopyWith<UPCSWaitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UPCSWaitResponseCopyWith<$Res> {
  factory $UPCSWaitResponseCopyWith(
          UPCSWaitResponse value, $Res Function(UPCSWaitResponse) then) =
      _$UPCSWaitResponseCopyWithImpl<$Res, UPCSWaitResponse>;
  @useResult
  $Res call({UPCSWaitStatus status, String? contractToken});
}

/// @nodoc
class _$UPCSWaitResponseCopyWithImpl<$Res, $Val extends UPCSWaitResponse>
    implements $UPCSWaitResponseCopyWith<$Res> {
  _$UPCSWaitResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? contractToken = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UPCSWaitStatus,
      contractToken: freezed == contractToken
          ? _value.contractToken
          : contractToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UPCSWaitResponseImplCopyWith<$Res>
    implements $UPCSWaitResponseCopyWith<$Res> {
  factory _$$UPCSWaitResponseImplCopyWith(_$UPCSWaitResponseImpl value,
          $Res Function(_$UPCSWaitResponseImpl) then) =
      __$$UPCSWaitResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UPCSWaitStatus status, String? contractToken});
}

/// @nodoc
class __$$UPCSWaitResponseImplCopyWithImpl<$Res>
    extends _$UPCSWaitResponseCopyWithImpl<$Res, _$UPCSWaitResponseImpl>
    implements _$$UPCSWaitResponseImplCopyWith<$Res> {
  __$$UPCSWaitResponseImplCopyWithImpl(_$UPCSWaitResponseImpl _value,
      $Res Function(_$UPCSWaitResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? contractToken = freezed,
  }) {
    return _then(_$UPCSWaitResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UPCSWaitStatus,
      contractToken: freezed == contractToken
          ? _value.contractToken
          : contractToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UPCSWaitResponseImpl implements _UPCSWaitResponse {
  const _$UPCSWaitResponseImpl(
      {required this.status, required this.contractToken});

  factory _$UPCSWaitResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UPCSWaitResponseImplFromJson(json);

  @override
  final UPCSWaitStatus status;
  @override
  final String? contractToken;

  @override
  String toString() {
    return 'UPCSWaitResponse(status: $status, contractToken: $contractToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UPCSWaitResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.contractToken, contractToken) ||
                other.contractToken == contractToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, contractToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UPCSWaitResponseImplCopyWith<_$UPCSWaitResponseImpl> get copyWith =>
      __$$UPCSWaitResponseImplCopyWithImpl<_$UPCSWaitResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UPCSWaitResponseImplToJson(
      this,
    );
  }
}

abstract class _UPCSWaitResponse implements UPCSWaitResponse {
  const factory _UPCSWaitResponse(
      {required final UPCSWaitStatus status,
      required final String? contractToken}) = _$UPCSWaitResponseImpl;

  factory _UPCSWaitResponse.fromJson(Map<String, dynamic> json) =
      _$UPCSWaitResponseImpl.fromJson;

  @override
  UPCSWaitStatus get status;
  @override
  String? get contractToken;
  @override
  @JsonKey(ignore: true)
  _$$UPCSWaitResponseImplCopyWith<_$UPCSWaitResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UbuntuProService _$UbuntuProServiceFromJson(Map<String, dynamic> json) {
  return _UbuntuProService.fromJson(json);
}

/// @nodoc
mixin _$UbuntuProService {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get autoEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UbuntuProServiceCopyWith<UbuntuProService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UbuntuProServiceCopyWith<$Res> {
  factory $UbuntuProServiceCopyWith(
          UbuntuProService value, $Res Function(UbuntuProService) then) =
      _$UbuntuProServiceCopyWithImpl<$Res, UbuntuProService>;
  @useResult
  $Res call({String name, String description, bool autoEnabled});
}

/// @nodoc
class _$UbuntuProServiceCopyWithImpl<$Res, $Val extends UbuntuProService>
    implements $UbuntuProServiceCopyWith<$Res> {
  _$UbuntuProServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? autoEnabled = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      autoEnabled: null == autoEnabled
          ? _value.autoEnabled
          : autoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UbuntuProServiceImplCopyWith<$Res>
    implements $UbuntuProServiceCopyWith<$Res> {
  factory _$$UbuntuProServiceImplCopyWith(_$UbuntuProServiceImpl value,
          $Res Function(_$UbuntuProServiceImpl) then) =
      __$$UbuntuProServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, bool autoEnabled});
}

/// @nodoc
class __$$UbuntuProServiceImplCopyWithImpl<$Res>
    extends _$UbuntuProServiceCopyWithImpl<$Res, _$UbuntuProServiceImpl>
    implements _$$UbuntuProServiceImplCopyWith<$Res> {
  __$$UbuntuProServiceImplCopyWithImpl(_$UbuntuProServiceImpl _value,
      $Res Function(_$UbuntuProServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? autoEnabled = null,
  }) {
    return _then(_$UbuntuProServiceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      autoEnabled: null == autoEnabled
          ? _value.autoEnabled
          : autoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UbuntuProServiceImpl implements _UbuntuProService {
  const _$UbuntuProServiceImpl(
      {required this.name,
      required this.description,
      required this.autoEnabled});

  factory _$UbuntuProServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$UbuntuProServiceImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final bool autoEnabled;

  @override
  String toString() {
    return 'UbuntuProService(name: $name, description: $description, autoEnabled: $autoEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UbuntuProServiceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.autoEnabled, autoEnabled) ||
                other.autoEnabled == autoEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, autoEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UbuntuProServiceImplCopyWith<_$UbuntuProServiceImpl> get copyWith =>
      __$$UbuntuProServiceImplCopyWithImpl<_$UbuntuProServiceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UbuntuProServiceImplToJson(
      this,
    );
  }
}

abstract class _UbuntuProService implements UbuntuProService {
  const factory _UbuntuProService(
      {required final String name,
      required final String description,
      required final bool autoEnabled}) = _$UbuntuProServiceImpl;

  factory _UbuntuProService.fromJson(Map<String, dynamic> json) =
      _$UbuntuProServiceImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  bool get autoEnabled;
  @override
  @JsonKey(ignore: true)
  _$$UbuntuProServiceImplCopyWith<_$UbuntuProServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UbuntuProSubscription _$UbuntuProSubscriptionFromJson(
    Map<String, dynamic> json) {
  return _UbuntuProSubscription.fromJson(json);
}

/// @nodoc
mixin _$UbuntuProSubscription {
  String get contractName => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get contractToken => throw _privateConstructorUsedError;
  List<UbuntuProService> get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UbuntuProSubscriptionCopyWith<UbuntuProSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UbuntuProSubscriptionCopyWith<$Res> {
  factory $UbuntuProSubscriptionCopyWith(UbuntuProSubscription value,
          $Res Function(UbuntuProSubscription) then) =
      _$UbuntuProSubscriptionCopyWithImpl<$Res, UbuntuProSubscription>;
  @useResult
  $Res call(
      {String contractName,
      String accountName,
      String contractToken,
      List<UbuntuProService> services});
}

/// @nodoc
class _$UbuntuProSubscriptionCopyWithImpl<$Res,
        $Val extends UbuntuProSubscription>
    implements $UbuntuProSubscriptionCopyWith<$Res> {
  _$UbuntuProSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractName = null,
    Object? accountName = null,
    Object? contractToken = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      contractName: null == contractName
          ? _value.contractName
          : contractName // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      contractToken: null == contractToken
          ? _value.contractToken
          : contractToken // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<UbuntuProService>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UbuntuProSubscriptionImplCopyWith<$Res>
    implements $UbuntuProSubscriptionCopyWith<$Res> {
  factory _$$UbuntuProSubscriptionImplCopyWith(
          _$UbuntuProSubscriptionImpl value,
          $Res Function(_$UbuntuProSubscriptionImpl) then) =
      __$$UbuntuProSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contractName,
      String accountName,
      String contractToken,
      List<UbuntuProService> services});
}

/// @nodoc
class __$$UbuntuProSubscriptionImplCopyWithImpl<$Res>
    extends _$UbuntuProSubscriptionCopyWithImpl<$Res,
        _$UbuntuProSubscriptionImpl>
    implements _$$UbuntuProSubscriptionImplCopyWith<$Res> {
  __$$UbuntuProSubscriptionImplCopyWithImpl(_$UbuntuProSubscriptionImpl _value,
      $Res Function(_$UbuntuProSubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractName = null,
    Object? accountName = null,
    Object? contractToken = null,
    Object? services = null,
  }) {
    return _then(_$UbuntuProSubscriptionImpl(
      contractName: null == contractName
          ? _value.contractName
          : contractName // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      contractToken: null == contractToken
          ? _value.contractToken
          : contractToken // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<UbuntuProService>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UbuntuProSubscriptionImpl implements _UbuntuProSubscription {
  const _$UbuntuProSubscriptionImpl(
      {required this.contractName,
      required this.accountName,
      required this.contractToken,
      required final List<UbuntuProService> services})
      : _services = services;

  factory _$UbuntuProSubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UbuntuProSubscriptionImplFromJson(json);

  @override
  final String contractName;
  @override
  final String accountName;
  @override
  final String contractToken;
  final List<UbuntuProService> _services;
  @override
  List<UbuntuProService> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'UbuntuProSubscription(contractName: $contractName, accountName: $accountName, contractToken: $contractToken, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UbuntuProSubscriptionImpl &&
            (identical(other.contractName, contractName) ||
                other.contractName == contractName) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.contractToken, contractToken) ||
                other.contractToken == contractToken) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contractName, accountName,
      contractToken, const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UbuntuProSubscriptionImplCopyWith<_$UbuntuProSubscriptionImpl>
      get copyWith => __$$UbuntuProSubscriptionImplCopyWithImpl<
          _$UbuntuProSubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UbuntuProSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _UbuntuProSubscription implements UbuntuProSubscription {
  const factory _UbuntuProSubscription(
          {required final String contractName,
          required final String accountName,
          required final String contractToken,
          required final List<UbuntuProService> services}) =
      _$UbuntuProSubscriptionImpl;

  factory _UbuntuProSubscription.fromJson(Map<String, dynamic> json) =
      _$UbuntuProSubscriptionImpl.fromJson;

  @override
  String get contractName;
  @override
  String get accountName;
  @override
  String get contractToken;
  @override
  List<UbuntuProService> get services;
  @override
  @JsonKey(ignore: true)
  _$$UbuntuProSubscriptionImplCopyWith<_$UbuntuProSubscriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UbuntuProCheckTokenAnswer _$UbuntuProCheckTokenAnswerFromJson(
    Map<String, dynamic> json) {
  return _UbuntuProCheckTokenAnswer.fromJson(json);
}

/// @nodoc
mixin _$UbuntuProCheckTokenAnswer {
  UbuntuProCheckTokenStatus get status => throw _privateConstructorUsedError;
  UbuntuProSubscription? get subscription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UbuntuProCheckTokenAnswerCopyWith<UbuntuProCheckTokenAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UbuntuProCheckTokenAnswerCopyWith<$Res> {
  factory $UbuntuProCheckTokenAnswerCopyWith(UbuntuProCheckTokenAnswer value,
          $Res Function(UbuntuProCheckTokenAnswer) then) =
      _$UbuntuProCheckTokenAnswerCopyWithImpl<$Res, UbuntuProCheckTokenAnswer>;
  @useResult
  $Res call(
      {UbuntuProCheckTokenStatus status, UbuntuProSubscription? subscription});

  $UbuntuProSubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class _$UbuntuProCheckTokenAnswerCopyWithImpl<$Res,
        $Val extends UbuntuProCheckTokenAnswer>
    implements $UbuntuProCheckTokenAnswerCopyWith<$Res> {
  _$UbuntuProCheckTokenAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? subscription = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UbuntuProCheckTokenStatus,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as UbuntuProSubscription?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UbuntuProSubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $UbuntuProSubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UbuntuProCheckTokenAnswerImplCopyWith<$Res>
    implements $UbuntuProCheckTokenAnswerCopyWith<$Res> {
  factory _$$UbuntuProCheckTokenAnswerImplCopyWith(
          _$UbuntuProCheckTokenAnswerImpl value,
          $Res Function(_$UbuntuProCheckTokenAnswerImpl) then) =
      __$$UbuntuProCheckTokenAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UbuntuProCheckTokenStatus status, UbuntuProSubscription? subscription});

  @override
  $UbuntuProSubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$$UbuntuProCheckTokenAnswerImplCopyWithImpl<$Res>
    extends _$UbuntuProCheckTokenAnswerCopyWithImpl<$Res,
        _$UbuntuProCheckTokenAnswerImpl>
    implements _$$UbuntuProCheckTokenAnswerImplCopyWith<$Res> {
  __$$UbuntuProCheckTokenAnswerImplCopyWithImpl(
      _$UbuntuProCheckTokenAnswerImpl _value,
      $Res Function(_$UbuntuProCheckTokenAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? subscription = freezed,
  }) {
    return _then(_$UbuntuProCheckTokenAnswerImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UbuntuProCheckTokenStatus,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as UbuntuProSubscription?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UbuntuProCheckTokenAnswerImpl implements _UbuntuProCheckTokenAnswer {
  const _$UbuntuProCheckTokenAnswerImpl(
      {required this.status, required this.subscription});

  factory _$UbuntuProCheckTokenAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$UbuntuProCheckTokenAnswerImplFromJson(json);

  @override
  final UbuntuProCheckTokenStatus status;
  @override
  final UbuntuProSubscription? subscription;

  @override
  String toString() {
    return 'UbuntuProCheckTokenAnswer(status: $status, subscription: $subscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UbuntuProCheckTokenAnswerImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, subscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UbuntuProCheckTokenAnswerImplCopyWith<_$UbuntuProCheckTokenAnswerImpl>
      get copyWith => __$$UbuntuProCheckTokenAnswerImplCopyWithImpl<
          _$UbuntuProCheckTokenAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UbuntuProCheckTokenAnswerImplToJson(
      this,
    );
  }
}

abstract class _UbuntuProCheckTokenAnswer implements UbuntuProCheckTokenAnswer {
  const factory _UbuntuProCheckTokenAnswer(
          {required final UbuntuProCheckTokenStatus status,
          required final UbuntuProSubscription? subscription}) =
      _$UbuntuProCheckTokenAnswerImpl;

  factory _UbuntuProCheckTokenAnswer.fromJson(Map<String, dynamic> json) =
      _$UbuntuProCheckTokenAnswerImpl.fromJson;

  @override
  UbuntuProCheckTokenStatus get status;
  @override
  UbuntuProSubscription? get subscription;
  @override
  @JsonKey(ignore: true)
  _$$UbuntuProCheckTokenAnswerImplCopyWith<_$UbuntuProCheckTokenAnswerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WSLConfigurationBase _$WSLConfigurationBaseFromJson(Map<String, dynamic> json) {
  return _WSLConfigurationBase.fromJson(json);
}

/// @nodoc
mixin _$WSLConfigurationBase {
  String get automountRoot => throw _privateConstructorUsedError;
  String get automountOptions => throw _privateConstructorUsedError;
  bool get networkGeneratehosts => throw _privateConstructorUsedError;
  bool get networkGenerateresolvconf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WSLConfigurationBaseCopyWith<WSLConfigurationBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WSLConfigurationBaseCopyWith<$Res> {
  factory $WSLConfigurationBaseCopyWith(WSLConfigurationBase value,
          $Res Function(WSLConfigurationBase) then) =
      _$WSLConfigurationBaseCopyWithImpl<$Res, WSLConfigurationBase>;
  @useResult
  $Res call(
      {String automountRoot,
      String automountOptions,
      bool networkGeneratehosts,
      bool networkGenerateresolvconf});
}

/// @nodoc
class _$WSLConfigurationBaseCopyWithImpl<$Res,
        $Val extends WSLConfigurationBase>
    implements $WSLConfigurationBaseCopyWith<$Res> {
  _$WSLConfigurationBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? automountRoot = null,
    Object? automountOptions = null,
    Object? networkGeneratehosts = null,
    Object? networkGenerateresolvconf = null,
  }) {
    return _then(_value.copyWith(
      automountRoot: null == automountRoot
          ? _value.automountRoot
          : automountRoot // ignore: cast_nullable_to_non_nullable
              as String,
      automountOptions: null == automountOptions
          ? _value.automountOptions
          : automountOptions // ignore: cast_nullable_to_non_nullable
              as String,
      networkGeneratehosts: null == networkGeneratehosts
          ? _value.networkGeneratehosts
          : networkGeneratehosts // ignore: cast_nullable_to_non_nullable
              as bool,
      networkGenerateresolvconf: null == networkGenerateresolvconf
          ? _value.networkGenerateresolvconf
          : networkGenerateresolvconf // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WSLConfigurationBaseImplCopyWith<$Res>
    implements $WSLConfigurationBaseCopyWith<$Res> {
  factory _$$WSLConfigurationBaseImplCopyWith(_$WSLConfigurationBaseImpl value,
          $Res Function(_$WSLConfigurationBaseImpl) then) =
      __$$WSLConfigurationBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String automountRoot,
      String automountOptions,
      bool networkGeneratehosts,
      bool networkGenerateresolvconf});
}

/// @nodoc
class __$$WSLConfigurationBaseImplCopyWithImpl<$Res>
    extends _$WSLConfigurationBaseCopyWithImpl<$Res, _$WSLConfigurationBaseImpl>
    implements _$$WSLConfigurationBaseImplCopyWith<$Res> {
  __$$WSLConfigurationBaseImplCopyWithImpl(_$WSLConfigurationBaseImpl _value,
      $Res Function(_$WSLConfigurationBaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? automountRoot = null,
    Object? automountOptions = null,
    Object? networkGeneratehosts = null,
    Object? networkGenerateresolvconf = null,
  }) {
    return _then(_$WSLConfigurationBaseImpl(
      automountRoot: null == automountRoot
          ? _value.automountRoot
          : automountRoot // ignore: cast_nullable_to_non_nullable
              as String,
      automountOptions: null == automountOptions
          ? _value.automountOptions
          : automountOptions // ignore: cast_nullable_to_non_nullable
              as String,
      networkGeneratehosts: null == networkGeneratehosts
          ? _value.networkGeneratehosts
          : networkGeneratehosts // ignore: cast_nullable_to_non_nullable
              as bool,
      networkGenerateresolvconf: null == networkGenerateresolvconf
          ? _value.networkGenerateresolvconf
          : networkGenerateresolvconf // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WSLConfigurationBaseImpl implements _WSLConfigurationBase {
  const _$WSLConfigurationBaseImpl(
      {this.automountRoot = '/mnt/',
      this.automountOptions = '',
      this.networkGeneratehosts = true,
      this.networkGenerateresolvconf = true});

  factory _$WSLConfigurationBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WSLConfigurationBaseImplFromJson(json);

  @override
  @JsonKey()
  final String automountRoot;
  @override
  @JsonKey()
  final String automountOptions;
  @override
  @JsonKey()
  final bool networkGeneratehosts;
  @override
  @JsonKey()
  final bool networkGenerateresolvconf;

  @override
  String toString() {
    return 'WSLConfigurationBase(automountRoot: $automountRoot, automountOptions: $automountOptions, networkGeneratehosts: $networkGeneratehosts, networkGenerateresolvconf: $networkGenerateresolvconf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WSLConfigurationBaseImpl &&
            (identical(other.automountRoot, automountRoot) ||
                other.automountRoot == automountRoot) &&
            (identical(other.automountOptions, automountOptions) ||
                other.automountOptions == automountOptions) &&
            (identical(other.networkGeneratehosts, networkGeneratehosts) ||
                other.networkGeneratehosts == networkGeneratehosts) &&
            (identical(other.networkGenerateresolvconf,
                    networkGenerateresolvconf) ||
                other.networkGenerateresolvconf == networkGenerateresolvconf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, automountRoot, automountOptions,
      networkGeneratehosts, networkGenerateresolvconf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WSLConfigurationBaseImplCopyWith<_$WSLConfigurationBaseImpl>
      get copyWith =>
          __$$WSLConfigurationBaseImplCopyWithImpl<_$WSLConfigurationBaseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WSLConfigurationBaseImplToJson(
      this,
    );
  }
}

abstract class _WSLConfigurationBase implements WSLConfigurationBase {
  const factory _WSLConfigurationBase(
      {final String automountRoot,
      final String automountOptions,
      final bool networkGeneratehosts,
      final bool networkGenerateresolvconf}) = _$WSLConfigurationBaseImpl;

  factory _WSLConfigurationBase.fromJson(Map<String, dynamic> json) =
      _$WSLConfigurationBaseImpl.fromJson;

  @override
  String get automountRoot;
  @override
  String get automountOptions;
  @override
  bool get networkGeneratehosts;
  @override
  bool get networkGenerateresolvconf;
  @override
  @JsonKey(ignore: true)
  _$$WSLConfigurationBaseImplCopyWith<_$WSLConfigurationBaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WSLConfigurationAdvanced _$WSLConfigurationAdvancedFromJson(
    Map<String, dynamic> json) {
  return _WSLConfigurationAdvanced.fromJson(json);
}

/// @nodoc
mixin _$WSLConfigurationAdvanced {
  bool get automountEnabled => throw _privateConstructorUsedError;
  bool get automountMountfstab => throw _privateConstructorUsedError;
  bool get interopEnabled => throw _privateConstructorUsedError;
  bool get interopAppendwindowspath => throw _privateConstructorUsedError;
  bool get systemdEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WSLConfigurationAdvancedCopyWith<WSLConfigurationAdvanced> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WSLConfigurationAdvancedCopyWith<$Res> {
  factory $WSLConfigurationAdvancedCopyWith(WSLConfigurationAdvanced value,
          $Res Function(WSLConfigurationAdvanced) then) =
      _$WSLConfigurationAdvancedCopyWithImpl<$Res, WSLConfigurationAdvanced>;
  @useResult
  $Res call(
      {bool automountEnabled,
      bool automountMountfstab,
      bool interopEnabled,
      bool interopAppendwindowspath,
      bool systemdEnabled});
}

/// @nodoc
class _$WSLConfigurationAdvancedCopyWithImpl<$Res,
        $Val extends WSLConfigurationAdvanced>
    implements $WSLConfigurationAdvancedCopyWith<$Res> {
  _$WSLConfigurationAdvancedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? automountEnabled = null,
    Object? automountMountfstab = null,
    Object? interopEnabled = null,
    Object? interopAppendwindowspath = null,
    Object? systemdEnabled = null,
  }) {
    return _then(_value.copyWith(
      automountEnabled: null == automountEnabled
          ? _value.automountEnabled
          : automountEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      automountMountfstab: null == automountMountfstab
          ? _value.automountMountfstab
          : automountMountfstab // ignore: cast_nullable_to_non_nullable
              as bool,
      interopEnabled: null == interopEnabled
          ? _value.interopEnabled
          : interopEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      interopAppendwindowspath: null == interopAppendwindowspath
          ? _value.interopAppendwindowspath
          : interopAppendwindowspath // ignore: cast_nullable_to_non_nullable
              as bool,
      systemdEnabled: null == systemdEnabled
          ? _value.systemdEnabled
          : systemdEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WSLConfigurationAdvancedImplCopyWith<$Res>
    implements $WSLConfigurationAdvancedCopyWith<$Res> {
  factory _$$WSLConfigurationAdvancedImplCopyWith(
          _$WSLConfigurationAdvancedImpl value,
          $Res Function(_$WSLConfigurationAdvancedImpl) then) =
      __$$WSLConfigurationAdvancedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool automountEnabled,
      bool automountMountfstab,
      bool interopEnabled,
      bool interopAppendwindowspath,
      bool systemdEnabled});
}

/// @nodoc
class __$$WSLConfigurationAdvancedImplCopyWithImpl<$Res>
    extends _$WSLConfigurationAdvancedCopyWithImpl<$Res,
        _$WSLConfigurationAdvancedImpl>
    implements _$$WSLConfigurationAdvancedImplCopyWith<$Res> {
  __$$WSLConfigurationAdvancedImplCopyWithImpl(
      _$WSLConfigurationAdvancedImpl _value,
      $Res Function(_$WSLConfigurationAdvancedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? automountEnabled = null,
    Object? automountMountfstab = null,
    Object? interopEnabled = null,
    Object? interopAppendwindowspath = null,
    Object? systemdEnabled = null,
  }) {
    return _then(_$WSLConfigurationAdvancedImpl(
      automountEnabled: null == automountEnabled
          ? _value.automountEnabled
          : automountEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      automountMountfstab: null == automountMountfstab
          ? _value.automountMountfstab
          : automountMountfstab // ignore: cast_nullable_to_non_nullable
              as bool,
      interopEnabled: null == interopEnabled
          ? _value.interopEnabled
          : interopEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      interopAppendwindowspath: null == interopAppendwindowspath
          ? _value.interopAppendwindowspath
          : interopAppendwindowspath // ignore: cast_nullable_to_non_nullable
              as bool,
      systemdEnabled: null == systemdEnabled
          ? _value.systemdEnabled
          : systemdEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WSLConfigurationAdvancedImpl implements _WSLConfigurationAdvanced {
  const _$WSLConfigurationAdvancedImpl(
      {this.automountEnabled = true,
      this.automountMountfstab = true,
      this.interopEnabled = true,
      this.interopAppendwindowspath = true,
      this.systemdEnabled = false});

  factory _$WSLConfigurationAdvancedImpl.fromJson(Map<String, dynamic> json) =>
      _$$WSLConfigurationAdvancedImplFromJson(json);

  @override
  @JsonKey()
  final bool automountEnabled;
  @override
  @JsonKey()
  final bool automountMountfstab;
  @override
  @JsonKey()
  final bool interopEnabled;
  @override
  @JsonKey()
  final bool interopAppendwindowspath;
  @override
  @JsonKey()
  final bool systemdEnabled;

  @override
  String toString() {
    return 'WSLConfigurationAdvanced(automountEnabled: $automountEnabled, automountMountfstab: $automountMountfstab, interopEnabled: $interopEnabled, interopAppendwindowspath: $interopAppendwindowspath, systemdEnabled: $systemdEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WSLConfigurationAdvancedImpl &&
            (identical(other.automountEnabled, automountEnabled) ||
                other.automountEnabled == automountEnabled) &&
            (identical(other.automountMountfstab, automountMountfstab) ||
                other.automountMountfstab == automountMountfstab) &&
            (identical(other.interopEnabled, interopEnabled) ||
                other.interopEnabled == interopEnabled) &&
            (identical(
                    other.interopAppendwindowspath, interopAppendwindowspath) ||
                other.interopAppendwindowspath == interopAppendwindowspath) &&
            (identical(other.systemdEnabled, systemdEnabled) ||
                other.systemdEnabled == systemdEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      automountEnabled,
      automountMountfstab,
      interopEnabled,
      interopAppendwindowspath,
      systemdEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WSLConfigurationAdvancedImplCopyWith<_$WSLConfigurationAdvancedImpl>
      get copyWith => __$$WSLConfigurationAdvancedImplCopyWithImpl<
          _$WSLConfigurationAdvancedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WSLConfigurationAdvancedImplToJson(
      this,
    );
  }
}

abstract class _WSLConfigurationAdvanced implements WSLConfigurationAdvanced {
  const factory _WSLConfigurationAdvanced(
      {final bool automountEnabled,
      final bool automountMountfstab,
      final bool interopEnabled,
      final bool interopAppendwindowspath,
      final bool systemdEnabled}) = _$WSLConfigurationAdvancedImpl;

  factory _WSLConfigurationAdvanced.fromJson(Map<String, dynamic> json) =
      _$WSLConfigurationAdvancedImpl.fromJson;

  @override
  bool get automountEnabled;
  @override
  bool get automountMountfstab;
  @override
  bool get interopEnabled;
  @override
  bool get interopAppendwindowspath;
  @override
  bool get systemdEnabled;
  @override
  @JsonKey(ignore: true)
  _$$WSLConfigurationAdvancedImplCopyWith<_$WSLConfigurationAdvancedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WSLSetupOptions _$WSLSetupOptionsFromJson(Map<String, dynamic> json) {
  return _WSLSetupOptions.fromJson(json);
}

/// @nodoc
mixin _$WSLSetupOptions {
  bool get installLanguageSupportPackages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WSLSetupOptionsCopyWith<WSLSetupOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WSLSetupOptionsCopyWith<$Res> {
  factory $WSLSetupOptionsCopyWith(
          WSLSetupOptions value, $Res Function(WSLSetupOptions) then) =
      _$WSLSetupOptionsCopyWithImpl<$Res, WSLSetupOptions>;
  @useResult
  $Res call({bool installLanguageSupportPackages});
}

/// @nodoc
class _$WSLSetupOptionsCopyWithImpl<$Res, $Val extends WSLSetupOptions>
    implements $WSLSetupOptionsCopyWith<$Res> {
  _$WSLSetupOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? installLanguageSupportPackages = null,
  }) {
    return _then(_value.copyWith(
      installLanguageSupportPackages: null == installLanguageSupportPackages
          ? _value.installLanguageSupportPackages
          : installLanguageSupportPackages // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WSLSetupOptionsImplCopyWith<$Res>
    implements $WSLSetupOptionsCopyWith<$Res> {
  factory _$$WSLSetupOptionsImplCopyWith(_$WSLSetupOptionsImpl value,
          $Res Function(_$WSLSetupOptionsImpl) then) =
      __$$WSLSetupOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool installLanguageSupportPackages});
}

/// @nodoc
class __$$WSLSetupOptionsImplCopyWithImpl<$Res>
    extends _$WSLSetupOptionsCopyWithImpl<$Res, _$WSLSetupOptionsImpl>
    implements _$$WSLSetupOptionsImplCopyWith<$Res> {
  __$$WSLSetupOptionsImplCopyWithImpl(
      _$WSLSetupOptionsImpl _value, $Res Function(_$WSLSetupOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? installLanguageSupportPackages = null,
  }) {
    return _then(_$WSLSetupOptionsImpl(
      installLanguageSupportPackages: null == installLanguageSupportPackages
          ? _value.installLanguageSupportPackages
          : installLanguageSupportPackages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WSLSetupOptionsImpl implements _WSLSetupOptions {
  const _$WSLSetupOptionsImpl({this.installLanguageSupportPackages = true});

  factory _$WSLSetupOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WSLSetupOptionsImplFromJson(json);

  @override
  @JsonKey()
  final bool installLanguageSupportPackages;

  @override
  String toString() {
    return 'WSLSetupOptions(installLanguageSupportPackages: $installLanguageSupportPackages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WSLSetupOptionsImpl &&
            (identical(other.installLanguageSupportPackages,
                    installLanguageSupportPackages) ||
                other.installLanguageSupportPackages ==
                    installLanguageSupportPackages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, installLanguageSupportPackages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WSLSetupOptionsImplCopyWith<_$WSLSetupOptionsImpl> get copyWith =>
      __$$WSLSetupOptionsImplCopyWithImpl<_$WSLSetupOptionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WSLSetupOptionsImplToJson(
      this,
    );
  }
}

abstract class _WSLSetupOptions implements WSLSetupOptions {
  const factory _WSLSetupOptions({final bool installLanguageSupportPackages}) =
      _$WSLSetupOptionsImpl;

  factory _WSLSetupOptions.fromJson(Map<String, dynamic> json) =
      _$WSLSetupOptionsImpl.fromJson;

  @override
  bool get installLanguageSupportPackages;
  @override
  @JsonKey(ignore: true)
  _$$WSLSetupOptionsImplCopyWith<_$WSLSetupOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskProgress _$TaskProgressFromJson(Map<String, dynamic> json) {
  return _TaskProgress.fromJson(json);
}

/// @nodoc
mixin _$TaskProgress {
  String get label => throw _privateConstructorUsedError;
  int get done => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskProgressCopyWith<TaskProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskProgressCopyWith<$Res> {
  factory $TaskProgressCopyWith(
          TaskProgress value, $Res Function(TaskProgress) then) =
      _$TaskProgressCopyWithImpl<$Res, TaskProgress>;
  @useResult
  $Res call({String label, int done, int total});
}

/// @nodoc
class _$TaskProgressCopyWithImpl<$Res, $Val extends TaskProgress>
    implements $TaskProgressCopyWith<$Res> {
  _$TaskProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? done = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskProgressImplCopyWith<$Res>
    implements $TaskProgressCopyWith<$Res> {
  factory _$$TaskProgressImplCopyWith(
          _$TaskProgressImpl value, $Res Function(_$TaskProgressImpl) then) =
      __$$TaskProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int done, int total});
}

/// @nodoc
class __$$TaskProgressImplCopyWithImpl<$Res>
    extends _$TaskProgressCopyWithImpl<$Res, _$TaskProgressImpl>
    implements _$$TaskProgressImplCopyWith<$Res> {
  __$$TaskProgressImplCopyWithImpl(
      _$TaskProgressImpl _value, $Res Function(_$TaskProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? done = null,
    Object? total = null,
  }) {
    return _then(_$TaskProgressImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskProgressImpl implements _TaskProgress {
  const _$TaskProgressImpl({this.label = '', this.done = 0, this.total = 0});

  factory _$TaskProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskProgressImplFromJson(json);

  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final int done;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'TaskProgress(label: $label, done: $done, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskProgressImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, done, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskProgressImplCopyWith<_$TaskProgressImpl> get copyWith =>
      __$$TaskProgressImplCopyWithImpl<_$TaskProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskProgressImplToJson(
      this,
    );
  }
}

abstract class _TaskProgress implements TaskProgress {
  const factory _TaskProgress(
      {final String label,
      final int done,
      final int total}) = _$TaskProgressImpl;

  factory _TaskProgress.fromJson(Map<String, dynamic> json) =
      _$TaskProgressImpl.fromJson;

  @override
  String get label;
  @override
  int get done;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$TaskProgressImplCopyWith<_$TaskProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get id => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  TaskStatus get status => throw _privateConstructorUsedError;
  TaskProgress get progress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String id,
      String kind,
      String summary,
      TaskStatus status,
      TaskProgress progress});

  $TaskProgressCopyWith<$Res> get progress;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? summary = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TaskProgress,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskProgressCopyWith<$Res> get progress {
    return $TaskProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String kind,
      String summary,
      TaskStatus status,
      TaskProgress progress});

  @override
  $TaskProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? summary = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as TaskProgress,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.id,
      required this.kind,
      required this.summary,
      required this.status,
      required this.progress});

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final String id;
  @override
  final String kind;
  @override
  final String summary;
  @override
  final TaskStatus status;
  @override
  final TaskProgress progress;

  @override
  String toString() {
    return 'Task(id: $id, kind: $kind, summary: $summary, status: $status, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, kind, summary, status, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final String id,
      required final String kind,
      required final String summary,
      required final TaskStatus status,
      required final TaskProgress progress}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String get id;
  @override
  String get kind;
  @override
  String get summary;
  @override
  TaskStatus get status;
  @override
  TaskProgress get progress;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Change _$ChangeFromJson(Map<String, dynamic> json) {
  return _Change.fromJson(json);
}

/// @nodoc
mixin _$Change {
  String get id => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  TaskStatus get status => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;
  bool get ready => throw _privateConstructorUsedError;
  String? get err => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeCopyWith<Change> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCopyWith<$Res> {
  factory $ChangeCopyWith(Change value, $Res Function(Change) then) =
      _$ChangeCopyWithImpl<$Res, Change>;
  @useResult
  $Res call(
      {String id,
      String kind,
      String summary,
      TaskStatus status,
      List<Task> tasks,
      bool ready,
      String? err,
      dynamic data});
}

/// @nodoc
class _$ChangeCopyWithImpl<$Res, $Val extends Change>
    implements $ChangeCopyWith<$Res> {
  _$ChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? summary = null,
    Object? status = null,
    Object? tasks = null,
    Object? ready = null,
    Object? err = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      err: freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeImplCopyWith<$Res> implements $ChangeCopyWith<$Res> {
  factory _$$ChangeImplCopyWith(
          _$ChangeImpl value, $Res Function(_$ChangeImpl) then) =
      __$$ChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String kind,
      String summary,
      TaskStatus status,
      List<Task> tasks,
      bool ready,
      String? err,
      dynamic data});
}

/// @nodoc
class __$$ChangeImplCopyWithImpl<$Res>
    extends _$ChangeCopyWithImpl<$Res, _$ChangeImpl>
    implements _$$ChangeImplCopyWith<$Res> {
  __$$ChangeImplCopyWithImpl(
      _$ChangeImpl _value, $Res Function(_$ChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? summary = null,
    Object? status = null,
    Object? tasks = null,
    Object? ready = null,
    Object? err = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ChangeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      err: freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeImpl implements _Change {
  const _$ChangeImpl(
      {required this.id,
      required this.kind,
      required this.summary,
      required this.status,
      required final List<Task> tasks,
      required this.ready,
      this.err,
      this.data})
      : _tasks = tasks;

  factory _$ChangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeImplFromJson(json);

  @override
  final String id;
  @override
  final String kind;
  @override
  final String summary;
  @override
  final TaskStatus status;
  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final bool ready;
  @override
  final String? err;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'Change(id: $id, kind: $kind, summary: $summary, status: $status, tasks: $tasks, ready: $ready, err: $err, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.ready, ready) || other.ready == ready) &&
            (identical(other.err, err) || other.err == err) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      kind,
      summary,
      status,
      const DeepCollectionEquality().hash(_tasks),
      ready,
      err,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImplCopyWith<_$ChangeImpl> get copyWith =>
      __$$ChangeImplCopyWithImpl<_$ChangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeImplToJson(
      this,
    );
  }
}

abstract class _Change implements Change {
  const factory _Change(
      {required final String id,
      required final String kind,
      required final String summary,
      required final TaskStatus status,
      required final List<Task> tasks,
      required final bool ready,
      final String? err,
      final dynamic data}) = _$ChangeImpl;

  factory _Change.fromJson(Map<String, dynamic> json) = _$ChangeImpl.fromJson;

  @override
  String get id;
  @override
  String get kind;
  @override
  String get summary;
  @override
  TaskStatus get status;
  @override
  List<Task> get tasks;
  @override
  bool get ready;
  @override
  String? get err;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ChangeImplCopyWith<_$ChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MirrorCheckResponse _$MirrorCheckResponseFromJson(Map<String, dynamic> json) {
  return _MirrorCheckResponse.fromJson(json);
}

/// @nodoc
mixin _$MirrorCheckResponse {
  String get url => throw _privateConstructorUsedError;
  MirrorCheckStatus get status => throw _privateConstructorUsedError;
  String get output => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MirrorCheckResponseCopyWith<MirrorCheckResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MirrorCheckResponseCopyWith<$Res> {
  factory $MirrorCheckResponseCopyWith(
          MirrorCheckResponse value, $Res Function(MirrorCheckResponse) then) =
      _$MirrorCheckResponseCopyWithImpl<$Res, MirrorCheckResponse>;
  @useResult
  $Res call({String url, MirrorCheckStatus status, String output});
}

/// @nodoc
class _$MirrorCheckResponseCopyWithImpl<$Res, $Val extends MirrorCheckResponse>
    implements $MirrorCheckResponseCopyWith<$Res> {
  _$MirrorCheckResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? status = null,
    Object? output = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MirrorCheckStatus,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MirrorCheckResponseImplCopyWith<$Res>
    implements $MirrorCheckResponseCopyWith<$Res> {
  factory _$$MirrorCheckResponseImplCopyWith(_$MirrorCheckResponseImpl value,
          $Res Function(_$MirrorCheckResponseImpl) then) =
      __$$MirrorCheckResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, MirrorCheckStatus status, String output});
}

/// @nodoc
class __$$MirrorCheckResponseImplCopyWithImpl<$Res>
    extends _$MirrorCheckResponseCopyWithImpl<$Res, _$MirrorCheckResponseImpl>
    implements _$$MirrorCheckResponseImplCopyWith<$Res> {
  __$$MirrorCheckResponseImplCopyWithImpl(_$MirrorCheckResponseImpl _value,
      $Res Function(_$MirrorCheckResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? status = null,
    Object? output = null,
  }) {
    return _then(_$MirrorCheckResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MirrorCheckStatus,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MirrorCheckResponseImpl implements _MirrorCheckResponse {
  const _$MirrorCheckResponseImpl(
      {required this.url, required this.status, required this.output});

  factory _$MirrorCheckResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MirrorCheckResponseImplFromJson(json);

  @override
  final String url;
  @override
  final MirrorCheckStatus status;
  @override
  final String output;

  @override
  String toString() {
    return 'MirrorCheckResponse(url: $url, status: $status, output: $output)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MirrorCheckResponseImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, status, output);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MirrorCheckResponseImplCopyWith<_$MirrorCheckResponseImpl> get copyWith =>
      __$$MirrorCheckResponseImplCopyWithImpl<_$MirrorCheckResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MirrorCheckResponseImplToJson(
      this,
    );
  }
}

abstract class _MirrorCheckResponse implements MirrorCheckResponse {
  const factory _MirrorCheckResponse(
      {required final String url,
      required final MirrorCheckStatus status,
      required final String output}) = _$MirrorCheckResponseImpl;

  factory _MirrorCheckResponse.fromJson(Map<String, dynamic> json) =
      _$MirrorCheckResponseImpl.fromJson;

  @override
  String get url;
  @override
  MirrorCheckStatus get status;
  @override
  String get output;
  @override
  @JsonKey(ignore: true)
  _$$MirrorCheckResponseImplCopyWith<_$MirrorCheckResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MirrorPost _$MirrorPostFromJson(Map<String, dynamic> json) {
  return _MirrorPost.fromJson(json);
}

/// @nodoc
mixin _$MirrorPost {
  String? get elected => throw _privateConstructorUsedError;
  List<String>? get candidates => throw _privateConstructorUsedError;
  String? get staged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MirrorPostCopyWith<MirrorPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MirrorPostCopyWith<$Res> {
  factory $MirrorPostCopyWith(
          MirrorPost value, $Res Function(MirrorPost) then) =
      _$MirrorPostCopyWithImpl<$Res, MirrorPost>;
  @useResult
  $Res call({String? elected, List<String>? candidates, String? staged});
}

/// @nodoc
class _$MirrorPostCopyWithImpl<$Res, $Val extends MirrorPost>
    implements $MirrorPostCopyWith<$Res> {
  _$MirrorPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elected = freezed,
    Object? candidates = freezed,
    Object? staged = freezed,
  }) {
    return _then(_value.copyWith(
      elected: freezed == elected
          ? _value.elected
          : elected // ignore: cast_nullable_to_non_nullable
              as String?,
      candidates: freezed == candidates
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      staged: freezed == staged
          ? _value.staged
          : staged // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MirrorPostImplCopyWith<$Res>
    implements $MirrorPostCopyWith<$Res> {
  factory _$$MirrorPostImplCopyWith(
          _$MirrorPostImpl value, $Res Function(_$MirrorPostImpl) then) =
      __$$MirrorPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? elected, List<String>? candidates, String? staged});
}

/// @nodoc
class __$$MirrorPostImplCopyWithImpl<$Res>
    extends _$MirrorPostCopyWithImpl<$Res, _$MirrorPostImpl>
    implements _$$MirrorPostImplCopyWith<$Res> {
  __$$MirrorPostImplCopyWithImpl(
      _$MirrorPostImpl _value, $Res Function(_$MirrorPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elected = freezed,
    Object? candidates = freezed,
    Object? staged = freezed,
  }) {
    return _then(_$MirrorPostImpl(
      elected: freezed == elected
          ? _value.elected
          : elected // ignore: cast_nullable_to_non_nullable
              as String?,
      candidates: freezed == candidates
          ? _value._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      staged: freezed == staged
          ? _value.staged
          : staged // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MirrorPostImpl implements _MirrorPost {
  const _$MirrorPostImpl(
      {this.elected, final List<String>? candidates, this.staged})
      : _candidates = candidates;

  factory _$MirrorPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$MirrorPostImplFromJson(json);

  @override
  final String? elected;
  final List<String>? _candidates;
  @override
  List<String>? get candidates {
    final value = _candidates;
    if (value == null) return null;
    if (_candidates is EqualUnmodifiableListView) return _candidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? staged;

  @override
  String toString() {
    return 'MirrorPost(elected: $elected, candidates: $candidates, staged: $staged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MirrorPostImpl &&
            (identical(other.elected, elected) || other.elected == elected) &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates) &&
            (identical(other.staged, staged) || other.staged == staged));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, elected,
      const DeepCollectionEquality().hash(_candidates), staged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MirrorPostImplCopyWith<_$MirrorPostImpl> get copyWith =>
      __$$MirrorPostImplCopyWithImpl<_$MirrorPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MirrorPostImplToJson(
      this,
    );
  }
}

abstract class _MirrorPost implements MirrorPost {
  const factory _MirrorPost(
      {final String? elected,
      final List<String>? candidates,
      final String? staged}) = _$MirrorPostImpl;

  factory _MirrorPost.fromJson(Map<String, dynamic> json) =
      _$MirrorPostImpl.fromJson;

  @override
  String? get elected;
  @override
  List<String>? get candidates;
  @override
  String? get staged;
  @override
  @JsonKey(ignore: true)
  _$$MirrorPostImplCopyWith<_$MirrorPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MirrorGet _$MirrorGetFromJson(Map<String, dynamic> json) {
  return _MirrorGet.fromJson(json);
}

/// @nodoc
mixin _$MirrorGet {
  bool get relevant => throw _privateConstructorUsedError;
  String? get elected => throw _privateConstructorUsedError;
  List<String> get candidates => throw _privateConstructorUsedError;
  String? get staged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MirrorGetCopyWith<MirrorGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MirrorGetCopyWith<$Res> {
  factory $MirrorGetCopyWith(MirrorGet value, $Res Function(MirrorGet) then) =
      _$MirrorGetCopyWithImpl<$Res, MirrorGet>;
  @useResult
  $Res call(
      {bool relevant,
      String? elected,
      List<String> candidates,
      String? staged});
}

/// @nodoc
class _$MirrorGetCopyWithImpl<$Res, $Val extends MirrorGet>
    implements $MirrorGetCopyWith<$Res> {
  _$MirrorGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relevant = null,
    Object? elected = freezed,
    Object? candidates = null,
    Object? staged = freezed,
  }) {
    return _then(_value.copyWith(
      relevant: null == relevant
          ? _value.relevant
          : relevant // ignore: cast_nullable_to_non_nullable
              as bool,
      elected: freezed == elected
          ? _value.elected
          : elected // ignore: cast_nullable_to_non_nullable
              as String?,
      candidates: null == candidates
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      staged: freezed == staged
          ? _value.staged
          : staged // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MirrorGetImplCopyWith<$Res>
    implements $MirrorGetCopyWith<$Res> {
  factory _$$MirrorGetImplCopyWith(
          _$MirrorGetImpl value, $Res Function(_$MirrorGetImpl) then) =
      __$$MirrorGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool relevant,
      String? elected,
      List<String> candidates,
      String? staged});
}

/// @nodoc
class __$$MirrorGetImplCopyWithImpl<$Res>
    extends _$MirrorGetCopyWithImpl<$Res, _$MirrorGetImpl>
    implements _$$MirrorGetImplCopyWith<$Res> {
  __$$MirrorGetImplCopyWithImpl(
      _$MirrorGetImpl _value, $Res Function(_$MirrorGetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relevant = null,
    Object? elected = freezed,
    Object? candidates = null,
    Object? staged = freezed,
  }) {
    return _then(_$MirrorGetImpl(
      relevant: null == relevant
          ? _value.relevant
          : relevant // ignore: cast_nullable_to_non_nullable
              as bool,
      elected: freezed == elected
          ? _value.elected
          : elected // ignore: cast_nullable_to_non_nullable
              as String?,
      candidates: null == candidates
          ? _value._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      staged: freezed == staged
          ? _value.staged
          : staged // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MirrorGetImpl implements _MirrorGet {
  const _$MirrorGetImpl(
      {required this.relevant,
      required this.elected,
      required final List<String> candidates,
      required this.staged})
      : _candidates = candidates;

  factory _$MirrorGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$MirrorGetImplFromJson(json);

  @override
  final bool relevant;
  @override
  final String? elected;
  final List<String> _candidates;
  @override
  List<String> get candidates {
    if (_candidates is EqualUnmodifiableListView) return _candidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candidates);
  }

  @override
  final String? staged;

  @override
  String toString() {
    return 'MirrorGet(relevant: $relevant, elected: $elected, candidates: $candidates, staged: $staged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MirrorGetImpl &&
            (identical(other.relevant, relevant) ||
                other.relevant == relevant) &&
            (identical(other.elected, elected) || other.elected == elected) &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates) &&
            (identical(other.staged, staged) || other.staged == staged));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, relevant, elected,
      const DeepCollectionEquality().hash(_candidates), staged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MirrorGetImplCopyWith<_$MirrorGetImpl> get copyWith =>
      __$$MirrorGetImplCopyWithImpl<_$MirrorGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MirrorGetImplToJson(
      this,
    );
  }
}

abstract class _MirrorGet implements MirrorGet {
  const factory _MirrorGet(
      {required final bool relevant,
      required final String? elected,
      required final List<String> candidates,
      required final String? staged}) = _$MirrorGetImpl;

  factory _MirrorGet.fromJson(Map<String, dynamic> json) =
      _$MirrorGetImpl.fromJson;

  @override
  bool get relevant;
  @override
  String? get elected;
  @override
  List<String> get candidates;
  @override
  String? get staged;
  @override
  @JsonKey(ignore: true)
  _$$MirrorGetImplCopyWith<_$MirrorGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdConnectionInfo _$AdConnectionInfoFromJson(Map<String, dynamic> json) {
  return _AdConnectionInfo.fromJson(json);
}

/// @nodoc
mixin _$AdConnectionInfo {
  String get adminName => throw _privateConstructorUsedError;
  String get domainName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdConnectionInfoCopyWith<AdConnectionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdConnectionInfoCopyWith<$Res> {
  factory $AdConnectionInfoCopyWith(
          AdConnectionInfo value, $Res Function(AdConnectionInfo) then) =
      _$AdConnectionInfoCopyWithImpl<$Res, AdConnectionInfo>;
  @useResult
  $Res call({String adminName, String domainName, String password});
}

/// @nodoc
class _$AdConnectionInfoCopyWithImpl<$Res, $Val extends AdConnectionInfo>
    implements $AdConnectionInfoCopyWith<$Res> {
  _$AdConnectionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminName = null,
    Object? domainName = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      adminName: null == adminName
          ? _value.adminName
          : adminName // ignore: cast_nullable_to_non_nullable
              as String,
      domainName: null == domainName
          ? _value.domainName
          : domainName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdConnectionInfoImplCopyWith<$Res>
    implements $AdConnectionInfoCopyWith<$Res> {
  factory _$$AdConnectionInfoImplCopyWith(_$AdConnectionInfoImpl value,
          $Res Function(_$AdConnectionInfoImpl) then) =
      __$$AdConnectionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String adminName, String domainName, String password});
}

/// @nodoc
class __$$AdConnectionInfoImplCopyWithImpl<$Res>
    extends _$AdConnectionInfoCopyWithImpl<$Res, _$AdConnectionInfoImpl>
    implements _$$AdConnectionInfoImplCopyWith<$Res> {
  __$$AdConnectionInfoImplCopyWithImpl(_$AdConnectionInfoImpl _value,
      $Res Function(_$AdConnectionInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminName = null,
    Object? domainName = null,
    Object? password = null,
  }) {
    return _then(_$AdConnectionInfoImpl(
      adminName: null == adminName
          ? _value.adminName
          : adminName // ignore: cast_nullable_to_non_nullable
              as String,
      domainName: null == domainName
          ? _value.domainName
          : domainName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdConnectionInfoImpl implements _AdConnectionInfo {
  const _$AdConnectionInfoImpl(
      {this.adminName = '', this.domainName = '', this.password = ''});

  factory _$AdConnectionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdConnectionInfoImplFromJson(json);

  @override
  @JsonKey()
  final String adminName;
  @override
  @JsonKey()
  final String domainName;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'AdConnectionInfo(adminName: $adminName, domainName: $domainName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdConnectionInfoImpl &&
            (identical(other.adminName, adminName) ||
                other.adminName == adminName) &&
            (identical(other.domainName, domainName) ||
                other.domainName == domainName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adminName, domainName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdConnectionInfoImplCopyWith<_$AdConnectionInfoImpl> get copyWith =>
      __$$AdConnectionInfoImplCopyWithImpl<_$AdConnectionInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdConnectionInfoImplToJson(
      this,
    );
  }
}

abstract class _AdConnectionInfo implements AdConnectionInfo {
  const factory _AdConnectionInfo(
      {final String adminName,
      final String domainName,
      final String password}) = _$AdConnectionInfoImpl;

  factory _AdConnectionInfo.fromJson(Map<String, dynamic> json) =
      _$AdConnectionInfoImpl.fromJson;

  @override
  String get adminName;
  @override
  String get domainName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AdConnectionInfoImplCopyWith<_$AdConnectionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

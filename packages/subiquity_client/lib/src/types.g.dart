// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorReportRef _$ErrorReportRefFromJson(Map<String, dynamic> json) =>
    _ErrorReportRef(
      state: $enumDecode(_$ErrorReportStateEnumMap, json['state']),
      base: json['base'] as String,
      kind: $enumDecode(_$ErrorReportKindEnumMap, json['kind']),
      seen: json['seen'] as bool,
      oopsId: json['oops_id'] as String?,
    );

Map<String, dynamic> _$ErrorReportRefToJson(_ErrorReportRef instance) =>
    <String, dynamic>{
      'state': _$ErrorReportStateEnumMap[instance.state]!,
      'base': instance.base,
      'kind': _$ErrorReportKindEnumMap[instance.kind]!,
      'seen': instance.seen,
      'oops_id': instance.oopsId,
    };

const _$ErrorReportStateEnumMap = {
  ErrorReportState.INCOMPLETE: 'INCOMPLETE',
  ErrorReportState.LOADING: 'LOADING',
  ErrorReportState.DONE: 'DONE',
  ErrorReportState.ERROR_GENERATING: 'ERROR_GENERATING',
  ErrorReportState.ERROR_LOADING: 'ERROR_LOADING',
};

const _$ErrorReportKindEnumMap = {
  ErrorReportKind.BLOCK_PROBE_FAIL: 'BLOCK_PROBE_FAIL',
  ErrorReportKind.DISK_PROBE_FAIL: 'DISK_PROBE_FAIL',
  ErrorReportKind.INSTALL_FAIL: 'INSTALL_FAIL',
  ErrorReportKind.UI: 'UI',
  ErrorReportKind.NETWORK_FAIL: 'NETWORK_FAIL',
  ErrorReportKind.NETWORK_CLIENT_FAIL: 'NETWORK_CLIENT_FAIL',
  ErrorReportKind.SERVER_REQUEST_FAIL: 'SERVER_REQUEST_FAIL',
  ErrorReportKind.UNKNOWN: 'UNKNOWN',
};

_NonReportableError _$NonReportableErrorFromJson(Map<String, dynamic> json) =>
    _NonReportableError(
      cause: json['cause'] as String,
      message: json['message'] as String,
      details: json['details'] as String?,
    );

Map<String, dynamic> _$NonReportableErrorToJson(_NonReportableError instance) =>
    <String, dynamic>{
      'cause': instance.cause,
      'message': instance.message,
      'details': instance.details,
    };

_ApplicationStatus _$ApplicationStatusFromJson(Map<String, dynamic> json) =>
    _ApplicationStatus(
      state: $enumDecode(_$ApplicationStateEnumMap, json['state']),
      confirmingTty: json['confirming_tty'] as String,
      error: json['error'] == null
          ? null
          : ErrorReportRef.fromJson(json['error'] as Map<String, dynamic>),
      nonreportableError: json['nonreportable_error'] == null
          ? null
          : NonReportableError.fromJson(
              json['nonreportable_error'] as Map<String, dynamic>),
      cloudInitOk: json['cloud_init_ok'] as bool?,
      interactive: json['interactive'] as bool?,
      echoSyslogId: json['echo_syslog_id'] as String,
      logSyslogId: json['log_syslog_id'] as String,
      eventSyslogId: json['event_syslog_id'] as String,
    );

Map<String, dynamic> _$ApplicationStatusToJson(_ApplicationStatus instance) =>
    <String, dynamic>{
      'state': _$ApplicationStateEnumMap[instance.state]!,
      'confirming_tty': instance.confirmingTty,
      'error': instance.error?.toJson(),
      'nonreportable_error': instance.nonreportableError?.toJson(),
      'cloud_init_ok': instance.cloudInitOk,
      'interactive': instance.interactive,
      'echo_syslog_id': instance.echoSyslogId,
      'log_syslog_id': instance.logSyslogId,
      'event_syslog_id': instance.eventSyslogId,
    };

const _$ApplicationStateEnumMap = {
  ApplicationState.STARTING_UP: 'STARTING_UP',
  ApplicationState.CLOUD_INIT_WAIT: 'CLOUD_INIT_WAIT',
  ApplicationState.EARLY_COMMANDS: 'EARLY_COMMANDS',
  ApplicationState.NEEDS_CONFIRMATION: 'NEEDS_CONFIRMATION',
  ApplicationState.WAITING: 'WAITING',
  ApplicationState.RUNNING: 'RUNNING',
  ApplicationState.UU_RUNNING: 'UU_RUNNING',
  ApplicationState.LATE_COMMANDS: 'LATE_COMMANDS',
  ApplicationState.DONE: 'DONE',
  ApplicationState.ERROR: 'ERROR',
  ApplicationState.EXITED: 'EXITED',
};

_KeyFingerprint _$KeyFingerprintFromJson(Map<String, dynamic> json) =>
    _KeyFingerprint(
      keytype: json['keytype'] as String,
      fingerprint: json['fingerprint'] as String,
    );

Map<String, dynamic> _$KeyFingerprintToJson(_KeyFingerprint instance) =>
    <String, dynamic>{
      'keytype': instance.keytype,
      'fingerprint': instance.fingerprint,
    };

_LiveSessionSSHInfo _$LiveSessionSSHInfoFromJson(Map<String, dynamic> json) =>
    _LiveSessionSSHInfo(
      username: json['username'] as String,
      passwordKind: $enumDecode(_$PasswordKindEnumMap, json['password_kind']),
      password: json['password'] as String?,
      authorizedKeyFingerprints:
          (json['authorized_key_fingerprints'] as List<dynamic>)
              .map((e) => KeyFingerprint.fromJson(e as Map<String, dynamic>))
              .toList(),
      ips: (json['ips'] as List<dynamic>).map((e) => e as String).toList(),
      hostKeyFingerprints: (json['host_key_fingerprints'] as List<dynamic>)
          .map((e) => KeyFingerprint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LiveSessionSSHInfoToJson(_LiveSessionSSHInfo instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password_kind': _$PasswordKindEnumMap[instance.passwordKind]!,
      'password': instance.password,
      'authorized_key_fingerprints':
          instance.authorizedKeyFingerprints.map((e) => e.toJson()).toList(),
      'ips': instance.ips,
      'host_key_fingerprints':
          instance.hostKeyFingerprints.map((e) => e.toJson()).toList(),
    };

const _$PasswordKindEnumMap = {
  PasswordKind.NONE: 'NONE',
  PasswordKind.KNOWN: 'KNOWN',
  PasswordKind.UNKNOWN: 'UNKNOWN',
};

_RefreshStatus _$RefreshStatusFromJson(Map<String, dynamic> json) =>
    _RefreshStatus(
      availability:
          $enumDecode(_$RefreshCheckStateEnumMap, json['availability']),
      currentSnapVersion: json['current_snap_version'] as String? ?? '',
      newSnapVersion: json['new_snap_version'] as String? ?? '',
    );

Map<String, dynamic> _$RefreshStatusToJson(_RefreshStatus instance) =>
    <String, dynamic>{
      'availability': _$RefreshCheckStateEnumMap[instance.availability]!,
      'current_snap_version': instance.currentSnapVersion,
      'new_snap_version': instance.newSnapVersion,
    };

const _$RefreshCheckStateEnumMap = {
  RefreshCheckState.UNKNOWN: 'UNKNOWN',
  RefreshCheckState.AVAILABLE: 'AVAILABLE',
  RefreshCheckState.UNAVAILABLE: 'UNAVAILABLE',
};

StepPressKey _$StepPressKeyFromJson(Map<String, dynamic> json) => StepPressKey(
      symbols:
          (json['symbols'] as List<dynamic>).map((e) => e as String).toList(),
      keycodes: const JsonMapConverter().fromJson(json['keycodes'] as List),
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$StepPressKeyToJson(StepPressKey instance) =>
    <String, dynamic>{
      'symbols': instance.symbols,
      'keycodes': const JsonMapConverter().toJson(instance.keycodes),
      r'$type': instance.$type,
    };

StepKeyPresent _$StepKeyPresentFromJson(Map<String, dynamic> json) =>
    StepKeyPresent(
      symbol: json['symbol'] as String,
      yes: json['yes'] as String,
      no: json['no'] as String,
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$StepKeyPresentToJson(StepKeyPresent instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'yes': instance.yes,
      'no': instance.no,
      r'$type': instance.$type,
    };

StepResult _$StepResultFromJson(Map<String, dynamic> json) => StepResult(
      layout: json['layout'] as String,
      variant: json['variant'] as String,
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$StepResultToJson(StepResult instance) =>
    <String, dynamic>{
      'layout': instance.layout,
      'variant': instance.variant,
      r'$type': instance.$type,
    };

_KeyboardSetting _$KeyboardSettingFromJson(Map<String, dynamic> json) =>
    _KeyboardSetting(
      layout: json['layout'] as String,
      variant: json['variant'] as String? ?? '',
      toggle: json['toggle'] as String?,
    );

Map<String, dynamic> _$KeyboardSettingToJson(_KeyboardSetting instance) =>
    <String, dynamic>{
      'layout': instance.layout,
      'variant': instance.variant,
      'toggle': instance.toggle,
    };

_KeyboardVariant _$KeyboardVariantFromJson(Map<String, dynamic> json) =>
    _KeyboardVariant(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$KeyboardVariantToJson(_KeyboardVariant instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

_KeyboardLayout _$KeyboardLayoutFromJson(Map<String, dynamic> json) =>
    _KeyboardLayout(
      code: json['code'] as String,
      name: json['name'] as String,
      variants: (json['variants'] as List<dynamic>)
          .map((e) => KeyboardVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$KeyboardLayoutToJson(_KeyboardLayout instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'variants': instance.variants.map((e) => e.toJson()).toList(),
    };

_KeyboardSetup _$KeyboardSetupFromJson(Map<String, dynamic> json) =>
    _KeyboardSetup(
      setting:
          KeyboardSetting.fromJson(json['setting'] as Map<String, dynamic>),
      layouts: (json['layouts'] as List<dynamic>)
          .map((e) => KeyboardLayout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$KeyboardSetupToJson(_KeyboardSetup instance) =>
    <String, dynamic>{
      'setting': instance.setting.toJson(),
      'layouts': instance.layouts.map((e) => e.toJson()).toList(),
    };

_SourceSelection _$SourceSelectionFromJson(Map<String, dynamic> json) =>
    _SourceSelection(
      name: json['name'] as String,
      description: json['description'] as String,
      id: json['id'] as String,
      size: (json['size'] as num).toInt(),
      variant: json['variant'] as String,
      isDefault: json['default'] as bool,
    );

Map<String, dynamic> _$SourceSelectionToJson(_SourceSelection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'id': instance.id,
      'size': instance.size,
      'variant': instance.variant,
      'default': instance.isDefault,
    };

_SourceSelectionAndSetting _$SourceSelectionAndSettingFromJson(
        Map<String, dynamic> json) =>
    _SourceSelectionAndSetting(
      sources: (json['sources'] as List<dynamic>)
          .map((e) => SourceSelection.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentId: json['current_id'] as String,
      searchDrivers: json['search_drivers'] as bool,
    );

Map<String, dynamic> _$SourceSelectionAndSettingToJson(
        _SourceSelectionAndSetting instance) =>
    <String, dynamic>{
      'sources': instance.sources.map((e) => e.toJson()).toList(),
      'current_id': instance.currentId,
      'search_drivers': instance.searchDrivers,
    };

_ZdevInfo _$ZdevInfoFromJson(Map<String, dynamic> json) => _ZdevInfo(
      id: json['id'] as String,
      type: json['type'] as String,
      on: json['on'] as bool,
      exists: json['exists'] as bool,
      pers: json['pers'] as bool,
      auto: json['auto'] as bool,
      failed: json['failed'] as bool,
      names: json['names'] as String,
    );

Map<String, dynamic> _$ZdevInfoToJson(_ZdevInfo instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'on': instance.on,
      'exists': instance.exists,
      'pers': instance.pers,
      'auto': instance.auto,
      'failed': instance.failed,
      'names': instance.names,
    };

_NetworkStatus _$NetworkStatusFromJson(Map<String, dynamic> json) =>
    _NetworkStatus(
      devices: (json['devices'] as List<dynamic>)
          .map((e) => NetDevInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      wlanSupportInstallState: $enumDecode(
          _$PackageInstallStateEnumMap, json['wlan_support_install_state']),
    );

Map<String, dynamic> _$NetworkStatusToJson(_NetworkStatus instance) =>
    <String, dynamic>{
      'devices': instance.devices.map((e) => e.toJson()).toList(),
      'wlan_support_install_state':
          _$PackageInstallStateEnumMap[instance.wlanSupportInstallState]!,
    };

const _$PackageInstallStateEnumMap = {
  PackageInstallState.NOT_NEEDED: 'NOT_NEEDED',
  PackageInstallState.NOT_AVAILABLE: 'NOT_AVAILABLE',
  PackageInstallState.INSTALLING: 'INSTALLING',
  PackageInstallState.FAILED: 'FAILED',
  PackageInstallState.DONE: 'DONE',
};

_IdentityData _$IdentityDataFromJson(Map<String, dynamic> json) =>
    _IdentityData(
      realname: json['realname'] as String? ?? '',
      username: json['username'] as String? ?? '',
      cryptedPassword: json['crypted_password'] as String? ?? '',
      hostname: json['hostname'] as String? ?? '',
    );

Map<String, dynamic> _$IdentityDataToJson(_IdentityData instance) =>
    <String, dynamic>{
      'realname': instance.realname,
      'username': instance.username,
      'crypted_password': instance.cryptedPassword,
      'hostname': instance.hostname,
    };

_SSHData _$SSHDataFromJson(Map<String, dynamic> json) => _SSHData(
      installServer: json['install_server'] as bool,
      allowPw: json['allow_pw'] as bool,
      authorizedKeys: (json['authorized_keys'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SSHDataToJson(_SSHData instance) => <String, dynamic>{
      'install_server': instance.installServer,
      'allow_pw': instance.allowPw,
      'authorized_keys': instance.authorizedKeys,
    };

_SSHIdentity _$SSHIdentityFromJson(Map<String, dynamic> json) => _SSHIdentity(
      keyType: json['key_type'] as String,
      key: json['key'] as String,
      keyComment: json['key_comment'] as String,
      keyFingerprint: json['key_fingerprint'] as String,
    );

Map<String, dynamic> _$SSHIdentityToJson(_SSHIdentity instance) =>
    <String, dynamic>{
      'key_type': instance.keyType,
      'key': instance.key,
      'key_comment': instance.keyComment,
      'key_fingerprint': instance.keyFingerprint,
    };

_SSHFetchIdResponse _$SSHFetchIdResponseFromJson(Map<String, dynamic> json) =>
    _SSHFetchIdResponse(
      status: $enumDecode(_$SSHFetchIdStatusEnumMap, json['status']),
      identities: (json['identities'] as List<dynamic>?)
          ?.map((e) => SSHIdentity.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$SSHFetchIdResponseToJson(_SSHFetchIdResponse instance) =>
    <String, dynamic>{
      'status': _$SSHFetchIdStatusEnumMap[instance.status]!,
      'identities': instance.identities?.map((e) => e.toJson()).toList(),
      'error': instance.error,
    };

const _$SSHFetchIdStatusEnumMap = {
  SSHFetchIdStatus.OK: 'OK',
  SSHFetchIdStatus.IMPORT_ERROR: 'IMPORT_ERROR',
  SSHFetchIdStatus.FINGERPRINT_ERROR: 'FINGERPRINT_ERROR',
};

_ChannelSnapInfo _$ChannelSnapInfoFromJson(Map<String, dynamic> json) =>
    _ChannelSnapInfo(
      channelName: json['channel_name'] as String,
      revision: json['revision'] as String,
      confinement: json['confinement'] as String,
      version: json['version'] as String,
      size: (json['size'] as num).toInt(),
      releasedAt: DateTime.parse(json['released_at'] as String),
    );

Map<String, dynamic> _$ChannelSnapInfoToJson(_ChannelSnapInfo instance) =>
    <String, dynamic>{
      'channel_name': instance.channelName,
      'revision': instance.revision,
      'confinement': instance.confinement,
      'version': instance.version,
      'size': instance.size,
      'released_at': instance.releasedAt.toIso8601String(),
    };

_SnapInfo _$SnapInfoFromJson(Map<String, dynamic> json) => _SnapInfo(
      name: json['name'] as String,
      summary: json['summary'] as String? ?? '',
      publisher: json['publisher'] as String? ?? '',
      verified: json['verified'] as bool? ?? false,
      starred: json['starred'] as bool? ?? false,
      description: json['description'] as String? ?? '',
      confinement: json['confinement'] as String? ?? '',
      license: json['license'] as String? ?? '',
      channels: (json['channels'] as List<dynamic>?)
              ?.map((e) => ChannelSnapInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SnapInfoToJson(_SnapInfo instance) => <String, dynamic>{
      'name': instance.name,
      'summary': instance.summary,
      'publisher': instance.publisher,
      'verified': instance.verified,
      'starred': instance.starred,
      'description': instance.description,
      'confinement': instance.confinement,
      'license': instance.license,
      'channels': instance.channels.map((e) => e.toJson()).toList(),
    };

_DriversResponse _$DriversResponseFromJson(Map<String, dynamic> json) =>
    _DriversResponse(
      install: json['install'] as bool,
      drivers:
          (json['drivers'] as List<dynamic>?)?.map((e) => e as String).toList(),
      localOnly: json['local_only'] as bool,
      searchDrivers: json['search_drivers'] as bool,
    );

Map<String, dynamic> _$DriversResponseToJson(_DriversResponse instance) =>
    <String, dynamic>{
      'install': instance.install,
      'drivers': instance.drivers,
      'local_only': instance.localOnly,
      'search_drivers': instance.searchDrivers,
    };

_OEMResponse _$OEMResponseFromJson(Map<String, dynamic> json) => _OEMResponse(
      metapackages: (json['metapackages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$OEMResponseToJson(_OEMResponse instance) =>
    <String, dynamic>{
      'metapackages': instance.metapackages,
    };

_CodecsData _$CodecsDataFromJson(Map<String, dynamic> json) => _CodecsData(
      install: json['install'] as bool,
    );

Map<String, dynamic> _$CodecsDataToJson(_CodecsData instance) =>
    <String, dynamic>{
      'install': instance.install,
    };

_DriversPayload _$DriversPayloadFromJson(Map<String, dynamic> json) =>
    _DriversPayload(
      install: json['install'] as bool,
    );

Map<String, dynamic> _$DriversPayloadToJson(_DriversPayload instance) =>
    <String, dynamic>{
      'install': instance.install,
    };

_SnapSelection _$SnapSelectionFromJson(Map<String, dynamic> json) =>
    _SnapSelection(
      name: json['name'] as String,
      channel: json['channel'] as String,
      classic: json['classic'] as bool? ?? false,
    );

Map<String, dynamic> _$SnapSelectionToJson(_SnapSelection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'channel': instance.channel,
      'classic': instance.classic,
    };

_SnapListResponse _$SnapListResponseFromJson(Map<String, dynamic> json) =>
    _SnapListResponse(
      status: $enumDecode(_$SnapCheckStateEnumMap, json['status']),
      snaps: (json['snaps'] as List<dynamic>?)
              ?.map((e) => SnapInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selections: (json['selections'] as List<dynamic>?)
              ?.map((e) => SnapSelection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SnapListResponseToJson(_SnapListResponse instance) =>
    <String, dynamic>{
      'status': _$SnapCheckStateEnumMap[instance.status]!,
      'snaps': instance.snaps.map((e) => e.toJson()).toList(),
      'selections': instance.selections.map((e) => e.toJson()).toList(),
    };

const _$SnapCheckStateEnumMap = {
  SnapCheckState.FAILED: 'FAILED',
  SnapCheckState.LOADING: 'LOADING',
  SnapCheckState.DONE: 'DONE',
};

_TimeZoneInfo _$TimeZoneInfoFromJson(Map<String, dynamic> json) =>
    _TimeZoneInfo(
      timezone: json['timezone'] as String,
      fromGeoip: json['from_geoip'] as bool,
    );

Map<String, dynamic> _$TimeZoneInfoToJson(_TimeZoneInfo instance) =>
    <String, dynamic>{
      'timezone': instance.timezone,
      'from_geoip': instance.fromGeoip,
    };

_UbuntuProInfo _$UbuntuProInfoFromJson(Map<String, dynamic> json) =>
    _UbuntuProInfo(
      token: json['token'] as String,
    );

Map<String, dynamic> _$UbuntuProInfoToJson(_UbuntuProInfo instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_UbuntuProResponse _$UbuntuProResponseFromJson(Map<String, dynamic> json) =>
    _UbuntuProResponse(
      token: json['token'] as String,
      hasNetwork: json['has_network'] as bool,
    );

Map<String, dynamic> _$UbuntuProResponseToJson(_UbuntuProResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'has_network': instance.hasNetwork,
    };

_UbuntuProGeneralInfo _$UbuntuProGeneralInfoFromJson(
        Map<String, dynamic> json) =>
    _UbuntuProGeneralInfo(
      eolEsmYear: (json['eol_esm_year'] as num?)?.toInt(),
      universePackages: (json['universe_packages'] as num).toInt(),
      mainPackages: (json['main_packages'] as num).toInt(),
    );

Map<String, dynamic> _$UbuntuProGeneralInfoToJson(
        _UbuntuProGeneralInfo instance) =>
    <String, dynamic>{
      'eol_esm_year': instance.eolEsmYear,
      'universe_packages': instance.universePackages,
      'main_packages': instance.mainPackages,
    };

_UPCSInitiateResponse _$UPCSInitiateResponseFromJson(
        Map<String, dynamic> json) =>
    _UPCSInitiateResponse(
      userCode: json['user_code'] as String,
      validitySeconds: (json['validity_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$UPCSInitiateResponseToJson(
        _UPCSInitiateResponse instance) =>
    <String, dynamic>{
      'user_code': instance.userCode,
      'validity_seconds': instance.validitySeconds,
    };

_UPCSWaitResponse _$UPCSWaitResponseFromJson(Map<String, dynamic> json) =>
    _UPCSWaitResponse(
      status: $enumDecode(_$UPCSWaitStatusEnumMap, json['status']),
      contractToken: json['contract_token'] as String?,
    );

Map<String, dynamic> _$UPCSWaitResponseToJson(_UPCSWaitResponse instance) =>
    <String, dynamic>{
      'status': _$UPCSWaitStatusEnumMap[instance.status]!,
      'contract_token': instance.contractToken,
    };

const _$UPCSWaitStatusEnumMap = {
  UPCSWaitStatus.SUCCESS: 'SUCCESS',
  UPCSWaitStatus.TIMEOUT: 'TIMEOUT',
};

_UbuntuProService _$UbuntuProServiceFromJson(Map<String, dynamic> json) =>
    _UbuntuProService(
      name: json['name'] as String,
      description: json['description'] as String,
      autoEnabled: json['auto_enabled'] as bool,
    );

Map<String, dynamic> _$UbuntuProServiceToJson(_UbuntuProService instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'auto_enabled': instance.autoEnabled,
    };

_UbuntuProSubscription _$UbuntuProSubscriptionFromJson(
        Map<String, dynamic> json) =>
    _UbuntuProSubscription(
      contractName: json['contract_name'] as String,
      accountName: json['account_name'] as String,
      contractToken: json['contract_token'] as String,
      services: (json['services'] as List<dynamic>)
          .map((e) => UbuntuProService.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UbuntuProSubscriptionToJson(
        _UbuntuProSubscription instance) =>
    <String, dynamic>{
      'contract_name': instance.contractName,
      'account_name': instance.accountName,
      'contract_token': instance.contractToken,
      'services': instance.services.map((e) => e.toJson()).toList(),
    };

_UbuntuProCheckTokenAnswer _$UbuntuProCheckTokenAnswerFromJson(
        Map<String, dynamic> json) =>
    _UbuntuProCheckTokenAnswer(
      status: $enumDecode(_$UbuntuProCheckTokenStatusEnumMap, json['status']),
      subscription: json['subscription'] == null
          ? null
          : UbuntuProSubscription.fromJson(
              json['subscription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UbuntuProCheckTokenAnswerToJson(
        _UbuntuProCheckTokenAnswer instance) =>
    <String, dynamic>{
      'status': _$UbuntuProCheckTokenStatusEnumMap[instance.status]!,
      'subscription': instance.subscription?.toJson(),
    };

const _$UbuntuProCheckTokenStatusEnumMap = {
  UbuntuProCheckTokenStatus.VALID_TOKEN: 'VALID_TOKEN',
  UbuntuProCheckTokenStatus.INVALID_TOKEN: 'INVALID_TOKEN',
  UbuntuProCheckTokenStatus.EXPIRED_TOKEN: 'EXPIRED_TOKEN',
  UbuntuProCheckTokenStatus.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
};

_TaskProgress _$TaskProgressFromJson(Map<String, dynamic> json) =>
    _TaskProgress(
      label: json['label'] as String? ?? '',
      done: (json['done'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TaskProgressToJson(_TaskProgress instance) =>
    <String, dynamic>{
      'label': instance.label,
      'done': instance.done,
      'total': instance.total,
    };

_Task _$TaskFromJson(Map<String, dynamic> json) => _Task(
      id: json['id'] as String,
      kind: json['kind'] as String,
      summary: json['summary'] as String,
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      progress: TaskProgress.fromJson(json['progress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskToJson(_Task instance) => <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'summary': instance.summary,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'progress': instance.progress.toJson(),
    };

const _$TaskStatusEnumMap = {
  TaskStatus.DO: 'DO',
  TaskStatus.DOING: 'DOING',
  TaskStatus.DONE: 'DONE',
  TaskStatus.ABORT: 'ABORT',
  TaskStatus.UNDO: 'UNDO',
  TaskStatus.UNDOING: 'UNDOING',
  TaskStatus.HOLD: 'HOLD',
  TaskStatus.ERROR: 'ERROR',
};

_Change _$ChangeFromJson(Map<String, dynamic> json) => _Change(
      id: json['id'] as String,
      kind: json['kind'] as String,
      summary: json['summary'] as String,
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
      ready: json['ready'] as bool,
      err: json['err'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$ChangeToJson(_Change instance) => <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'summary': instance.summary,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'ready': instance.ready,
      'err': instance.err,
      'data': instance.data,
    };

_MirrorCheckResponse _$MirrorCheckResponseFromJson(Map<String, dynamic> json) =>
    _MirrorCheckResponse(
      url: json['url'] as String,
      status: $enumDecode(_$MirrorCheckStatusEnumMap, json['status']),
      output: json['output'] as String,
    );

Map<String, dynamic> _$MirrorCheckResponseToJson(
        _MirrorCheckResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'status': _$MirrorCheckStatusEnumMap[instance.status]!,
      'output': instance.output,
    };

const _$MirrorCheckStatusEnumMap = {
  MirrorCheckStatus.OK: 'OK',
  MirrorCheckStatus.RUNNING: 'RUNNING',
  MirrorCheckStatus.FAILED: 'FAILED',
};

_MirrorPost _$MirrorPostFromJson(Map<String, dynamic> json) => _MirrorPost(
      elected: json['elected'] as String?,
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      staged: json['staged'] as String?,
      useDuringInstallation: json['use_during_installation'] as bool?,
    );

Map<String, dynamic> _$MirrorPostToJson(_MirrorPost instance) =>
    <String, dynamic>{
      'elected': instance.elected,
      'candidates': instance.candidates,
      'staged': instance.staged,
      'use_during_installation': instance.useDuringInstallation,
    };

_MirrorGet _$MirrorGetFromJson(Map<String, dynamic> json) => _MirrorGet(
      relevant: json['relevant'] as bool,
      elected: json['elected'] as String?,
      candidates: (json['candidates'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      staged: json['staged'] as String?,
      useDuringInstallation: json['use_during_installation'] as bool,
    );

Map<String, dynamic> _$MirrorGetToJson(_MirrorGet instance) =>
    <String, dynamic>{
      'relevant': instance.relevant,
      'elected': instance.elected,
      'candidates': instance.candidates,
      'staged': instance.staged,
      'use_during_installation': instance.useDuringInstallation,
    };

_AdConnectionInfo _$AdConnectionInfoFromJson(Map<String, dynamic> json) =>
    _AdConnectionInfo(
      adminName: json['admin_name'] as String? ?? '',
      domainName: json['domain_name'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$AdConnectionInfoToJson(_AdConnectionInfo instance) =>
    <String, dynamic>{
      'admin_name': instance.adminName,
      'domain_name': instance.domainName,
      'password': instance.password,
    };

_OsProber _$OsProberFromJson(Map<String, dynamic> json) => _OsProber(
      long: json['long'] as String,
      label: json['label'] as String,
      type: json['type'] as String,
      subpath: json['subpath'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$OsProberToJson(_OsProber instance) => <String, dynamic>{
      'long': instance.long,
      'label': instance.label,
      'type': instance.type,
      'subpath': instance.subpath,
      'version': instance.version,
    };

Partition _$PartitionFromJson(Map<String, dynamic> json) => Partition(
      size: (json['size'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      preserve: json['preserve'] as bool?,
      wipe: json['wipe'] as String?,
      annotations: (json['annotations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      mount: json['mount'] as String?,
      format: json['format'] as String?,
      grubDevice: json['grub_device'] as bool?,
      boot: json['boot'] as bool?,
      os: json['os'] == null
          ? null
          : OsProber.fromJson(json['os'] as Map<String, dynamic>),
      offset: (json['offset'] as num?)?.toInt(),
      estimatedMinSize: (json['estimated_min_size'] as num?)?.toInt() ?? -1,
      resize: json['resize'] as bool?,
      path: json['path'] as String?,
      name: json['name'] as String?,
      isInUse: json['is_in_use'] as bool? ?? false,
      effectiveMount: json['effective_mount'] as String?,
      effectiveFormat: json['effective_format'] as String?,
      effectivelyEncrypted: json['effectively_encrypted'] as bool?,
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$PartitionToJson(Partition instance) => <String, dynamic>{
      'size': instance.size,
      'number': instance.number,
      'preserve': instance.preserve,
      'wipe': instance.wipe,
      'annotations': instance.annotations,
      'mount': instance.mount,
      'format': instance.format,
      'grub_device': instance.grubDevice,
      'boot': instance.boot,
      'os': instance.os?.toJson(),
      'offset': instance.offset,
      'estimated_min_size': instance.estimatedMinSize,
      'resize': instance.resize,
      'path': instance.path,
      'name': instance.name,
      'is_in_use': instance.isInUse,
      'effective_mount': instance.effectiveMount,
      'effective_format': instance.effectiveFormat,
      'effectively_encrypted': instance.effectivelyEncrypted,
      r'$type': instance.$type,
    };

Gap _$GapFromJson(Map<String, dynamic> json) => Gap(
      offset: (json['offset'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      usable: $enumDecode(_$GapUsableEnumMap, json['usable']),
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$GapToJson(Gap instance) => <String, dynamic>{
      'offset': instance.offset,
      'size': instance.size,
      'usable': _$GapUsableEnumMap[instance.usable]!,
      r'$type': instance.$type,
    };

const _$GapUsableEnumMap = {
  GapUsable.YES: 'YES',
  GapUsable.TOO_MANY_PRIMARY_PARTS: 'TOO_MANY_PRIMARY_PARTS',
};

_ZFS _$ZFSFromJson(Map<String, dynamic> json) => _ZFS(
      volume: json['volume'] as String,
      properties: json['properties'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ZFSToJson(_ZFS instance) => <String, dynamic>{
      'volume': instance.volume,
      'properties': instance.properties,
    };

_ZPool _$ZPoolFromJson(Map<String, dynamic> json) => _ZPool(
      pool: json['pool'] as String,
      mountpoint: json['mountpoint'] as String,
      zfses: json['zfses'] == null
          ? null
          : ZFS.fromJson(json['zfses'] as Map<String, dynamic>),
      poolProperties: json['pool_properties'] as Map<String, dynamic>?,
      fsProperties: json['fs_properties'] as Map<String, dynamic>?,
      defaultFeatures: json['default_features'] as bool? ?? true,
    );

Map<String, dynamic> _$ZPoolToJson(_ZPool instance) => <String, dynamic>{
      'pool': instance.pool,
      'mountpoint': instance.mountpoint,
      'zfses': instance.zfses?.toJson(),
      'pool_properties': instance.poolProperties,
      'fs_properties': instance.fsProperties,
      'default_features': instance.defaultFeatures,
    };

_Disk _$DiskFromJson(Map<String, dynamic> json) => _Disk(
      id: json['id'] as String,
      label: json['label'] as String,
      type: json['type'] as String,
      size: (json['size'] as num).toInt(),
      usageLabels: (json['usage_labels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      partitions: (json['partitions'] as List<dynamic>)
          .map((e) => PartitionOrGap.fromJson(e as Map<String, dynamic>))
          .toList(),
      okForGuided: json['ok_for_guided'] as bool,
      ptable: json['ptable'] as String?,
      preserve: json['preserve'] as bool,
      path: json['path'] as String?,
      bootDevice: json['boot_device'] as bool,
      canBeBootDevice: json['can_be_boot_device'] as bool,
      model: json['model'] as String?,
      vendor: json['vendor'] as String?,
      hasInUsePartition: json['has_in_use_partition'] as bool? ?? false,
      requiresReformat: json['requires_reformat'] as bool?,
    );

Map<String, dynamic> _$DiskToJson(_Disk instance) => <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'type': instance.type,
      'size': instance.size,
      'usage_labels': instance.usageLabels,
      'partitions': instance.partitions.map((e) => e.toJson()).toList(),
      'ok_for_guided': instance.okForGuided,
      'ptable': instance.ptable,
      'preserve': instance.preserve,
      'path': instance.path,
      'boot_device': instance.bootDevice,
      'can_be_boot_device': instance.canBeBootDevice,
      'model': instance.model,
      'vendor': instance.vendor,
      'has_in_use_partition': instance.hasInUsePartition,
      'requires_reformat': instance.requiresReformat,
    };

_CoreBootFixActionWithCategory _$CoreBootFixActionWithCategoryFromJson(
        Map<String, dynamic> json) =>
    _CoreBootFixActionWithCategory(
      type: $enumDecode(_$CoreBootFixActionEnumMap, json['type']),
      forUser: json['for_user'] as bool,
    );

Map<String, dynamic> _$CoreBootFixActionWithCategoryToJson(
        _CoreBootFixActionWithCategory instance) =>
    <String, dynamic>{
      'type': _$CoreBootFixActionEnumMap[instance.type]!,
      'for_user': instance.forUser,
    };

const _$CoreBootFixActionEnumMap = {
  CoreBootFixAction.REBOOT: 'REBOOT',
  CoreBootFixAction.SHUTDOWN: 'SHUTDOWN',
  CoreBootFixAction.REBOOT_TO_FW_SETTINGS: 'REBOOT_TO_FW_SETTINGS',
  CoreBootFixAction.CONTACT_OEM: 'CONTACT_OEM',
  CoreBootFixAction.CONTACT_OS_VENDOR: 'CONTACT_OS_VENDOR',
  CoreBootFixAction.ENABLE_TPM_VIA_FIRMWARE: 'ENABLE_TPM_VIA_FIRMWARE',
  CoreBootFixAction.ENABLE_AND_CLEAR_TPM_VIA_FIRMWARE:
      'ENABLE_AND_CLEAR_TPM_VIA_FIRMWARE',
  CoreBootFixAction.CLEAR_TPM_VIA_FIRMWARE: 'CLEAR_TPM_VIA_FIRMWARE',
  CoreBootFixAction.CLEAR_TPM: 'CLEAR_TPM',
  CoreBootFixAction.PROCEED: 'PROCEED',
};

_CoreBootEncryptionSupportError _$CoreBootEncryptionSupportErrorFromJson(
        Map<String, dynamic> json) =>
    _CoreBootEncryptionSupportError(
      kind: $enumDecode(_$CoreBootAvailabilityErrorKindEnumMap, json['kind']),
      message: json['message'] as String,
      actions: (json['actions'] as List<dynamic>)
          .map((e) =>
              CoreBootFixActionWithCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoreBootEncryptionSupportErrorToJson(
        _CoreBootEncryptionSupportError instance) =>
    <String, dynamic>{
      'kind': _$CoreBootAvailabilityErrorKindEnumMap[instance.kind]!,
      'message': instance.message,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
    };

const _$CoreBootAvailabilityErrorKindEnumMap = {
  CoreBootAvailabilityErrorKind.INTERNAL: 'INTERNAL',
  CoreBootAvailabilityErrorKind.SHUTDOWN_REQUIRED: 'SHUTDOWN_REQUIRED',
  CoreBootAvailabilityErrorKind.REBOOT_REQUIRED: 'REBOOT_REQUIRED',
  CoreBootAvailabilityErrorKind.UNEXPECTED_ACTION: 'UNEXPECTED_ACTION',
  CoreBootAvailabilityErrorKind.MISSING_ARGUMENT: 'MISSING_ARGUMENT',
  CoreBootAvailabilityErrorKind.INVALID_ARGUMENT: 'INVALID_ARGUMENT',
  CoreBootAvailabilityErrorKind.ACTION_FAILED: 'ACTION_FAILED',
  CoreBootAvailabilityErrorKind.RUNNING_IN_VM: 'RUNNING_IN_VM',
  CoreBootAvailabilityErrorKind.SYSTEM_NOT_EFI: 'SYSTEM_NOT_EFI',
  CoreBootAvailabilityErrorKind.EFI_VARIABLE_ACCESS: 'EFI_VARIABLE_ACCESS',
  CoreBootAvailabilityErrorKind.NO_SUITABLE_TPM2_DEVICE:
      'NO_SUITABLE_TPM2_DEVICE',
  CoreBootAvailabilityErrorKind.TPM_DEVICE_FAILURE: 'TPM_DEVICE_FAILURE',
  CoreBootAvailabilityErrorKind.TPM_DEVICE_DISABLED: 'TPM_DEVICE_DISABLED',
  CoreBootAvailabilityErrorKind.TPM_HIERARCHIES_OWNED: 'TPM_HIERARCHIES_OWNED',
  CoreBootAvailabilityErrorKind.TPM_DEVICE_LOCKOUT_LOCKED_OUT:
      'TPM_DEVICE_LOCKOUT_LOCKED_OUT',
  CoreBootAvailabilityErrorKind.INSUFFICIENT_TPM_STORAGE:
      'INSUFFICIENT_TPM_STORAGE',
  CoreBootAvailabilityErrorKind.NO_SUITABLE_PCR_BANK: 'NO_SUITABLE_PCR_BANK',
  CoreBootAvailabilityErrorKind.MEASURED_BOOT: 'MEASURED_BOOT',
  CoreBootAvailabilityErrorKind.EMPTY_PCR_BANKS: 'EMPTY_PCR_BANKS',
  CoreBootAvailabilityErrorKind.TPM_COMMAND_FAILED: 'TPM_COMMAND_FAILED',
  CoreBootAvailabilityErrorKind.INVALID_TPM_RESPONSE: 'INVALID_TPM_RESPONSE',
  CoreBootAvailabilityErrorKind.TPM_COMMUNICATION: 'TPM_COMMUNICATION',
  CoreBootAvailabilityErrorKind.UNSUPPORTED_PLATFORM: 'UNSUPPORTED_PLATFORM',
  CoreBootAvailabilityErrorKind.UEFI_DEBUGGING_ENABLED:
      'UEFI_DEBUGGING_ENABLED',
  CoreBootAvailabilityErrorKind.INSUFFICIENT_DMA_PROTECTION:
      'INSUFFICIENT_DMA_PROTECTION',
  CoreBootAvailabilityErrorKind.NO_KERNEL_IOMMU: 'NO_KERNEL_IOMMU',
  CoreBootAvailabilityErrorKind.TPM_STARTUP_LOCALITY_NOT_PROTECTED:
      'TPM_STARTUP_LOCALITY_NOT_PROTECTED',
  CoreBootAvailabilityErrorKind.HOST_SECURITY: 'HOST_SECURITY',
  CoreBootAvailabilityErrorKind.PCR_UNUSABLE: 'PCR_UNUSABLE',
  CoreBootAvailabilityErrorKind.PCR_UNSUPPORTED: 'PCR_UNSUPPORTED',
  CoreBootAvailabilityErrorKind.VAR_SUPPLIED_DRIVERS_PRESENT:
      'VAR_SUPPLIED_DRIVERS_PRESENT',
  CoreBootAvailabilityErrorKind.SYS_PREP_APPLICATIONS_PRESENT:
      'SYS_PREP_APPLICATIONS_PRESENT',
  CoreBootAvailabilityErrorKind.ABSOLUTE_PRESENT: 'ABSOLUTE_PRESENT',
  CoreBootAvailabilityErrorKind.INVALID_SECURE_BOOT_MODE:
      'INVALID_SECURE_BOOT_MODE',
  CoreBootAvailabilityErrorKind.WEAK_SECURE_BOOT_ALGORITHM_DETECTED:
      'WEAK_SECURE_BOOT_ALGORITHM_DETECTED',
  CoreBootAvailabilityErrorKind.PRE_OS_DIGEST_VERIFICATION_DETECTED:
      'PRE_OS_DIGEST_VERIFICATION_DETECTED',
};

_GuidedDisallowedCapability _$GuidedDisallowedCapabilityFromJson(
        Map<String, dynamic> json) =>
    _GuidedDisallowedCapability(
      capability: $enumDecode(_$GuidedCapabilityEnumMap, json['capability']),
      reason: $enumDecode(
          _$GuidedDisallowedCapabilityReasonEnumMap, json['reason']),
      message: json['message'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => CoreBootEncryptionSupportError.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GuidedDisallowedCapabilityToJson(
        _GuidedDisallowedCapability instance) =>
    <String, dynamic>{
      'capability': _$GuidedCapabilityEnumMap[instance.capability]!,
      'reason': _$GuidedDisallowedCapabilityReasonEnumMap[instance.reason]!,
      'message': instance.message,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

const _$GuidedCapabilityEnumMap = {
  GuidedCapability.MANUAL: 'MANUAL',
  GuidedCapability.DIRECT: 'DIRECT',
  GuidedCapability.LVM: 'LVM',
  GuidedCapability.LVM_LUKS: 'LVM_LUKS',
  GuidedCapability.ZFS: 'ZFS',
  GuidedCapability.ZFS_LUKS_KEYSTORE: 'ZFS_LUKS_KEYSTORE',
  GuidedCapability.CORE_BOOT_ENCRYPTED: 'CORE_BOOT_ENCRYPTED',
  GuidedCapability.CORE_BOOT_UNENCRYPTED: 'CORE_BOOT_UNENCRYPTED',
  GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED: 'CORE_BOOT_PREFER_ENCRYPTED',
  GuidedCapability.CORE_BOOT_PREFER_UNENCRYPTED: 'CORE_BOOT_PREFER_UNENCRYPTED',
  GuidedCapability.DD: 'DD',
};

const _$GuidedDisallowedCapabilityReasonEnumMap = {
  GuidedDisallowedCapabilityReason.TOO_SMALL: 'TOO_SMALL',
  GuidedDisallowedCapabilityReason.CORE_BOOT_ENCRYPTION_UNAVAILABLE:
      'CORE_BOOT_ENCRYPTION_UNAVAILABLE',
  GuidedDisallowedCapabilityReason.NOT_UEFI: 'NOT_UEFI',
  GuidedDisallowedCapabilityReason.THIRD_PARTY_DRIVERS: 'THIRD_PARTY_DRIVERS',
};

_StorageResponse _$StorageResponseFromJson(Map<String, dynamic> json) =>
    _StorageResponse(
      status: $enumDecode(_$ProbeStatusEnumMap, json['status']),
      errorReport: json['error_report'] == null
          ? null
          : ErrorReportRef.fromJson(
              json['error_report'] as Map<String, dynamic>),
      bootloader: $enumDecodeNullable(_$BootloaderEnumMap, json['bootloader']),
      origConfig: json['orig_config'] as List<dynamic>?,
      config: json['config'] as List<dynamic>?,
      dasd: json['dasd'] as Map<String, dynamic>?,
      storageVersion: (json['storage_version'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$StorageResponseToJson(_StorageResponse instance) =>
    <String, dynamic>{
      'status': _$ProbeStatusEnumMap[instance.status]!,
      'error_report': instance.errorReport?.toJson(),
      'bootloader': _$BootloaderEnumMap[instance.bootloader],
      'orig_config': instance.origConfig,
      'config': instance.config,
      'dasd': instance.dasd,
      'storage_version': instance.storageVersion,
    };

const _$ProbeStatusEnumMap = {
  ProbeStatus.PROBING: 'PROBING',
  ProbeStatus.FAILED: 'FAILED',
  ProbeStatus.DONE: 'DONE',
};

const _$BootloaderEnumMap = {
  Bootloader.NONE: 'NONE',
  Bootloader.BIOS: 'BIOS',
  Bootloader.UEFI: 'UEFI',
  Bootloader.PREP: 'PREP',
};

_StorageResponseV2 _$StorageResponseV2FromJson(Map<String, dynamic> json) =>
    _StorageResponseV2(
      status: $enumDecode(_$ProbeStatusEnumMap, json['status']),
      errorReport: json['error_report'] == null
          ? null
          : ErrorReportRef.fromJson(
              json['error_report'] as Map<String, dynamic>),
      disks: (json['disks'] as List<dynamic>?)
              ?.map((e) => Disk.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      needRoot: json['need_root'] as bool?,
      needBoot: json['need_boot'] as bool?,
      installMinimumSize: (json['install_minimum_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StorageResponseV2ToJson(_StorageResponseV2 instance) =>
    <String, dynamic>{
      'status': _$ProbeStatusEnumMap[instance.status]!,
      'error_report': instance.errorReport?.toJson(),
      'disks': instance.disks.map((e) => e.toJson()).toList(),
      'need_root': instance.needRoot,
      'need_boot': instance.needBoot,
      'install_minimum_size': instance.installMinimumSize,
    };

_GuidedResizeValues _$GuidedResizeValuesFromJson(Map<String, dynamic> json) =>
    _GuidedResizeValues(
      installMax: (json['install_max'] as num).toInt(),
      minimum: (json['minimum'] as num).toInt(),
      recommended: (json['recommended'] as num).toInt(),
      maximum: (json['maximum'] as num).toInt(),
    );

Map<String, dynamic> _$GuidedResizeValuesToJson(_GuidedResizeValues instance) =>
    <String, dynamic>{
      'install_max': instance.installMax,
      'minimum': instance.minimum,
      'recommended': instance.recommended,
      'maximum': instance.maximum,
    };

GuidedStorageTargetReformat _$GuidedStorageTargetReformatFromJson(
        Map<String, dynamic> json) =>
    GuidedStorageTargetReformat(
      diskId: json['disk_id'] as String,
      ptable: json['ptable'] as String?,
      allowed: (json['allowed'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$GuidedCapabilityEnumMap, e))
              .toList() ??
          const [],
      disallowed: (json['disallowed'] as List<dynamic>?)
              ?.map((e) => GuidedDisallowedCapability.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$GuidedStorageTargetReformatToJson(
        GuidedStorageTargetReformat instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'ptable': instance.ptable,
      'allowed':
          instance.allowed.map((e) => _$GuidedCapabilityEnumMap[e]!).toList(),
      'disallowed': instance.disallowed.map((e) => e.toJson()).toList(),
      r'$type': instance.$type,
    };

GuidedStorageTargetResize _$GuidedStorageTargetResizeFromJson(
        Map<String, dynamic> json) =>
    GuidedStorageTargetResize(
      diskId: json['disk_id'] as String,
      partitionNumber: (json['partition_number'] as num).toInt(),
      newSize: (json['new_size'] as num).toInt(),
      minimum: (json['minimum'] as num?)?.toInt(),
      recommended: (json['recommended'] as num?)?.toInt(),
      maximum: (json['maximum'] as num?)?.toInt(),
      allowed: (json['allowed'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$GuidedCapabilityEnumMap, e))
              .toList() ??
          const [],
      disallowed: (json['disallowed'] as List<dynamic>?)
              ?.map((e) => GuidedDisallowedCapability.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$GuidedStorageTargetResizeToJson(
        GuidedStorageTargetResize instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'partition_number': instance.partitionNumber,
      'new_size': instance.newSize,
      'minimum': instance.minimum,
      'recommended': instance.recommended,
      'maximum': instance.maximum,
      'allowed':
          instance.allowed.map((e) => _$GuidedCapabilityEnumMap[e]!).toList(),
      'disallowed': instance.disallowed.map((e) => e.toJson()).toList(),
      r'$type': instance.$type,
    };

GuidedStorageTargetEraseInstall _$GuidedStorageTargetEraseInstallFromJson(
        Map<String, dynamic> json) =>
    GuidedStorageTargetEraseInstall(
      diskId: json['disk_id'] as String,
      partitionNumber: (json['partition_number'] as num).toInt(),
      allowed: (json['allowed'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$GuidedCapabilityEnumMap, e))
              .toList() ??
          const [],
      disallowed: (json['disallowed'] as List<dynamic>?)
              ?.map((e) => GuidedDisallowedCapability.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$GuidedStorageTargetEraseInstallToJson(
        GuidedStorageTargetEraseInstall instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'partition_number': instance.partitionNumber,
      'allowed':
          instance.allowed.map((e) => _$GuidedCapabilityEnumMap[e]!).toList(),
      'disallowed': instance.disallowed.map((e) => e.toJson()).toList(),
      r'$type': instance.$type,
    };

GuidedStorageTargetUseGap _$GuidedStorageTargetUseGapFromJson(
        Map<String, dynamic> json) =>
    GuidedStorageTargetUseGap(
      diskId: json['disk_id'] as String,
      gap: Gap.fromJson(json['gap'] as Map<String, dynamic>),
      allowed: (json['allowed'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$GuidedCapabilityEnumMap, e))
              .toList() ??
          const [],
      disallowed: (json['disallowed'] as List<dynamic>?)
              ?.map((e) => GuidedDisallowedCapability.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$GuidedStorageTargetUseGapToJson(
        GuidedStorageTargetUseGap instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'gap': instance.gap.toJson(),
      'allowed':
          instance.allowed.map((e) => _$GuidedCapabilityEnumMap[e]!).toList(),
      'disallowed': instance.disallowed.map((e) => e.toJson()).toList(),
      r'$type': instance.$type,
    };

GuidedStorageTargetManual _$GuidedStorageTargetManualFromJson(
        Map<String, dynamic> json) =>
    GuidedStorageTargetManual(
      allowed: (json['allowed'] as List<dynamic>)
          .map((e) => $enumDecode(_$GuidedCapabilityEnumMap, e))
          .toList(),
      disallowed: (json['disallowed'] as List<dynamic>?)
              ?.map((e) => GuidedDisallowedCapability.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$GuidedStorageTargetManualToJson(
        GuidedStorageTargetManual instance) =>
    <String, dynamic>{
      'allowed':
          instance.allowed.map((e) => _$GuidedCapabilityEnumMap[e]!).toList(),
      'disallowed': instance.disallowed.map((e) => e.toJson()).toList(),
      r'$type': instance.$type,
    };

_RecoveryKey _$RecoveryKeyFromJson(Map<String, dynamic> json) => _RecoveryKey(
      liveLocation: json['live_location'] as String?,
      backupLocation: json['backup_location'] as String?,
    );

Map<String, dynamic> _$RecoveryKeyToJson(_RecoveryKey instance) =>
    <String, dynamic>{
      'live_location': instance.liveLocation,
      'backup_location': instance.backupLocation,
    };

_GuidedChoiceV2 _$GuidedChoiceV2FromJson(Map<String, dynamic> json) =>
    _GuidedChoiceV2(
      target:
          GuidedStorageTarget.fromJson(json['target'] as Map<String, dynamic>),
      capability: $enumDecode(_$GuidedCapabilityEnumMap, json['capability']),
      password: json['password'] as String?,
      pin: json['pin'] as String?,
      recoveryKey: json['recovery_key'] == null
          ? null
          : RecoveryKey.fromJson(json['recovery_key'] as Map<String, dynamic>),
      sizingPolicy:
          $enumDecodeNullable(_$SizingPolicyEnumMap, json['sizing_policy']),
      resetPartition: json['reset_partition'] as bool? ?? false,
      resetPartitionSize: (json['reset_partition_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GuidedChoiceV2ToJson(_GuidedChoiceV2 instance) =>
    <String, dynamic>{
      'target': instance.target.toJson(),
      'capability': _$GuidedCapabilityEnumMap[instance.capability]!,
      'password': instance.password,
      'pin': instance.pin,
      'recovery_key': instance.recoveryKey?.toJson(),
      'sizing_policy': _$SizingPolicyEnumMap[instance.sizingPolicy],
      'reset_partition': instance.resetPartition,
      'reset_partition_size': instance.resetPartitionSize,
    };

const _$SizingPolicyEnumMap = {
  SizingPolicy.SCALED: 'SCALED',
  SizingPolicy.ALL: 'ALL',
};

_GuidedStorageResponseV2 _$GuidedStorageResponseV2FromJson(
        Map<String, dynamic> json) =>
    _GuidedStorageResponseV2(
      status: $enumDecode(_$ProbeStatusEnumMap, json['status']),
      errorReport: json['error_report'] == null
          ? null
          : ErrorReportRef.fromJson(
              json['error_report'] as Map<String, dynamic>),
      configured: json['configured'] == null
          ? null
          : GuidedChoiceV2.fromJson(json['configured'] as Map<String, dynamic>),
      targets: (json['targets'] as List<dynamic>?)
              ?.map((e) =>
                  GuidedStorageTarget.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GuidedStorageResponseV2ToJson(
        _GuidedStorageResponseV2 instance) =>
    <String, dynamic>{
      'status': _$ProbeStatusEnumMap[instance.status]!,
      'error_report': instance.errorReport?.toJson(),
      'configured': instance.configured?.toJson(),
      'targets': instance.targets.map((e) => e.toJson()).toList(),
    };

_AddPartitionV2 _$AddPartitionV2FromJson(Map<String, dynamic> json) =>
    _AddPartitionV2(
      diskId: json['disk_id'] as String,
      partition: Partition.fromJson(json['partition'] as Map<String, dynamic>),
      gap: Gap.fromJson(json['gap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddPartitionV2ToJson(_AddPartitionV2 instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'partition': instance.partition.toJson(),
      'gap': instance.gap.toJson(),
    };

_ModifyPartitionV2 _$ModifyPartitionV2FromJson(Map<String, dynamic> json) =>
    _ModifyPartitionV2(
      diskId: json['disk_id'] as String,
      partition: Partition.fromJson(json['partition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModifyPartitionV2ToJson(_ModifyPartitionV2 instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'partition': instance.partition.toJson(),
    };

_ReformatDisk _$ReformatDiskFromJson(Map<String, dynamic> json) =>
    _ReformatDisk(
      diskId: json['disk_id'] as String,
      ptable: json['ptable'] as String?,
    );

Map<String, dynamic> _$ReformatDiskToJson(_ReformatDisk instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'ptable': instance.ptable,
    };

_CalculateEntropyRequest _$CalculateEntropyRequestFromJson(
        Map<String, dynamic> json) =>
    _CalculateEntropyRequest(
      passphrase: json['passphrase'] as String?,
      pin: json['pin'] as String?,
    );

Map<String, dynamic> _$CalculateEntropyRequestToJson(
        _CalculateEntropyRequest instance) =>
    <String, dynamic>{
      'passphrase': instance.passphrase,
      'pin': instance.pin,
    };

_EntropyResponse _$EntropyResponseFromJson(Map<String, dynamic> json) =>
    _EntropyResponse(
      success: json['success'] as bool,
      entropyBits: (json['entropy_bits'] as num).toInt(),
      minEntropyBits: (json['min_entropy_bits'] as num).toInt(),
      optimalEntropyBits: (json['optimal_entropy_bits'] as num).toInt(),
      failureReasons: (json['failure_reasons'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$EntropyResponseToJson(_EntropyResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'entropy_bits': instance.entropyBits,
      'min_entropy_bits': instance.minEntropyBits,
      'optimal_entropy_bits': instance.optimalEntropyBits,
      'failure_reasons': instance.failureReasons,
    };

_CoreBootFixEncryptionSupport _$CoreBootFixEncryptionSupportFromJson(
        Map<String, dynamic> json) =>
    _CoreBootFixEncryptionSupport(
      action: $enumDecode(_$CoreBootFixActionEnumMap, json['action']),
      systemLabel: json['system_label'] as String?,
    );

Map<String, dynamic> _$CoreBootFixEncryptionSupportToJson(
        _CoreBootFixEncryptionSupport instance) =>
    <String, dynamic>{
      'action': _$CoreBootFixActionEnumMap[instance.action]!,
      'system_label': instance.systemLabel,
    };

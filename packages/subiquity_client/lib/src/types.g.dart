// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorReportRefImpl _$$ErrorReportRefImplFromJson(Map<String, dynamic> json) =>
    _$ErrorReportRefImpl(
      state: $enumDecode(_$ErrorReportStateEnumMap, json['state']),
      base: json['base'] as String,
      kind: $enumDecode(_$ErrorReportKindEnumMap, json['kind']),
      seen: json['seen'] as bool,
      oopsId: json['oops_id'] as String?,
    );

Map<String, dynamic> _$$ErrorReportRefImplToJson(
        _$ErrorReportRefImpl instance) =>
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

_$ApplicationStatusImpl _$$ApplicationStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$ApplicationStatusImpl(
      state: $enumDecode(_$ApplicationStateEnumMap, json['state']),
      confirmingTty: json['confirming_tty'] as String,
      error: json['error'] == null
          ? null
          : ErrorReportRef.fromJson(json['error'] as Map<String, dynamic>),
      cloudInitOk: json['cloud_init_ok'] as bool?,
      interactive: json['interactive'] as bool?,
      echoSyslogId: json['echo_syslog_id'] as String,
      logSyslogId: json['log_syslog_id'] as String,
      eventSyslogId: json['event_syslog_id'] as String,
    );

Map<String, dynamic> _$$ApplicationStatusImplToJson(
        _$ApplicationStatusImpl instance) =>
    <String, dynamic>{
      'state': _$ApplicationStateEnumMap[instance.state]!,
      'confirming_tty': instance.confirmingTty,
      'error': instance.error?.toJson(),
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
  ApplicationState.UU_CANCELLING: 'UU_CANCELLING',
  ApplicationState.DONE: 'DONE',
  ApplicationState.ERROR: 'ERROR',
  ApplicationState.EXITED: 'EXITED',
};

_$KeyFingerprintImpl _$$KeyFingerprintImplFromJson(Map<String, dynamic> json) =>
    _$KeyFingerprintImpl(
      keytype: json['keytype'] as String,
      fingerprint: json['fingerprint'] as String,
    );

Map<String, dynamic> _$$KeyFingerprintImplToJson(
        _$KeyFingerprintImpl instance) =>
    <String, dynamic>{
      'keytype': instance.keytype,
      'fingerprint': instance.fingerprint,
    };

_$LiveSessionSSHInfoImpl _$$LiveSessionSSHInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$LiveSessionSSHInfoImpl(
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

Map<String, dynamic> _$$LiveSessionSSHInfoImplToJson(
        _$LiveSessionSSHInfoImpl instance) =>
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

_$RefreshStatusImpl _$$RefreshStatusImplFromJson(Map<String, dynamic> json) =>
    _$RefreshStatusImpl(
      availability:
          $enumDecode(_$RefreshCheckStateEnumMap, json['availability']),
      currentSnapVersion: json['current_snap_version'] as String? ?? '',
      newSnapVersion: json['new_snap_version'] as String? ?? '',
    );

Map<String, dynamic> _$$RefreshStatusImplToJson(_$RefreshStatusImpl instance) =>
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

_$StepPressKeyImpl _$$StepPressKeyImplFromJson(Map<String, dynamic> json) =>
    _$StepPressKeyImpl(
      symbols:
          (json['symbols'] as List<dynamic>).map((e) => e as String).toList(),
      keycodes: const JsonMapConverter().fromJson(json['keycodes'] as List),
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$$StepPressKeyImplToJson(_$StepPressKeyImpl instance) =>
    <String, dynamic>{
      'symbols': instance.symbols,
      'keycodes': const JsonMapConverter().toJson(instance.keycodes),
      r'$type': instance.$type,
    };

_$StepKeyPresentImpl _$$StepKeyPresentImplFromJson(Map<String, dynamic> json) =>
    _$StepKeyPresentImpl(
      symbol: json['symbol'] as String,
      yes: json['yes'] as String,
      no: json['no'] as String,
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$$StepKeyPresentImplToJson(
        _$StepKeyPresentImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'yes': instance.yes,
      'no': instance.no,
      r'$type': instance.$type,
    };

_$StepResultImpl _$$StepResultImplFromJson(Map<String, dynamic> json) =>
    _$StepResultImpl(
      layout: json['layout'] as String,
      variant: json['variant'] as String,
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$$StepResultImplToJson(_$StepResultImpl instance) =>
    <String, dynamic>{
      'layout': instance.layout,
      'variant': instance.variant,
      r'$type': instance.$type,
    };

_$KeyboardSettingImpl _$$KeyboardSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$KeyboardSettingImpl(
      layout: json['layout'] as String,
      variant: json['variant'] as String? ?? '',
      toggle: json['toggle'] as String?,
    );

Map<String, dynamic> _$$KeyboardSettingImplToJson(
        _$KeyboardSettingImpl instance) =>
    <String, dynamic>{
      'layout': instance.layout,
      'variant': instance.variant,
      'toggle': instance.toggle,
    };

_$KeyboardVariantImpl _$$KeyboardVariantImplFromJson(
        Map<String, dynamic> json) =>
    _$KeyboardVariantImpl(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$KeyboardVariantImplToJson(
        _$KeyboardVariantImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

_$KeyboardLayoutImpl _$$KeyboardLayoutImplFromJson(Map<String, dynamic> json) =>
    _$KeyboardLayoutImpl(
      code: json['code'] as String,
      name: json['name'] as String,
      variants: (json['variants'] as List<dynamic>)
          .map((e) => KeyboardVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$KeyboardLayoutImplToJson(
        _$KeyboardLayoutImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'variants': instance.variants.map((e) => e.toJson()).toList(),
    };

_$KeyboardSetupImpl _$$KeyboardSetupImplFromJson(Map<String, dynamic> json) =>
    _$KeyboardSetupImpl(
      setting:
          KeyboardSetting.fromJson(json['setting'] as Map<String, dynamic>),
      layouts: (json['layouts'] as List<dynamic>)
          .map((e) => KeyboardLayout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$KeyboardSetupImplToJson(_$KeyboardSetupImpl instance) =>
    <String, dynamic>{
      'setting': instance.setting.toJson(),
      'layouts': instance.layouts.map((e) => e.toJson()).toList(),
    };

_$SourceSelectionImpl _$$SourceSelectionImplFromJson(
        Map<String, dynamic> json) =>
    _$SourceSelectionImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      id: json['id'] as String,
      size: json['size'] as int,
      variant: json['variant'] as String,
      isDefault: json['default'] as bool,
    );

Map<String, dynamic> _$$SourceSelectionImplToJson(
        _$SourceSelectionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'id': instance.id,
      'size': instance.size,
      'variant': instance.variant,
      'default': instance.isDefault,
    };

_$SourceSelectionAndSettingImpl _$$SourceSelectionAndSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$SourceSelectionAndSettingImpl(
      sources: (json['sources'] as List<dynamic>)
          .map((e) => SourceSelection.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentId: json['current_id'] as String,
      searchDrivers: json['search_drivers'] as bool,
    );

Map<String, dynamic> _$$SourceSelectionAndSettingImplToJson(
        _$SourceSelectionAndSettingImpl instance) =>
    <String, dynamic>{
      'sources': instance.sources.map((e) => e.toJson()).toList(),
      'current_id': instance.currentId,
      'search_drivers': instance.searchDrivers,
    };

_$ZdevInfoImpl _$$ZdevInfoImplFromJson(Map<String, dynamic> json) =>
    _$ZdevInfoImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      on: json['on'] as bool,
      exists: json['exists'] as bool,
      pers: json['pers'] as bool,
      auto: json['auto'] as bool,
      failed: json['failed'] as bool,
      names: json['names'] as String,
    );

Map<String, dynamic> _$$ZdevInfoImplToJson(_$ZdevInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'on': instance.on,
      'exists': instance.exists,
      'pers': instance.pers,
      'auto': instance.auto,
      'failed': instance.failed,
      'names': instance.names,
    };

_$NetworkStatusImpl _$$NetworkStatusImplFromJson(Map<String, dynamic> json) =>
    _$NetworkStatusImpl(
      devices: (json['devices'] as List<dynamic>)
          .map((e) => NetDevInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      wlanSupportInstallState: $enumDecode(
          _$PackageInstallStateEnumMap, json['wlan_support_install_state']),
    );

Map<String, dynamic> _$$NetworkStatusImplToJson(_$NetworkStatusImpl instance) =>
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

_$OsProberImpl _$$OsProberImplFromJson(Map<String, dynamic> json) =>
    _$OsProberImpl(
      long: json['long'] as String,
      label: json['label'] as String,
      type: json['type'] as String,
      subpath: json['subpath'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$OsProberImplToJson(_$OsProberImpl instance) =>
    <String, dynamic>{
      'long': instance.long,
      'label': instance.label,
      'type': instance.type,
      'subpath': instance.subpath,
      'version': instance.version,
    };

_$PartitionImpl _$$PartitionImplFromJson(Map<String, dynamic> json) =>
    _$PartitionImpl(
      size: json['size'] as int?,
      number: json['number'] as int?,
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
      offset: json['offset'] as int?,
      estimatedMinSize: json['estimated_min_size'] as int? ?? -1,
      resize: json['resize'] as bool?,
      path: json['path'] as String?,
      isInUse: json['is_in_use'] as bool? ?? false,
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$$PartitionImplToJson(_$PartitionImpl instance) =>
    <String, dynamic>{
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
      'is_in_use': instance.isInUse,
      r'$type': instance.$type,
    };

_$GapImpl _$$GapImplFromJson(Map<String, dynamic> json) => _$GapImpl(
      offset: json['offset'] as int,
      size: json['size'] as int,
      usable: $enumDecode(_$GapUsableEnumMap, json['usable']),
      $type: json[r'$type'] as String?,
    );

Map<String, dynamic> _$$GapImplToJson(_$GapImpl instance) => <String, dynamic>{
      'offset': instance.offset,
      'size': instance.size,
      'usable': _$GapUsableEnumMap[instance.usable]!,
      r'$type': instance.$type,
    };

const _$GapUsableEnumMap = {
  GapUsable.YES: 'YES',
  GapUsable.TOO_MANY_PRIMARY_PARTS: 'TOO_MANY_PRIMARY_PARTS',
};

_$ZFSImpl _$$ZFSImplFromJson(Map<String, dynamic> json) => _$ZFSImpl(
      volume: json['volume'] as String,
      properties: json['properties'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ZFSImplToJson(_$ZFSImpl instance) => <String, dynamic>{
      'volume': instance.volume,
      'properties': instance.properties,
    };

_$ZPoolImpl _$$ZPoolImplFromJson(Map<String, dynamic> json) => _$ZPoolImpl(
      pool: json['pool'] as String,
      mountpoint: json['mountpoint'] as String,
      zfses: json['zfses'] == null
          ? null
          : ZFS.fromJson(json['zfses'] as Map<String, dynamic>),
      poolProperties: json['pool_properties'] as Map<String, dynamic>?,
      fsProperties: json['fs_properties'] as Map<String, dynamic>?,
      defaultFeatures: json['default_features'] as bool? ?? true,
    );

Map<String, dynamic> _$$ZPoolImplToJson(_$ZPoolImpl instance) =>
    <String, dynamic>{
      'pool': instance.pool,
      'mountpoint': instance.mountpoint,
      'zfses': instance.zfses?.toJson(),
      'pool_properties': instance.poolProperties,
      'fs_properties': instance.fsProperties,
      'default_features': instance.defaultFeatures,
    };

_$DiskImpl _$$DiskImplFromJson(Map<String, dynamic> json) => _$DiskImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      type: json['type'] as String,
      size: json['size'] as int,
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
    );

Map<String, dynamic> _$$DiskImplToJson(_$DiskImpl instance) =>
    <String, dynamic>{
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
    };

_$GuidedDisallowedCapabilityImpl _$$GuidedDisallowedCapabilityImplFromJson(
        Map<String, dynamic> json) =>
    _$GuidedDisallowedCapabilityImpl(
      capability: $enumDecode(_$GuidedCapabilityEnumMap, json['capability']),
      reason: $enumDecode(
          _$GuidedDisallowedCapabilityReasonEnumMap, json['reason']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$GuidedDisallowedCapabilityImplToJson(
        _$GuidedDisallowedCapabilityImpl instance) =>
    <String, dynamic>{
      'capability': _$GuidedCapabilityEnumMap[instance.capability]!,
      'reason': _$GuidedDisallowedCapabilityReasonEnumMap[instance.reason]!,
      'message': instance.message,
    };

const _$GuidedCapabilityEnumMap = {
  GuidedCapability.MANUAL: 'MANUAL',
  GuidedCapability.DIRECT: 'DIRECT',
  GuidedCapability.LVM: 'LVM',
  GuidedCapability.LVM_LUKS: 'LVM_LUKS',
  GuidedCapability.ZFS: 'ZFS',
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

_$StorageResponseImpl _$$StorageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StorageResponseImpl(
      status: $enumDecode(_$ProbeStatusEnumMap, json['status']),
      errorReport: json['error_report'] == null
          ? null
          : ErrorReportRef.fromJson(
              json['error_report'] as Map<String, dynamic>),
      bootloader: $enumDecodeNullable(_$BootloaderEnumMap, json['bootloader']),
      origConfig: json['orig_config'] as List<dynamic>?,
      config: json['config'] as List<dynamic>?,
      dasd: json['dasd'] as Map<String, dynamic>?,
      storageVersion: json['storage_version'] as int? ?? 1,
    );

Map<String, dynamic> _$$StorageResponseImplToJson(
        _$StorageResponseImpl instance) =>
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

_$StorageResponseV2Impl _$$StorageResponseV2ImplFromJson(
        Map<String, dynamic> json) =>
    _$StorageResponseV2Impl(
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
      installMinimumSize: json['install_minimum_size'] as int?,
    );

Map<String, dynamic> _$$StorageResponseV2ImplToJson(
        _$StorageResponseV2Impl instance) =>
    <String, dynamic>{
      'status': _$ProbeStatusEnumMap[instance.status]!,
      'error_report': instance.errorReport?.toJson(),
      'disks': instance.disks.map((e) => e.toJson()).toList(),
      'need_root': instance.needRoot,
      'need_boot': instance.needBoot,
      'install_minimum_size': instance.installMinimumSize,
    };

_$GuidedResizeValuesImpl _$$GuidedResizeValuesImplFromJson(
        Map<String, dynamic> json) =>
    _$GuidedResizeValuesImpl(
      installMax: json['install_max'] as int,
      minimum: json['minimum'] as int,
      recommended: json['recommended'] as int,
      maximum: json['maximum'] as int,
    );

Map<String, dynamic> _$$GuidedResizeValuesImplToJson(
        _$GuidedResizeValuesImpl instance) =>
    <String, dynamic>{
      'install_max': instance.installMax,
      'minimum': instance.minimum,
      'recommended': instance.recommended,
      'maximum': instance.maximum,
    };

_$GuidedStorageTargetReformatImpl _$$GuidedStorageTargetReformatImplFromJson(
        Map<String, dynamic> json) =>
    _$GuidedStorageTargetReformatImpl(
      diskId: json['disk_id'] as String,
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

Map<String, dynamic> _$$GuidedStorageTargetReformatImplToJson(
        _$GuidedStorageTargetReformatImpl instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'allowed':
          instance.allowed.map((e) => _$GuidedCapabilityEnumMap[e]!).toList(),
      'disallowed': instance.disallowed.map((e) => e.toJson()).toList(),
      r'$type': instance.$type,
    };

_$GuidedStorageTargetResizeImpl _$$GuidedStorageTargetResizeImplFromJson(
        Map<String, dynamic> json) =>
    _$GuidedStorageTargetResizeImpl(
      diskId: json['disk_id'] as String,
      partitionNumber: json['partition_number'] as int,
      newSize: json['new_size'] as int,
      minimum: json['minimum'] as int?,
      recommended: json['recommended'] as int?,
      maximum: json['maximum'] as int?,
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

Map<String, dynamic> _$$GuidedStorageTargetResizeImplToJson(
        _$GuidedStorageTargetResizeImpl instance) =>
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

_$GuidedStorageTargetUseGapImpl _$$GuidedStorageTargetUseGapImplFromJson(
        Map<String, dynamic> json) =>
    _$GuidedStorageTargetUseGapImpl(
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

Map<String, dynamic> _$$GuidedStorageTargetUseGapImplToJson(
        _$GuidedStorageTargetUseGapImpl instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'gap': instance.gap.toJson(),
      'allowed':
          instance.allowed.map((e) => _$GuidedCapabilityEnumMap[e]!).toList(),
      'disallowed': instance.disallowed.map((e) => e.toJson()).toList(),
      r'$type': instance.$type,
    };

_$GuidedStorageTargetManualImpl _$$GuidedStorageTargetManualImplFromJson(
        Map<String, dynamic> json) =>
    _$GuidedStorageTargetManualImpl(
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

Map<String, dynamic> _$$GuidedStorageTargetManualImplToJson(
        _$GuidedStorageTargetManualImpl instance) =>
    <String, dynamic>{
      'allowed':
          instance.allowed.map((e) => _$GuidedCapabilityEnumMap[e]!).toList(),
      'disallowed': instance.disallowed.map((e) => e.toJson()).toList(),
      r'$type': instance.$type,
    };

_$RecoveryKeyImpl _$$RecoveryKeyImplFromJson(Map<String, dynamic> json) =>
    _$RecoveryKeyImpl(
      liveLocation: json['live_location'] as String?,
      backupLocation: json['backup_location'] as String?,
    );

Map<String, dynamic> _$$RecoveryKeyImplToJson(_$RecoveryKeyImpl instance) =>
    <String, dynamic>{
      'live_location': instance.liveLocation,
      'backup_location': instance.backupLocation,
    };

_$GuidedChoiceV2Impl _$$GuidedChoiceV2ImplFromJson(Map<String, dynamic> json) =>
    _$GuidedChoiceV2Impl(
      target:
          GuidedStorageTarget.fromJson(json['target'] as Map<String, dynamic>),
      capability: $enumDecode(_$GuidedCapabilityEnumMap, json['capability']),
      password: json['password'] as String?,
      recoveryKey: json['recovery_key'] == null
          ? null
          : RecoveryKey.fromJson(json['recovery_key'] as Map<String, dynamic>),
      sizingPolicy:
          $enumDecodeNullable(_$SizingPolicyEnumMap, json['sizing_policy']),
      resetPartition: json['reset_partition'] as bool? ?? false,
    );

Map<String, dynamic> _$$GuidedChoiceV2ImplToJson(
        _$GuidedChoiceV2Impl instance) =>
    <String, dynamic>{
      'target': instance.target.toJson(),
      'capability': _$GuidedCapabilityEnumMap[instance.capability]!,
      'password': instance.password,
      'recovery_key': instance.recoveryKey?.toJson(),
      'sizing_policy': _$SizingPolicyEnumMap[instance.sizingPolicy],
      'reset_partition': instance.resetPartition,
    };

const _$SizingPolicyEnumMap = {
  SizingPolicy.SCALED: 'SCALED',
  SizingPolicy.ALL: 'ALL',
};

_$GuidedStorageResponseV2Impl _$$GuidedStorageResponseV2ImplFromJson(
        Map<String, dynamic> json) =>
    _$GuidedStorageResponseV2Impl(
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

Map<String, dynamic> _$$GuidedStorageResponseV2ImplToJson(
        _$GuidedStorageResponseV2Impl instance) =>
    <String, dynamic>{
      'status': _$ProbeStatusEnumMap[instance.status]!,
      'error_report': instance.errorReport?.toJson(),
      'configured': instance.configured?.toJson(),
      'targets': instance.targets.map((e) => e.toJson()).toList(),
    };

_$AddPartitionV2Impl _$$AddPartitionV2ImplFromJson(Map<String, dynamic> json) =>
    _$AddPartitionV2Impl(
      diskId: json['disk_id'] as String,
      partition: Partition.fromJson(json['partition'] as Map<String, dynamic>),
      gap: Gap.fromJson(json['gap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddPartitionV2ImplToJson(
        _$AddPartitionV2Impl instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'partition': instance.partition.toJson(),
      'gap': instance.gap.toJson(),
    };

_$ModifyPartitionV2Impl _$$ModifyPartitionV2ImplFromJson(
        Map<String, dynamic> json) =>
    _$ModifyPartitionV2Impl(
      diskId: json['disk_id'] as String,
      partition: Partition.fromJson(json['partition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModifyPartitionV2ImplToJson(
        _$ModifyPartitionV2Impl instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'partition': instance.partition.toJson(),
    };

_$ReformatDiskImpl _$$ReformatDiskImplFromJson(Map<String, dynamic> json) =>
    _$ReformatDiskImpl(
      diskId: json['disk_id'] as String,
      ptable: json['ptable'] as String?,
    );

Map<String, dynamic> _$$ReformatDiskImplToJson(_$ReformatDiskImpl instance) =>
    <String, dynamic>{
      'disk_id': instance.diskId,
      'ptable': instance.ptable,
    };

_$IdentityDataImpl _$$IdentityDataImplFromJson(Map<String, dynamic> json) =>
    _$IdentityDataImpl(
      realname: json['realname'] as String? ?? '',
      username: json['username'] as String? ?? '',
      cryptedPassword: json['crypted_password'] as String? ?? '',
      hostname: json['hostname'] as String? ?? '',
    );

Map<String, dynamic> _$$IdentityDataImplToJson(_$IdentityDataImpl instance) =>
    <String, dynamic>{
      'realname': instance.realname,
      'username': instance.username,
      'crypted_password': instance.cryptedPassword,
      'hostname': instance.hostname,
    };

_$SSHDataImpl _$$SSHDataImplFromJson(Map<String, dynamic> json) =>
    _$SSHDataImpl(
      installServer: json['install_server'] as bool,
      allowPw: json['allow_pw'] as bool,
      authorizedKeys: (json['authorized_keys'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SSHDataImplToJson(_$SSHDataImpl instance) =>
    <String, dynamic>{
      'install_server': instance.installServer,
      'allow_pw': instance.allowPw,
      'authorized_keys': instance.authorizedKeys,
    };

_$SSHIdentityImpl _$$SSHIdentityImplFromJson(Map<String, dynamic> json) =>
    _$SSHIdentityImpl(
      keyType: json['key_type'] as String,
      key: json['key'] as String,
      keyComment: json['key_comment'] as String,
      keyFingerprint: json['key_fingerprint'] as String,
    );

Map<String, dynamic> _$$SSHIdentityImplToJson(_$SSHIdentityImpl instance) =>
    <String, dynamic>{
      'key_type': instance.keyType,
      'key': instance.key,
      'key_comment': instance.keyComment,
      'key_fingerprint': instance.keyFingerprint,
    };

_$SSHFetchIdResponseImpl _$$SSHFetchIdResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SSHFetchIdResponseImpl(
      status: $enumDecode(_$SSHFetchIdStatusEnumMap, json['status']),
      identities: (json['identities'] as List<dynamic>?)
          ?.map((e) => SSHIdentity.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$SSHFetchIdResponseImplToJson(
        _$SSHFetchIdResponseImpl instance) =>
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

_$ChannelSnapInfoImpl _$$ChannelSnapInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelSnapInfoImpl(
      channelName: json['channel_name'] as String,
      revision: json['revision'] as String,
      confinement: json['confinement'] as String,
      version: json['version'] as String,
      size: json['size'] as int,
      releasedAt: DateTime.parse(json['released_at'] as String),
    );

Map<String, dynamic> _$$ChannelSnapInfoImplToJson(
        _$ChannelSnapInfoImpl instance) =>
    <String, dynamic>{
      'channel_name': instance.channelName,
      'revision': instance.revision,
      'confinement': instance.confinement,
      'version': instance.version,
      'size': instance.size,
      'released_at': instance.releasedAt.toIso8601String(),
    };

_$SnapInfoImpl _$$SnapInfoImplFromJson(Map<String, dynamic> json) =>
    _$SnapInfoImpl(
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

Map<String, dynamic> _$$SnapInfoImplToJson(_$SnapInfoImpl instance) =>
    <String, dynamic>{
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

_$DriversResponseImpl _$$DriversResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DriversResponseImpl(
      install: json['install'] as bool,
      drivers:
          (json['drivers'] as List<dynamic>?)?.map((e) => e as String).toList(),
      localOnly: json['local_only'] as bool,
      searchDrivers: json['search_drivers'] as bool,
    );

Map<String, dynamic> _$$DriversResponseImplToJson(
        _$DriversResponseImpl instance) =>
    <String, dynamic>{
      'install': instance.install,
      'drivers': instance.drivers,
      'local_only': instance.localOnly,
      'search_drivers': instance.searchDrivers,
    };

_$OEMResponseImpl _$$OEMResponseImplFromJson(Map<String, dynamic> json) =>
    _$OEMResponseImpl(
      metapackages: (json['metapackages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$OEMResponseImplToJson(_$OEMResponseImpl instance) =>
    <String, dynamic>{
      'metapackages': instance.metapackages,
    };

_$CodecsDataImpl _$$CodecsDataImplFromJson(Map<String, dynamic> json) =>
    _$CodecsDataImpl(
      install: json['install'] as bool,
    );

Map<String, dynamic> _$$CodecsDataImplToJson(_$CodecsDataImpl instance) =>
    <String, dynamic>{
      'install': instance.install,
    };

_$DriversPayloadImpl _$$DriversPayloadImplFromJson(Map<String, dynamic> json) =>
    _$DriversPayloadImpl(
      install: json['install'] as bool,
    );

Map<String, dynamic> _$$DriversPayloadImplToJson(
        _$DriversPayloadImpl instance) =>
    <String, dynamic>{
      'install': instance.install,
    };

_$SnapSelectionImpl _$$SnapSelectionImplFromJson(Map<String, dynamic> json) =>
    _$SnapSelectionImpl(
      name: json['name'] as String,
      channel: json['channel'] as String,
      classic: json['classic'] as bool? ?? false,
    );

Map<String, dynamic> _$$SnapSelectionImplToJson(_$SnapSelectionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'channel': instance.channel,
      'classic': instance.classic,
    };

_$SnapListResponseImpl _$$SnapListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SnapListResponseImpl(
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

Map<String, dynamic> _$$SnapListResponseImplToJson(
        _$SnapListResponseImpl instance) =>
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

_$TimeZoneInfoImpl _$$TimeZoneInfoImplFromJson(Map<String, dynamic> json) =>
    _$TimeZoneInfoImpl(
      timezone: json['timezone'] as String,
      fromGeoip: json['from_geoip'] as bool,
    );

Map<String, dynamic> _$$TimeZoneInfoImplToJson(_$TimeZoneInfoImpl instance) =>
    <String, dynamic>{
      'timezone': instance.timezone,
      'from_geoip': instance.fromGeoip,
    };

_$UbuntuProInfoImpl _$$UbuntuProInfoImplFromJson(Map<String, dynamic> json) =>
    _$UbuntuProInfoImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$UbuntuProInfoImplToJson(_$UbuntuProInfoImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$UbuntuProResponseImpl _$$UbuntuProResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UbuntuProResponseImpl(
      token: json['token'] as String,
      hasNetwork: json['has_network'] as bool,
    );

Map<String, dynamic> _$$UbuntuProResponseImplToJson(
        _$UbuntuProResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'has_network': instance.hasNetwork,
    };

_$UPCSInitiateResponseImpl _$$UPCSInitiateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UPCSInitiateResponseImpl(
      userCode: json['user_code'] as String,
      validitySeconds: json['validity_seconds'] as int,
    );

Map<String, dynamic> _$$UPCSInitiateResponseImplToJson(
        _$UPCSInitiateResponseImpl instance) =>
    <String, dynamic>{
      'user_code': instance.userCode,
      'validity_seconds': instance.validitySeconds,
    };

_$UPCSWaitResponseImpl _$$UPCSWaitResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UPCSWaitResponseImpl(
      status: $enumDecode(_$UPCSWaitStatusEnumMap, json['status']),
      contractToken: json['contract_token'] as String?,
    );

Map<String, dynamic> _$$UPCSWaitResponseImplToJson(
        _$UPCSWaitResponseImpl instance) =>
    <String, dynamic>{
      'status': _$UPCSWaitStatusEnumMap[instance.status]!,
      'contract_token': instance.contractToken,
    };

const _$UPCSWaitStatusEnumMap = {
  UPCSWaitStatus.SUCCESS: 'SUCCESS',
  UPCSWaitStatus.TIMEOUT: 'TIMEOUT',
};

_$UbuntuProServiceImpl _$$UbuntuProServiceImplFromJson(
        Map<String, dynamic> json) =>
    _$UbuntuProServiceImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      autoEnabled: json['auto_enabled'] as bool,
    );

Map<String, dynamic> _$$UbuntuProServiceImplToJson(
        _$UbuntuProServiceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'auto_enabled': instance.autoEnabled,
    };

_$UbuntuProSubscriptionImpl _$$UbuntuProSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$UbuntuProSubscriptionImpl(
      contractName: json['contract_name'] as String,
      accountName: json['account_name'] as String,
      contractToken: json['contract_token'] as String,
      services: (json['services'] as List<dynamic>)
          .map((e) => UbuntuProService.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UbuntuProSubscriptionImplToJson(
        _$UbuntuProSubscriptionImpl instance) =>
    <String, dynamic>{
      'contract_name': instance.contractName,
      'account_name': instance.accountName,
      'contract_token': instance.contractToken,
      'services': instance.services.map((e) => e.toJson()).toList(),
    };

_$UbuntuProCheckTokenAnswerImpl _$$UbuntuProCheckTokenAnswerImplFromJson(
        Map<String, dynamic> json) =>
    _$UbuntuProCheckTokenAnswerImpl(
      status: $enumDecode(_$UbuntuProCheckTokenStatusEnumMap, json['status']),
      subscription: json['subscription'] == null
          ? null
          : UbuntuProSubscription.fromJson(
              json['subscription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UbuntuProCheckTokenAnswerImplToJson(
        _$UbuntuProCheckTokenAnswerImpl instance) =>
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

_$WSLConfigurationBaseImpl _$$WSLConfigurationBaseImplFromJson(
        Map<String, dynamic> json) =>
    _$WSLConfigurationBaseImpl(
      automountRoot: json['automount_root'] as String? ?? '/mnt/',
      automountOptions: json['automount_options'] as String? ?? '',
      networkGeneratehosts: json['network_generatehosts'] as bool? ?? true,
      networkGenerateresolvconf:
          json['network_generateresolvconf'] as bool? ?? true,
    );

Map<String, dynamic> _$$WSLConfigurationBaseImplToJson(
        _$WSLConfigurationBaseImpl instance) =>
    <String, dynamic>{
      'automount_root': instance.automountRoot,
      'automount_options': instance.automountOptions,
      'network_generatehosts': instance.networkGeneratehosts,
      'network_generateresolvconf': instance.networkGenerateresolvconf,
    };

_$WSLConfigurationAdvancedImpl _$$WSLConfigurationAdvancedImplFromJson(
        Map<String, dynamic> json) =>
    _$WSLConfigurationAdvancedImpl(
      automountEnabled: json['automount_enabled'] as bool? ?? true,
      automountMountfstab: json['automount_mountfstab'] as bool? ?? true,
      interopEnabled: json['interop_enabled'] as bool? ?? true,
      interopAppendwindowspath:
          json['interop_appendwindowspath'] as bool? ?? true,
      systemdEnabled: json['systemd_enabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$WSLConfigurationAdvancedImplToJson(
        _$WSLConfigurationAdvancedImpl instance) =>
    <String, dynamic>{
      'automount_enabled': instance.automountEnabled,
      'automount_mountfstab': instance.automountMountfstab,
      'interop_enabled': instance.interopEnabled,
      'interop_appendwindowspath': instance.interopAppendwindowspath,
      'systemd_enabled': instance.systemdEnabled,
    };

_$WSLSetupOptionsImpl _$$WSLSetupOptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$WSLSetupOptionsImpl(
      installLanguageSupportPackages:
          json['install_language_support_packages'] as bool? ?? true,
    );

Map<String, dynamic> _$$WSLSetupOptionsImplToJson(
        _$WSLSetupOptionsImpl instance) =>
    <String, dynamic>{
      'install_language_support_packages':
          instance.installLanguageSupportPackages,
    };

_$TaskProgressImpl _$$TaskProgressImplFromJson(Map<String, dynamic> json) =>
    _$TaskProgressImpl(
      label: json['label'] as String? ?? '',
      done: json['done'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$TaskProgressImplToJson(_$TaskProgressImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'done': instance.done,
      'total': instance.total,
    };

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      kind: json['kind'] as String,
      summary: json['summary'] as String,
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      progress: TaskProgress.fromJson(json['progress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
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

_$ChangeImpl _$$ChangeImplFromJson(Map<String, dynamic> json) => _$ChangeImpl(
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

Map<String, dynamic> _$$ChangeImplToJson(_$ChangeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'summary': instance.summary,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'ready': instance.ready,
      'err': instance.err,
      'data': instance.data,
    };

_$MirrorCheckResponseImpl _$$MirrorCheckResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MirrorCheckResponseImpl(
      url: json['url'] as String,
      status: $enumDecode(_$MirrorCheckStatusEnumMap, json['status']),
      output: json['output'] as String,
    );

Map<String, dynamic> _$$MirrorCheckResponseImplToJson(
        _$MirrorCheckResponseImpl instance) =>
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

_$MirrorPostImpl _$$MirrorPostImplFromJson(Map<String, dynamic> json) =>
    _$MirrorPostImpl(
      elected: json['elected'] as String?,
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      staged: json['staged'] as String?,
    );

Map<String, dynamic> _$$MirrorPostImplToJson(_$MirrorPostImpl instance) =>
    <String, dynamic>{
      'elected': instance.elected,
      'candidates': instance.candidates,
      'staged': instance.staged,
    };

_$MirrorGetImpl _$$MirrorGetImplFromJson(Map<String, dynamic> json) =>
    _$MirrorGetImpl(
      relevant: json['relevant'] as bool,
      elected: json['elected'] as String?,
      candidates: (json['candidates'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      staged: json['staged'] as String?,
    );

Map<String, dynamic> _$$MirrorGetImplToJson(_$MirrorGetImpl instance) =>
    <String, dynamic>{
      'relevant': instance.relevant,
      'elected': instance.elected,
      'candidates': instance.candidates,
      'staged': instance.staged,
    };

_$AdConnectionInfoImpl _$$AdConnectionInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AdConnectionInfoImpl(
      adminName: json['admin_name'] as String? ?? '',
      domainName: json['domain_name'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$AdConnectionInfoImplToJson(
        _$AdConnectionInfoImpl instance) =>
    <String, dynamic>{
      'admin_name': instance.adminName,
      'domain_name': instance.domainName,
      'password': instance.password,
    };

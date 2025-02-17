import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_page.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

/// Available storage types.
@immutable
sealed class StorageType {
  const StorageType();

  static const StorageType alongside = StorageTypeAlongside();
  static const StorageType erase = StorageTypeErase();
  static const StorageType manual = StorageTypeManual();
}

/// Install alongside existing OS installation.
class StorageTypeAlongside extends StorageType {
  const StorageTypeAlongside();
}

/// Erase entire disk and perform guided partitioning.
class StorageTypeErase extends StorageType {
  const StorageTypeErase();
}

/// Erase an existing Ubuntu installation and replace
class StorageTypeEraseInstall extends StorageType {
  const StorageTypeEraseInstall(this.target);

  final GuidedStorageTargetEraseInstall target;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StorageTypeEraseInstall &&
            other.runtimeType == runtimeType &&
            other.target.diskId == target.diskId &&
            other.target.partitionNumber == target.partitionNumber);
  }

  @override
  int get hashCode => target.hashCode;
}

/// Manual partitioning.
class StorageTypeManual extends StorageType {
  const StorageTypeManual();
}

/// Provider for [StorageModel].
final storageModelProvider = ChangeNotifierProvider(
  (_) => StorageModel(
    getService<StorageService>(),
    tryGetService<TelemetryService>(),
    getService<ProductService>(),
    getService<SessionService>(),
  ),
);

/// View model for [StoragePage].
class StorageModel extends SafeChangeNotifier {
  /// Creates a new model with the given client and service.
  StorageModel(
    this._storage,
    this._telemetry,
    this._product,
    this._session,
  ) : showAdvanced = false;

  final StorageService _storage;
  final TelemetryService? _telemetry;
  final ProductService _product;
  final SessionService _session;
  bool showAdvanced;

  void toggleShowAdvanced() {
    showAdvanced = !showAdvanced;
    notifyListeners();
  }

  StorageType? _type;
  var _hasBitLocker = false;
  List<GuidedStorageTarget>? _targets;
  List<Disk> _disks = [];

  List<GuidedStorageTarget> getAllTargets() => _targets ?? [];

  Iterable<T> _getTargets<T extends GuidedStorageTarget>() =>
      _targets?.whereType<T>().where((t) => t.allowed.isNotEmpty) ?? [];

  Iterable<GuidedStorageTargetEraseInstall> getEraseInstallTargets() =>
      _getTargets<GuidedStorageTargetEraseInstall>();

  T? _firstTarget<T extends GuidedStorageTarget>() =>
      _getTargets<T>().firstOrNull;

  String? getEraseInstallOsName(GuidedStorageTargetEraseInstall target) {
    return _disks
        .firstWhere((d) => d.id == target.diskId)
        .partitions
        .whereType<Partition>()
        .firstWhere((p) => p.number == target.partitionNumber)
        .os
        ?.long;
  }

  /// The selected storage type.
  StorageType? get type => _type;
  set type(StorageType? type) {
    if (_type == type) return;
    _type = type;
    notifyListeners();
  }

  /// The selected guided target.
  GuidedStorageTarget? get guidedTarget => _storage.guidedTarget;

  /// The selected guided capability.
  GuidedCapability? get guidedCapability => _storage.guidedCapability;
  set guidedCapability(GuidedCapability? capability) {
    if (_storage.guidedCapability == capability) return;
    _storage.guidedCapability = capability;
    notifyListeners();
  }

  /// The version of the OS.
  ProductInfo get productInfo => _product.getProductInfo();

  /// The release notes URL.
  String getReleaseNotesURL(Locale locale) {
    return _product.getReleaseNotesURL(locale.languageCode);
  }

  /// The TPM info URL.
  final String tpmInfoUrl =
      'https://ubuntu.com/blog/tpm-backed-full-disk-encryption-is-coming-to-ubuntu';

  /// A list of existing OS installations or null if not detected.
  List<OsProber>? get existingOS => _storage.existingOS;

  /// Whether BitLocker is detected.
  bool get hasBitLocker => _hasBitLocker;

  /// Whether direct guided storage targets are available.
  bool get currentTargetSupportsDirect =>
      guidedTarget?.allowed.contains(GuidedCapability.DIRECT) ?? false;

  /// Whether or not the current guided storage target supports LVM guided capabilities.
  bool get currentTargetSupportsLvm =>
      guidedTarget?.allowed.any(
        (c) => c == GuidedCapability.LVM || c == GuidedCapability.LVM_LUKS,
      ) ??
      false;

  /// Whether or not the current guided storage target supports ZFS guided capabilities.
  bool get currentTargetSupportsZfs =>
      guidedTarget?.allowed.any(
        (c) =>
            c == GuidedCapability.ZFS ||
            c == GuidedCapability.ZFS_LUKS_KEYSTORE,
      ) ??
      false;

  /// Whether or not the current guided storage target supports TPM guided capabilities.
  bool get currentTargetSupportsTpm =>
      guidedTarget?.allowed.any(
        (c) =>
            c == GuidedCapability.CORE_BOOT_ENCRYPTED ||
            c == GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
      ) ??
      false;

  /// Whether DD guided capabilities are present in any guided storage target.
  bool get hasDd => _getTargets<GuidedStorageTargetReformat>()
      .any((t) => t.allowed.contains(GuidedCapability.DD));

  /// Whether installation alongside an existing OS is possible.
  ///
  /// That is, whether a) an existing partition can be safely resized smaller to
  /// make room for the installation, or b) there is a large enough unused gap.
  bool get canInstallAlongside {
    return (_getTargets<GuidedStorageTargetResize>().isNotEmpty ||
            _getTargets<GuidedStorageTargetUseGap>().isNotEmpty) &&
        !hasDd;
  }

  /// Whether erase and install is possible i.e. the erase and install target is allowed
  bool get canEraseAndInstall {
    return _getTargets<GuidedStorageTargetEraseInstall>().isNotEmpty && !hasDd;
  }

  /// Whether erasing the disk is possible i.e. whether any guided reformat
  /// targets are allowed.
  bool get canEraseDisk =>
      _getTargets<GuidedStorageTargetReformat>().isNotEmpty;

  /// Whether manual partitioning is possible i.e. whether a manual partitioning
  /// target is allowed.
  bool get canManualPartition {
    return _getTargets<GuidedStorageTargetManual>().isNotEmpty && !hasDd;
  }

  /// Whether any advanced features are available.
  bool get hasAdvancedFeatures =>
      (currentTargetSupportsLvm ||
          currentTargetSupportsZfs ||
          currentTargetSupportsTpm) &&
      !hasDd;

  /// Initializes the model.
  Future<void> init() async {
    await _storage.init();
    await _storage.getGuidedStorage().then((r) => _targets = r.targets);
    _type ??= canInstallAlongside
        ? StorageType.alongside
        : canEraseDisk
            ? StorageType.erase
            : canManualPartition
                ? StorageType.manual
                : null;
    _storage.guidedCapability ??= _targets
        ?.whereType<GuidedStorageTargetReformat>()
        .expand((t) => t.allowed)
        .firstOrNull;
    _hasBitLocker = await _storage.hasBitLocker();
    _disks = await _storage.getStorage();

    notifyListeners();
  }

  /// Saves the storage type selection.
  Future<void> save() async {
    final partitionMethod = _resolvePartitionMethod();
    if (partitionMethod != null) {
      await _telemetry?.addMetric('PartitionMethod', partitionMethod);
    }

    _storage.guidedTarget = switch (_type) {
      StorageTypeAlongside() => _firstTarget<GuidedStorageTargetResize>() ??
          _firstTarget<GuidedStorageTargetUseGap>(),
      StorageTypeErase() => _firstTarget<GuidedStorageTargetReformat>(),
      StorageTypeEraseInstall(target: final t) => t,
      // in the manual install case there is no guided target by definition
      StorageTypeManual() => null,
      null => null,
    };
  }

  String? _resolvePartitionMethod() {
    // All possible values for the partition method
    // were extracted from Ubiquity's ubi-partman.py
    // (see PageGtk.get_autopartition_choice()).
    if (guidedCapability == GuidedCapability.LVM) {
      return 'use_lvm';
    } else if (guidedCapability == GuidedCapability.ZFS) {
      return 'use_zfs';
    } else if (guidedCapability == GuidedCapability.LVM_LUKS) {
      return 'use_crypto';
    } else if (type == StorageType.erase) {
      return 'use_device';
    } else if (type == StorageType.alongside) {
      return 'resize_use_free';
    } else if (type == StorageType.manual) {
      return 'manual';
    } else if (type case StorageTypeEraseInstall()) {
      return 'replace_partition';
    }
    // TODO: map upgrading the current Ubuntu installation without
    // wiping the user's home directory (not implemented yet)
    // to the 'reuse_partition' method.

    return null;
  }

  Future<void> resetStorage() async {
    _disks = await _storage.resetStorage();
  }

  Future<void> reboot() => _session.reboot(immediate: true);

  @override
  String toString() {
    return '''
StorageModel(
  type: $type,
  guidedTarget: $guidedTarget,
  guidedCapability: $guidedCapability,
  productInfo: $productInfo,
  existingOS: $existingOS,
  hasBitLocker: $hasBitLocker,
  hasDirect: $currentTargetSupportsDirect,
  hasLvm: $currentTargetSupportsLvm,
  hasZfs: $currentTargetSupportsZfs,
  hasTpm: $currentTargetSupportsTpm,
  hasDd: $hasDd,
  canInstallAlongside: $canInstallAlongside,
  canEraseAndInstall: $canEraseAndInstall,
  canEraseDisk: $canEraseDisk,
  canManualPartition: $canManualPartition,
  hasAdvancedFeatures: $hasAdvancedFeatures,
)
''';
  }
}

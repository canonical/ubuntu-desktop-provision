import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_page.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('storage-model');

/// Available storage types.
enum StorageType {
  /// Erase entire disk and perform guided partitioning.
  erase,

  /// Erase an existing Ubuntu installation and replace
  eraseAndInstall,

  /// Install alongside existing OS installation.
  alongside,

  /// Manual partitioning.
  manual,
}

/// Provider for [StorageModel].
final storageModelProvider = ChangeNotifierProvider(
  (_) => StorageModel(
    getService<StorageService>(),
    tryGetService<TelemetryService>(),
    getService<ProductService>(),
  ),
);

/// View model for [StoragePage].
class StorageModel extends SafeChangeNotifier {
  /// Creates a new model with the given client and service.
  StorageModel(
    this._storage,
    this._telemetry,
    this._product,
  );

  final StorageService _storage;
  final TelemetryService? _telemetry;
  final ProductService _product;

  StorageType? _type;
  int? _eraseInstallIndex;
  var _hasBitLocker = false;
  List<GuidedStorageTarget>? _targets;
  var _disks = <String, Disk>{};

  List<GuidedStorageTarget> getAllTargets() => _targets ?? [];

  Iterable<T> _getTargets<T extends GuidedStorageTarget>() =>
      _targets?.whereType<T>().where((t) => t.allowed.isNotEmpty) ?? [];

  // FIXME: decide how to handle missing data
  //  - If any of the EraseInstall targets have an unknown diskId, or if
  //    the partition they are identifying doesn't have an OS on it then
  //    we're in a "subiquity gave us malformed state" situation and most
  //    likely need to error out / crash.
  Iterable<String> getEraseInstallOsNames() {
    return _getTargets<GuidedStorageTargetEraseInstall>().map(
      (target) => _disks[target.diskId]!
          .partitions
          .whereType<Partition>()
          .where((p) => p.number == target.partitionNumber)
          .first
          .os!
          .long,
    );
  }

  /// The selected storage type.
  StorageType? get type => _type;
  set type(StorageType? type) {
    if (_type == type) return;
    _type = type;
    notifyListeners();
  }

  /// The selected erase & install index (if there is one)
  int? get eraseInstallIndex => _eraseInstallIndex;
  set eraseInstallIndex(int? index) {
    if (_eraseInstallIndex == index) return;
    _eraseInstallIndex = index;
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
  bool get hasDirect => _getTargets<GuidedStorageTargetReformat>()
      .any((t) => t.allowed.contains(GuidedCapability.DIRECT));

  /// Whether LVM guided storage targets are available.
  bool get hasLvm => _getTargets<GuidedStorageTargetReformat>().any(
        (t) => t.allowed.any(
          (c) => c == GuidedCapability.LVM || c == GuidedCapability.LVM_LUKS,
        ),
      );

  /// Whether ZFS guided storage targets are available.
  bool get hasZfs => _getTargets<GuidedStorageTargetReformat>().any(
        (t) => t.allowed.any(
          (c) =>
              c == GuidedCapability.ZFS ||
              c == GuidedCapability.ZFS_LUKS_KEYSTORE,
        ),
      );

  /// Whether TPM is detected.
  bool get hasTpm => _getTargets<GuidedStorageTargetReformat>().any(
        (t) => t.allowed.any(
          (c) =>
              c == GuidedCapability.CORE_BOOT_ENCRYPTED ||
              c == GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
        ),
      );

  /// Whether DD guided storage targets are available.
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
  bool get canEraseDisk => hasDirect || hasLvm || hasZfs || hasTpm || hasDd;

  /// Whether manual partitioning is possible i.e. whether a manual partitioning
  /// target is allowed.
  bool get canManualPartition {
    return _getTargets<GuidedStorageTargetManual>().isNotEmpty && !hasDd;
  }

  /// Whether any advanced features are available.
  bool get hasAdvancedFeatures => (hasLvm || hasZfs || hasTpm) && !hasDd;

  /// Initializes the model.
  Future<void> init() async {
    await _storage.init();
    await _storage.getGuidedStorage().then((r) => _targets = r.targets);
    _type ??= canEraseAndInstall
        ? StorageType.eraseAndInstall
        : canInstallAlongside
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

    final disks = await _storage.getStorage();
    _disks = {for (final disk in disks) disk.id: disk};

    notifyListeners();
  }

  /// Saves the storage type selection.
  Future<void> save() async {
    final partitionMethod = _resolvePartitionMethod();
    if (partitionMethod != null) {
      await _telemetry?.addMetric('PartitionMethod', partitionMethod);
    }
    if (_type == StorageType.eraseAndInstall) {
      final eraseInstallTargets =
          _getTargets<GuidedStorageTargetEraseInstall>().toList();
      _log.warning(eraseInstallTargets[_eraseInstallIndex!]);
      _storage.guidedTarget = eraseInstallTargets[_eraseInstallIndex!];
    }
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
    } else if (type == StorageType.eraseAndInstall) {
      return 'reuse_partition'; // FIXME: is this correct? See TODO below
    }
    // TODO: map upgrading the current Ubuntu installation without
    // wiping the user's home directory (not implemented yet)
    // to the 'reuse_partition' method.
    return null;
  }

  Future<void> resetStorage() async {
    final disks = await _storage.resetStorage();
    _disks = {for (final disk in disks) disk.id: disk};
  }

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
  hasDirect: $hasDirect,
  hasLvm: $hasLvm,
  hasZfs: $hasZfs,
  hasTpm: $hasTpm,
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

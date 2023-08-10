import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

/// Available storage types.
enum StorageType {
  /// Erase entire disk and perform guided partitioning.
  erase,

  /// Install alongside existing OS installation.
  alongside,

  /// Manual partitioning.
  manual,
}

/// Provider for [StorageModel].
final storageModelProvider = ChangeNotifierProvider((_) => StorageModel(
      getService<StorageService>(),
      tryGetService<TelemetryService>(),
      getService<ProductService>(),
    ));

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
  var _hasBitLocker = false;
  List<GuidedStorageTarget>? _targets;

  Iterable<T> _getTargets<T extends GuidedStorageTarget>() =>
      _targets?.whereType<T>().where((t) => t.allowed.isNotEmpty) ?? [];

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

  /// A list of existing OS installations or null if not detected.
  List<OsProber>? get existingOS => _storage.existingOS;

  /// Whether BitLocker is detected.
  bool get hasBitLocker => _hasBitLocker;

  /// Whether direct guided storage targets are available.
  bool get hasDirect => _getTargets<GuidedStorageTargetReformat>()
      .any((t) => t.allowed.contains(GuidedCapability.DIRECT));

  /// Whether LVM guided storage targets are available.
  bool get hasLvm => _getTargets<GuidedStorageTargetReformat>().any((t) => t
      .allowed
      .any((c) => c == GuidedCapability.LVM || c == GuidedCapability.LVM_LUKS));

  /// Whether ZFS guided storage targets are available.
  bool get hasZfs => _getTargets<GuidedStorageTargetReformat>()
      .any((t) => t.allowed.contains(GuidedCapability.ZFS));

  /// Whether TPM is detected.
  bool get hasTpm =>
      _getTargets<GuidedStorageTargetReformat>().any((t) => t.allowed.any((c) =>
          c == GuidedCapability.CORE_BOOT_ENCRYPTED ||
          c == GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED));

  /// Whether DD guided storage targets are available.
  bool get hasDd => _getTargets<GuidedStorageTargetReformat>()
      .any((t) => t.allowed.contains(GuidedCapability.DD));

  /// Whether installation alongside an existing OS is possible.
  ///
  /// That is, whether a) an existing partition can be safely resized smaller to
  /// make room for the installation, or b) there is a large enough unused gap.
  bool get canInstallAlongside {
    return _getTargets<GuidedStorageTargetResize>().isNotEmpty ||
        _getTargets<GuidedStorageTargetUseGap>().isNotEmpty;
  }

  /// Whether erasing the disk is possible i.e. whether any guided reformat
  /// targets are allowed.
  bool get canEraseDisk => hasDirect || hasLvm || hasZfs || hasTpm || hasDd;

  /// Whether manual partitioning is possible i.e. whether a manual partitioning
  /// target is allowed.
  bool get canManualPartition {
    return _getTargets<GuidedStorageTargetManual>().isNotEmpty;
  }

  /// Whether any advanced features are available.
  bool get hasAdvancedFeatures => hasLvm || hasZfs || hasTpm;

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
        .toSet()
        .firstOrNull;
    _hasBitLocker = await _storage.hasBitLocker();
    notifyListeners();
  }

  /// Saves the storage type selection.
  Future<void> save() async {
    final partitionMethod = _resolvePartitionMethod();
    if (partitionMethod != null) {
      await _telemetry?.addMetric('PartitionMethod', partitionMethod);
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
    }
    // TODO: map upgrading the current Ubuntu installation without
    // wiping the user's home directory (not implemented yet)
    // to the 'reuse_partition' method.
    return null;
  }

  Future<void> resetStorage() => _storage.resetStorage();
}

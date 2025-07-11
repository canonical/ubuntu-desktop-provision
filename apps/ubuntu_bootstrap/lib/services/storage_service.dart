import 'dart:math' as math;

import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

export 'package:subiquity_client/subiquity_client.dart'
    show Disk, DiskX, Partition;

final _log = Logger('storage');

/// Type of the passphrase to be used - [none] and [pin] are only supported for TPM FDE
enum PassphraseType {
  passphrase,
  none,
  pin,
}

/// Provides means to read and modify the storage configuration.
class StorageService {
  /// Creates the service with the given [_client].
  StorageService(this._client);

  final SubiquityClient _client;

  /// Initializes the service.
  Future<void> init() {
    _guidedTarget = null;
    _guidedCapability = null;
    return _client.getStorageV2().then(_updateStorage);
  }

  bool? _needRoot;
  bool? _needBoot;
  bool? _hasMultipleDisks;
  int? _installMinimumSize;
  int? _largestDiskSize;
  List<OsProber>? _existingOS;
  GuidedStorageTarget? _guidedTarget;
  GuidedCapability? _guidedCapability;
  String? _passphrase;
  PassphraseType _passphraseType = PassphraseType.passphrase;

  /// Whether the system has multiple disks available for guided partitioning.
  bool get hasMultipleDisks => _hasMultipleDisks ?? false;

  /// Whether the storage configuration is missing a root partition.
  bool get needRoot => _needRoot ?? true;

  /// Whether the storage configuration is missing a boot partition.
  bool get needBoot => _needBoot ?? true;

  /// Whether Secure Boot is enabled.
  Future<bool> hasSecureBoot() async => false; // TODO: add support for it

  /// A passphrase for full disk encryption.
  String? get passphrase => _passphrase;
  set passphrase(String? passphrase) {
    if (passphrase != null) {
      final hiddenKey = '*' * passphrase.length;
      _log.debug('set passphrase: $hiddenKey');
    }
    _passphrase = passphrase;
  }

  /// The type of the passphrase, defaulting to [passphrase] for non-TPM cases
  PassphraseType get passphraseType => _passphraseType;
  set passphraseType(PassphraseType passphraseType) {
    if (_passphraseType == passphraseType) return;
    _log.debug('set passphrase type: $passphraseType');
    _passphraseType = passphraseType;
  }

  /// A guided storage target.
  GuidedStorageTarget? get guidedTarget => _guidedTarget;
  set guidedTarget(GuidedStorageTarget? target) {
    _log.debug('select guided target: $target');
    _guidedTarget = target;
  }

  /// The selected guided capability.
  GuidedCapability? get guidedCapability => _guidedCapability;
  set guidedCapability(GuidedCapability? capability) {
    _log.debug('select guided capability: $capability');
    _guidedCapability = capability;

    if ([
      GuidedCapability.CORE_BOOT_ENCRYPTED,
      GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
    ].contains(guidedCapability)) {
      passphraseType = PassphraseType.none;
    } else {
      passphraseType = PassphraseType.passphrase;
    }
  }

  /// A list of existing OS installations or null if not detected.
  List<OsProber>? get existingOS => _existingOS;

  /// The minimum size required for the installation.
  int get installMinimumSize => _installMinimumSize ?? 0;

  /// The size of the largest disk.
  int get largestDiskSize => _largestDiskSize ?? 0;

  /// Fetches whether the system has BitLocker enabled.
  Future<bool> hasBitLocker() => _client.hasBitLocker();

  /// Fetches the current guided storage configuration.
  Future<GuidedStorageResponseV2> getGuidedStorage() async {
    return _client.getGuidedStorageV2();
  }

  /// Sets the selected target for guided partitioning.
  Future<void> setGuidedStorage() async {
    await _client.resetStorageV2();
    await _client.setGuidedStorageV2(
      GuidedChoiceV2(
        target: guidedTarget!,
        password:
            passphraseType == PassphraseType.passphrase ? passphrase : null,
        pin: passphraseType == PassphraseType.pin ? passphrase : null,
        capability: guidedCapability ?? guidedTarget!.allowed.first,
        sizingPolicy: SizingPolicy.ALL,
      ),
    );
    await _client.setStorageV2();
  }

  List<Disk> _updateStorage(StorageResponseV2 response) {
    _log.debug('Update storage: $response');
    _needRoot = response.needRoot;
    _needBoot = response.needBoot;
    _hasMultipleDisks = response.disks.length > 1;
    _installMinimumSize = response.installMinimumSize;
    _largestDiskSize = response.disks.map((d) => d.size).fold<int>(0, math.max);
    _existingOS = response.disks
        .expand(
          (d) => d.partitions
              .whereType<Partition>()
              .map((p) => p.os)
              .whereType<OsProber>(),
        )
        .toList();
    return response.disks;
  }

  /// Fetches the current storage configuration.
  Future<List<Disk>> getStorage() {
    return _client.getStorageV2().then(_updateStorage);
  }

  /// Fetches the original storage configuration.
  Future<List<Disk>> getOriginalStorage() {
    return _client.getOriginalStorageV2().then((r) => r.disks);
  }

  /// Adds a [partition] in the specified [gap] on the [disk], and returns the
  /// new storage configuration.
  ///
  /// NOTE: The new partition is allowed to specify the following attributes:
  /// - [Partition.size]
  /// - [Partition.format]
  /// - [Partition.mount]
  Future<List<Disk>> addPartition(Disk disk, Gap gap, Partition partition) {
    return _client.addPartitionV2(disk, gap, partition).then(_updateStorage);
  }

  /// Edits a [partition] on the specified [disk] and returns the new storage
  /// configuration.
  ///
  /// NOTE: The edited partition is allowed to specify the following attributes:
  /// - [Partition.format]
  /// - [Partition.wipe]
  /// - [Partition.mount]
  Future<List<Disk>> editPartition(Disk disk, Partition partition) {
    return _client.editPartitionV2(disk, partition).then(_updateStorage);
  }

  /// Deletes a [partition] from the specified [disk] and returns the new
  /// storage configuration.
  Future<List<Disk>> deletePartition(Disk disk, Partition partition) {
    return _client.deletePartitionV2(disk, partition).then(_updateStorage);
  }

  /// Applies the current storage configuration on the system.
  Future<List<Disk>> setStorage() {
    return _client.setStorageV2().then(_updateStorage);
  }

  /// Resets the current storage configuration to allow reverting back to the
  /// original configuration.
  Future<List<Disk>> resetStorage() {
    _guidedTarget = null;
    return _client.resetStorageV2().then(_updateStorage);
  }

  /// Adds a boot partition on the specified [disk].
  Future<List<Disk>> addBootPartition(Disk disk) {
    return _client.addBootPartitionV2(disk).then(_updateStorage);
  }

  /// Reformats the specified [disk], to create a new partition table.
  Future<List<Disk>> reformatDisk(Disk disk) {
    return _client.reformatDiskV2(disk).then(_updateStorage);
  }

  /// Returns the recovery key for CORE_BOOT_ENCRYPTED guided scenarios. Needs
  /// to be called after [setGuidedStorage].
  Future<String> getCoreBootRecoveryKey() {
    return _client.getCoreBootRecoveryKeyV2();
  }
}

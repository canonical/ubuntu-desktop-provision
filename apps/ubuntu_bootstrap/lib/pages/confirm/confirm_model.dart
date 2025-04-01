import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/confirm/confirm_page.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/services.dart';

final confirmModelProvider = ChangeNotifierProvider(
  (_) => ConfirmModel(
    getService<InstallerService>(),
    getService<StorageService>(),
    getService<NetworkService>(),
    getService<ProductService>(),
    getService<SessionService>(),
  ),
);

/// View model for [ConfirmPage].
class ConfirmModel extends SafeChangeNotifier {
  /// Creates a model with the given installer and storage services.
  ConfirmModel(
    this._installer,
    this._storage,
    this._network,
    this._product,
    this._session,
  );

  final InstallerService _installer;
  final StorageService _storage;
  final NetworkService _network;
  final ProductService _product;
  final SessionService _session;
  List<Disk>? _disks;
  Map<String, List<Partition>>? _partitions;
  Map<String, List<Partition>>? _originals;

  /// The list of all disks
  List<Disk> get disks => _disks ?? [];

  /// The list of non-preserved disks, and preserved disks with any modified
  /// partitions.
  List<Disk> get modifiedDisks =>
      _disks
          ?.where(
            (d) =>
                d.preserve == false ||
                d.partitions.whereType<Partition>().any(
                      (p) =>
                          p.wipe != null ||
                          p.mount != null ||
                          (p.resize ?? false) ||
                          p.preserve == false,
                    ),
          )
          .toList() ??
      [];

  /// A map of changed partitions per each disk (sysname).
  Map<String, List<Partition>> get partitions => _partitions ?? {};

  var _hasBitLocker = false;

  /// Returns the original configuration of the specified partition.
  Partition? getOriginalPartition(String sysname, int number) {
    return _originals?[sysname]?.firstWhereOrNull((p) => p.number == number);
  }

  /// The selected guided storage target.
  GuidedStorageTarget? get guidedTarget => _storage.guidedTarget;

  /// The selected guided capability.
  GuidedCapability? get guidedCapability => _storage.guidedCapability;

  /// The version of the OS.
  ProductInfo get productInfo => _product.getProductInfo();

  /// A list of existing OS installations or null if not detected.
  List<OsProber>? get existingOS => _storage.existingOS;

  /// Whether BitLocker is detected.
  bool get hasBitLocker => _hasBitLocker;

  String? getEraseInstallOsName(GuidedStorageTargetEraseInstall target) {
    return disks
        .firstWhere((d) => d.id == target.diskId)
        .partitions
        .whereType<Partition>()
        .firstWhere((p) => p.number == target.partitionNumber)
        .os
        ?.long;
  }

  /// Initializes the model.
  Future<void> init() async {
    _hasBitLocker = await _storage.hasBitLocker();
    if (_storage.guidedTarget != null) {
      await _storage.setGuidedStorage();
    }
    await _storage.getStorage().then(_updateDisks);
    _originals = await _storage.getOriginalStorage().then(
          (disks) => Map.fromEntries(
            disks.map(
              (d) => MapEntry(
                d.sysname,
                d.partitions.whereType<Partition>().toList(),
              ),
            ),
          ),
        );
    notifyListeners();
  }

  /// Starts the installation process.
  Future<void> startInstallation() async {
    _storage.passphrase = null; // no longer needed
    await _installer.start();
  }

  Future<void> markNetworkConfigured() => _network.markConfigured();

  void _updateDisks(List<Disk> disks) {
    _disks = disks;
    _partitions = Map.fromEntries(
      disks.map((disk) {
        final partitions = disk.partitions.whereType<Partition>().toList();
        return MapEntry(disk.sysname, partitions);
      }).where((entry) => entry.value.isNotEmpty),
    );
    notifyListeners();
  }

  Future<void> reboot() => _session.reboot(immediate: true);
}

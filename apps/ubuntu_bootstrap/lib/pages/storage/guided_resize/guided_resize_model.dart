import 'package:collection/collection.dart' hide ListExtensions;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/guided_resize_page.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/services.dart';

/// Provider for [GuidedResizeModel].
final guidedResizeModelProvider = ChangeNotifierProvider(
  (_) => GuidedResizeModel(
    getService<StorageService>(),
    getService<ProductService>(),
    getService<SessionService>(),
  ),
);

/// View model for [GuidedResizePage].
class GuidedResizeModel extends SafeChangeNotifier {
  /// Creates a new model with the given service.
  GuidedResizeModel(this._storage, this._product, this._session);

  final StorageService _storage;
  final ProductService _product;
  final SessionService _session;
  var _storages = <GuidedStorageTargetResize>[];
  var _disks = <String, Disk>{};
  int? _selectedIndex;
  int? _currentSize;
  var _hasBitLocker = false;
  var _bitLockerPartitions = <Partition>[];

  /// Detailed info of the product being installed.
  ProductInfo get productInfo => _product.getProductInfo();

  /// A list of existing OS installations or empty if not detected.
  List<OsProber> get existingOS => _storage.existingOS ?? [];

  /// Number of storages available for guided partitioning.
  int get storageCount => _storages.length;

  /// The current size of the selected storage.
  int get currentSize => _currentSize ?? selectedStorage?.recommended ?? 0;

  /// The minimum size of the selected storage.
  int get minimumSize => selectedStorage?.minimum ?? 0;

  /// The maximum size of the selected storage.
  int get maximumSize => selectedStorage?.maximum ?? 1;

  /// The total size of the selected storage.
  int get totalSize => selectedPartition?.size ?? 0;

  /// The index of the currently selected storage.
  int? get selectedIndex => _selectedIndex;

  /// The disk of the currently selected guided storage.
  Disk? get selectedDisk => getDisk(_selectedIndex ?? -1);

  /// An existing OS on the currently selected guided storage.
  OsProber? get selectedOS => getOS(_selectedIndex ?? -1);

  /// The partition of the currently selected guided storage.
  Partition? get selectedPartition => getPartition(_selectedIndex ?? -1);

  /// Whether BitLocker is detected.
  bool get hasBitLocker => _hasBitLocker;

  List<Partition> get bitLockerPartitions => _bitLockerPartitions;

  /// The currently selected guided storage.
  GuidedStorageTargetResize? get selectedStorage {
    return getStorage(_selectedIndex ?? -1);
  }

  /// Returns the guided storage at the given index.
  GuidedStorageTargetResize? getStorage(int index) {
    return index >= 0 ? _storages.elementAtOrNull(index) : null;
  }

  /// Returns the disk of the guided storage at the given index.
  Disk? getDisk(int index) => _disks[getStorage(index)?.diskId ?? ''];

  /// Returns an existing OS on the guided storage at the given index.
  ///
  /// Prioritizes the OS on the specific partition of the storage at the given
  /// index. Falls back to an OS detected on another partition of the same disk
  /// but only if a single OS is detected.
  OsProber? getOS(int index) {
    return getPartition(index)?.os ??
        getDisk(index)
            ?.partitions
            .whereType<Partition>()
            .singleWhereOrNull((p) => p.os != null)
            ?.os;
  }

  /// Returns the partition of the guided storage at the given index.
  Partition? getPartition(int index) {
    final number = getStorage(index)?.partitionNumber;
    if (number == null) return null;
    return getAllPartitions(index)?.firstWhereOrNull((p) => p.number == number);
  }

  /// Returns all partitions of the disk of the guided storage at the
  /// given index.
  List<Partition>? getAllPartitions(int index) {
    return getDisk(index)?.partitions.whereType<Partition>().toList();
  }

  /// Selects a guided storage.
  void selectStorage(int? index) {
    if (_selectedIndex == index) return;
    _selectedIndex = index;
    _currentSize = null;
    notifyListeners();
  }

  /// Resizes the selected guided storage.
  void resizeStorage(int newSize) {
    final size = newSize.clamp(minimumSize, maximumSize);
    if (_currentSize == size) return;
    _currentSize = size;
    notifyListeners();
  }

  void _updateStorage(GuidedStorageResponseV2 response) {
    _storages = response.targets
        .whereType<GuidedStorageTargetResize>()
        .where((t) => t.allowed.isNotEmpty)
        .toList();
    _selectedIndex = _storages.isEmpty ? null : 0;
    notifyListeners();
  }

  void _updateBitLockerPartitions(List<Disk> disks) {
    _bitLockerPartitions = disks
        .map(
          (d) => d.partitions
              .whereType<Partition>()
              .where((p) => p.format?.toLowerCase() == 'bitlocker'),
        )
        .expand((e) => e)
        .toList();
  }

  /// Loads the targets available for guided resizing and returns true if there
  /// there are any available.
  Future<bool> init() async {
    _hasBitLocker = await _storage.hasBitLocker();
    return _storage.getStorage().then((disks) async {
      _disks = {for (final disk in disks) disk.id: disk};
      final response = await _storage.getGuidedStorage();
      _updateBitLockerPartitions(disks);
      _updateStorage(response);
      final gaps = response.targets
          .whereType<GuidedStorageTargetUseGap>()
          .where((t) => t.allowed.isNotEmpty);
      if (gaps.isNotEmpty) {
        _storage.guidedTarget =
            gaps.sorted((a, b) => a.gap.size.compareTo(b.gap.size)).lastOrNull;
        return false;
      }
      return true;
    });
  }

  /// Saves the guided storage selection.
  Future<void> save() async {
    final storage = selectedStorage!.copyWith(newSize: currentSize);
    _storage.guidedTarget = storage;
  }

  /// Resets the guided storage selection.
  Future<void> reset() {
    return _storage
        .resetStorage()
        .then((_) => _storage.getGuidedStorage().then(_updateStorage));
  }

  Future<void> reboot() => _session.reboot(immediate: true);
}

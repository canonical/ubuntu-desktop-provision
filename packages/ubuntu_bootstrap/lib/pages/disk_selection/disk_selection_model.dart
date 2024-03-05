import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

final _log = Logger('disk-selection');

final diskSelectionModelProvider = ChangeNotifierProvider(
  (_) => DiskSelectionModel(
    client: getService<SubiquityClient>(),
  ),
);

class DiskSelectionModel extends SafeChangeNotifier
    with PropertyStreamNotifier {
  DiskSelectionModel({required SubiquityClient client}) : _client = client;

  final SubiquityClient _client;

  Disk? _selectedDisk;
  Disk? get selectedDisk => _selectedDisk;

  List<Disk>? _disks;
  List<Disk> get disks => _disks ?? [];

  void setSelectedDisk(Disk? disk) {
    _selectedDisk = disk;
    _log.info('User selected disk: $disk');
    notifyListeners();
  }

  /// Select the source corresponding to the selected installation mode, and
  /// save the selected installation options.
  Future<void> save() {
    return Future.wait([]);
  }

  /// Initializes the model and gets the list of disks.
  Future<void> init() async {
    _disks = (await _client.getStorageV2()).disks;
    _selectedDisk = _disks?.firstOrNull;
    notifyListeners();
  }
}

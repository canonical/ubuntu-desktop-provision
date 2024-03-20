import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_provision/src/services/setup_machine_service.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final _log = Logger('setup_machine');

final setupMachineModelProvider = ChangeNotifierProvider(
    (_) => SetupMachineModel(/* getService<SetupMachineService>() */));

enum MachineType { personal, managed }

class SetupMachineModel extends SafeChangeNotifier {
  /// Creates a model with the specified service.
  SetupMachineModel(/* this._service */);

  //final SetupMachineService _service;

  bool isPersonalMachine = true; // machineType = MachineType.personal;

  /// Updates the system's input source to match the selected keyboard layout
  /// and variant.
  Future<void> updateMachineType(bool? type) async {
    if (type == null) return;

    isPersonalMachine = type;
    notifyListeners();
  }

  /// Saves the selected keyboard layout and variant.
  /* Future<void> save() {
    _log.info('Saved as a (${machineType.name}) machine type');
    //return _service.setMachineType(machineType);
  } */
}

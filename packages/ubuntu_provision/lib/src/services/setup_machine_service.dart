import 'package:ubuntu_provision/src/setup_machine/setup_machine_model.dart';

abstract class SetupMachineService {
  Future<void> setMachineType(MachineType type);
}

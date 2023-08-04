import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/services/storage_service.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

const kRecoveryKeyCommand = 'snap recovery --show-keys';

final recoveryKeyModelProvider = Provider(
  (_) => RecoveryKeyModel(getService<StorageService>()),
);

class RecoveryKeyModel {
  RecoveryKeyModel(this._storage);

  final StorageService _storage; // ignore: unused_field

  // TODO: TPM
  Future<bool> init() async => false;
}

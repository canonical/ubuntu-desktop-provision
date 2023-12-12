import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

import '../../../services/storage_service.dart';

const kRecoveryKeyCommand = 'snap recovery --show-keys';

final recoveryKeyModelProvider = Provider(
  (_) => RecoveryKeyModel(getService<StorageService>()),
);

class RecoveryKeyModel {
  RecoveryKeyModel(this._storage);

  final StorageService _storage;

  Future<bool> init() async {
    return switch (_storage.guidedCapability) {
      GuidedCapability.CORE_BOOT_ENCRYPTED => true,
      GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED => true,
      _ => false,
    };
  }
}

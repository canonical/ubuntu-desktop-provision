import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/services/storage_service.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

const kRecoveryKeyCommand = 'snap recovery --show-keys';

final recoveryKeyModelProvider = ChangeNotifierProvider(
  (_) => RecoveryKeyModel(storage: getService<StorageService>()),
);

class RecoveryKeyModel extends SafeChangeNotifier {
  RecoveryKeyModel({
    required StorageService storage,
    bool confirmed = false,
  })  : _storage = storage,
        _confirmed = confirmed;

  final StorageService _storage;
  bool _confirmed;

  bool get confirmed => _confirmed;

  void setConfirmed(bool? confirmed) {
    if (confirmed == null || _confirmed == confirmed) {
      return;
    }
    _confirmed = confirmed;
    notifyListeners();
  }

  Future<bool> init() async {
    return switch (_storage.guidedCapability) {
      GuidedCapability.CORE_BOOT_ENCRYPTED => true,
      GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED => true,
      _ => false,
    };
  }
}

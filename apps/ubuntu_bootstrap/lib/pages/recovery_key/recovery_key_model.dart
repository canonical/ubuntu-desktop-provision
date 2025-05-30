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

  late final String _recoveryKey;
  String get recoveryKey => _recoveryKey;

  Future<bool> init() async {
    if (![
      GuidedCapability.CORE_BOOT_ENCRYPTED,
      GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
    ].contains(_storage.guidedCapability)) {
      return false;
    }
    _recoveryKey = await _storage.getCoreBootRecoveryKey();
    return true;
  }
}

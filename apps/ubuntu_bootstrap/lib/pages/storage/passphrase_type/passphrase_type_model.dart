import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/services.dart';

final passphraseTypeModelProvider = ChangeNotifierProvider(
  (_) => PassphraseTypeModel(getService<StorageService>()),
);

class PassphraseTypeModel extends SafeChangeNotifier {
  PassphraseTypeModel(this._service) {
    _passphraseType.addListener(notifyListeners);
  }
  final StorageService _service;
  final _passphraseType = ValueNotifier(PassphraseType.passphrase);

  bool init() {
    _passphraseType.value = _service.passphraseType;
    return [
      GuidedCapability.CORE_BOOT_ENCRYPTED,
      GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
    ].contains(_service.guidedCapability);
  }

  PassphraseType get passphraseType => _passphraseType.value;
  set passphraseType(PassphraseType passphraseType) =>
      _passphraseType.value = _service.passphraseType = passphraseType;
}

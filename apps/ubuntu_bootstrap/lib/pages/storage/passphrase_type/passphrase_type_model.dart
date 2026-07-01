import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('passphrase_type_model');

final passphraseTypeModelProvider = ChangeNotifierProvider(
  (_) => PassphraseTypeModel(getService<StorageService>()),
);

class PassphraseTypeModel extends SafeChangeNotifier {
  PassphraseTypeModel(this._service) {
    _passphraseType.addListener(notifyListeners);
  }
  final StorageService _service;
  final _passphraseType = ValueNotifier(PassphraseType.passphrase);
  final Set<PassphraseType> supportedTypes = {};

  Future<bool> init() async {
    _passphraseType.value = _service.passphraseType;
    if (![
      GuidedCapability.CORE_BOOT_ENCRYPTED,
      GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
    ].contains(_service.guidedCapability)) {
      _log.info('no TPM/FDE support, skipping');
      return false;
    }
    supportedTypes.clear();
    final encryptionFeatures = await _service.getCoreBootEncryptionFeatures();
    final encryptionRequirements =
        await _service.getCoreBootEncryptionRequirements();
    if (encryptionFeatures.isEmpty && encryptionRequirements.isEmpty) {
      _service.passphraseType = PassphraseType.none;
      supportedTypes.add(PassphraseType.none);
      _log.info(
        'no additional encryption features available and none required, skipping',
      );
      return false;
    }
    if (!encryptionRequirements
        .contains(CoreBootEncryptionRequirement.VOLUMES_AUTH)) {
      supportedTypes.add(PassphraseType.none);
    }
    supportedTypes.addAll(
      encryptionFeatures.map(
        (f) => switch (f) {
          CoreBootEncryptionFeatures.PIN_AUTH => PassphraseType.pin,
          CoreBootEncryptionFeatures.PASSPHRASE_AUTH =>
            PassphraseType.passphrase
        },
      ),
    );
    _log.info('available encryption features: $supportedTypes');
    return true;
  }

  PassphraseType get passphraseType => _passphraseType.value;
  set passphraseType(PassphraseType passphraseType) =>
      _passphraseType.value = _service.passphraseType = passphraseType;
}

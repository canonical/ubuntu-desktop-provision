import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_page.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('passphrase_model');

enum SemanticEntropy {
  belowMin,
  belowOptimal,
  optimal;
}

extension EntropyResponseX on EntropyResponse {
  SemanticEntropy get semanticEntropy {
    if (minEntropyBits > optimalEntropyBits) {
      _log.info(
        'received entropy response with minEntropyBits > optimalEntropyBits: $this',
      );
    }
    if (entropyBits < minEntropyBits) {
      return SemanticEntropy.belowMin;
    } else if (entropyBits < optimalEntropyBits) {
      return SemanticEntropy.belowOptimal;
    }
    return SemanticEntropy.optimal;
  }
}

/// Provider for [PassphraseModel].
final passphraseModelProvider = ChangeNotifierProvider(
  (_) => PassphraseModel(
    getService<StorageService>(),
    getService<SubiquityClient>(),
  ),
);

/// View model for [PassphrasePage].
class PassphraseModel extends SafeChangeNotifier {
  /// Creates the model with the given client.
  PassphraseModel(this._storageService, this._subiquityClient) {
    Listenable.merge([
      _passphrase,
      _confirmedPassphrase,
      _showPassphrase,
      _entropy,
    ]).addListener(notifyListeners);
  }

  final StorageService _storageService;
  final SubiquityClient _subiquityClient;

  final _passphrase = ValueNotifier('');
  final _confirmedPassphrase = ValueNotifier('');
  final _showPassphrase = ValueNotifier(false);
  final _entropy = ValueNotifier<EntropyResponse?>(null);

  static const _debounceDuration = Duration(milliseconds: 500);
  Timer? _updateEntropyTimer;
  Timer? _confirmPassphraseTimer;

  /// The current passphrase.
  String get passphrase => _passphrase.value;
  void setPassphraseAndEntropy(
    String passphrase, {
    bool debounce = false,
  }) {
    _updateEntropyTimer?.cancel();
    _updateEntropyTimer = Timer(
      debounce && passphrase.isNotEmpty ? _debounceDuration : Duration.zero,
      () {
        _passphrase.value = passphrase;
        if (isTpm) {
          if (_passphrase.value.isEmpty) {
            _entropy.value = null;
            return;
          }
          _subiquityClient
              .calculateEntropyV2(
                passphrase: passphraseType == PassphraseType.passphrase
                    ? _passphrase.value
                    : null,
                pin: passphraseType == PassphraseType.pin
                    ? _passphrase.value
                    : null,
              )
              .then((response) => _entropy.value = response);
        }
      },
    );
  }

  /// The confirmed passphrase for validation.
  String get confirmedPassphrase => _confirmedPassphrase.value;
  void setConfirmedPassphrase(String value, {bool debounce = false}) {
    _confirmPassphraseTimer?.cancel();
    _confirmPassphraseTimer = Timer(
      debounce && value.isNotEmpty ? _debounceDuration : Duration.zero,
      () => _confirmedPassphrase.value = value,
    );
  }

  /// Defines if the passphrase is shown.
  bool get showPassphrase => _showPassphrase.value;
  set showPassphrase(bool value) => _showPassphrase.value = value;

  /// Defines whether or not the user has selected TPM FDE
  bool get isTpm => [
        GuidedCapability.CORE_BOOT_ENCRYPTED,
        GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
      ].contains(_storageService.guidedCapability);

  /// Whether the current input is valid.
  bool get isValid =>
      passphrase.isNotEmpty &&
      passphrase == confirmedPassphrase &&
      (entropy?.success ?? false || !isTpm);

  PassphraseType get passphraseType => _storageService.passphraseType;

  EntropyResponse? get entropy => _entropy.value;

  /// Initializes the model.
  Future<bool> init() async {
    if ([
          GuidedCapability.LVM_LUKS,
          GuidedCapability.ZFS_LUKS_KEYSTORE,
          GuidedCapability.CORE_BOOT_ENCRYPTED,
          GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
        ].contains(_storageService.guidedCapability) &&
        passphraseType != PassphraseType.none) {
      await loadPassphrase();
      return true;
    }

    await clearPassphrase();
    return false;
  }

  /// Loads the passphrase from the service.
  Future<void> loadPassphrase() async {
    var savedPassphrase = _storageService.passphrase ?? '';
    // For PIN: only restore the passphrase if it's numeric
    if (passphraseType == PassphraseType.pin &&
        !RegExp(r'^\d+$').hasMatch(savedPassphrase)) {
      savedPassphrase = '';
    }
    setPassphraseAndEntropy(_confirmedPassphrase.value = savedPassphrase);
  }

  /// Saves the passphrase to the service and clears the local values.
  Future<void> savePassphrase() async {
    _storageService.passphrase = passphrase;
    _passphrase.value = '';
    _confirmedPassphrase.value = '';
  }

  /// Clears the passphrase in the service and the local values,
  Future<void> clearPassphrase() async {
    _storageService.passphrase = null;
    _passphrase.value = '';
    _confirmedPassphrase.value = '';
  }
}

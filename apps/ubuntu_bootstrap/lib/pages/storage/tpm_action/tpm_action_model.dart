import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('tpm_action_model');

final tpmActionModelProvider = ChangeNotifierProvider(
  (_) => TpmActionModel(
    getService<StorageService>(),
    getService<SubiquityClient>(),
  ),
);

class TpmActionModel extends SafeChangeNotifier {
  TpmActionModel(this._storage, this._subiquity) {
    _confirmed.addListener(notifyListeners);
  }
  final StorageService _storage;
  final SubiquityClient _subiquity;

  bool get confirmationNeeded => _confirmationNeeded;
  final bool _confirmationNeeded = false;

  final _confirmed = ValueNotifier(false);
  bool get confirmed => _confirmed.value;
  set confirmed(bool confirmed) => _confirmed.value = confirmed;

  bool get isLoading => _isLoading;
  bool _isLoading = false;

  GuidedDisallowedCapability? get tpmDisallowedCapability =>
      _disallowedTarget?.disallowed.firstWhere(
        (t) =>
            t.capability == GuidedCapability.CORE_BOOT_ENCRYPTED ||
            t.capability == GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
      );

  GuidedStorageTargetReformat? _disallowedTarget;

  Future<bool> init() async {
    if (![
      GuidedCapability.CORE_BOOT_ENCRYPTED,
      GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
    ].contains(_storage.guidedCapability)) {
      return false;
    }

    await _updateGuidedStorage();
    return _disallowedTarget != null;
  }

  Future<void> _updateGuidedStorage() async {
    final response = await _storage.getGuidedStorage();
    _disallowedTarget = response.targets
        .whereType<GuidedStorageTargetReformat>()
        .where((t) => t.hasDisallowedTpmCapability)
        .firstOrNull;
    _isLoading = false;
    notifyListeners();
  }

  Future<SubiquityException?> performAction(CoreBootFixAction action) async {
    _isLoading = true;
    notifyListeners();
    SubiquityException? error;
    await _subiquity
        .coreBootFixEncryptionSupportV2(
      CoreBootFixActionWithArgs(type: action),
    )
        .onError<SubiquityException>((e, _) {
      _log.error(
        'Caught subiquity exception $e while performing action $action',
      );
      error = e;
    });
    await _updateGuidedStorage();
    return error;
  }
}

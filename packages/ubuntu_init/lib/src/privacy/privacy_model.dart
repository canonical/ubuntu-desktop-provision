import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/src/init_services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

const kPrivacyPolicyUrl = 'https://ubuntu.com/legal/data-privacy';

final privacyModelProvider = ChangeNotifierProvider(
  (ref) => PrivacyModel(getService<PrivacyService>()),
);

class PrivacyModel extends ChangeNotifier {
  PrivacyModel(this._service);

  final PrivacyService _service;

  bool _locationEnabled = false;
  bool get isLocationEnabled => _locationEnabled;

  bool _reportingEnabled = false;
  bool get isReportingEnabled => _reportingEnabled;

  Future<bool> init() async {
    _locationEnabled = await _service.isLocationEnabled();
    _reportingEnabled = await _service.isReportingEnabled();
    return true;
  }

  Future<void> setLocationEnabled(bool value) async {
    if (_locationEnabled == value) return;
    await _service.setLocationEnabled(value);
    _locationEnabled = value;
    notifyListeners();
  }

  Future<void> setReportingEnabled(bool value) async {
    if (_reportingEnabled == value) return;
    await _service.setReportingEnabled(value);
    _reportingEnabled = value;
    notifyListeners();
  }
}

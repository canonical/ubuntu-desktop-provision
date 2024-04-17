import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/src/init_services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

const kTelemetryLegalUrl =
    'https://ubuntu.com/legal/systems-information-notice';

final telemetryModelProvider = ChangeNotifierProvider(
  (ref) => TelemetryModel(getService<ProvdTelemetryService>()),
);

class TelemetryModel extends ChangeNotifier {
  TelemetryModel(this._telemetry);

  final ProvdTelemetryService _telemetry;

  bool get enabled => _enabled;
  bool _enabled = true;
  set enabled(bool value) {
    if (_enabled == value) return;
    _enabled = value;
    notifyListeners();
  }

  Future<bool> init() async => true;

  Stream<String> collect() {
    // TODO: report error
    return _telemetry.collect().asStream();
  }

  Future<void> save() async {
    if (_enabled) {
      await _telemetry.collectAndSend();
    } else {
      await _telemetry.sendDecline();
    }
  }
}

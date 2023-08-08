import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sysmetrics/sysmetrics.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

const kTelemetryLegalUrl =
    'https://ubuntu.com/legal/systems-information-notice';

final telemetryModelProvider = ChangeNotifierProvider(
  (ref) => TelemetryModel(getService<Sysmetrics>()),
);

class TelemetryModel extends ChangeNotifier {
  TelemetryModel(this._sysmetrics);

  final Sysmetrics _sysmetrics;

  bool get enabled => _enabled;
  bool _enabled = true;
  set enabled(bool value) {
    if (_enabled == value) return;
    _enabled = value;
    notifyListeners();
  }

  Future<bool> init() async => true;

  Future<String?> collect() => _sysmetrics.collect();

  Future<void> save() async {
    if (_enabled) {
      await _sysmetrics.collectAndSend(ReportType.auto);
    } else {
      await _sysmetrics.sendDecline();
    }
  }
}

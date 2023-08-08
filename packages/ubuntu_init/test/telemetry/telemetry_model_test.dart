import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sysmetrics/sysmetrics.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_model.dart';

import 'test_telemetry.dart';

void main() {
  test('init', () async {
    final sysmetrics = MockSysmetrics();
    final model = TelemetryModel(sysmetrics);

    expect(await model.init(), isTrue);
  });

  test('enabled', () {
    final sysmetrics = MockSysmetrics();
    final model = TelemetryModel(sysmetrics);

    model.addListener(expectAsync0(() {}, count: 1));

    expect(model.enabled, isTrue);
    model.enabled = false;
    expect(model.enabled, isFalse);
  });

  test('collect', () async {
    final sysmetrics = MockSysmetrics();
    when(sysmetrics.collect()).thenAnswer((_) async => 'foo');

    final model = TelemetryModel(sysmetrics);

    expect(await model.collect(), 'foo');
    verify(sysmetrics.collect()).called(1);
  });

  test('save', () async {
    final sysmetrics = MockSysmetrics();
    when(sysmetrics.collectAndSend(ReportType.auto))
        .thenAnswer((_) async => null);
    when(sysmetrics.sendDecline()).thenAnswer((_) async => null);

    final model = TelemetryModel(sysmetrics);

    model.enabled = true;
    await model.save();
    verify(sysmetrics.collectAndSend(ReportType.auto)).called(1);

    model.enabled = false;
    await model.save();
    verify(sysmetrics.sendDecline()).called(1);
  });
}

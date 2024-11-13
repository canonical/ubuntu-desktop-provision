import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/pages/telemetry/telemetry_model.dart';

import 'test_telemetry.dart';

void main() {
  test('init', () async {
    final telemetry = MockProvdTelemetryService();
    final model = TelemetryModel(telemetry);

    expect(await model.init(), isTrue);
  });

  test('enabled', () {
    final telemetry = MockProvdTelemetryService();
    final model = TelemetryModel(telemetry);

    model.addListener(expectAsync0(() {}, count: 1));

    expect(model.enabled, isTrue);
    model.enabled = false;
    expect(model.enabled, isFalse);
  });

  test('collect', () async {
    final telemetry = MockProvdTelemetryService();
    when(telemetry.collect()).thenAnswer((_) async => 'foo');

    final model = TelemetryModel(telemetry);

    await expectLater(model.collect(), emits('foo'));
    verify(telemetry.collect()).called(1);
  });

  test('save', () async {
    final telemetry = MockProvdTelemetryService();
    final model = TelemetryModel(telemetry);

    model.enabled = true;
    await model.save();
    verify(telemetry.collectAndSend()).called(1);

    model.enabled = false;
    await model.save();
    verify(telemetry.sendDecline()).called(1);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/services/provd_telemetry_service.dart';

import 'provd_telemetry_service_test.mocks.dart';

@GenerateMocks([ProvdTelemetryClient])
void main() {
  test('collect', () async {
    final client = MockProvdTelemetryClient();
    when(client.collect()).thenAnswer((_) async => 'metrics');

    final service = ProvdTelemetryService(client: client);
    expect(await service.collect(), equals('metrics'));
  });

  test('collectAndSend', () async {
    final client = MockProvdTelemetryClient();
    when(client.collectAndSend())
        .thenAnswer((_) async => SendResponseType.SUCCESS);

    final service = ProvdTelemetryService(client: client);
    await service.collectAndSend();

    verify(client.collectAndSend()).called(1);
  });

  test('sendDecline', () async {
    final client = MockProvdTelemetryClient();
    when(client.sendDecline())
        .thenAnswer((_) async => SendResponseType.SUCCESS);

    final service = ProvdTelemetryService(client: client);
    await service.sendDecline();

    verify(client.sendDecline()).called(1);
  });
}

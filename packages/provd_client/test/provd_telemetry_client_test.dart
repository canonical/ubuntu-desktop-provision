import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/src/generated/telemetry.pbgrpc.dart';
import 'package:provd_client/src/provd_telemetry_client.dart';
import 'package:test/test.dart';

import 'provd_telemetry_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([TelemetryServiceClient])
void main() {
  final mockTelemetryServiceClient = MockTelemetryServiceClient();
  final telemetryClient =
      ProvdTelemetryClient.withClient(mockTelemetryServiceClient);

  test('collect', () async {
    when(mockTelemetryServiceClient.collect(any)).thenAnswer((_) {
      return MockResponseFuture<CollectResponse>(
        CollectResponse(metrics: 'metrics'),
      );
    });

    expect(await telemetryClient.collect(), equals('metrics'));
  });

  test('collectAndSend', () async {
    when(mockTelemetryServiceClient.collectAndSend(any)).thenAnswer((_) {
      return MockResponseFuture<SendResponse>(
        SendResponse(type: SendResponseType.SUCCESS),
      );
    });

    expect(
      await telemetryClient.collectAndSend(),
      equals(SendResponseType.SUCCESS),
    );
  });

  test('sendDecline', () async {
    when(mockTelemetryServiceClient.sendDecline(any)).thenAnswer((_) {
      return MockResponseFuture<SendResponse>(
        SendResponse(type: SendResponseType.SUCCESS),
      );
    });

    expect(
      await telemetryClient.sendDecline(),
      equals(SendResponseType.SUCCESS),
    );
  });
}

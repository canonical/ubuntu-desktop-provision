import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/services/provd_address.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('provd telemetry service');

class ProvdTelemetryService with ProvdAddress {
  ProvdTelemetryService({ProvdTelemetryClient? client})
      : _client = client ??
            ProvdTelemetryClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final ProvdTelemetryClient _client;

  Future<String> collect() => _client.collect();

  Future<void> collectAndSend() => _client.collectAndSend().then(_logError);

  Future<void> sendDecline() => _client.sendDecline().then(_logError);

  // TODO: expose those errors in the UI
  void _logError(SendResponseType response) => switch (response) {
        SendResponseType.NETWORK_ERROR =>
          _log.error('Failed to send telemetry: network error'),
        SendResponseType.UNKNOWN_ERROR =>
          _log.error('Failed to send telemetry: unknown error'),
        _ => null
      };
}

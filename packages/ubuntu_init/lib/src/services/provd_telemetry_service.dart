import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/src/services/provd_address.dart';

class ProvdTelemetryService with ProvdAddress {
  ProvdTelemetryService({ProvdTelemetryClient? client})
      : _client = client ??
            ProvdTelemetryClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final ProvdTelemetryClient _client;

  Future<String> collect() => _client.collect();

  Future<void> collectAndSend() => _client.collectAndSend();

  Future<void> sendDecline() => _client.sendDecline();
}

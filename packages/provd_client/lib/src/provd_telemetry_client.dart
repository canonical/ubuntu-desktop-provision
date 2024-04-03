import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/telemetry.pbgrpc.dart';

typedef SendResponseType = SendResponse_SendResponseType;

class ProvdTelemetryClient {
  ProvdTelemetryClient(Object host, int port)
      : _telemetryClient = TelemetryServiceClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdTelemetryClient.withClient(this._telemetryClient);

  final TelemetryServiceClient _telemetryClient;

  Future<String> collect() async {
    final response = await _telemetryClient.collect(Empty());
    return response.metrics;
  }

  Future<SendResponseType> collectAndSend() async {
    final response = await _telemetryClient.collectAndSend(Empty());
    return response.type;
  }

  Future<SendResponseType> sendDecline() async {
    final response = await _telemetryClient.sendDecline(Empty());
    return response.type;
  }
}

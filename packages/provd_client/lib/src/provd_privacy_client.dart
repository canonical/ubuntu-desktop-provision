import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/privacy.pbgrpc.dart';

class ProvdPrivacyClient {
  ProvdPrivacyClient(Object host, int port)
      : _privacyClient = PrivacyServiceClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdPrivacyClient.withClient(this._privacyClient);

  final PrivacyServiceClient _privacyClient;

  Future<bool> getLocationServices() async {
    final result = await _privacyClient.getLocationServices(Empty());
    return result.value;
  }

  Future<void> enableLocationServices() =>
      _privacyClient.enableLocationServices(Empty());

  Future<void> disableLocationServices() =>
      _privacyClient.disableLocationServices(Empty());
}

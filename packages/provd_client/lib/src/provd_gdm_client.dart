import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/gdm.pbgrpc.dart';

class ProvdGdmClient {
  ProvdGdmClient(Object host, int port)
      : _gdmClient = GdmServiceClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdGdmClient.withClient(this._gdmClient);

  final GdmServiceClient _gdmClient;

  Future<void> launchDesktopSession(String username, String password) async {
    final request = GdmServiceRequest(
      username: username,
      password: password,
    );
    await _gdmClient.launchDesktopSession(request);
  }
}

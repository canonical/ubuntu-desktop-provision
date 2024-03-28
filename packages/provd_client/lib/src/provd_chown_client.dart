import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/chown.pbgrpc.dart';

class ProvdChownClient {
  ProvdChownClient(Object host, int port)
      : _chownClient = ChownServiceClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdChownClient.withClient(this._chownClient);

  final ChownServiceClient _chownClient;

  /// Runs a recursive chown on /run/gnome-initial-setup
  Future<bool> chownSettings(String username) async {
    final request = ChownRequest(username: username);
    final response = await _chownClient.chownSettings(request);
    if (response.code == ChownResponse_ChownResponseCode.SUCCESS) {
      return true;
    }
    return false;
  }
}

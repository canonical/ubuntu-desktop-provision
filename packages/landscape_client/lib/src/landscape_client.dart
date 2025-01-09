import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:landscape_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:landscape_client/src/generated/landscape_installer_attach.pbgrpc.dart' as pbgrpc;

class LandscapeClient {
  LandscapeClient(String serverUrl, int port, bool useTls) {
    final channel = ClientChannel(
      serverUrl,
      port: port,
      options: ChannelOptions(
        credentials: useTls
            ? const ChannelCredentials.secure()
            : const ChannelCredentials.insecure(),
      ),
    );
    _landscapeClient = pbgrpc.LandscapeInstallerAttachClient(channel);
  }
  // Additional constructor for testing
  @visibleForTesting
  LandscapeClient.withClients(
    this._landscapeClient,
  );
  late pbgrpc.LandscapeInstallerAttachClient _landscapeClient;

  Future<pbgrpc.AttachResponse> attach() async {
    final request = Empty();
    return await _landscapeClient.attach(request);
  }

  Stream<pbgrpc.WatchAuthenticationResponse> watch(String userCode) 
    => _landscapeClient.watchAuthentication(pbgrpc.WatchAuthenticationRequest(userCode: userCode));
}


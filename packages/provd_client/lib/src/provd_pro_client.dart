import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/pro.pbgrpc.dart';
export 'package:provd_client/src/generated/pro.pbgrpc.dart'
    show
        ProMagicAttachResponse,
        ProMagicAttachResponseType,
        ProAttachResponse,
        ProAttachResponse_ProAttachResponseType;

class ProvdProClient {
  ProvdProClient(Object host, int port)
      : _proClient = ProServiceClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdProClient.withClient(this._proClient);

  final ProServiceClient _proClient;

  Stream<ProMagicAttachResponse> proMagicAttach() =>
      _proClient.proMagicAttach(Empty());

  Future<ProAttachResponse> proAttach(String token) async {
    return await _proClient.proAttach(ProAttachRequest(token: token));
  }
}

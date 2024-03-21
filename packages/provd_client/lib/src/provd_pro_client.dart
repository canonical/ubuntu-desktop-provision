import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/google/protobuf/wrappers.pb.dart';
import 'package:provd_client/src/generated/pro.pbgrpc.dart';

export 'package:provd_client/src/generated/pro.pbgrpc.dart'
    show ProMagicAttachResponse, ProMagicAttachResponseType;

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

  Future<void> proAttach(String token) async {
    final request = StringValue(value: token);
    await _proClient.proAttach(request);
  }
}

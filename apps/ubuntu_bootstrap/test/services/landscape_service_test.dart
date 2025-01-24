import 'package:flutter_test/flutter_test.dart';
import 'package:landscape_client/landscape_client.dart';
import 'package:mockito/annotations.dart';

import 'landscape_service_test.mocks.dart';

@GenerateMocks([
    LandscapeClient,
])

void main() {
  const autoinstallContent = '''
autoinstall:
  version: 1
  identity:
    hostname: foobar
    username: ubuntu
    password: password
  storage:
    layout:
      name: lvm
      match:
        serial: disk1
      overwrite: true
  network:
    version: 2
    ethernets:
      eth0:
        dhcp4: true
  ssh:
    install-server: true
  late-commands:
    - echo "Hello, World!"
''';
  const invalidContent = 'foo: :';

test('attach to landscape server', () async {
    final landscapeClient = MockLandscapeClient();
    
});

  // test('restart subiquity', () async {
  //   final subqiuityClient = MockSubiquityClient();
  //   final subiquityServer = MockSubiquityServer();

  //   final service = AutoinstallService(subqiuityClient, subiquityServer);

  //   await service.restartSubiquity();

  //   verify(subqiuityClient.restart()).called(1);
  //   verify(subiquityServer.waitSubiquity()).called(1);
  // });

// class LandscapeBackendService implements LandscapeService {
//   LandscapeBackendService({
//     required int port,
//     required bool useTls,
//   }) : _port = port,
//   _useTls = useTls,
//   _client = null;

//   @visibleForTesting
//   LandscapeBackendService.withClient(this._client, this._useTls, this._port);

//   landscape.LandscapeClient? _client;
//   final int _port;
//   final bool _useTls;

//   @override
//   Stream<WatchAuthenticationResponse> watch(String userCode) {
//     if (_client == null) {
//         throw Exception('Client cannot be null');
//     }
//     final grpcResponse = _client!.watch(userCode);
//     return grpcResponse
//         .map(WatchAuthenticationResponse.watchAuthenticationFromGrpc);
//   }

//   @override
//   Future<AttachResponse> attach(String serverUrl) async {
//     _client = landscape.LandscapeClient(serverUrl, _port, _useTls);
//     final response = await _client!.attach();
//     return AttachResponse.attachFromGrpc(response);
//   }

}

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/src/generated/gdm.pbgrpc.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/provd_gdm_client.dart';
import 'package:test/test.dart';

import 'provd_gdm_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([GdmServiceClient])
void main() {
  final mockGdmServiceClient = MockGdmServiceClient();
  final gdmClient = ProvdGdmClient.withClient(mockGdmServiceClient);

  test('launch desktop session', () async {
    final request = GdmServiceRequest(
      username: 'username',
      password: 'password',
    );
    when(mockGdmServiceClient.launchDesktopSession(request)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await gdmClient.launchDesktopSession('username', 'password');

    verify(mockGdmServiceClient.launchDesktopSession(request)).called(1);
  });
}

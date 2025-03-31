import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:landscape_stubs/landscape_stubs.dart' as pbgrpc;
import 'package:landscape_client/src/landscape_client.dart';
import 'package:test/test.dart';

import 'landscape_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([pbgrpc.LandscapeInstallerAttachClient])
void main() {
  final mockLandscapeClient = MockLandscapeInstallerAttachClient();
  final landscapeClient = LandscapeClient.withClients(mockLandscapeClient);

  test('attach', () async {
    when(mockLandscapeClient.attach(any)).thenAnswer((_) {
      return MockResponseFuture(
        pbgrpc.AttachResponse(
          status: pbgrpc.AttachStatus.ATTACH_SUCCESS,
        ),
      );
    });

    final response = await landscapeClient.attach();

    expect(response.status, pbgrpc.AttachStatus.ATTACH_SUCCESS);
    verify(mockLandscapeClient.attach(pbgrpc.Empty())).called(1);
  });

  test('watch authentication', () {
    when(mockLandscapeClient.watchAuthentication(any)).thenAnswer((_) {
      return MockResponseStream(Stream.fromIterable(
        [
          pbgrpc.WatchAuthenticationResponse(
            status: pbgrpc.AuthenticationStatus.AUTHENTICATION_PENDING,
          ),
          pbgrpc.WatchAuthenticationResponse(
            status: pbgrpc.AuthenticationStatus.AUTHENTICATION_SUCCESS,
          ),
        ],
      ));
    });

    final userCode = '12345';

    expect(
      landscapeClient.watch(userCode),
      emitsInOrder(
        [
          pbgrpc.WatchAuthenticationResponse(
            status: pbgrpc.AuthenticationStatus.AUTHENTICATION_PENDING,
          ),
          pbgrpc.WatchAuthenticationResponse(
            status: pbgrpc.AuthenticationStatus.AUTHENTICATION_SUCCESS,
          ),
        ],
      ),
    );
    verify(mockLandscapeClient.watchAuthentication(
      pbgrpc.WatchAuthenticationRequest(userCode: userCode),
    )).called(1);
  });
}

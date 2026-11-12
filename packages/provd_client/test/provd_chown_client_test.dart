import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart';
import 'package:provd_client/src/generated/chown.pbgrpc.dart';
import 'package:test/test.dart';

import 'provd_chown_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([ChownServiceClient])
void main() {
  final mockChownServiceClient = MockChownServiceClient();
  final chownClient = ProvdChownClient.withClient(mockChownServiceClient);

  test('successfully chown /run/gdm3/home/gnome-initial-setup', () async {
    when(mockChownServiceClient.chownSettings(any)).thenAnswer((_) {
      return MockResponseFuture<ChownResponse>(
        ChownResponse(code: ChownResponse_ChownResponseCode.SUCCESS),
      );
    });

    expect(await chownClient.chownSettings('foo'), equals(true));
  });
  test('error when chown /run/gdm3/home/gnome-initial-setup fails', () async {
    when(mockChownServiceClient.chownSettings(any)).thenAnswer((_) {
      return MockResponseFuture<ChownResponse>(
        ChownResponse(code: ChownResponse_ChownResponseCode.UNKNOWN_ERROR),
      );
    });

    expect(await chownClient.chownSettings('foo'), equals(false));
  });
}

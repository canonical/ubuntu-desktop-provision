import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/src/services/provd_gdm_service.dart';

import 'provd_gdm_service_test.mocks.dart';

@GenerateMocks([ProvdGdmClient])
void main() {
  test('launch desktop session', () async {
    final client = MockProvdGdmClient();
    final service = ProvdGdmService(client: client);

    await service.launchSession('username', 'password');
    verify(client.launchDesktopSession('username', 'password')).called(1);
  });
}

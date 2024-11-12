import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/src/services/provd_privacy_service.dart';

import 'provd_privacy_service_test.mocks.dart';

@GenerateMocks([ProvdPrivacyClient])
void main() {
  test('is location enabled', () async {
    final client = MockProvdPrivacyClient();
    when(client.getLocationServices()).thenAnswer((_) async => true);

    final service = ProvdPrivacyService(client: client);
    expect(await service.isLocationEnabled(), isTrue);
  });

  test('set location enabled', () async {
    final client = MockProvdPrivacyClient();
    final service = ProvdPrivacyService(client: client);

    await service.setLocationEnabled(true);
    verify(client.enableLocationServices()).called(1);

    await service.setLocationEnabled(false);
    verify(client.disableLocationServices()).called(1);
  });
}

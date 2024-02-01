import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/src/init_services.dart';

import 'provd_locale_service_test.mocks.dart';

@GenerateMocks([ProvdLocaleClient])
void main() {
  test('get locale', () async {
    final client = MockProvdLocaleClient();
    when(client.getLocale()).thenAnswer((_) async => 'en_US.UTF-8');

    final service = ProvdLocaleService(client: client);
    expect(await service.getLocale(), equals('en_US.UTF-8'));
  });

  test('set locale', () async {
    final client = MockProvdLocaleClient();
    when(client.getLocale()).thenAnswer((_) async => 'en_US.UTF-8');

    final service = ProvdLocaleService(client: client);
    await service.setLocale('en_GB.UTF-8');

    verify(client.setLocale('en_GB.UTF-8')).called(1);
  });
}

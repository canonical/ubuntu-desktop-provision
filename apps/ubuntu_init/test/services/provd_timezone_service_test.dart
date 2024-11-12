import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/src/services/provd_timezone_service.dart';

import 'provd_timezone_service_test.mocks.dart';

@GenerateMocks([ProvdTimezoneClient])
void main() {
  test('get timezone', () async {
    final client = MockProvdTimezoneClient();
    when(client.getTimezone()).thenAnswer((_) async => 'Europe/Stockholm');

    final service = ProvdTimezoneService(client: client);
    expect(await service.getTimezone(), equals('Europe/Stockholm'));
  });

  test('set timezone', () async {
    final client = MockProvdTimezoneClient();
    when(client.getTimezone()).thenAnswer((_) async => 'Europe/Stockholm');

    final service = ProvdTimezoneService(client: client);
    await service.setTimezone('Europe/Oslo');

    verify(client.setTimezone('Europe/Oslo')).called(1);
  });
}

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/timezone.pbgrpc.dart';
import 'package:provd_client/src/provd_timezone_client.dart';
import 'package:test/test.dart';

import 'provd_timezone_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([TimezoneServiceClient])
void main() {
  final mockTimezoneServiceClient = MockTimezoneServiceClient();
  final timezoneClient =
      ProvdTimezoneClient.withClient(mockTimezoneServiceClient);

  test('get timezone', () async {
    when(mockTimezoneServiceClient.getTimezone(any)).thenAnswer((_) {
      return MockResponseFuture<GetTimezoneResponse>(
        GetTimezoneResponse(timezone: 'Europe/Stockholm'),
      );
    });

    expect(await timezoneClient.getTimezone(), equals('Europe/Stockholm'));
  });

  test('set timezone', () async {
    final request = SetTimezoneRequest(timezone: 'Europe/Oslo');
    when(mockTimezoneServiceClient.setTimezone(request)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await timezoneClient.setTimezone('Europe/Oslo');

    verify(mockTimezoneServiceClient.setTimezone(request)).called(1);
  });
}

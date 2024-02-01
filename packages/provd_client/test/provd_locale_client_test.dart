import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/locale.pbgrpc.dart';
import 'package:provd_client/src/provd_locale_client.dart';
import 'package:test/test.dart';

import 'provd_locale_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([LocaleServiceClient])
void main() {
  final mockLocaleServiceClient = MockLocaleServiceClient();
  final localeClient = ProvdLocaleClient.withClient(mockLocaleServiceClient);

  test('get locale', () async {
    when(mockLocaleServiceClient.getLocale(any)).thenAnswer((_) {
      return MockResponseFuture<GetLocaleResponse>(
        GetLocaleResponse(locale: 'en_US.UTF-8'),
      );
    });

    expect(await localeClient.getLocale(), equals('en_US.UTF-8'));
  });

  test('set locale', () async {
    final request = SetLocaleRequest(locale: 'en_GB.UTF-8');
    when(mockLocaleServiceClient.setLocale(request)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await localeClient.setLocale('en_GB.UTF-8');

    verify(mockLocaleServiceClient.setLocale(request)).called(1);
  });
}

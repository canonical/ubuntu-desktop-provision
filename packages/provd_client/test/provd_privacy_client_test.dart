import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/google/protobuf/wrappers.pb.dart';
import 'package:provd_client/src/generated/privacy.pbgrpc.dart';
import 'package:provd_client/src/provd_privacy_client.dart';
import 'package:test/test.dart';

import 'provd_privacy_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([PrivacyServiceClient])
void main() {
  final mockPrivacyServiceClient = MockPrivacyServiceClient();
  final privacyClient = ProvdPrivacyClient.withClient(mockPrivacyServiceClient);

  test('get location services', () async {
    when(mockPrivacyServiceClient.getLocationServices(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await privacyClient.getLocationServices(), equals(true));
  });

  test('enable location services', () async {
    when(mockPrivacyServiceClient.enableLocationServices(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await privacyClient.enableLocationServices();

    verify(mockPrivacyServiceClient.enableLocationServices(any)).called(1);
  });

  test('disable location services', () async {
    when(mockPrivacyServiceClient.disableLocationServices(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await privacyClient.disableLocationServices();

    verify(mockPrivacyServiceClient.disableLocationServices(any)).called(1);
  });
}

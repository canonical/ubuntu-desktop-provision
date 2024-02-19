import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/privacy/privacy_model.dart';

import 'test_privacy.dart';

void main() {
  test('init', () async {
    final service = MockPrivacyService();
    when(service.isLocationEnabled()).thenAnswer((_) async => true);

    final model = PrivacyModel(service);
    await model.init();

    expect(model.isLocationEnabled, true);

    when(service.isLocationEnabled()).thenAnswer((_) async => false);

    await model.init();

    expect(model.isLocationEnabled, false);
  });

  test('location', () async {
    final service = MockPrivacyService();
    final model = PrivacyModel(service);

    await model.setLocationEnabled(true);
    verify(service.setLocationEnabled(true));

    await model.setLocationEnabled(false);
    verify(service.setLocationEnabled(false));
  });
}

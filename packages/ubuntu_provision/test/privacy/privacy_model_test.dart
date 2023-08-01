import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/src/privacy/privacy_model.dart';

import 'test_privacy.dart';

void main() {
  test('init', () async {
    final service = MockPrivacyService();
    when(service.isLocationEnabled()).thenAnswer((_) async => true);
    when(service.isReportingEnabled()).thenAnswer((_) async => false);

    final model = PrivacyModel(service);
    await model.init();

    expect(model.isLocationEnabled, true);
    expect(model.isReportingEnabled, false);

    when(service.isLocationEnabled()).thenAnswer((_) async => false);
    when(service.isReportingEnabled()).thenAnswer((_) async => true);

    await model.init();

    expect(model.isLocationEnabled, false);
    expect(model.isReportingEnabled, true);
  });

  test('location', () async {
    final service = MockPrivacyService();
    final model = PrivacyModel(service);

    await model.setLocationEnabled(true);
    verify(service.setLocationEnabled(true));

    await model.setLocationEnabled(false);
    verify(service.setLocationEnabled(false));
  });

  test('reporting', () async {
    final service = MockPrivacyService();
    final model = PrivacyModel(service);

    await model.setReportingEnabled(true);
    verify(service.setReportingEnabled(true));

    await model.setReportingEnabled(false);
    verify(service.setReportingEnabled(false));
  });
}

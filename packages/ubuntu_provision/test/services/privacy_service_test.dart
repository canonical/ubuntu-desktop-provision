import 'package:dbus/dbus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsettings/gsettings.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/src/services/privacy_service.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

import 'privacy_service_test.mocks.dart';

@GenerateMocks([GSettings])
void main() {
  setUpAll(() => registerServiceFactory<GSettings>((_) => MockGSettings()));

  test('location', () async {
    final settings = MockGSettings();
    when(settings.set(any, any)).thenAnswer((_) async {});

    final service = GnomePrivacyService(locationSettings: settings);

    when(settings.get('enabled'))
        .thenAnswer((_) async => const DBusBoolean(true));
    expect(await service.isLocationEnabled(), true);

    await service.setLocationEnabled(false);
    verify(settings.set('enabled', const DBusBoolean(false)));

    await service.close();
    verify(settings.close()).called(1);
  });

  test('reporting', () async {
    final settings = MockGSettings();
    when(settings.set(any, any)).thenAnswer((_) async {});

    final service = GnomePrivacyService(privacySettings: settings);

    when(settings.get('report-technical-problems'))
        .thenAnswer((_) async => const DBusBoolean(true));
    expect(await service.isReportingEnabled(), true);

    await service.setReportingEnabled(false);
    verify(settings.set('report-technical-problems', const DBusBoolean(false)));

    await service.close();
    verify(settings.close()).called(1);
  });
}

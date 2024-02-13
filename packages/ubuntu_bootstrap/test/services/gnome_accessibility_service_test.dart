import 'package:dbus/dbus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsettings/gsettings.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/services.dart';

import 'gnome_accessibility_service_test.mocks.dart';

@GenerateMocks([GSettings])
void main() {
  late MockGSettings a11yInterfaceSettings;
  late MockGSettings applicationSettings;
  late MockGSettings interfaceSettings;
  late MockGSettings keyboardSettings;
  late MockGSettings wmSettings;

  late GnomeAccessibilityService service;

  setUp(() {
    a11yInterfaceSettings = MockGSettings();
    applicationSettings = MockGSettings();
    interfaceSettings = MockGSettings();
    keyboardSettings = MockGSettings();
    wmSettings = MockGSettings();

    when(a11yInterfaceSettings.set(any, any)).thenAnswer((_) async {});
    when(applicationSettings.set(any, any)).thenAnswer((_) async {});
    when(interfaceSettings.set(any, any)).thenAnswer((_) async {});
    when(keyboardSettings.set(any, any)).thenAnswer((_) async {});
    when(wmSettings.set(any, any)).thenAnswer((_) async {});

    service = GnomeAccessibilityService(
      a11yInterfaceSettings: a11yInterfaceSettings,
      applicationSettings: applicationSettings,
      interfaceSettings: interfaceSettings,
      keyboardSettings: keyboardSettings,
      wmSettings: wmSettings,
    );
  });

  group('change settings', () {
    test('setHighContrast', () async {
      await service.setHighContrast(true);
      verify(a11yInterfaceSettings.set(
              'high-contrast', const DBusBoolean(true)))
          .called(1);
    });
    test('setLargeText', () async {
      await service.setLargeText(true);
      verify(interfaceSettings.set(
              'text-scaling-factor', const DBusDouble(1.25)))
          .called(1);
    });
    test('setScreenReader', () async {
      await service.setScreenReader(true);
      verify(applicationSettings.set(
              'screen-reader-enabled', const DBusBoolean(true)))
          .called(1);
    });
    test('setReduceAnimation', () async {
      await service.setReduceAnimation(true);
      verify(interfaceSettings.set(
              'enable-animations', const DBusBoolean(false)))
          .called(1);
    });
    test('setVisualAlerts', () async {
      await service.setVisualAlerts(true);
      verify(wmSettings.set('visual-bell', const DBusBoolean(true))).called(1);
    });

    test('setStickyKeys', () async {
      await service.setStickyKeys(true);
      verify(keyboardSettings.set('stickykeys-enable', const DBusBoolean(true)))
          .called(1);
    });

    test('setSlowKeys', () async {
      await service.setSlowKeys(true);
      verify(keyboardSettings.set('slowkeys-enable', const DBusBoolean(true)))
          .called(1);
    });

    test('setMouseKeys', () async {
      await service.setMouseKeys(true);
      verify(keyboardSettings.set('mousekeys-enable', const DBusBoolean(true)))
          .called(1);
    });

    test('setDesktopZoom', () async {
      await service.setDesktopZoom(true);
      verify(applicationSettings.set(
              'screen-magnifier-enabled', const DBusBoolean(true)))
          .called(1);
    });
  });

  group('read settings', () {
    test('getHighContrast', () async {
      when(a11yInterfaceSettings.get('high-contrast'))
          .thenAnswer((_) async => const DBusBoolean(true));
      expect(await service.getHighContrast(), isTrue);
    });
    test('getLargeText', () async {
      when(interfaceSettings.get('text-scaling-factor'))
          .thenAnswer((_) async => const DBusDouble(1.25));
      expect(await service.getLargeText(), isTrue);
    });
    test('getScreenReader', () async {
      when(applicationSettings.get('screen-reader-enabled'))
          .thenAnswer((_) async => const DBusBoolean(true));
      expect(await service.getScreenReader(), isTrue);
    });
    test('getReduceAnimation', () async {
      when(interfaceSettings.get('enable-animations'))
          .thenAnswer((_) async => const DBusBoolean(false));
      expect(await service.getReduceAnimation(), isTrue);
    });
    test('getVisualAlerts', () async {
      when(wmSettings.get('visual-bell'))
          .thenAnswer((_) async => const DBusBoolean(true));
      expect(await service.getVisualAlerts(), isTrue);
    });
    test('getStickyKeys', () async {
      when(keyboardSettings.get('stickykeys-enable'))
          .thenAnswer((_) async => const DBusBoolean(true));
      expect(await service.getStickyKeys(), isTrue);
    });
    test('getSlowKeys', () async {
      when(keyboardSettings.get('slowkeys-enable'))
          .thenAnswer((_) async => const DBusBoolean(true));
      expect(await service.getSlowKeys(), isTrue);
    });
    test('getMouseKeys', () async {
      when(keyboardSettings.get('mousekeys-enable'))
          .thenAnswer((_) async => const DBusBoolean(true));
      expect(await service.getMouseKeys(), isTrue);
    });
    test('getDesktopZoom', () async {
      when(applicationSettings.get('screen-magnifier-enabled'))
          .thenAnswer((_) async => const DBusBoolean(true));
      expect(await service.getDesktopZoom(), isTrue);
    });
  });
}

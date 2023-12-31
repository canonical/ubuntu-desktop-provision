import 'package:dbus/dbus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsettings/gsettings.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/src/services/theme_service.dart';

import 'theme_service_test.mocks.dart';

@GenerateMocks([GSettings])
void main() {
  test('color-scheme via gsettings', () async {
    final settings = MockGSettings();
    when(settings.set(any, any)).thenAnswer((_) async {});

    final service = GtkThemeService(settings: settings);

    when(settings.get('color-scheme'))
        .thenAnswer((_) async => const DBusString('prefer-dark'));
    when(settings.get('gtk-theme'))
        .thenAnswer((_) async => const DBusString('Yaru-dark'));

    expect(await service.getBrightness(), Brightness.dark);
    await service.setBrightness(Brightness.light);
    verifyInOrder([
      settings.set('gtk-theme', const DBusString('Yaru')),
      settings.set('color-scheme', const DBusString('prefer-light')),
    ]);

    when(settings.get('color-scheme'))
        .thenAnswer((_) async => const DBusString('prefer-light'));
    when(settings.get('gtk-theme'))
        .thenAnswer((_) async => const DBusString('Yaru'));

    expect(await service.getBrightness(), Brightness.light);
    await service.setBrightness(Brightness.dark);
    verifyInOrder([
      settings.set('gtk-theme', const DBusString('Yaru-dark')),
      settings.set('color-scheme', const DBusString('prefer-dark')),
    ]);
  });

  test('accent color via gsettings', () async {
    final settings = MockGSettings();
    when(settings.set('gtk-theme', any)).thenAnswer((_) async {});

    final service = GtkThemeService(settings: settings);

    when(settings.get('gtk-theme'))
        .thenAnswer((_) async => const DBusString('Yaru-dark'));

    expect(await service.getAccent(), null);
    when(settings.get('gtk-theme'))
        .thenAnswer((_) async => const DBusString('Yaru-red-dark'));
    await service.setAccent('red');
    verify(settings.set('gtk-theme', const DBusString('Yaru-red-dark')))
        .called(1);

    when(settings.get('gtk-theme'))
        .thenAnswer((_) async => const DBusString('Any-red'));

    expect(await service.getAccent(), 'red');
    await service.setAccent('prussianGreen');
    verify(settings.set('gtk-theme', const DBusString('Any-prussiangreen')))
        .called(1);
  });
}

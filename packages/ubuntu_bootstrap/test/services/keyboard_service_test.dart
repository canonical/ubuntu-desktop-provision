import 'package:dbus/dbus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsettings/gsettings.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/services/keyboard_service.dart';

import '../test_utils.dart';
import 'gnome_accessibility_service_test.mocks.dart';

@GenerateMocks([GSettings])
void main() {
  late MockGSettings inputSourceSettings;

  setUp(() {
    inputSourceSettings = MockGSettings();
    when(inputSourceSettings.set(any, any)).thenAnswer((_) async {});
  });

  test('get keyboard', () async {
    final client = MockSubiquityClient();
    when(client.getKeyboard()).thenAnswer((_) async => keyboardSetup);

    final service = SubiquityKeyboardService(
      client,
      inputSourceSettings: inputSourceSettings,
    );
    expect(await service.getKeyboard(), equals(keyboardSetup));

    verify(client.getKeyboard()).called(1);
  });

  test('set keyboard', () async {
    final client = MockSubiquityClient();
    when(client.setKeyboard(keyboardSetup.setting)).thenAnswer((_) async {});

    final service = SubiquityKeyboardService(
      client,
      inputSourceSettings: inputSourceSettings,
    );
    await service.setKeyboard(keyboardSetup.setting);

    verify(client.setKeyboard(keyboardSetup.setting)).called(1);
  });

  test('set input source', () async {
    final client = MockSubiquityClient();
    when(client.setInputSource(keyboardSetup.setting, user: 'ubuntu'))
        .thenAnswer((_) async {});

    final service = SubiquityKeyboardService(
      client,
      inputSourceSettings: inputSourceSettings,
    );
    await service.setInputSource(keyboardSetup.setting, user: 'ubuntu');

    verify(client.setInputSource(keyboardSetup.setting, user: 'ubuntu'))
        .called(1);

    verify(inputSourceSettings.set(
      'sources',
      DBusArray(
        DBusSignature.struct([DBusSignature.string, DBusSignature.string]),
        [
          DBusStruct([
            const DBusString('xkb'),
            const DBusString('us+altgr-intl'),
          ])
        ],
      ),
    )).called(1);
  });

  test('get keyboard step', () async {
    final client = MockSubiquityClient();
    when(client.getKeyboardStep(any)).thenAnswer(
        (_) async => const AnyStep.stepPressKey(keycodes: {}, symbols: []));

    final service = SubiquityKeyboardService(
      client,
      inputSourceSettings: inputSourceSettings,
    );
    await service.getKeyboardStep('1');

    verify(client.getKeyboardStep('1')).called(1);
  });
}

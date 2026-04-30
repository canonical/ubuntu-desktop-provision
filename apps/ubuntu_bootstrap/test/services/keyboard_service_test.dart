import 'dart:io';

import 'package:dbus/dbus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/services/keyboard_service.dart';

import '../test_utils.dart';

void main() {
  late MockGSettings inputSourceSettings;
  late MockProcess mockProcess;
  late MockLocale1 mockLocale1;

  setUp(() {
    inputSourceSettings = MockGSettings();
    when(inputSourceSettings.set(any, any)).thenAnswer((_) async {});

    mockProcess = MockProcess();
    when(
      mockProcess.run(any, any),
    ).thenAnswer((_) async => ProcessResult(0, 0, '', ''));

    mockLocale1 = MockLocale1();
    when(mockLocale1.setX11Keyboard(any, any)).thenAnswer((_) async {});
  });

  test('get keyboard', () async {
    final client = MockSubiquityClient();
    when(client.getKeyboard()).thenAnswer((_) async => keyboardSetup);

    final service = SubiquityKeyboardService(
      client,
      inputSourceSettings: inputSourceSettings,
      runProcess: mockProcess.run,
      setLocale1X11Keyboard: mockLocale1.setX11Keyboard,
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
      runProcess: mockProcess.run,
      setLocale1X11Keyboard: mockLocale1.setX11Keyboard,
    );
    await service.setKeyboard(keyboardSetup.setting);

    verify(client.setKeyboard(keyboardSetup.setting)).called(1);
  });

  test('set input source', () async {
    final client = MockSubiquityClient();
    when(
      client.setInputSource(keyboardSetup.setting, user: 'ubuntu'),
    ).thenAnswer((_) async {});

    final service = SubiquityKeyboardService(
      client,
      inputSourceSettings: inputSourceSettings,
      runProcess: mockProcess.run,
      setLocale1X11Keyboard: mockLocale1.setX11Keyboard,
      liveRun: true,
    );
    await service.setInputSource(keyboardSetup.setting, user: 'ubuntu');

    verify(
      client.setInputSource(keyboardSetup.setting, user: 'ubuntu'),
    ).called(1);

    verify(
      inputSourceSettings.set(
        'sources',
        DBusArray(
          DBusSignature.struct([DBusSignature.string, DBusSignature.string]),
          [
            DBusStruct([
              const DBusString('xkb'),
              const DBusString('us+altgr-intl'),
            ]),
          ],
        ),
      ),
    ).called(1);

    verify(
      mockProcess.run('setxkbmap', ['-layout', 'us', '-variant', 'altgr-intl']),
    ).called(1);

    // locale1 is called for desktop-agnostic persistence (e.g. KDE Plasma)
    verify(mockLocale1.setX11Keyboard('us', 'altgr-intl')).called(1);
  });

  test('set input source (non-latin)', () async {
    const nonLatinKeyboardSetup = KeyboardSetup(
      setting: KeyboardSetting(layout: 'af'),
      layouts: [
        KeyboardLayout(
          code: 'us',
          name: 'English (US)',
          variants: [KeyboardVariant(code: '', name: 'English (US)')],
        ),
        KeyboardLayout(
          code: 'af',
          name: 'Afghani',
          variants: [KeyboardVariant(code: '', name: 'Afghani')],
        ),
      ],
    );
    final client = MockSubiquityClient();
    when(
      client.setInputSource(nonLatinKeyboardSetup.setting, user: 'ubuntu'),
    ).thenAnswer((_) async {});

    final service = SubiquityKeyboardService(
      client,
      inputSourceSettings: inputSourceSettings,
      runProcess: mockProcess.run,
      setLocale1X11Keyboard: mockLocale1.setX11Keyboard,
      liveRun: true,
    );
    await service.setInputSource(nonLatinKeyboardSetup.setting, user: 'ubuntu');

    verify(
      client.setInputSource(nonLatinKeyboardSetup.setting, user: 'ubuntu'),
    ).called(1);

    verify(
      inputSourceSettings.set(
        'sources',
        DBusArray(
          DBusSignature.struct([DBusSignature.string, DBusSignature.string]),
          [
            DBusStruct([const DBusString('xkb'), const DBusString('af')]),
            DBusStruct([const DBusString('xkb'), const DBusString('us')]),
          ],
        ),
      ),
    ).called(1);

    verify(mockProcess.run('setxkbmap', ['-layout', 'af'])).called(1);

    // Non-latin layouts get a US fallback added in the locale1 call too
    verify(mockLocale1.setX11Keyboard('af,us', ',')).called(1);
  });

  test('get keyboard step', () async {
    final client = MockSubiquityClient();
    when(client.getKeyboardStep(any)).thenAnswer(
      (_) async => const AnyStep.stepPressKey(keycodes: {}, symbols: []),
    );

    final service = SubiquityKeyboardService(
      client,
      inputSourceSettings: inputSourceSettings,
      runProcess: mockProcess.run,
      setLocale1X11Keyboard: mockLocale1.setX11Keyboard,
    );
    await service.getKeyboardStep('1');

    verify(client.getKeyboardStep('1')).called(1);
  });
}

abstract class _Process {
  Future<ProcessResult> run(String? executable, List<String>? arguments);
}

class MockProcess extends Mock implements _Process {
  @override
  Future<ProcessResult> run(String? executable, List<String>? arguments) =>
      super.noSuchMethod(
        Invocation.method(#run, [executable, arguments]),
        returnValue: Future.value(ProcessResult(0, 0, '', '')),
      ) as Future<ProcessResult>;
}

abstract class _Locale1 {
  Future<void> setX11Keyboard(String? layout, String? variant);
}

class MockLocale1 extends Mock implements _Locale1 {
  @override
  Future<void> setX11Keyboard(String? layout, String? variant) =>
      super.noSuchMethod(
        Invocation.method(#setX11Keyboard, [layout, variant]),
        returnValue: Future<void>.value(),
      ) as Future<void>;
}

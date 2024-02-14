import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart' as provd;
import 'package:ubuntu_init/src/services/provd_keyboard_service.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import 'provd_keyboard_service_test.mocks.dart';

@GenerateMocks([provd.ProvdKeyboardClient])
void main() {
  test('get keyboard', () async {
    final client = MockProvdKeyboardClient();
    when(client.getKeyboard()).thenAnswer(
      (_) async => provd.KeyboardSetup(
        settings: provd.KeyboardSettings(layout: 'us', variant: 'altgr-intl'),
        layouts: [
          provd.KeyboardLayout(
            code: 'us',
            name: 'English (US)',
            variants: [
              provd.KeyboardVariant(
                code: '',
                name: 'English (US)',
              ),
              provd.KeyboardVariant(
                code: 'altgr-intl',
                name: 'English (US) - English (intl., with AltGr dead keys)',
              ),
            ],
          ),
          provd.KeyboardLayout(
            code: 'de',
            name: 'German',
            variants: [provd.KeyboardVariant(code: '', name: 'German')],
          ),
        ],
      ),
    );

    final service = ProvdKeyboardService(client: client);
    final setup = await service.getKeyboard();

    expect(
      setup,
      equals(
        const KeyboardSetup(
          setting: KeyboardSetting(layout: 'us', variant: 'altgr-intl'),
          layouts: [
            KeyboardLayout(
              code: 'us',
              name: 'English (US)',
              variants: [
                KeyboardVariant(
                  code: '',
                  name: 'English (US)',
                ),
                KeyboardVariant(
                  code: 'altgr-intl',
                  name: 'English (US) - English (intl., with AltGr dead keys)',
                ),
              ],
            ),
            KeyboardLayout(
              code: 'de',
              name: 'German',
              variants: [KeyboardVariant(code: '', name: 'German')],
            ),
          ],
        ),
      ),
    );
  });

  test('set keyboard', () async {
    final client = MockProvdKeyboardClient();

    final service = ProvdKeyboardService(client: client);
    await service.setKeyboard(
        const KeyboardSetting(layout: 'us', variant: 'altgr-intl'));

    verify(client.setKeyboard('us', 'altgr-intl')).called(1);
  });

  test('set input source', () async {
    final client = MockProvdKeyboardClient();

    final service = ProvdKeyboardService(client: client);
    await service.setInputSource(
        const KeyboardSetting(layout: 'us', variant: 'altgr-intl'));

    verify(client.setInputSource('us', 'altgr-intl')).called(1);
  });
}

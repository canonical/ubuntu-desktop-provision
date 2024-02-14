import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/keyboard.pbgrpc.dart';
import 'package:provd_client/src/provd_keyboard_client.dart';
import 'package:test/test.dart';

import 'provd_keyboard_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([KeyboardServiceClient])
void main() {
  final mockKeyboardServiceClient = MockKeyboardServiceClient();
  final keyboardClient =
      ProvdKeyboardClient.withClient(mockKeyboardServiceClient);

  test('set keyboard', () async {
    final request = SetKeyboardRequest(
      settings: KeyboardSettings(
        layout: 'us',
        variant: 'altgr-intl',
      ),
    );
    when(mockKeyboardServiceClient.setKeyboard(request)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await keyboardClient.setKeyboard('us', 'altgr-intl');

    verify(mockKeyboardServiceClient.setKeyboard(request)).called(1);
  });

  test('set input source', () async {
    final request = SetInputSourceRequest(
      settings: KeyboardSettings(
        layout: 'us',
        variant: 'altgr-intl',
      ),
    );
    when(mockKeyboardServiceClient.setInputSource(request)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await keyboardClient.setInputSource('us', 'altgr-intl');

    verify(mockKeyboardServiceClient.setInputSource(request)).called(1);
  });

  test('get keyboard', () async {
    final response = KeyboardSetup(
      settings: KeyboardSettings(
        layout: 'us',
        variant: 'altgr-intl',
      ),
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
    );
    when(mockKeyboardServiceClient.getKeyboard(Empty())).thenAnswer((_) {
      return MockResponseFuture<GetKeyboardResponse>(
        GetKeyboardResponse(setup: response),
      );
    });

    expect(await keyboardClient.getKeyboard(), equals(response));
  });
}

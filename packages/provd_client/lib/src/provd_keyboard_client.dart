import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/keyboard.pbgrpc.dart';

export 'package:provd_client/src/generated/keyboard.pb.dart'
    show KeyboardSetup, KeyboardSettings, KeyboardLayout, KeyboardVariant;

class ProvdKeyboardClient {
  ProvdKeyboardClient(Object host, int port)
      : _keyboardClient = KeyboardServiceClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdKeyboardClient.withClient(this._keyboardClient);

  final KeyboardServiceClient _keyboardClient;

  /// Sets the keyboard layout to [layout] and variant to [variant].
  Future<void> setKeyboard(String layout, String variant) async {
    final request = SetKeyboardRequest(
      settings: KeyboardSettings(
        layout: layout,
        variant: variant,
      ),
    );
    await _keyboardClient.setKeyboard(request);
  }

  /// Sets the input source to [layout] and variant to [variant].
  Future<void> setInputSource(String layout, String variant) async {
    final request = SetInputSourceRequest(
      settings: KeyboardSettings(
        layout: layout,
        variant: variant,
      ),
    );
    await _keyboardClient.setInputSource(request);
  }

  Future<KeyboardSetup> getKeyboard() async {
    final response = await _keyboardClient.getKeyboard(Empty());
    return response.setup;
  }
}

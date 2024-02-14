import 'package:provd_client/provd_client.dart' as provd;
import 'package:ubuntu_init/src/services/provd_address.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

class ProvdKeyboardService with ProvdAddress implements KeyboardService {
  ProvdKeyboardService({provd.ProvdKeyboardClient? client})
      : _client = client ??
            provd.ProvdKeyboardClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final provd.ProvdKeyboardClient _client;

  @override
  bool get canDetectLayout => false;

  @override
  Future<KeyboardSetup> getKeyboard() => _client.getKeyboard().then(
        (value) => value.fromProvd(),
      );

  @override
  Future<AnyStep> getKeyboardStep([String step = '0']) {
    throw UnimplementedError();
  }

  @override
  Future<void> setInputSource(KeyboardSetting setting, {String? user}) async =>
      _client.setInputSource(setting.layout, setting.variant);

  @override
  Future<void> setKeyboard(KeyboardSetting setting) async =>
      _client.setKeyboard(setting.layout, setting.variant);
}

extension on provd.KeyboardSetup {
  KeyboardSetup fromProvd() => KeyboardSetup(
        setting: KeyboardSetting(
          layout: settings.layout,
          variant: settings.variant,
        ),
        layouts: layouts.map((e) => e.fromProvd()).toList(),
      );
}

extension on provd.KeyboardLayout {
  KeyboardLayout fromProvd() => KeyboardLayout(
        code: code,
        name: name,
        variants: variants.map((e) => e.fromProvd()).toList(),
      );
}

extension on provd.KeyboardVariant {
  KeyboardVariant fromProvd() => KeyboardVariant(
        code: code,
        name: name,
      );
}

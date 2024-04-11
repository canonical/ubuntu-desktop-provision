import 'package:dbus/dbus.dart';
import 'package:gsettings/gsettings.dart';
import 'package:meta/meta.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';

final _log = Logger('keyboard_service');

class SubiquityKeyboardService implements KeyboardService {
  SubiquityKeyboardService(
    this._subiquity, {
    @visibleForTesting GSettings? inputSourceSettings,
  }) : _inputSourceSettings = inputSourceSettings ??
            createService<GSettings, String>('org.gnome.desktop.input-sources');

  final SubiquityClient _subiquity;
  final GSettings _inputSourceSettings;

  @override
  Future<KeyboardSetup> getKeyboard() => _subiquity.getKeyboard();

  @override
  Future<void> setKeyboard(KeyboardSetting setting) {
    return _subiquity.setKeyboard(setting);
  }

  @override
  Future<void> setInputSource(KeyboardSetting setting, {String? user}) async {
    await _setGsettingsInputSource(setting);
    return _subiquity.setInputSource(setting, user: user);
  }

  @override
  Future<AnyStep> getKeyboardStep([String step = '0']) {
    return _subiquity.getKeyboardStep(step);
  }

  @override
  bool get canDetectLayout => true;

  Future<void> _setGsettingsInputSource(KeyboardSetting setting) async {
    try {
      final xkbString = setting.variant.isNotEmpty
          ? '${setting.layout}+${setting.variant}'
          : setting.layout;
      await _inputSourceSettings.set(
        'sources',
        DBusArray(
            DBusSignature.struct([DBusSignature.string, DBusSignature.string]),
            [
              DBusStruct([const DBusString('xkb'), DBusString(xkbString)])
            ]),
      );
    } on Exception catch (e) {
      _log.error('Failed to set input source via gsettings', e);
    }
  }
}

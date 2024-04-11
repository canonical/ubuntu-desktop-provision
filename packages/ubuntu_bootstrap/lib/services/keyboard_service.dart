import 'dart:async';
import 'dart:io';

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
    @visibleForTesting
    Future<ProcessResult> Function(String, List<String>)? runProcess,
  })  : _inputSourceSettings = inputSourceSettings ??
            createService<GSettings, String>('org.gnome.desktop.input-sources'),
        _runProcess = runProcess ?? Process.run;

  final SubiquityClient _subiquity;
  final GSettings _inputSourceSettings;
  final Future<ProcessResult> Function(String, List<String>) _runProcess;

  @override
  Future<KeyboardSetup> getKeyboard() => _subiquity.getKeyboard();

  @override
  Future<void> setKeyboard(KeyboardSetting setting) {
    return _subiquity.setKeyboard(setting);
  }

  @override
  Future<void> setInputSource(KeyboardSetting setting, {String? user}) async {
    unawaited(_setXkbInputSource(setting));
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

  Future<void> _setXkbInputSource(KeyboardSetting setting) async {
    final result = await _runProcess(
      'setxkbmap',
      [
        '-layout',
        setting.layout,
        if (setting.variant.isNotEmpty) ...['-variant', setting.variant],
      ],
    );
    if (result.exitCode != 0) {
      _log.error('Failed to set input source via setxkbmap', result.stderr);
    }
  }
}

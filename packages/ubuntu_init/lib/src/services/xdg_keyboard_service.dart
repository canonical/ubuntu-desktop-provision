import 'dart:convert';

import 'package:dbus/dbus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gsettings/gsettings.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:xdg_locale/xdg_locale.dart';

final _log = Logger('xdg_keyboard_service');

class XdgKeyboardService implements KeyboardService {
  XdgKeyboardService({
    DBusClient? bus,
    @visibleForTesting XdgLocaleClient? client,
    @visibleForTesting GSettings? settings,
    @visibleForTesting AssetBundle? assetBundle,
  })  : _client = client ?? XdgLocaleClient(bus: bus),
        _inputSourceSettings = settings ??
            createService<GSettings, String>('org.gnome.desktop.input-sources'),
        _assetBundle = assetBundle ?? rootBundle;

  final XdgLocaleClient _client;
  final GSettings _inputSourceSettings;
  final AssetBundle _assetBundle;

  String _langFilename(String lang) => 'assets/kbds/$lang.jsonl';

  Future<String> _getLanguage() async {
    await _client.connect();
    var lang = _client.locale['LANG'] ?? 'C';

    if (lang.contains('.')) {
      lang = lang.split('.').first;
    }

    final assets = await _assetBundle
        .loadString('AssetManifest.json')
        .then((v) => List<String>.from((json.decode(v) as Map).keys));

    if (!assets.contains(_langFilename(lang))) {
      lang = lang.split('_').first;
    }
    if (!assets.contains(_langFilename(lang))) {
      lang = 'C';
    }

    return lang;
  }

  Future<List<KeyboardLayout>> _getLayouts() async {
    final lang = await _getLanguage();
    final keyboardData = await _assetBundle
        .loadString(_langFilename(lang))
        .onError((error, stackTrace) => _assetBundle
            .loadString('packages/ubuntu_init/${_langFilename(lang)}'));
    return keyboardData
        .split('\n')
        .where((line) => line.isNotEmpty)
        .map((line) {
      final jsonData = json.decode(line);
      return KeyboardLayout(
        code: jsonData[0] as String,
        name: jsonData[1] as String,
        variants: (jsonData[2] as List<dynamic>)
            .map((e) =>
                KeyboardVariant(code: e[0] as String, name: e[1] as String))
            .toList(),
      );
    }).toList();
  }

  @override
  Future<KeyboardSetup> getKeyboard() async {
    try {
      await _client.connect();
      final keyboardSetup = KeyboardSetup(
        setting: KeyboardSetting(
          layout: _client.x11Layout,
          toggle: _client.vConsoleKeymapToggle.isNotEmpty
              ? _client.vConsoleKeymapToggle
              : null,
          variant: _client.x11Variant,
        ),
        layouts: await _getLayouts(),
      );
      return keyboardSetup;
    } on Exception catch (e) {
      _log.error('Failed to get keyboard setup', e);
      return const KeyboardSetup(
        setting: KeyboardSetting(layout: ''),
        layouts: [],
      );
    }
  }

  @override
  Future<AnyStep> getKeyboardStep([String step = '0']) async {
    // TODO: implement keyboard detection (?)
    throw UnsupportedError(
        'XdgKeyboardService does\'t support keyboard layout detection');
  }

  @override
  Future<void> setInputSource(KeyboardSetting setting, {String? user}) async {
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
      _log.error('Failed to set input source', e);
    }
  }

  @override
  Future<void> setKeyboard(KeyboardSetting setting) async {
    try {
      await _client.connect();
      await _client.setX11Keyboard(
        setting.layout,
        _client.x11Model,
        setting.variant,
        _client.x11Options,
        false,
        false,
      );
    } on Exception catch (e) {
      _log.error('Failed to set keyboard', e);
    }
  }

  @override
  bool get canDetectLayout => false;
}

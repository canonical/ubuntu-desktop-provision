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

const nonLatinLayouts = [
  'af',
  'am',
  'ara',
  'ben',
  'bd',
  'bg',
  'bt',
  'by',
  'et',
  'ge',
  'gh',
  'gr',
  'guj',
  'guru',
  'il',
  'in',
  'iq',
  'ir',
  'iku',
  'kan',
  'kh',
  'kz',
  'la',
  'lao',
  'lk',
  'kg',
  'ma',
  'mk',
  'mm',
  'mn',
  'mv',
  'mal',
  'np',
  'ori',
  'pk',
  'ru',
  'scc',
  'sy',
  'syr',
  'tel',
  'th',
  'tj',
  'tam',
  'tib',
  'ua',
  'ug',
  'uz',
];

class SubiquityKeyboardService implements KeyboardService {
  SubiquityKeyboardService(
    this._subiquity, {
    this.liveRun = false,
    @visibleForTesting GSettings? inputSourceSettings,
    @visibleForTesting
    Future<ProcessResult> Function(String, List<String>)? runProcess,
    @visibleForTesting
    Future<void> Function(String layout, String variant)? setLocale1X11Keyboard,
  })  : _inputSourceSettings = inputSourceSettings ??
            createService<GSettings, String>('org.gnome.desktop.input-sources'),
        _runProcess = runProcess ?? Process.run,
        _setLocale1X11KeyboardImpl =
            setLocale1X11Keyboard ?? _defaultSetLocale1X11Keyboard;

  final SubiquityClient _subiquity;
  final GSettings _inputSourceSettings;
  final Future<ProcessResult> Function(String, List<String>) _runProcess;
  final Future<void> Function(String layout, String variant)
      _setLocale1X11KeyboardImpl;
  final bool liveRun;

  @override
  Future<KeyboardSetup> getKeyboard() => _subiquity.getKeyboard();

  @override
  Future<void> setKeyboard(KeyboardSetting setting) {
    return _subiquity.setKeyboard(setting);
  }

  @override
  Future<void> setInputSource(KeyboardSetting setting, {String? user}) async {
    await _subiquity.setInputSource(setting, user: user);
    if (liveRun) {
      unawaited(_setXkbInputSource(setting));
      await _setGsettingsInputSource(setting);
      await _setLocale1InputSource(setting);
    }
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
            DBusStruct([const DBusString('xkb'), DBusString(xkbString)]),
            if (nonLatinLayouts.contains(setting.layout))
              DBusStruct([const DBusString('xkb'), DBusString('us')]),
          ],
        ),
      );
    } on Exception catch (e) {
      _log.error('Failed to set input source via gsettings', e);
    }
  }

  Future<void> _setXkbInputSource(KeyboardSetting setting) async {
    final result = await _runProcess('setxkbmap', [
      '-layout',
      setting.layout,
      if (setting.variant.isNotEmpty) ...['-variant', setting.variant],
    ]);
    if (result.exitCode != 0) {
      _log.error('Failed to set input source via setxkbmap', result.stderr);
    }
  }

  Future<void> _setLocale1InputSource(KeyboardSetting setting) async {
    // Call org.freedesktop.locale1 SetX11Keyboard() to store the layout in a
    // desktop-agnostic way. Desktops such as KDE Plasma (with FollowLocale1=true
    // in kxkbrc) will pick this up without needing any desktop-specific calls.
    try {
      final layout = nonLatinLayouts.contains(setting.layout)
          ? '${setting.layout},us'
          : setting.layout;
      final variant = nonLatinLayouts.contains(setting.layout)
          ? '${setting.variant},'
          : setting.variant;
      await _setLocale1X11KeyboardImpl(layout, variant);
    } on Exception catch (e) {
      _log.error('Failed to set input source via locale1', e);
    }
  }
}

Future<void> _defaultSetLocale1X11Keyboard(
  String layout,
  String variant,
) async {
  final client = DBusClient.system();
  try {
    final locale1 = DBusRemoteObject(
      client,
      name: 'org.freedesktop.locale1',
      path: DBusObjectPath('/org/freedesktop/locale1'),
    );
    final args = [
      DBusString(layout), // x11Layout
      const DBusString(''), // x11Model
      DBusString(variant), // x11Variant
      const DBusString(''), // x11Options
      const DBusBoolean(false), // convert (do not propagate to vconsole)
      const DBusBoolean(false), // interactive (no polkit prompt)
    ];
    await locale1.callMethod(
      'org.freedesktop.locale1',
      'SetX11Keyboard',
      args,
      replySignature: DBusSignature(''),
    );
  } finally {
    await client.close();
  }
}

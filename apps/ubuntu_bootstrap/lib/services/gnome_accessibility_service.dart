import 'dart:io';
import 'dart:ui';

import 'package:dbus/dbus.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:gsettings/gsettings.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final _log = Logger('gnome_accessibility');

class GnomeAccessibilityService implements AccessibilityService {
  GnomeAccessibilityService({
    this.liveRun = false,
    @visibleForTesting GSettings? a11yInterfaceSettings,
    @visibleForTesting GSettings? applicationSettings,
    @visibleForTesting GSettings? interfaceSettings,
    @visibleForTesting GSettings? keyboardSettings,
    @visibleForTesting GSettings? wmSettings,
    @visibleForTesting FileSystem? fileSystem,
    @visibleForTesting
    Future<ProcessResult> Function(String, List<String>)? runProcess,
    @visibleForTesting Map<String, String>? env,
  })  : _a11yInterfaceSettings = a11yInterfaceSettings ??
            createService<GSettings, String>(
              'org.gnome.desktop.a11y.interface',
            ),
        _applicationSettings = applicationSettings ??
            createService<GSettings, String>(
              'org.gnome.desktop.a11y.applications',
            ),
        _interfaceSettings = interfaceSettings ??
            createService<GSettings, String>(
              'org.gnome.desktop.interface',
            ),
        _keyboardSettings = keyboardSettings ??
            createService<GSettings, String>(
              'org.gnome.desktop.a11y.keyboard',
            ),
        _wmSettings = wmSettings ??
            createService<GSettings, String>(
              'org.gnome.desktop.wm.preferences',
            ),
        _fs = fileSystem ?? LocalFileSystem(),
        _runProcess = runProcess ?? Process.run,
        _env = env ?? Platform.environment;

  final GSettings _a11yInterfaceSettings;
  final GSettings _applicationSettings;
  final GSettings _interfaceSettings;
  final GSettings _keyboardSettings;
  final GSettings _wmSettings;

  final FileSystem _fs;
  final Future<ProcessResult> Function(String, List<String>) _runProcess;
  final Map<String, String> _env;
  static const orcaOverrideFilePath =
      '.config/systemd/user/orca.service.d/override.conf';

  static const _textScalingDefault = 1.0;
  static const _textScalingLarge = 1.25;

  final bool liveRun;

  Future<DBusValue?> _tryGet(GSettings settings, String key) async {
    try {
      return await settings.get(key);
    } on Exception catch (e) {
      _log.error('Failed to get $key from ${settings.path}', e);
    }
    return null;
  }

  Future<void> _trySet(GSettings settings, String key, DBusValue value) async {
    try {
      await settings.set(key, value);
    } on Exception catch (e) {
      _log.error('Failed to set $key to $value', e);
    }
  }

  @override
  Future<bool> isSupported() => Future.wait(
        [
          _a11yInterfaceSettings,
          _applicationSettings,
          _interfaceSettings,
          _keyboardSettings,
          _wmSettings,
        ].map((settings) => settings.list()),
        eagerError: true,
      ).then((_) => true, onError: (_) => false);

  @override
  Future<bool> getHighContrast() => _tryGet(
        _a11yInterfaceSettings,
        'high-contrast',
      ).then((value) => value?.asBoolean() ?? false);

  @override
  Future<void> setHighContrast(bool value) =>
      _trySet(_a11yInterfaceSettings, 'high-contrast', DBusBoolean(value));

  @override
  Future<bool> getLargeText() => _tryGet(
        _interfaceSettings,
        'text-scaling-factor',
      ).then(
        (value) =>
            (value?.asDouble() ?? _textScalingDefault) >= _textScalingLarge,
      );

  @override
  Future<void> setLargeText(bool value) => _trySet(
        _interfaceSettings,
        'text-scaling-factor',
        DBusDouble(value ? _textScalingLarge : _textScalingDefault),
      );

  @override
  Future<bool> getReduceAnimation() => _tryGet(
        _interfaceSettings,
        'enable-animations',
      ).then((value) => !(value?.asBoolean() ?? false));

  @override
  Future<void> setReduceAnimation(bool value) => _trySet(
        _interfaceSettings,
        'enable-animations',
        DBusBoolean(!value),
      );

  @override
  Future<bool> getScreenReader() => _tryGet(
        _applicationSettings,
        'screen-reader-enabled',
      ).then((value) => value?.asBoolean() ?? false);

  @override
  Future<void> setScreenReader(bool value) => _trySet(
        _applicationSettings,
        'screen-reader-enabled',
        DBusBoolean(value),
      );

  @override
  Future<bool> getVisualAlerts() => _tryGet(
        _wmSettings,
        'visual-bell',
      ).then((value) => value?.asBoolean() ?? false);

  @override
  Future<void> setVisualAlerts(bool value) =>
      _trySet(_wmSettings, 'visual-bell', DBusBoolean(value));

  @override
  Future<bool> getStickyKeys() => _tryGet(
        _keyboardSettings,
        'stickykeys-enable',
      ).then((value) => value?.asBoolean() ?? false);

  @override
  Future<void> setStickyKeys(bool value) => _trySet(
        _keyboardSettings,
        'stickykeys-enable',
        DBusBoolean(value),
      );

  @override
  Future<bool> getSlowKeys() => _tryGet(
        _keyboardSettings,
        'slowkeys-enable',
      ).then((value) => value?.asBoolean() ?? false);

  @override
  Future<void> setSlowKeys(bool value) => _trySet(
        _keyboardSettings,
        'slowkeys-enable',
        DBusBoolean(value),
      );

  @override
  Future<bool> getMouseKeys() => _tryGet(
        _keyboardSettings,
        'mousekeys-enable',
      ).then((value) => value?.asBoolean() ?? false);

  @override
  Future<void> setMouseKeys(bool value) => _trySet(
        _keyboardSettings,
        'mousekeys-enable',
        DBusBoolean(value),
      );

  @override
  Future<bool> getDesktopZoom() => _tryGet(
        _applicationSettings,
        'screen-magnifier-enabled',
      ).then((value) => value?.asBoolean() ?? false);

  @override
  Future<void> setDesktopZoom(bool value) => _trySet(
        _applicationSettings,
        'screen-magnifier-enabled',
        DBusBoolean(value),
      );

  @override
  Future<void> setScreenReaderLocale(Locale locale) async {
    final localeValue = '${locale.languageCode}_${locale.countryCode}.UTF-8';
    _log.info('setting orca locale: $localeValue');
    if (!liveRun) {
      return;
    }
    final orcaOverrideFile = await _fs
        .file(p.join(_env['HOME'] ?? '/home/ubuntu', orcaOverrideFilePath))
        .create(recursive: true);
    await orcaOverrideFile
        .writeAsString('[Service]\nEnvironment="LANG=$localeValue"\n');
    await _runProcess('systemctl', ['--user', 'daemon-reload']);
    await _runProcess('systemctl', ['--user', 'try-restart', 'orca']);
  }
}

import 'package:dbus/dbus.dart';
import 'package:gsettings/gsettings.dart';
import 'package:meta/meta.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final _log = Logger('gnome_accessibility');

class GnomeAccessibilityService implements AccessibilityService {
  GnomeAccessibilityService({
    @visibleForTesting GSettings? a11yInterfaceSettings,
    @visibleForTesting GSettings? applicationSettings,
    @visibleForTesting GSettings? interfaceSettings,
    @visibleForTesting GSettings? wmSettings,
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
        _wmSettings = wmSettings ??
            createService<GSettings, String>(
              'org.gnome.desktop.wm.preferences',
            );

  final GSettings _a11yInterfaceSettings;
  final GSettings _applicationSettings;
  final GSettings _interfaceSettings;
  final GSettings _wmSettings;

  static const _textScalingDefault = 1.0;
  static const _textScalingLarge = 1.25;

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
      ).then((value) =>
          (value?.asDouble() ?? _textScalingDefault) >= _textScalingLarge);

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
}

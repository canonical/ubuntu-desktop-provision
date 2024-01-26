import 'package:dbus/dbus.dart';
import 'package:gsettings/gsettings.dart';
import 'package:meta/meta.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_session/ubuntu_session.dart';

final _log = Logger('desktop');

/// An interface for accessing to desktop settings.
abstract class DesktopService {
  /// Inhibits potentially disruptive events, such as automatic volume mounting,
  /// screen blanking, suspending, logging out, etc.
  Future<void> inhibit() async {}

  /// Closes the service and releases any resources.
  Future<void> close() async {}
}

/// Provides access to GNOME settings.
class GnomeService implements DesktopService {
  /// Creates a GNOME settings instance using the given GSettings as a backend
  /// for storing the settings.
  GnomeService({
    @visibleForTesting GSettings? dingSettings,
    @visibleForTesting GSettings? mediaHandlingSettings,
    @visibleForTesting GSettings? sessionSettings,
    @visibleForTesting GSettings? screensaverSettings,
    @visibleForTesting GnomeSessionManager? gnomeSessionManager,
  })  : _dingSettings = dingSettings ??
            createService<GSettings, String>('org.gnome.shell.extensions.ding'),
        _mediaHandlingSettings = mediaHandlingSettings ??
            createService<GSettings, String>(
              'org.gnome.desktop.media-handling',
            ),
        _screensaverSettings = screensaverSettings ??
            createService<GSettings, String>('org.gnome.desktop.screensaver'),
        _sessionSettings = sessionSettings ??
            createService<GSettings, String>('org.gnome.desktop.session'),
        _gnomeSessionManager = gnomeSessionManager ?? GnomeSessionManager();

  final GSettings _dingSettings;
  final GSettings _mediaHandlingSettings;
  final GSettings _screensaverSettings;
  final GSettings _sessionSettings;
  final GnomeSessionManager _gnomeSessionManager;

  final restoreSettings = <Future<void> Function()>[];

  Future<void> _trySetAndRestore(
    GSettings settings,
    String key,
    DBusValue value,
  ) async {
    try {
      final previousValue = await settings.get(key);
      await settings.set(key, value);
      restoreSettings.add(() => settings.set(key, previousValue));
    } on Exception catch (e) {
      _log.error('Failed to set $key to $value', e);
    }
  }

  Future<void> _tryInhibitGnomeSession() async {
    try {
      await _gnomeSessionManager.connect();
      final cookie = await _gnomeSessionManager.inhibit(
        appId: 'com.canonical.ubuntu_desktop_installer',
        topLevelXId: 0,
        reason: 'Installing Ubuntu',
        flags: {
          GnomeInhibitionFlag.autoMount,
          GnomeInhibitionFlag.idle,
          GnomeInhibitionFlag.logout,
          GnomeInhibitionFlag.suspend,
          GnomeInhibitionFlag.switchUser,
        },
      );
      restoreSettings.add(() => _gnomeSessionManager.uninhibit(cookie));
    } on Exception catch (e) {
      _log.error('Failed to inhibit Gnome Session', e);
    }
  }

  @override
  Future<void> inhibit() async {
    _log.debug('Disabling automounting');
    await _trySetAndRestore(
        _mediaHandlingSettings, 'automount', const DBusBoolean(false));
    await _trySetAndRestore(
        _mediaHandlingSettings, 'automount-open', const DBusBoolean(false));
    await _trySetAndRestore(
        _mediaHandlingSettings, 'autorun-never', const DBusBoolean(true));
    await _trySetAndRestore(
        _dingSettings, 'show-volumes', const DBusBoolean(false));
    await _trySetAndRestore(
        _dingSettings, 'show-network-volumes', const DBusBoolean(false));

    _log.debug('Disabling screen blanking');
    await _trySetAndRestore(
        _sessionSettings, 'idle-delay', const DBusUint32(0));

    _log.debug('Disabling screensaver');
    await _trySetAndRestore(_screensaverSettings, 'idle-activation-enabled',
        const DBusBoolean(false));

    _log.debug('Inhibiting Gnome session');
    await _tryInhibitGnomeSession();
  }

  @override
  Future<void> close() async {
    _log.debug('Restoring desktop settings');
    await Future.wait(restoreSettings.map((r) => r.call()));
    await _sessionSettings.close();
    await _screensaverSettings.close();
    await _gnomeSessionManager.close();
  }
}

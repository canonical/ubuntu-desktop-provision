import 'package:dbus/dbus.dart';
import 'package:gsettings/gsettings.dart';
import 'package:meta/meta.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

abstract class PrivacyService {
  Future<bool> isLocationEnabled();
  Future<void> setLocationEnabled(bool enabled);

  Future<bool> isReportingEnabled();
  Future<void> setReportingEnabled(bool enabled);

  Future<void> close();
}

class GnomePrivacyService implements PrivacyService {
  GnomePrivacyService({
    @visibleForTesting GSettings? locationSettings,
    @visibleForTesting GSettings? privacySettings,
  })  : _locationSettings = locationSettings ??
            createService<GSettings, String>('org.gnome.system.location'),
        _privacySettings = privacySettings ??
            createService<GSettings, String>('org.gnome.desktop.privacy');

  final GSettings _locationSettings;
  final GSettings _privacySettings;

  @override
  Future<bool> isLocationEnabled() {
    return _locationSettings.get('enabled').then((v) => v.asBoolean());
  }

  @override
  Future<void> setLocationEnabled(bool enabled) {
    return _locationSettings.set('enabled', DBusBoolean(enabled));
  }

  @override
  Future<bool> isReportingEnabled() {
    return _privacySettings
        .get('report-technical-problems')
        .then((v) => v.asBoolean());
  }

  @override
  Future<void> setReportingEnabled(bool enabled) {
    return _privacySettings.set(
        'report-technical-problems', DBusBoolean(enabled));
  }

  @override
  Future<void> close() {
    return Future.wait([
      _locationSettings.close(),
      _privacySettings.close(),
    ]);
  }
}

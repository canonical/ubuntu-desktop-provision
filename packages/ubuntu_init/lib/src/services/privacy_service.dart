// ignore_for_file: avoid_catches_without_on_clauses

import 'package:dbus/dbus.dart';
import 'package:gsettings/gsettings.dart';
import 'package:meta/meta.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final _log = Logger('gnome_privacy_service');

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
  Future<bool> isLocationEnabled() async {
    try {
      return await _locationSettings.get('enabled').then((v) => v.asBoolean());
    } catch (e) {
      _log.error('Error getting location settings: $e');
      return false;
    }
  }

  @override
  Future<void> setLocationEnabled(bool enabled) async {
    await setReportingEnabled(true);
    try {
      return await _locationSettings.set('enabled', DBusBoolean(enabled));
    } catch (e) {
      _log.error('Error setting location settings: $e');
      return;
    }
  }

  @override
  Future<bool> isReportingEnabled() async {
    try {
      return await _privacySettings
          .get('report-technical-problems')
          .then((v) => v.asBoolean());
    } catch (e) {
      _log.error('Error getting privacy settings: $e');
      return false;
    }
  }

  @override
  Future<void> setReportingEnabled(bool enabled) async {
    try {
      return await _privacySettings.set(
          'report-technical-problems', DBusBoolean(enabled));
    } catch (e) {
      _log.error('Error setting privacy settings: $e');
      return;
    }
  }

  @override
  Future<void> close() {
    return Future.wait([
      _locationSettings.close(),
      _privacySettings.close(),
    ]);
  }
}

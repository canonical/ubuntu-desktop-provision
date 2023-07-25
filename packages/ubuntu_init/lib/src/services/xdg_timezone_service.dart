import 'package:dbus/dbus.dart';
import 'package:meta/meta.dart';
import 'package:ubuntu_provision/services.dart';

class XdgTimezoneService implements TimezoneService {
  XdgTimezoneService({
    @visibleForTesting DBusClient? bus,
    @visibleForTesting DBusRemoteObject? object,
  }) : _object = object ?? _createRemoteObject(bus);

  static DBusRemoteObject _createRemoteObject(DBusClient? bus) {
    return DBusRemoteObject(
      bus ?? DBusClient.system(),
      name: 'org.freedesktop.timedate1',
      path: DBusObjectPath('/org/freedesktop/timedate1'),
    );
  }

  final DBusRemoteObject _object;

  @override
  Future<String> getTimezone() {
    return _object
        .getProperty(
          'org.freedesktop.timedate1',
          'Timezone',
          signature: DBusSignature.string,
        )
        .then((v) => v.asString());
  }

  @override
  Future<void> setTimezone(String? timezone) async {
    await _object.callMethod(
      'org.freedesktop.timedate1',
      'SetTimezone',
      [DBusString(timezone ?? 'Etc/UTC'), const DBusBoolean(false)],
      replySignature: DBusSignature.empty,
    );
  }
}

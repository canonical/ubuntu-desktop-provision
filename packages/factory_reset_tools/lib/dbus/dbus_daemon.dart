import 'package:dbus/dbus.dart';
import 'package:factory_reset_tools/dbus/dbus_local_object.dart';
import 'package:factory_reset_tools/dbus/factory_reset.dart';

class FactoryResetToolsObject extends ComCanonicalOemFactoryResetTools {
  @override
  Future<DBusMethodResponse> getVersion() async {
    return DBusGetPropertyResponse(const DBusString('1.0'));
  }

  @override
  Future<DBusMethodResponse> doReboot(String rebootOption) async {
    await startCommand(ResetOptionType.fromString(rebootOption));
    return DBusMethodSuccessResponse();
  }
}

Future<void> runDBusDaemon() async {
  final client = DBusClient.system();
  await client.requestName('com.canonical.oem.FactoryResetTools');
  await client.registerObject(FactoryResetToolsObject());
}

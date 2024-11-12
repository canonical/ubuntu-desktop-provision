import 'package:dbus/dbus.dart';
import 'package:factory_reset_tools/dbus/dbus_local_object.dart';
import 'package:factory_reset_tools/dbus/factory_reset.dart';

class FactoryResetToolsObject extends ComCanonicalOemFactoryResetTools {
  @override
  Future<DBusMethodResponse> getVersion() async {
    return DBusGetPropertyResponse(const DBusString('1.0'));
  }

  @override
  Future<DBusMethodResponse> doReboot(
    String rebootOption,
    String? sender,
  ) async {
    final dbusClient = DBusClient.system();
    final proxy = DBusRemoteObject(
      dbusClient,
      name: 'org.freedesktop.PolicyKit1',
      path: DBusObjectPath('/org/freedesktop/PolicyKit1/Authority'),
    );
    final authResponse = await proxy.callMethod(
      'org.freedesktop.PolicyKit1.Authority',
      'CheckAuthorization',
      [
        // IN  Subject                        subject,
        DBusStruct([
          const DBusString('system-bus-name'),
          DBusDict.stringVariant({'name': DBusString(sender ?? '')}),
        ]),
        // IN  String                         action_id,
        const DBusString('com.canonical.oem.FactoryResetTools.reboot'),
        // IN  Dict<String,String>            details,
        DBusDict(DBusSignature('s'), DBusSignature('s'), {}),
        // IN  CheckAuthorizationFlags        flags,
        const DBusUint32(1),
        // IN  String                         cancellation_id,
        const DBusString(''),
      ],
      // OUT AuthorizationResult            result
      replySignature: DBusSignature('(bba{ss})'),
    );

    final authResult = authResponse.returnValues[0].asStruct();
    final authorized = authResult[0].asBoolean();

    if (!authorized) {
      return DBusMethodErrorResponse.authFailed();
    }

    await startCommand(ResetOptionType.fromString(rebootOption));
    return DBusMethodSuccessResponse();
  }
}

Future<void> runDBusDaemon() async {
  final client = DBusClient.system();
  await client.requestName('com.canonical.oem.FactoryResetTools');
  await client.registerObject(FactoryResetToolsObject());
}

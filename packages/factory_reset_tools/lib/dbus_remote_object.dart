// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object data/factory-reset-tools-object.xml

import 'package:dbus/dbus.dart';

class ComCanonicalOemFactoryResetTools extends DBusRemoteObject {
  ComCanonicalOemFactoryResetTools(
    super.client,
    String destination, {
    super.path = const DBusObjectPath.unchecked(
      '/com/canonical/oem/FactoryResetTools',
    ),
  }) : super(name: destination);

  /// Gets com.canonical.oem.FactoryResetTools.Version
  Future<String> getVersion() async {
    final value = await getProperty(
      'com.canonical.oem.FactoryResetTools',
      'Version',
      signature: DBusSignature('s'),
    );
    return value.asString();
  }

  /// Invokes com.canonical.oem.FactoryResetTools.Reboot()
  Future<void> callReboot(
    String rebootOption, {
    bool noAutoStart = false,
    bool allowInteractiveAuthorization = false,
  }) async {
    await callMethod(
      'com.canonical.oem.FactoryResetTools',
      'Reboot',
      [DBusString(rebootOption)],
      replySignature: DBusSignature(''),
      noAutoStart: noAutoStart,
      allowInteractiveAuthorization: allowInteractiveAuthorization,
    );
  }
}

// This file was generated using the following command and may be overwritten.
// dart-dbus generate-object ../data/factory-reset-tools-object.xml

import 'package:dbus/dbus.dart';

class ComCanonicalOemFactoryResetTools extends DBusObject {
  /// Creates a new object to expose on [path].
  ComCanonicalOemFactoryResetTools({
    DBusObjectPath path = const DBusObjectPath.unchecked(
      '/com/canonical/oem/FactoryResetTools',
    ),
  }) : super(path);

  /// Gets value of property com.canonical.oem.FactoryResetTools.Version
  Future<DBusMethodResponse> getVersion() async {
    return DBusMethodErrorResponse.failed(
      'Get com.canonical.oem.FactoryResetTools.Version not implemented',
    );
  }

  /// Implementation of com.canonical.oem.FactoryResetTools.Reboot()
  Future<DBusMethodResponse> doReboot(
    String rebootOption,
    String? sender,
  ) async {
    return DBusMethodErrorResponse.failed(
      'com.canonical.oem.FactoryResetTools.Reboot() not implemented',
    );
  }

  @override
  List<DBusIntrospectInterface> introspect() {
    return [
      DBusIntrospectInterface(
        'com.canonical.oem.FactoryResetTools',
        methods: [
          DBusIntrospectMethod(
            'Reboot',
            args: [
              DBusIntrospectArgument(
                DBusSignature('s'),
                DBusArgumentDirection.in_,
                name: 'rebootOption',
              ),
            ],
          ),
        ],
        properties: [
          DBusIntrospectProperty(
            'Version',
            DBusSignature('s'),
            access: DBusPropertyAccess.read,
          ),
        ],
      ),
    ];
  }

  @override
  Future<DBusMethodResponse> handleMethodCall(DBusMethodCall methodCall) async {
    if (methodCall.interface == 'com.canonical.oem.FactoryResetTools') {
      if (methodCall.name == 'Reboot') {
        if (methodCall.signature != DBusSignature('s')) {
          return DBusMethodErrorResponse.invalidArgs();
        }
        return doReboot(methodCall.values[0].asString(), methodCall.sender);
      } else {
        return DBusMethodErrorResponse.unknownMethod();
      }
    } else {
      return DBusMethodErrorResponse.unknownInterface();
    }
  }

  @override
  Future<DBusMethodResponse> getProperty(String interface, String name) async {
    if (interface == 'com.canonical.oem.FactoryResetTools') {
      if (name == 'Version') {
        return getVersion();
      } else {
        return DBusMethodErrorResponse.unknownProperty();
      }
    } else {
      return DBusMethodErrorResponse.unknownProperty();
    }
  }

  @override
  Future<DBusMethodResponse> setProperty(
    String interface,
    String name,
    DBusValue value,
  ) async {
    if (interface == 'com.canonical.oem.FactoryResetTools') {
      if (name == 'Version') {
        return DBusMethodErrorResponse.propertyReadOnly();
      } else {
        return DBusMethodErrorResponse.unknownProperty();
      }
    } else {
      return DBusMethodErrorResponse.unknownProperty();
    }
  }

  @override
  Future<DBusMethodResponse> getAllProperties(String interface) async {
    final properties = <String, DBusValue>{};
    if (interface == 'com.canonical.oem.FactoryResetTools') {
      properties['Version'] = (await getVersion()).returnValues[0];
    }
    return DBusMethodSuccessResponse([DBusDict.stringVariant(properties)]);
  }
}

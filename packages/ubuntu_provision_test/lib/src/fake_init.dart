import 'dart:io';

import 'package:dbus/dbus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsettings/gsettings.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

Future<void> registerFakeInitServices({
  Identity identity = const Identity(),
  List<String> locale = const ['LANG=C.UTF-8'],
  KeyboardSetting keyboard = const KeyboardSetting(layout: 'us'),
  String timezone = 'Etc/UTC',
}) async {
  final tempDir = Directory.systemTemp.createTempSync('ubuntu_init-');
  addTearDown(() => tempDir.deleteSync(recursive: true));

  final server = FakeDBusServer(
    identity: identity,
    locale: locale,
    keyboard: keyboard,
    timezone: timezone,
  );
  addTearDown(server.close);
  final address = await server.start(tempDir);

  final client = DBusClient(address);
  addTearDown(client.close);

  final keyfile =
      GSettingsKeyfileBackend(file: File('${tempDir.path}/gsettings.ini'));
  registerServiceFactory<GSettings>((s) => GSettings(s, backend: keyfile));

  registerService<IdentityService>(
      () => XdgIdentityService.uid(0, bus: client));
  registerService<KeyboardService>(() => XdgKeyboardService(bus: client));
  registerService<LocaleService>(() => XdgLocaleService(bus: client));
  registerService<NetworkService>(() => NetworkService(bus: client));
  registerService<ThemeService>(() => GtkThemeService(bus: client));
  registerService<TimezoneService>(() => XdgTimezoneService(bus: client));
  addTearDown(resetAllServices);
}

class FakeDBusServer extends DBusServer {
  FakeDBusServer({
    required this.identity,
    required this.locale,
    required this.keyboard,
    required this.timezone,
  }) {
    _dconf = _FakeDConfObject(this);
    _accounts = _FakeXdgAccounts(this);
    _user = _FakeXdgAccountsUser(this);
    _hostname = _FakeXdgHostnameObject(this);
    _locale = _FakeXdgLocaleObject(this);
    _network = _FakeXdgNetworkManagerObject(this);
    _timedate = _FakeXdgTimedateObject(this);
  }

  late final DBusClient _client;
  late final _FakeDConfObject _dconf;
  late final _FakeXdgAccounts _accounts;
  late final _FakeXdgAccountsUser _user;
  late final _FakeXdgHostnameObject _hostname;
  late final _FakeXdgLocaleObject _locale;
  late final _FakeXdgNetworkManagerObject _network;
  late final _FakeXdgTimedateObject _timedate;

  Identity identity;
  KeyboardSetting keyboard;
  Iterable<String> locale;
  String timezone;

  Future<DBusAddress> start(Directory dir) async {
    final address = await listenAddress(DBusAddress.unix(dir: dir));
    _client = DBusClient(address);

    await _client.requestName('ca.desrt.dconf');
    await _client.requestName('ca.desrt.dconf.Writer');
    await _client.registerObject(_dconf);

    await _client.requestName('org.freedesktop');
    await _client.registerObject(
        DBusObject(DBusObjectPath('/org/freedesktop'), isObjectManager: true));

    await _client.requestName('org.freedesktop.Accounts');
    await _client.registerObject(_accounts);

    await _client.requestName('org.freedesktop.Accounts.User');
    await _client.registerObject(_user);

    await _client.requestName('org.freedesktop.hostname1');
    await _client.registerObject(_hostname);

    await _client.requestName('org.freedesktop.locale1');
    await _client.registerObject(_locale);

    await _client.requestName('org.freedesktop.NetworkManager');
    await _client.registerObject(_network);

    await _client.requestName('org.freedesktop.timedate1');
    await _client.registerObject(_timedate);

    return address;
  }

  @override
  Future<void> close() async {
    await _client.close();
    return super.close();
  }
}

class _FakeDConfObject extends DBusObject {
  _FakeDConfObject(this.server)
      : super(DBusObjectPath('/ca/desrt/dconf/Writer/user'));

  final FakeDBusServer server;

  @override
  Future<DBusMethodResponse> handleMethodCall(DBusMethodCall methodCall) async {
    assert(methodCall.interface == 'ca.desrt.dconf.Writer');
    switch (methodCall.name) {
      case 'Change':
        return DBusMethodSuccessResponse([const DBusString('tag')]);
      default:
        return DBusMethodErrorResponse.unknownMethod();
    }
  }
}

class _FakeXdgAccounts extends DBusObject {
  _FakeXdgAccounts(this.server)
      : super(DBusObjectPath('/org/freedesktop/Accounts'));

  final FakeDBusServer server;

  @override
  Future<DBusMethodResponse> handleMethodCall(DBusMethodCall methodCall) async {
    assert(methodCall.interface == 'org.freedesktop.Accounts');
    switch (methodCall.name) {
      case 'CreateUser':
        server.identity = server.identity.copyWith(
          username: methodCall.values[0].asString(),
          realname: methodCall.values[1].asString(),
        );
        final user = DBusObjectPath('/org/freedesktop/Accounts/User/1000');
        await emitSignal('org.freedesktop.Accounts', 'UserAdded', [user]);
        return DBusMethodSuccessResponse([user]);
      default:
        return DBusMethodErrorResponse.unknownMethod();
    }
  }
}

class _FakeXdgAccountsUser extends DBusObject {
  _FakeXdgAccountsUser(this.server)
      : super(DBusObjectPath('/org/freedesktop/Accounts/User/1000'));

  final FakeDBusServer server;

  @override
  Future<DBusMethodResponse> handleMethodCall(DBusMethodCall methodCall) async {
    assert(methodCall.interface == 'org.freedesktop.Accounts.User');
    switch (methodCall.name) {
      case 'SetPassword':
        return DBusMethodSuccessResponse();
      case 'SetAutomaticLogin':
        return DBusMethodSuccessResponse();
      default:
        return DBusMethodErrorResponse.unknownMethod();
    }
  }
}

class _FakeXdgHostnameObject extends DBusObject {
  _FakeXdgHostnameObject(this.server)
      : super(DBusObjectPath('/org/freedesktop/hostname1'));

  final FakeDBusServer server;

  @override
  Future<DBusMethodResponse> getProperty(String interface, String name) async {
    assert(interface == 'org.freedesktop.hostname1');
    switch (name) {
      case 'Hostname':
        return DBusGetPropertyResponse(DBusString(server.identity.hostname));
      default:
        return DBusMethodErrorResponse.unknownProperty();
    }
  }

  @override
  Future<DBusMethodResponse> handleMethodCall(DBusMethodCall methodCall) async {
    assert(methodCall.interface == 'org.freedesktop.hostname1');
    switch (methodCall.name) {
      case 'SetStaticHostname':
        server.identity = server.identity.copyWith(
          hostname: methodCall.values[0].asString(),
        );
        await emitPropertiesChanged(
          'org.freedesktop.hostname1',
          changedProperties: {'Hostname': DBusString(server.identity.hostname)},
        );
        return DBusMethodSuccessResponse();
      default:
        return DBusMethodErrorResponse.unknownMethod();
    }
  }
}

class _FakeXdgLocaleObject extends DBusObject {
  _FakeXdgLocaleObject(this.server)
      : super(DBusObjectPath('/org/freedesktop/locale1'));

  final FakeDBusServer server;

  @override
  Future<DBusMethodResponse> getAllProperties(String interface) async {
    assert(interface == 'org.freedesktop.locale1');
    return DBusGetAllPropertiesResponse({
      'Locale': DBusArray.string(server.locale),
      'X11Layout': DBusString(server.keyboard.layout),
      'X11Variant': DBusString(server.keyboard.variant),
    });
  }

  @override
  Future<DBusMethodResponse> getProperty(String interface, String name) async {
    assert(interface == 'org.freedesktop.locale1');
    switch (name) {
      case 'Locale':
        return DBusGetPropertyResponse(DBusArray.string(server.locale));
      case 'X11Layout':
        return DBusGetPropertyResponse(DBusString(server.keyboard.layout));
      case 'X11Variant':
        return DBusGetPropertyResponse(DBusString(server.keyboard.variant));
      default:
        return DBusMethodErrorResponse.unknownProperty();
    }
  }

  @override
  Future<DBusMethodResponse> handleMethodCall(DBusMethodCall methodCall) async {
    assert(methodCall.interface == 'org.freedesktop.locale1');
    switch (methodCall.name) {
      case 'SetLocale':
        server.locale = methodCall.values[0].asStringArray();
        await emitPropertiesChanged(
          'org.freedesktop.locale1',
          changedProperties: {'Locale': DBusArray.string(server.locale)},
        );
        return DBusMethodSuccessResponse();
      case 'SetX11Keyboard':
        server.keyboard = KeyboardSetting(
          layout: methodCall.values[0].asString(),
          variant: methodCall.values[1].asString(),
        );
        await emitPropertiesChanged(
          'org.freedesktop.locale1',
          changedProperties: {
            'X11Layout': DBusString(server.keyboard.layout),
            'X11Variant': DBusString(server.keyboard.variant),
          },
        );
        return DBusMethodSuccessResponse();
      default:
        return DBusMethodErrorResponse.unknownMethod();
    }
  }
}

class _FakeXdgNetworkManagerObject extends DBusObject {
  _FakeXdgNetworkManagerObject(this.server)
      : super(DBusObjectPath('/org/freedesktop/NetworkManager'));

  final FakeDBusServer server;

  @override
  Future<DBusMethodResponse> getAllProperties(String interface) async {
    assert(interface == 'org.freedesktop.NetworkManager');
    return DBusGetAllPropertiesResponse({});
  }

  @override
  Future<DBusMethodResponse> getProperty(String interface, String name) async {
    assert(interface == 'org.freedesktop.NetworkManager');
    switch (name) {
      default:
        return DBusMethodErrorResponse.unknownProperty();
    }
  }

  @override
  Future<DBusMethodResponse> handleMethodCall(DBusMethodCall methodCall) async {
    assert(methodCall.interface == 'org.freedesktop.NetworkManager');
    switch (methodCall.name) {
      default:
        return DBusMethodErrorResponse.unknownMethod();
    }
  }
}

class _FakeXdgTimedateObject extends DBusObject {
  _FakeXdgTimedateObject(this.server)
      : super(DBusObjectPath('/org/freedesktop/timedate1'));

  final FakeDBusServer server;

  @override
  Future<DBusMethodResponse> getProperty(String interface, String name) async {
    assert(interface == 'org.freedesktop.timedate1');
    switch (name) {
      case 'Timezone':
        return DBusGetPropertyResponse(DBusString(server.timezone));
      default:
        return DBusMethodErrorResponse.unknownProperty();
    }
  }

  @override
  Future<DBusMethodResponse> handleMethodCall(DBusMethodCall methodCall) async {
    assert(methodCall.interface == 'org.freedesktop.timedate1');
    switch (methodCall.name) {
      case 'SetTimezone':
        server.timezone = methodCall.values[0].asString();
        await emitPropertiesChanged(
          'org.freedesktop.timedate1',
          changedProperties: {'Timezone': DBusString(server.timezone)},
        );
        return DBusMethodSuccessResponse();
      default:
        return DBusMethodErrorResponse.unknownMethod();
    }
  }
}

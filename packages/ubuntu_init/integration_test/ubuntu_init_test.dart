import 'dart:io';

import 'package:dbus/dbus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsettings/gsettings.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ubuntu_init/main.dart' as app;
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/ubuntu_provision_test.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:xdg_locale/xdg_locale.dart';
import 'package:yaru_test/yaru_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(YaruTestWindow.ensureInitialized);

  testWidgets('init', (tester) async {
    final server = FakeDBusServer();
    addTearDown(server.close);
    final address = await server.start();

    final client = DBusClient(address);
    addTearDown(client.close);

    registerService<IdentityService>(() => XdgIdentityService(client, 0));
    registerService<KeyboardService>(() => XdgKeyboardService(
        XdgLocaleClient(bus: client),
        GSettings('org.gnome.desktop.input-sources', sessionBus: client)));
    registerService<NetworkService>(() => NetworkService(bus: client));
    registerService<LocaleService>(
        () => XdgLocaleService(XdgLocaleClient(bus: client)));
    registerService<TimezoneService>(() => XdgTimezoneService(bus: client));

    await tester.runApp(() => app.main([]));

    await tester.testLocalePage(language: 'Deutsch');
    await tester.tapNext();
    await tester.pumpAndSettle();
    await expectLocale('de_DE.UTF-8');

    await tester.testKeyboardPage(layout: 'Englisch (Britisch)');
    await tester.tapNext();
    await tester.pumpAndSettle();
    await expectKeyboard(const KeyboardSetting(layout: 'gb'));

    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testTimezonePage(timezone: 'Europe/Berlin');
    await tester.tapNext();
    await tester.pumpAndSettle();
    await expectTimezone('Europe/Berlin');

    const identity = Identity(
      realname: 'User',
      username: 'user',
      hostname: 'ubuntu',
    );
    await tester.testIdentityPage(
      identity: identity,
      password: 'password',
    );
    await tester.tapNext();
    await tester.pumpAndSettle();
    await expectIdentity(identity);

    await tester.testThemePage();
    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapDone();
    await expectLater(windowClosed, completes);
  });
}

class FakeDBusServer extends DBusServer {
  FakeDBusServer({
    this.identity = const Identity(),
    this.locale = const ['LANG=C.UTF-8'],
    this.keyboard = const KeyboardSetting(layout: 'us'),
    this.timezone = 'Etc/UTC',
  }) {
    _dconf = FakeDConfObject(this);
    _accounts = FakeXdgAccounts(this);
    _user = FakeXdgAccountsUser(this);
    _hostname = FakeXdgHostnameObject(this);
    _locale = FakeXdgLocaleObject(this);
    _network = FakeXdgNetworkManagerObject(this);
    _timedate = FakeXdgTimedateObject(this);
  }

  late final DBusClient _client;
  late final FakeDConfObject _dconf;
  late final FakeXdgAccounts _accounts;
  late final FakeXdgAccountsUser _user;
  late final FakeXdgHostnameObject _hostname;
  late final FakeXdgLocaleObject _locale;
  late final FakeXdgNetworkManagerObject _network;
  late final FakeXdgTimedateObject _timedate;

  Identity identity;
  KeyboardSetting keyboard;
  Iterable<String> locale;
  String timezone;

  Future<DBusAddress> start() async {
    final address =
        await listenAddress(DBusAddress.unix(dir: Directory.systemTemp));
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

class FakeDConfObject extends DBusObject {
  FakeDConfObject(this.server)
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

class FakeXdgAccounts extends DBusObject {
  FakeXdgAccounts(this.server)
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

class FakeXdgAccountsUser extends DBusObject {
  FakeXdgAccountsUser(this.server)
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

class FakeXdgHostnameObject extends DBusObject {
  FakeXdgHostnameObject(this.server)
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

class FakeXdgLocaleObject extends DBusObject {
  FakeXdgLocaleObject(this.server)
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

class FakeXdgNetworkManagerObject extends DBusObject {
  FakeXdgNetworkManagerObject(this.server)
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

class FakeXdgTimedateObject extends DBusObject {
  FakeXdgTimedateObject(this.server)
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

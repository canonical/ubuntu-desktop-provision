// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:dbus/dbus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsettings/gsettings.dart';
import 'package:provd_client/provd_client.dart' as provd;
import 'package:sysmetrics/sysmetrics.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

Future<void> registerFakeInitServices({
  Identity identity = const Identity(),
  List<String> locale = const ['LANG=C.UTF-8'],
  KeyboardSetting keyboard = const KeyboardSetting(layout: 'us'),
  String timezone = 'Etc/UTC',
}) async {
  final tempDir = Directory.systemTemp.createTempSync('ubuntu_init-');
  addTearDown(() => tempDir.deleteSync(recursive: true));

  final server = FakeDBusServer(
    timezone: timezone,
  );
  addTearDown(server.close);
  final address = await server.start(tempDir);

  final client = DBusClient(address);
  addTearDown(client.close);

  final keyfile =
      GSettingsKeyfileBackend(file: File('${tempDir.path}/gsettings.ini'));
  registerService<GdmService>(() => GdmService(bus: client));
  registerServiceFactory<GSettings, String>(
      (s) => GSettings(s, backend: keyfile));

  registerService<IdentityService>(
      () => ProvdIdentityService(client: FakeProvdUserClient()));
  registerService<KeyboardService>(
      () => ProvdKeyboardService(client: FakeProvdKeyboardClient()));
  registerService<LocaleService>(
      () => ProvdLocaleService(client: FakeProvdLocaleClient()));
  registerService<NetworkService>(() => NetworkService(bus: client));
  registerService<ProductService>(_FakeProductService.new);
  registerService<Sysmetrics>(_FakeSysmetrics.new);
  registerService<TimezoneService>(() => XdgTimezoneService(bus: client));
  registerService<UrlLauncher>(_FakeUrlLauncher.new);
  addTearDown(resetAllServices);
}

class FakeDBusServer extends DBusServer {
  FakeDBusServer({
    required this.timezone,
  }) {
    _dconf = _FakeDConfObject(this);
    _network = _FakeXdgNetworkManagerObject(this);
    _timedate = _FakeXdgTimedateObject(this);
    _gdmSession = _FakeGdmSessionObject(this);
  }

  late final DBusClient _client;
  late final _FakeDConfObject _dconf;
  late final _FakeXdgNetworkManagerObject _network;
  late final _FakeXdgTimedateObject _timedate;
  late final _FakeGdmSessionObject _gdmSession;

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

    await _client.requestName('org.freedesktop.NetworkManager');
    await _client.registerObject(_network);

    await _client.requestName('org.freedesktop.timedate1');
    await _client.registerObject(_timedate);

    await _client.requestName('org.gnome.DisplayManager.UserVerifier');
    await _client.requestName('org.gnome.DisplayManager.Greeter');
    await _client.registerObject(_gdmSession);

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

class _FakeGdmSessionObject extends DBusObject {
  _FakeGdmSessionObject(this.server)
      : super(DBusObjectPath('/org/gnome/DisplayManager/Session'));

  final FakeDBusServer server;

  @override
  Future<DBusMethodResponse> handleMethodCall(DBusMethodCall methodCall) async {
    switch (methodCall.name) {
      case 'AnswerQuery':
        assert(methodCall.interface == 'org.gnome.DisplayManager.UserVerifier');
        await emitSignal('org.gnome.DisplayManager.Greeter', 'SessionOpened',
            const [DBusString('gdm-password')]);
        return DBusMethodSuccessResponse();
      case 'BeginVerificationForUser':
        assert(methodCall.interface == 'org.gnome.DisplayManager.UserVerifier');
        await emitSignal('org.gnome.DisplayManager.UserVerifier',
            'SecretInfoQuery', const [DBusString('gdm-password')]);
        return DBusMethodSuccessResponse();
      case 'StartSessionWhenReady':
        assert(methodCall.interface == 'org.gnome.DisplayManager.Greeter');
        return DBusMethodSuccessResponse();
      default:
        return DBusMethodErrorResponse.unknownMethod();
    }
  }
}

class _FakeSysmetrics implements Sysmetrics {
  @override
  Future<String?> collect() async => null;

  @override
  Future<String?> collectAndSend(
    ReportType type, {
    bool alwaysReport = false,
    String baseUrl = '',
  }) async =>
      null;

  @override
  Future<String?> sendDecline({
    bool alwaysReport = false,
    String baseUrl = '',
  }) async =>
      null;

  @override
  Future<String?> sendReport(
    String data, {
    bool alwaysReport = false,
    String baseUrl = '',
  }) async =>
      null;
}

class _FakeProductService implements ProductService {
  @override
  ProductInfo getProductInfo() => ProductInfo(name: 'Ubuntu', version: '23.10');

  @override
  String getReleaseNotesURL(String languageCode) =>
      'https://wiki.ubuntu.com/ManticMinotaur/ReleaseNotes';
}

class _FakeUrlLauncher implements UrlLauncher {
  @override
  Future<bool> canLaunchUrl(String url) async => true;

  @override
  Future<bool> launchUrl(String url) async => true;
}

class FakeProvdLocaleClient implements provd.ProvdLocaleClient {
  FakeProvdLocaleClient();

  String _locale = 'en_US.UTF-8';
  @override
  Future<String> getLocale() async => _locale;

  @override
  Future<void> setLocale(String locale) async => _locale = locale;
}

class FakeProvdUserClient implements provd.ProvdUserClient {
  @override
  Future<void> createUser(provd.User user) async {}

  @override
  Future<provd.UsernameValidation> validateUsername(String username) async =>
      provd.UsernameValidation.OK;
}

class FakeProvdKeyboardClient implements provd.ProvdKeyboardClient {
  @override
  Future<void> setInputSource(String layout, String variant) async {}

  @override
  Future<void> setKeyboard(String layout, String variant) async {}

  @override
  Future<provd.KeyboardSetup> getKeyboard() async => provd.KeyboardSetup(
        settings: provd.KeyboardSettings(
          layout: 'gb',
          variant: '',
        ),
        layouts: [
          provd.KeyboardLayout(
            code: 'gb',
            name: 'Englisch (Britisch)',
            variants: [
              provd.KeyboardVariant(
                code: '',
                name: 'English (Britisch)',
              ),
            ],
          ),
        ],
      );
}

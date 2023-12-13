// TODO: replace this service with a new one that communicates with provd

import 'package:crypt/crypt.dart';
import 'package:dbus/dbus.dart';
import 'package:meta/meta.dart';
import 'package:stdlibc/stdlibc.dart';
import 'package:ubuntu_provision/services.dart';

class XdgIdentityService implements IdentityService {
  XdgIdentityService({DBusClient? bus, @visibleForTesting String? passwordSalt})
      : _client = bus ?? DBusClient.system(),
        _passwordSalt = passwordSalt,
        _userId = getuid();

  XdgIdentityService.uid(
    this._userId, {
    DBusClient? bus,
    @visibleForTesting String? passwordSalt,
  })  : _client = bus ?? DBusClient.system(),
        _passwordSalt = passwordSalt;

  static const _defaultUserId = 1000;

  final DBusClient _client;
  final int _userId;
  final String? _passwordSalt;
  Identity? _identity;

  DBusRemoteObject get _accountObject => DBusRemoteObject(
        _client,
        name: 'org.freedesktop.Accounts',
        path: DBusObjectPath('/org/freedesktop/Accounts'),
      );
  DBusRemoteObject get _hostnameObject => DBusRemoteObject(
        _client,
        name: 'org.freedesktop.hostname1',
        path: DBusObjectPath('/org/freedesktop/hostname1'),
      );

  @override
  Future<Identity> getIdentity() async {
    if (_identity != null) {
      return _identity!;
    }

    if (_userId != _defaultUserId) {
      _identity = const Identity();
    } else {
      final userObjectPath = await _accountObject
          .callMethod('org.freedesktop.Accounts', 'FindUserById',
              const [DBusInt64(_defaultUserId)],
              replySignature: DBusSignature.objectPath)
          .then((response) => response.values.first.asObjectPath());
      final userObject = DBusRemoteObject(
        _client,
        name: 'org.freedesktop.Accounts',
        path: userObjectPath,
      );
      final username = await userObject
          .getProperty('org.freedesktop.Accounts.User', 'UserName')
          .then((v) => v.asString());
      final realname = await userObject
          .getProperty('org.freedesktop.Accounts.User', 'RealName')
          .then((v) => v.asString());
      final autoLogin = await userObject
          .getProperty('org.freedesktop.Accounts.User', 'AutomaticLogin')
          .then((v) => v.asBoolean());
      final hostname = await _hostnameObject
          .getProperty('org.freedesktop.hostname1', 'Hostname')
          .then((v) => v.asString());
      _identity = Identity(
        realname: realname,
        username: username,
        hostname: hostname,
        autoLogin: autoLogin,
      );
    }
    return _identity!;
  }

  @override
  Future<void> setIdentity(Identity identity) async {
    if (_identity == identity) {
      return;
    }
    _identity = identity;
    await apply();
  }

  Future<void> apply() async {
    if (_identity == null) {
      throw StateError('Identity has not been set');
    }

    if (_userId == _defaultUserId) {
      throw UnimplementedError(
          'Modifying the default user is not yet implemented');
    }

    final userObjectPath = await _accountObject
        .callMethod(
          'org.freedesktop.Accounts',
          'CreateUser',
          [
            DBusString(_identity!.username),
            DBusString(_identity!.realname),
            const DBusInt32(1), // Administrator account
          ],
          replySignature: DBusSignature.objectPath,
        )
        .then((response) => response.values.first.asObjectPath());

    final userObject = DBusRemoteObject(
      _client,
      name: 'org.freedesktop.Accounts',
      path: userObjectPath,
    );
    await userObject.callMethod(
      'org.freedesktop.Accounts.User',
      'SetPassword',
      [
        DBusString(
          Crypt.sha512(_identity!.password, salt: _passwordSalt).toString(),
        ),
        const DBusString(''),
      ],
      replySignature: DBusSignature.empty,
    );
    await userObject.callMethod(
      'org.freedesktop.Accounts.User',
      'SetAutomaticLogin',
      [DBusBoolean(_identity!.autoLogin)],
      replySignature: DBusSignature.empty,
    );

    await _hostnameObject
        .callMethod('org.freedesktop.hostname1', 'SetStaticHostname', [
      DBusString(_identity!.hostname),
      const DBusBoolean(false),
    ]);
  }

  @override
  Future<UsernameValidation> validateUsername(String username) async {
    // TODO Validate using RegExp and check against list of reserved names
    return UsernameValidation.OK;
  }
}

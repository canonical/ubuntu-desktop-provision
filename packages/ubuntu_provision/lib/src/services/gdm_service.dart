import 'dart:async';

import 'package:dbus/dbus.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

/// @internal
final log = Logger('dart_gdm_service');

class GdmService {
  bool _testing = false;
  DBusClient? gdmClient;

  void setTesting() {
    _testing = true;
  }

  Future<DBusClient> getClientConnection() async {
    if (gdmClient == null) {
      log.info('Asking for GDM connection');
      var gdmObject = DBusRemoteObject(DBusClient.system(),
          name: 'org.gnome.DisplayManager',
          path: DBusObjectPath('/org/gnome/DisplayManager/Manager'));
      var response = await gdmObject.callMethod(
          'org.gnome.DisplayManager.Manager', 'OpenSession', [],
          replySignature: DBusSignature('s'));
      var address = response.values[0].asString();
      gdmClient = DBusClient(DBusAddress(address), messageBus: false);
    } else {
      log.info('Re-using GDM connection');
    }
    return gdmClient!;
  }

  Future<DBusRemoteObject> getGreeter() async {
    log.info('Getting Greeter GDM connection');
    var connection = await getClientConnection();
    var greeter = DBusRemoteObject(connection,
        name: 'org.gnome.DisplayManager.Greeter',
        path: DBusObjectPath('/org/gnome/DisplayManager/Session'));
    return greeter;
  }

  Future<DBusRemoteObject> getUserVerifier() async {
    log.info('Getting User Verifier GDM connection');
    var connection = await getClientConnection();
    var userVerifier = DBusRemoteObject(connection,
        name: 'org.gnome.DisplayManager.UserVerifier',
        path: DBusObjectPath('/org/gnome/DisplayManager/Session'));
    return userVerifier;
  }

  Future<void> openNewSession() async {
    if (_testing) {
      return;
    }
    IdentityService identityService = getService<IdentityService>();
    var identity = await identityService.getIdentity();

    await openNewSessionWithUsernameAndPassword(identity.username, identity.password);
  }

  Future<void> openNewSessionWithUsernameAndPassword(String username, String password) async {
    var userVerifier = await getUserVerifier();
    var greeter = await getGreeter();

    var infoSignal = DBusRemoteObjectSignalStream(
        object: userVerifier,
        interface: 'org.gnome.DisplayManager.UserVerifier',
        name: 'Info');
    var infoQuerySignal = DBusRemoteObjectSignalStream(
        object: userVerifier,
        interface: 'org.gnome.DisplayManager.UserVerifier',
        name: 'InfoQuery');
    var secretInfoQuerySignal = DBusRemoteObjectSignalStream(
        object: userVerifier,
        interface: 'org.gnome.DisplayManager.UserVerifier',
        name: 'SecretInfoQuery');
    var problemSignal = DBusRemoteObjectSignalStream(
        object: userVerifier,
        interface: 'org.gnome.DisplayManager.UserVerifier',
        name: 'Problem');
    var sessionOpenedSignal = DBusRemoteObjectSignalStream(
        object: greeter,
        interface: 'org.gnome.DisplayManager.Greeter',
        name: 'SessionOpened');

    var completer = Completer();

    infoSignal.listen((signal) => log.info('Info signal received $signal'));
    infoQuerySignal
        .listen((signal) => log.info('InfoQuery signal received $signal'));
    problemSignal
        .listen((signal) => log.warning('Problem signal received $signal'));
    secretInfoQuerySignal.listen((signal) {
      log.info('SecretInfoQuery signal received $signal');
      unawaited(userVerifier.callMethod(
        'org.gnome.DisplayManager.UserVerifier',
        'AnswerQuery',
        [signal.values[0], DBusString(password)]));
    });
    sessionOpenedSignal.listen((signal) async {
      log.info('SessionOpened signal received $signal');
      await greeter.callMethod('org.gnome.DisplayManager.Greeter',
          'StartSessionWhenReady', [signal.values[0], const DBusBoolean(true)]);
      completer.complete();
    });

    log.info('Starting user verification');
    unawaited(userVerifier.callMethod(
        'org.gnome.DisplayManager.UserVerifier',
        'BeginVerificationForUser',
        [const DBusString('gdm-password'), DBusString(username)]));
    await completer.future;
  }
}

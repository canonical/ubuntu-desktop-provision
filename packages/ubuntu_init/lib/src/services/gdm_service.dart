import 'dart:async';

import 'package:dbus/dbus.dart';
import 'package:meta/meta.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('gdm_service');

class GdmService {
  GdmService({
    DBusClient? bus,
    @visibleForTesting Map<String, DBusRemoteObjectSignalStream>? signalStreams,
  })  : _sessionClient = bus,
        _signalStreams = signalStreams;
  DBusClient? _sessionClient;
  final Map<String, DBusRemoteObjectSignalStream>? _signalStreams;

  Future<void> init() async {
    if (_sessionClient != null) return;

    final gdmObject = DBusRemoteObject(
      DBusClient.system(),
      name: 'org.gnome.DisplayManager',
      path: DBusObjectPath('/org/gnome/DisplayManager/Manager'),
    );
    _sessionClient = await gdmObject
        .callMethod('org.gnome.DisplayManager.Manager', 'OpenSession', [],
            replySignature: DBusSignature.string)
        .then((response) => DBusClient(
              DBusAddress(response.values.first.asString()),
              messageBus: false,
            ));
  }

  Future<void> launchSession(String username, String password) async {
    if (_sessionClient == null) {
      return;
    }

    final userVerifier = DBusRemoteObject(
      _sessionClient!,
      name: 'org.gnome.DisplayManager.UserVerifier',
      path: DBusObjectPath('/org/gnome/DisplayManager/Session'),
    );
    final greeter = DBusRemoteObject(
      _sessionClient!,
      name: 'org.gnome.DisplayManager.Greeter',
      path: DBusObjectPath('/org/gnome/DisplayManager/Session'),
    );

    final infoSignal = _signalStreams?['info'] ??
        DBusRemoteObjectSignalStream(
            object: userVerifier,
            interface: 'org.gnome.DisplayManager.UserVerifier',
            name: 'Info');
    final infoQuerySignal = _signalStreams?['infoQuery'] ??
        DBusRemoteObjectSignalStream(
            object: userVerifier,
            interface: 'org.gnome.DisplayManager.UserVerifier',
            name: 'InfoQuery');
    final secretInfoQuerySignal = _signalStreams?['secretInfoQuery'] ??
        DBusRemoteObjectSignalStream(
            object: userVerifier,
            interface: 'org.gnome.DisplayManager.UserVerifier',
            name: 'SecretInfoQuery');
    final problemSignal = _signalStreams?['problem'] ??
        DBusRemoteObjectSignalStream(
            object: userVerifier,
            interface: 'org.gnome.DisplayManager.UserVerifier',
            name: 'Problem');
    final sessionOpenedSignal = _signalStreams?['sessionOpened'] ??
        DBusRemoteObjectSignalStream(
            object: greeter,
            interface: 'org.gnome.DisplayManager.Greeter',
            name: 'SessionOpened');

    final completer = Completer();

    infoSignal.listen((signal) => _log.debug('Info signal received $signal'));
    infoQuerySignal
        .listen((signal) => _log.debug('InfoQuery signal received $signal'));
    problemSignal
        .listen((signal) => _log.error('Problem signal received $signal'));
    secretInfoQuerySignal.listen((signal) {
      _log.debug('SecretInfoQuery signal received $signal');
      userVerifier.callMethod('org.gnome.DisplayManager.UserVerifier',
          'AnswerQuery', [signal.values.first, DBusString(password)]);
    });
    sessionOpenedSignal.listen((signal) async {
      _log.debug('SessionOpened signal received $signal');
      await greeter.callMethod(
          'org.gnome.DisplayManager.Greeter',
          'StartSessionWhenReady',
          [signal.values.first, const DBusBoolean(true)]);
      completer.complete();
    });

    _log.debug('Starting user verification');
    await userVerifier.callMethod(
        'org.gnome.DisplayManager.UserVerifier',
        'BeginVerificationForUser',
        [const DBusString('gdm-password'), DBusString(username)]);
    await completer.future;
  }
}

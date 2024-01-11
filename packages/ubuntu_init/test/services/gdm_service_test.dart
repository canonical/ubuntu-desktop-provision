import 'dart:async';

import 'package:dbus/dbus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/ubuntu_init.dart';

import 'gdm_service_test.mocks.dart';

@GenerateMocks([DBusClient, DBusRemoteObjectSignalStream])
void main() {
  test('launch desktop session', () async {
    final client = createMockSessionClient();
    final secretInfoQueryController = StreamController<DBusSignal>();
    final sessionOpenedController = StreamController<DBusSignal>();

    final service = GdmService(bus: client, signalStreams: {
      'info': createMockDBusRemoteObjectSignalStream(const Stream.empty()),
      'infoQuery': createMockDBusRemoteObjectSignalStream(const Stream.empty()),
      'secretInfoQuery': createMockDBusRemoteObjectSignalStream(
          secretInfoQueryController.stream),
      'problem': createMockDBusRemoteObjectSignalStream(const Stream.empty()),
      'sessionOpened': createMockDBusRemoteObjectSignalStream(
          sessionOpenedController.stream),
    });

    final launchSessionFuture = service.launchSession('username', 'password');
    verify(client.callMethod(
      destination: 'org.gnome.DisplayManager.UserVerifier',
      path: DBusObjectPath('/org/gnome/DisplayManager/Session'),
      interface: 'org.gnome.DisplayManager.UserVerifier',
      name: 'BeginVerificationForUser',
      values: const [DBusString('gdm-password'), DBusString('username')],
    )).called(1);

    secretInfoQueryController.add(
      DBusSignal(
        name: 'SecretInfoQuery',
        path: DBusObjectPath('/org/gnome/DisplayManager/Session'),
        interface: 'org.gnome.DisplayManager.UserVerifier',
        sender: 'org.gnome.DisplayManager.UserVerifier',
        values: [const DBusString('foo')],
      ),
    );
    sessionOpenedController.add(
      DBusSignal(
        name: 'SessionOpened',
        path: DBusObjectPath('/org/gnome/DisplayManager/Session'),
        interface: 'org.gnome.DisplayManager.Greeter',
        sender: 'org.gnome.DisplayManager.Greeter',
        values: [const DBusString('bar')],
      ),
    );

    await launchSessionFuture;

    verify(client.callMethod(
      destination: 'org.gnome.DisplayManager.UserVerifier',
      path: DBusObjectPath('/org/gnome/DisplayManager/Session'),
      interface: 'org.gnome.DisplayManager.UserVerifier',
      name: 'AnswerQuery',
      values: const [DBusString('foo'), DBusString('password')],
    )).called(1);
    verify(client.callMethod(
      destination: 'org.gnome.DisplayManager.Greeter',
      path: DBusObjectPath('/org/gnome/DisplayManager/Session'),
      interface: 'org.gnome.DisplayManager.Greeter',
      name: 'StartSessionWhenReady',
      values: const [DBusString('bar'), DBusBoolean(true)],
    )).called(1);

    await secretInfoQueryController.close();
    await sessionOpenedController.close();
  });
}

DBusClient createMockSessionClient() {
  final client = MockDBusClient();
  when(client.callMethod(
    destination: 'org.gnome.DisplayManager.UserVerifier',
    path: DBusObjectPath('/org/gnome/DisplayManager/Session'),
    interface: 'org.gnome.DisplayManager.UserVerifier',
    name: 'BeginVerificationForUser',
    values: anyNamed('values'),
  )).thenAnswer((_) async => DBusMethodSuccessResponse());
  when(client.callMethod(
    destination: 'org.gnome.DisplayManager.UserVerifier',
    path: DBusObjectPath('/org/gnome/DisplayManager/Session'),
    interface: 'org.gnome.DisplayManager.UserVerifier',
    name: 'AnswerQuery',
    values: anyNamed('values'),
  )).thenAnswer((_) async => DBusMethodSuccessResponse());
  when(client.callMethod(
    destination: 'org.gnome.DisplayManager.Greeter',
    path: DBusObjectPath('/org/gnome/DisplayManager/Session'),
    interface: 'org.gnome.DisplayManager.Greeter',
    name: 'StartSessionWhenReady',
    values: anyNamed('values'),
  )).thenAnswer((_) async => DBusMethodSuccessResponse());

  return client;
}

DBusRemoteObjectSignalStream createMockDBusRemoteObjectSignalStream(
    Stream<DBusSignal> signals) {
  final stream = MockDBusRemoteObjectSignalStream();
  when(stream.listen(any)).thenAnswer((i) =>
      signals.listen(i.positionalArguments.first as void Function(DBusSignal)));
  return stream;
}

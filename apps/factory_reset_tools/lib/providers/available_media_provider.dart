import 'dart:async';

import 'package:async/async.dart';
import 'package:dbus/dbus.dart';
import 'package:factory_reset_tools/dbus/drive_data.dart';
import 'package:factory_reset_tools/providers/dbus_client_provider.dart';
import 'package:factory_reset_tools/providers/drive_manager_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final availableMediaProvider = FutureProvider<List<DriveData>>(
  (ref) {
    ref.watch(mediaChangedProvider);
    return ref.watch(driveManagerProvider).getListOfDrives();
  },
);

final mediaChangedProvider = StreamProvider(
  (ref) {
    final object = DBusRemoteObject(
      ref.watch(dbusClientProvider),
      name: 'org.freedesktop.UDisks2',
      path: DBusObjectPath('/org/freedesktop/UDisks2'),
    );

    final addedStream = DBusRemoteObjectSignalStream(
      object: object,
      interface: 'org.freedesktop.DBus.ObjectManager',
      name: 'InterfacesAdded',
    );
    final removedStream = DBusRemoteObjectSignalStream(
      object: object,
      interface: 'org.freedesktop.DBus.ObjectManager',
      name: 'InterfacesRemoved',
    );
    return _debounce(
      StreamGroup.merge([addedStream, removedStream]),
      const Duration(milliseconds: 100),
    );
  },
);

Stream<T> _debounce<T>(Stream<T> stream, Duration delay) {
  Timer? timer;
  late StreamController<T>? controller;

  void onListen() {
    stream.listen((data) {
      timer?.cancel();
      timer = Timer(delay, () => controller?.add(data));
    });
  }

  void onCancel() {
    timer?.cancel();
    controller?.close();
    controller = null;
  }

  controller = StreamController<T>(
    onListen: onListen,
    onCancel: onCancel,
    sync: true,
  );
  return controller!.stream;
}

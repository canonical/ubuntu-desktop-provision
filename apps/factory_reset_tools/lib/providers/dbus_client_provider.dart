import 'package:dbus/dbus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dbusClientProvider = Provider<DBusClient>(
  (ref) => DBusClient.system(),
);

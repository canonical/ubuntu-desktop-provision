import 'package:factory_reset_tools/dbus/drive_manager.dart';
import 'package:factory_reset_tools/providers/dbus_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final driveManagerProvider = Provider<DriveManager>(
  (ref) => DriveManager(ref.watch(dbusClientProvider)),
);

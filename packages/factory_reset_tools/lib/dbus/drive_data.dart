import 'package:dbus/dbus.dart';
import 'package:meta/meta.dart';

@immutable
class DriveData {
  const DriveData(
    this.name,
    this.id,
    this.size,
    this.devicePath,
    this.driveObjectPath,
    this.blockDeviceObjectPath,
  );

  final String name;
  final String id;
  final int size;
  final String devicePath;
  final DBusObjectPath driveObjectPath;
  final DBusObjectPath blockDeviceObjectPath;

  @override
  String toString() => name;
}

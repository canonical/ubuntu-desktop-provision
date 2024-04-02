import 'dart:async';

import 'package:dbus/dbus.dart';
import 'package:factory_reset_tools/dbus/drive_data.dart';
import 'package:factory_reset_tools/dbus/reset_media.dart';

const int minimumRequiredDiskSize = 12 << 30;

class DriveManager {
  DriveManager(this._dbusClient);

  final DBusClient _dbusClient;

  Future<List<DriveData>> getListOfDrives() async {
    final blockDevicesObject = DBusRemoteObject(
      _dbusClient,
      name: 'org.freedesktop.UDisks2',
      path: DBusObjectPath('/org/freedesktop/UDisks2/block_devices'),
    );
    final introspect = await blockDevicesObject.introspect();

    // map of blockDeviceObjectPath: driveObjectPath
    final blockDevs = <DBusObjectPath, DBusObjectPath>{};

    // iterate through block devices, to find out devices that
    // 1. has a Drive backing it
    // 2. has enough Size (we assume 16G)
    // 3. its HintPartitionable is true
    for (final node in introspect.children) {
      final blockDeviceObjectPath =
          DBusObjectPath('/org/freedesktop/UDisks2/block_devices/${node.name}');
      final blockDeviceObject = DBusRemoteObject(
        _dbusClient,
        name: 'org.freedesktop.UDisks2',
        path: blockDeviceObjectPath,
      );

      final drive = await blockDeviceObject.getProperty(
        'org.freedesktop.UDisks2.Block',
        'Drive',
        signature: DBusSignature('o'),
      );
      final driveObjectPath = drive.asObjectPath();
      if (driveObjectPath == DBusObjectPath.root) {
        continue;
      }

      final size = await blockDeviceObject.getProperty(
        'org.freedesktop.UDisks2.Block',
        'Size',
        signature: DBusSignature('t'),
      );
      if (size.asUint64() < minimumRequiredDiskSize) {
        continue;
      }

      final hintPartitionable = await blockDeviceObject.getProperty(
        'org.freedesktop.UDisks2.Block',
        'HintPartitionable',
        signature: DBusSignature('b'),
      );
      if (hintPartitionable.asBoolean() == false) {
        continue;
      }

      blockDevs[blockDeviceObjectPath] = driveObjectPath;
    }

    // iterate through block devices' partition table, to find out devices that
    // no PartitionTable is mentioning, this should get all root block devs of
    // the drive, and drives without partition tables are represented as well
    for (final node in introspect.children) {
      final blockDeviceObjectPath =
          DBusObjectPath('/org/freedesktop/UDisks2/block_devices/${node.name}');
      final blockDeviceObject = DBusRemoteObject(
        _dbusClient,
        name: 'org.freedesktop.UDisks2',
        path: blockDeviceObjectPath,
      );

      try {
        final partitions = await blockDeviceObject.getProperty(
          'org.freedesktop.UDisks2.PartitionTable',
          'Partitions',
          signature: DBusSignature('ao'),
        );
        for (final partition in partitions.asObjectPathArray()) {
          blockDevs.remove(partition);
        }
      } on DBusInvalidArgsException {
        // partition table might not be in the block device
        continue;
      }
    }

    // finally we got a list of drives, find those who's ConnectionBus is "usb",
    // or is Removable, since USB NVMe drives does not show Removable
    final drives = <DriveData>[];
    for (final entry in blockDevs.entries) {
      final blockDeviceObjectPath = entry.key;
      final driveObjectPath = entry.value;

      final driveObject = DBusRemoteObject(
        _dbusClient,
        name: 'org.freedesktop.UDisks2',
        path: driveObjectPath,
      );
      final connectionBus = await driveObject.getProperty(
        'org.freedesktop.UDisks2.Drive',
        'ConnectionBus',
        signature: DBusSignature('s'),
      );
      final isRemovable = await driveObject.getProperty(
        'org.freedesktop.UDisks2.Drive',
        'Removable',
        signature: DBusSignature('b'),
      );

      if (!(connectionBus.asString() == 'usb' || isRemovable.asBoolean())) {
        continue;
      }

      final blockDeviceObject = DBusRemoteObject(
        _dbusClient,
        name: 'org.freedesktop.UDisks2',
        path: blockDeviceObjectPath,
      );
      final id = await driveObject.getProperty(
        'org.freedesktop.UDisks2.Drive',
        'Id',
        signature: DBusSignature('s'),
      );
      final vendor = await driveObject.getProperty(
        'org.freedesktop.UDisks2.Drive',
        'Vendor',
        signature: DBusSignature('s'),
      );
      final model = await driveObject.getProperty(
        'org.freedesktop.UDisks2.Drive',
        'Model',
        signature: DBusSignature('s'),
      );
      final size = await driveObject.getProperty(
        'org.freedesktop.UDisks2.Drive',
        'Size',
        signature: DBusSignature('t'),
      );
      final devicePath = await blockDeviceObject.getProperty(
        'org.freedesktop.UDisks2.Block',
        'Device',
        signature: DBusSignature('ay'),
      );
      // Note that Device property is an array of unsigned bytes, containing
      // null-terminated C-style string, therefore needs to filter out 0 from
      // the byte array.
      final devicePathString = String.fromCharCodes(
        devicePath.asByteArray().where((e) => e != 0),
        0,
        128,
      );
      drives.add(
        DriveData(
          '${vendor.asString()} ${model.asString()}'.trim(),
          id.asString(),
          size.asUint64(),
          devicePathString,
          driveObjectPath,
          blockDeviceObjectPath,
        ),
      );
    }
    drives.sort((a, b) => a.id.compareTo(b.id));
    return drives;
  }

  static Stream<ResetMediaCreationProgress> dummyCreateResetMedia(
    String targetDevicePath,
  ) async* {
    await Future.delayed(const Duration(seconds: 3));

    for (var i = 0.0; i < 1.0; i += 0.01) {
      yield ResetMediaCreationProgress(
        ResetMediaCreationStatus.copying,
        i,
        null,
      );
      await Future.delayed(const Duration(milliseconds: 100));
    }

    yield ResetMediaCreationProgress(
      ResetMediaCreationStatus.finalizing,
      1,
      null,
    );
    await Future.delayed(const Duration(seconds: 3));

    yield ResetMediaCreationProgress(
      ResetMediaCreationStatus.finished,
      1,
      null,
    );
  }
}

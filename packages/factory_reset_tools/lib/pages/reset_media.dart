import 'dart:async';

import 'package:async/async.dart';
import 'package:dbus/dbus.dart';
import 'package:factory_reset_tools/reset_media.dart';
import 'package:flutter/material.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

const int minimumRequiredDiskSize = 12 << 30;

class Drive {
  Drive(
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

class SelectRemovableMedia extends StatefulWidget {
  const SelectRemovableMedia({super.key});

  @override
  State<SelectRemovableMedia> createState() => _SelectRemovableMediaState();
}

class _SelectRemovableMediaState extends State<SelectRemovableMedia> {
  List<Drive> drives = [];
  final _dbusClient = DBusClient.system();
  Timer? _debounce;
  StreamSubscription<DBusSignal>? _subscription;
  String? _selectedDrive;

  Future<void> _onDrivesChanged() async {
    if (_debounce?.isActive ?? false) {
      _debounce?.cancel();
    }
    _debounce = Timer(const Duration(milliseconds: 100), () async {
      final newDrives = await _getListOfDrives();
      _clearUnavailableSelectedDrive(newDrives);
      setState(() {
        drives = newDrives;
      });
    });
  }

  Future<List<Drive>> _getListOfDrives() async {
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
    final drives = <Drive>[];
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
        Drive(
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

  void _clearUnavailableSelectedDrive(List<Drive> drives) {
    for (final drive in drives) {
      if (drive.id == _selectedDrive) {
        return;
      }
    }
    _selectedDrive = null;
  }

  @override
  void initState() {
    super.initState();

    final object = DBusRemoteObject(
      _dbusClient,
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
    _subscription ??= StreamGroup.merge([addedStream, removedStream])
        .listen((_) => _onDrivesChanged());

    _onDrivesChanged();
  }

  @override
  void deactivate() {
    _subscription!.cancel();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    var drivesWidgets = <Widget>[
      const ListTile(
        title: Text('No removable storage is detected'),
        subtitle:
            Text('You need a USB storage to create a Factory Reset Media.'),
      ),
    ];
    if (drives.isNotEmpty) {
      drivesWidgets = drives.map((drive) {
        final sizeInGiB = drive.size.toDouble() / (1 << 30).toDouble();
        final sizeString = '${sizeInGiB.toStringAsFixed(1)} GiB';
        return RadioListTile<String>(
          key: Key(drive.id),
          value: drive.id,
          groupValue: _selectedDrive,
          onChanged: (value) => setState(() => _selectedDrive = value),
          title: Text(drive.name),
          subtitle: Text('${drive.devicePath} $sizeString'),
        );
      }).toList();
    }

    return WizardPage(
      title: const YaruWindowTitleBar(title: Text('Factory Reset Tool')),
      header: const Text('Select a disk to create a Factory Reset Media:'),
      content: Column(
        children: drivesWidgets,
      ),
      bottomBar: WizardBar(
        leading: OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Back'),
        ),
        trailing: [
          NextWizardButton(
            enabled: _selectedDrive != null,
            highlighted: true,
            onExecute: () async {
              final devicePath = drives
                  .firstWhere((drive) => drive.id == _selectedDrive)
                  .devicePath;
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CreateResetMedia(devicePath),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CreateResetMedia extends StatefulWidget {
  const CreateResetMedia(this.devicePath, {super.key});
  final String devicePath;

  @override
  State<CreateResetMedia> createState() => _CreateResetMediaState();
}

class _CreateResetMediaState extends State<CreateResetMedia> {
  Stream<ResetMediaCreationProgress>? createResetMediaAsyncStream;
  var _progress = ResetMediaCreationProgress(
    ResetMediaCreationStatus.initializing,
    null,
    null,
  );

  void onStatusChanged(ResetMediaCreationProgress progress) {
    setState(() {
      _progress = progress;
    });
  }

  @override
  void initState() {
    super.initState();
    createResetMediaAsyncStream ??= createResetMedia(widget.devicePath);
    createResetMediaAsyncStream!.listen(onStatusChanged);
  }

  @override
  Widget build(BuildContext context) {
    var msgText = _progress.status.name;
    if (_progress.percent != null) {
      msgText =
          '${((_progress.percent ?? 0.0) * 100).toStringAsFixed(2)}% $msgText';
    }
    if (_progress.errMsg != null) {
      msgText = '${_progress.status.name} ${_progress.errMsg}';
    }

    return WizardPage(
      title: const YaruWindowTitleBar(title: Text('Factory Reset Tool')),
      header: const Text('Creating reset media...'),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinearProgressIndicator(value: _progress.percent),
          Text(msgText),
        ],
      ),
    );
  }
}

Stream<ResetMediaCreationProgress> dummyCreateResetMedia(
  String targetDevicePath,
) async* {
  await Future.delayed(const Duration(seconds: 3));

  for (var i = 0.0; i < 1.0; i += 0.01) {
    yield ResetMediaCreationProgress(ResetMediaCreationStatus.copying, i, null);
    await Future.delayed(const Duration(milliseconds: 100));
  }

  yield ResetMediaCreationProgress(
    ResetMediaCreationStatus.finalizing,
    1,
    null,
  );
  await Future.delayed(const Duration(seconds: 3));

  yield ResetMediaCreationProgress(ResetMediaCreationStatus.finished, 1, null);
}

import 'dart:io';
import 'package:async/async.dart';
import 'package:dbus/dbus.dart';
import 'package:retry/retry.dart';

const fsuuidFilePathDefault = '/etc/reset_partition_fsuuid';

enum ResetMediaCreationStatus {
  initializing,
  copying,
  finalizing,
  finished,
  failed;
}

class ResetMediaCreationProgress {
  ResetMediaCreationProgress(this.status, this.percent, this.errMsg);
  final ResetMediaCreationStatus status;
  final double? percent;
  final String? errMsg;
}

class Drive {
  Drive(this.object);
  late final DBusRemoteObject object;

  Future<Filesystem> format() async {
    final formatTableParams = [
      const DBusString('gpt'),
      DBusDict.stringVariant({}),
    ];
    await object.callMethod(
      'org.freedesktop.UDisks2.Block',
      'Format',
      formatTableParams,
    );

    final createPartitionParams = [
      const DBusUint64(1048576),
      const DBusUint64(0),
      const DBusString(''),
      const DBusString(''),
      DBusDict.stringVariant({}),
      const DBusString('vfat'),
      DBusDict.stringVariant({
        'label': const DBusString('RESET_MEDIA'),
      }),
    ];
    final response = await object.callMethod(
      'org.freedesktop.UDisks2.PartitionTable',
      'CreatePartitionAndFormat',
      createPartitionParams,
      replySignature: DBusSignature.objectPath,
    );

    final objectPath = response.returnValues[0].asObjectPath();
    final fs = Filesystem(
      DBusRemoteObject(
        DBusClient.system(),
        name: 'org.freedesktop.UDisks2',
        path: objectPath,
      ),
    );
    return fs;
  }

  Future<void> unmountAndRemoveAll() async {
    final dbusClient = DBusClient.system();
    var hasPartitionTable = true;
    Iterable<DBusObjectPath> unmountPaths;
    try {
      final partitions = await object.getProperty(
        'org.freedesktop.UDisks2.PartitionTable',
        'Partitions',
        signature: DBusSignature('ao'),
      );
      unmountPaths = partitions.asObjectPathArray();
    } on DBusInvalidArgsException {
      // partition table might not be in the block device, therefore try
      // unmounting the device itself
      hasPartitionTable = false;
      unmountPaths = [object.path];
    }

    for (final path in unmountPaths) {
      final object = DBusRemoteObject(
        dbusClient,
        name: 'org.freedesktop.UDisks2',
        path: path,
      );
      try {
        await Filesystem(object).unmount();
      } on DBusErrorException {
        // Filter error: partition/blockdev does not have a filesystem, and
        // therefore there is no unmount method
      } on DBusMethodResponseException catch (e) {
        // Filter error: partition/blockdev might be already unmounted
        if (e.errorName != 'org.freedesktop.UDisks2.Error.NotMounted') {
          rethrow;
        }
      }
      if (hasPartitionTable) {
        await Partition(object).delete();
      }
    }
  }

  static Future<Drive> fromDevicePath(String devicePath) async {
    final dbusClient = DBusClient.system();

    final blockDevicesObject = DBusRemoteObject(
      dbusClient,
      name: 'org.freedesktop.UDisks2',
      path: DBusObjectPath('/org/freedesktop/UDisks2/block_devices'),
    );
    final introspect = await blockDevicesObject.introspect();

    // iterate through block devices, to find the reset partition
    for (final node in introspect.children) {
      final objectPath =
          DBusObjectPath('/org/freedesktop/UDisks2/block_devices/${node.name}');
      final object = DBusRemoteObject(
        dbusClient,
        name: 'org.freedesktop.UDisks2',
        path: objectPath,
      );

      final dp = await object.getProperty(
        'org.freedesktop.UDisks2.Block',
        'Device',
        signature: DBusSignature('ay'),
      );
      final dpString =
          String.fromCharCodes(dp.asByteArray().where((e) => e != 0), 0, 128);

      if (dpString == devicePath) {
        return Drive(object);
      }
    }
    throw Exception('cannot find target device');
  }
}

class Filesystem {
  Filesystem(this.object);
  final DBusRemoteObject object;

  Future<String> mount() async {
    final result = await object.callMethod(
      'org.freedesktop.UDisks2.Filesystem',
      'Mount',
      [
        DBusDict.stringVariant({}),
      ],
      replySignature: DBusSignature.string,
    );
    final resultPath = result.returnValues[0].asString();

    return resultPath;
  }

  Future<void> unmount() async {
    const retryRunner = RetryOptions(maxAttempts: 5);
    await retryRunner.retry(
      () => object.callMethod(
        'org.freedesktop.UDisks2.Filesystem',
        'Unmount',
        [DBusDict.stringVariant({})],
      ),
      retryIf: (e) =>
          e is DBusMethodResponseException &&
          e.errorName == 'org.freedesktop.UDisks2.Error.DeviceBusy',
    );
  }

  Future<String> getMountPoint() async {
    final mp = await object.getProperty(
      'org.freedesktop.UDisks2.Filesystem',
      'MountPoints',
      signature: DBusSignature('aay'),
    );
    final firstMPCString = mp.asArray().first.asByteArray();
    final mountPoint =
        String.fromCharCodes(firstMPCString.where((e) => e != 0), 0, 128);
    return mountPoint;
  }
}

class Partition {
  Partition(this.object);
  final DBusRemoteObject object;

  Future<void> delete() async {
    await object.callMethod(
      'org.freedesktop.UDisks2.Partition',
      'Delete',
      [
        DBusDict.stringVariant({}),
      ],
    );
  }
}

class Block {
  Block(this.object);
  final DBusRemoteObject object;
  String? _devicePath;
  Future<String> devicePath() async {
    if (_devicePath != null) {
      return _devicePath!;
    }
    final dp = await object.getProperty(
      'org.freedesktop.UDisks2.Block',
      'Device',
      signature: DBusSignature('ay'),
    );
    _devicePath =
        String.fromCharCodes(dp.asByteArray().where((e) => e != 0), 0, 128);
    return _devicePath!;
  }
}

Future<Filesystem> getResetFilesystem({String? fsuuid}) async {
  var targetFSUUID = fsuuid ?? '';
  if (fsuuid == null) {
    targetFSUUID = await File(fsuuidFilePathDefault).readAsString();
    targetFSUUID = targetFSUUID.trim();
  }
  final dbusClient = DBusClient.system();

  final blockDevicesObject = DBusRemoteObject(
    dbusClient,
    name: 'org.freedesktop.UDisks2',
    path: DBusObjectPath('/org/freedesktop/UDisks2/block_devices'),
  );
  final introspect = await blockDevicesObject.introspect();

  // iterate through block devices, to find the reset partition
  DBusRemoteObject? targetObject;
  for (final node in introspect.children) {
    final blockDeviceObjectPath =
        DBusObjectPath('/org/freedesktop/UDisks2/block_devices/${node.name}');
    final blockDeviceObject = DBusRemoteObject(
      dbusClient,
      name: 'org.freedesktop.UDisks2',
      path: blockDeviceObjectPath,
    );

    final fsuuid = await blockDeviceObject.getProperty(
      'org.freedesktop.UDisks2.Block',
      'IdUUID',
      signature: DBusSignature('s'),
    );
    if (fsuuid.asString() == targetFSUUID) {
      targetObject = blockDeviceObject;
      break;
    }
  }

  if (targetObject == null) {
    throw Exception('reset partition not found');
  }

  return Filesystem(targetObject);
}

Future<int?> getFsUsedSize(String devicePath) async {
  final process =
      await Process.run('lsblk', ['-b', '-n', '-o', 'FSUSED', devicePath]);
  return int.tryParse(process.stdout as String);
}

Stream<double> copyPercentageUpdate(
  Filesystem resetFS,
  Filesystem targetFS,
) async* {
  final resetBlk = Block(resetFS.object);
  final targetBlk = Block(targetFS.object);
  final total = (await getFsUsedSize(await resetBlk.devicePath()))!;
  var used = 0;
  var percent = 0.0;
  while (true) {
    used = (await getFsUsedSize(await targetBlk.devicePath())) ?? used;
    final newPercent = used / total;
    if (newPercent > 1) {
      percent = 1;
    } else if (newPercent > percent) {
      percent = newPercent;
    }
    yield percent;
    await Future.delayed(const Duration(milliseconds: 100));
  }
}

Stream<ResetMediaCreationProgress> copyAsyncJob(
  Filesystem resetFS,
  Filesystem targetFS,
  String rpPath,
  String targetPath, {
  bool rpUnmount = true,
}) async* {
  yield ResetMediaCreationProgress(
    ResetMediaCreationStatus.copying,
    null,
    null,
  );

  var result = await Process.start(
    'rsync',
    ['-a', '--no-links', '$rpPath/', targetPath],
  );
  final exitCode = await result.exitCode;
  if (exitCode != 0) {
    yield ResetMediaCreationProgress(
      ResetMediaCreationStatus.failed,
      null,
      'failed to copy files',
    );
  }

  yield ResetMediaCreationProgress(
    ResetMediaCreationStatus.finalizing,
    null,
    null,
  );

  result = await Process.start(
    '/bin/bash',
    ['$targetPath/cloud-configs/on-create-media.sh', targetPath],
  );
  if (exitCode != 0) {
    yield ResetMediaCreationProgress(
      ResetMediaCreationStatus.failed,
      null,
      'failed to run script after media creation',
    );
  }
  try {
    if (rpUnmount) {
      await resetFS.unmount();
    }
    await targetFS.unmount();
    // ignore: avoid_catches_without_on_clauses
  } catch (e) {
    yield ResetMediaCreationProgress(
      ResetMediaCreationStatus.failed,
      null,
      'failed to unmount: $e',
    );
  }

  yield ResetMediaCreationProgress(
    ResetMediaCreationStatus.finished,
    null,
    null,
  );
}

Stream<ResetMediaCreationProgress> createResetMedia(
  String targetDevicePath, {
  String? fsuuid,
}) async* {
  var progress = ResetMediaCreationProgress(
    ResetMediaCreationStatus.initializing,
    null,
    null,
  );
  yield progress;

  final tmpDir = Directory('/tmp').createTempSync('reset-media-');

  tmpDir.deleteSync();

  Filesystem? resetFS;
  String rpPath;
  var rpUnmount = true;
  try {
    resetFS = await getResetFilesystem(fsuuid: fsuuid);
    rpPath = await resetFS.mount();
  } on PathNotFoundException catch (e) {
    yield ResetMediaCreationProgress(
      ResetMediaCreationStatus.failed,
      null,
      'Reset partition not found: $e',
    );
    rethrow;
  } on DBusMethodResponseException catch (e) {
    if (e.errorName == 'org.freedesktop.UDisks2.Error.AlreadyMounted') {
      rpUnmount = false;
      rpPath = await resetFS!.getMountPoint();
    } else {
      rethrow;
    }
  }

  final targetDrive = await Drive.fromDevicePath(targetDevicePath);
  await targetDrive.unmountAndRemoveAll();
  final targetFS = await targetDrive.format();
  final targetPath = await targetFS.mount();

  final copyJob = copyAsyncJob(
    resetFS,
    targetFS,
    rpPath,
    targetPath,
    rpUnmount: rpUnmount,
  );
  final copyPercentage = copyPercentageUpdate(resetFS, targetFS);
  final mergedStreams = StreamGroup.merge([copyJob, copyPercentage]);

  await for (final r in mergedStreams) {
    if (r is double) {
      // copyPercentage
      progress =
          ResetMediaCreationProgress(progress.status, r, progress.errMsg);
      yield progress;
    } else if (r is ResetMediaCreationProgress) {
      // copyJob
      progress =
          ResetMediaCreationProgress(r.status, progress.percent, r.errMsg);
      yield progress;
      if (r.status == ResetMediaCreationStatus.finished ||
          r.status == ResetMediaCreationStatus.failed) {
        break;
      }
    }
  }
}

Stream<ResetMediaCreationProgress> createFakeResetMedia(
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

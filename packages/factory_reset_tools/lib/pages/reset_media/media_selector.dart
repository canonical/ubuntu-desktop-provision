import 'dart:async';

import 'package:async/async.dart';
import 'package:collection/collection.dart';
import 'package:dbus/dbus.dart';
import 'package:factory_reset_tools/horizontal_page.dart';
import 'package:factory_reset_tools/l10n/factory_reset_tools_localizations.dart';
import 'package:factory_reset_tools/pages/reset_media/drive_data.dart';
import 'package:factory_reset_tools/pages/reset_media/drive_manager.dart';
import 'package:factory_reset_tools/pages/reset_media/providers/selected_media_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class MediaSelectorPage extends ConsumerStatefulWidget {
  const MediaSelectorPage({super.key});

  @override
  ConsumerState<MediaSelectorPage> createState() => _MediaSelectorPageState();
}

class _MediaSelectorPageState extends ConsumerState<MediaSelectorPage> {
  final drives = <String, DriveData>{};
  final _dbusClient = DBusClient.system();
  late final _driveManager = DriveManager(_dbusClient);
  Timer? _debounce;
  StreamSubscription<DBusSignal>? _subscription;

  Future<void> _onDrivesChanged() async {
    if (_debounce?.isActive ?? false) {
      _debounce?.cancel();
    }
    _debounce = Timer(
      const Duration(milliseconds: 100),
      () async {
        final newDrives = await _driveManager.getListOfDrives();
        _clearUnavailableSelectedDrive(newDrives);
        setState(() {
          drives.clear();
          drives
              .addEntries(newDrives.map((drive) => MapEntry(drive.id, drive)));
        });
      },
    );
  }

  void _clearUnavailableSelectedDrive(List<DriveData> drives) {
    final selectedMedia = ref.read(selectedMediaProvider);
    final existingDriveSelected =
        drives.firstWhereOrNull((drive) => drive.id == selectedMedia) != null;
    if (!existingDriveSelected) {
      ref.read(selectedMediaProvider.notifier).state = null;
    }
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
    final lang = FactoryResetToolsLocalizations.of(context);
    final List<Widget> driveWidgets;
    final selectedMedia = ref.watch(selectedMediaProvider);

    if (drives.isEmpty) {
      driveWidgets = <Widget>[
        const YaruTile(
          title: Text('No removable storage is detected'),
          subtitle:
              Text('You need a USB storage to create a Factory Reset Media.'),
        ),
      ];
    } else {
      driveWidgets = drives.values.map((drive) {
        final sizeInGiB = drive.size.toDouble() / (1 << 30).toDouble();
        final sizeString = '${sizeInGiB.toStringAsFixed(1)} GiB';
        return OptionButton(
          title: Text(drive.name),
          subtitle: Text('${drive.devicePath} $sizeString'),
          value: drive.id,
          groupValue: selectedMedia?.id,
          onChanged: (value) =>
              ref.read(selectedMediaProvider.notifier).state = drives[value],
        );
      }).toList();
    }

    return HorizontalPage(
      windowTitle: lang.windowTitle,
      title: lang.createUsbTitle,
      image: SvgPicture.asset('assets/images/cogwheel.svg'),
      isNextEnabled: selectedMedia != null,
      children: [
        Text(lang.createUsbBody),
        Text(lang.createUsbListExplanation),
        ...driveWidgets,
        YaruInfoBox(
          yaruInfoType: YaruInfoType.warning,
          isThreeLine: true,
          title: Text(lang.warning),
          subtitle: Text(lang.createUsbWarning),
        )
      ].withSpacing(kWizardSpacing),
    );
  }
}

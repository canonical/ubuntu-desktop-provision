import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/manual_storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/storage_types.dart';
import 'package:yaru/icons.dart';

typedef DiskBuilder = Widget Function(BuildContext context, Disk disk);
typedef GapBuilder = Widget Function(BuildContext context, Disk disk, Gap gap);
typedef PartitionBuilder = Widget Function(
    BuildContext context, Disk disk, Partition partition);

class StorageColumn {
  const StorageColumn({
    required this.titleBuilder,
    required this.diskBuilder,
    required this.gapBuilder,
    required this.partitionBuilder,
  });

  final WidgetBuilder titleBuilder;
  final DiskBuilder diskBuilder;
  final GapBuilder gapBuilder;
  final PartitionBuilder partitionBuilder;
}

class StorageDeviceColumn extends StorageColumn {
  StorageDeviceColumn()
      : super(
          titleBuilder: (context) {
            final lang = UbuntuBootstrapLocalizations.of(context);
            return Text(lang.diskHeadersDevice);
          },
          diskBuilder: (context, disk) {
            // Define the full row description for accessibility
            final rowLabel = "Device ${disk.sysname}, Size ${context.formatByteSize(disk.size)}";
            return Semantics(
              label: rowLabel,
              child: ExcludeSemantics(
                child: Row(
                  children: [
                    const Icon(YaruIcons.drive_harddisk_filled),
                    const SizedBox(width: 16),
                    Text(disk.sysname),
                  ],
                ),
              ),
            );
          },
          gapBuilder: (context, disk, gap) {
            final lang = UbuntuBootstrapLocalizations.of(context);
            final color = gap.tooManyPrimaryPartitions
                ? Theme.of(context).disabledColor
                : null;
            final rowLabel = gap.tooManyPrimaryPartitions
                ? "Device Free space, Type ${lang.partitionLimitReached}, Size ${context.formatByteSize(gap.size)}"
                : "Device Free space, Type ${lang.freeDiskSpace}, Size ${context.formatByteSize(gap.size)}";
            return Semantics(
              label: rowLabel,
              child: ExcludeSemantics(
                child: Tooltip(
                  message: gap.tooManyPrimaryPartitions
                      ? lang.tooManyPrimaryPartitions
                      : '',
                  child: Row(
                    children: [
                      Icon(
                        gap.tooManyPrimaryPartitions
                            ? YaruIcons.drive_harddisk_error
                            : YaruIcons.drive_harddisk,
                        color: color,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        gap.tooManyPrimaryPartitions
                            ? lang.partitionLimitReached
                            : lang.freeDiskSpace,
                        style: TextStyle(color: color),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          partitionBuilder: (context, disk, partition) {
            final rowLabel =
                "Device ${partition.sysname}, Type ${PartitionFormat.fromPartition(partition)?.displayName ?? partition.format ?? ''}, Mount point ${partition.mount ?? ''}, Size ${context.formatByteSize(partition.size ?? 0)}, System ${partition.os?.long ?? ''}";
            return Semantics(
              label: rowLabel,
              child: ExcludeSemantics(
                child: Row(
                  children: [
                    Icon(
                      partition.isEncrypted
                          ? YaruIcons.lock
                          : YaruIcons.drive_harddisk,
                    ),
                    const SizedBox(width: 16),
                    Text(partition.sysname),
                  ],
                ),
              ),
            );
          },
        );
}

class StorageTypeColumn extends StorageColumn {
  StorageTypeColumn()
      : super(
          titleBuilder: (context) {
            final lang = UbuntuBootstrapLocalizations.of(context);
            return Text(lang.diskHeadersType);
          },
          diskBuilder: (context, disk) {
            return const SizedBox.shrink();
          },
          gapBuilder: (context, disk, gap) {
            return const SizedBox.shrink();
          },
          partitionBuilder: (context, disk, partition) {
            return ExcludeSemantics(
              child: Text(
                PartitionFormat.fromPartition(partition)?.displayName ??
                    partition.format ??
                    '',
              ),
            );
          },
        );
}

class StorageMountColumn extends StorageColumn {
  StorageMountColumn()
      : super(
          titleBuilder: (context) {
            final lang = UbuntuBootstrapLocalizations.of(context);
            return Text(lang.diskHeadersMountPoint);
          },
          diskBuilder: (context, disk) {
            return const SizedBox.shrink();
          },
          gapBuilder: (context, disk, gap) {
            return const SizedBox.shrink();
          },
          partitionBuilder: (context, disk, partition) {
            return ExcludeSemantics(
              child: Text(partition.mount ?? ''),
            );
          },
        );
}

class StorageSizeColumn extends StorageColumn {
  StorageSizeColumn()
      : super(
          titleBuilder: (context) {
            final lang = UbuntuBootstrapLocalizations.of(context);
            return Text(lang.diskHeadersSize);
          },
          diskBuilder: (context, disk) {
            return ExcludeSemantics(
              child: Text(context.formatByteSize(disk.size)),
            );
          },
          gapBuilder: (context, disk, gap) {
            final lang = UbuntuBootstrapLocalizations.of(context);
            final color = gap.tooManyPrimaryPartitions
                ? Theme.of(context).disabledColor
                : null;
            return ExcludeSemantics(
              child: Tooltip(
                message: gap.tooManyPrimaryPartitions
                    ? lang.tooManyPrimaryPartitions
                    : '',
                child: Text(
                  context.formatByteSize(gap.size),
                  style: TextStyle(color: color),
                ),
              ),
            );
          },
          partitionBuilder: (context, disk, partition) {
            return ExcludeSemantics(
              child: Text(context.formatByteSize(partition.size ?? 0)),
            );
          },
        );
}

class StorageSystemColumn extends StorageColumn {
  StorageSystemColumn()
      : super(
          titleBuilder: (context) {
            final lang = UbuntuBootstrapLocalizations.of(context);
            return Text(lang.diskHeadersSystem);
          },
          diskBuilder: (context, disk) {
            return const SizedBox.shrink();
          },
          gapBuilder: (context, disk, gap) {
            return const SizedBox.shrink();
          },
          partitionBuilder: (context, disk, partition) {
            return ExcludeSemantics(
              child: Text(partition.os?.long ?? ''),
            );
          },
        );
}

class StorageWipeColumn extends StorageColumn {
  StorageWipeColumn({required this.onWipe})
      : super(
          titleBuilder: (context) {
            final lang = UbuntuBootstrapLocalizations.of(context);
            return Text(lang.diskHeadersFormat);
          },
          diskBuilder: (context, disk) {
            return const SizedBox.shrink();
          },
          gapBuilder: (context, disk, gap) {
            return const SizedBox.shrink();
          },
          partitionBuilder: (context, disk, partition) {
            return ExcludeSemantics(
              child: Consumer(
                builder: (context, ref, child) {
                  final model = ref.read(manualStorageModelProvider);
                  final config = model.originalConfig(partition);
                  final forceWipe = config?.mustWipe(partition.format) ?? true;
                  return Icon(
                    partition.isWiped || forceWipe
                        ? YaruIcons.checkbox_checked_filled
                        : YaruIcons.checkbox,
                  );
                },
              ),
            );
          },
        );

  final void Function(Disk disk, Partition partition, bool wipe) onWipe;
}
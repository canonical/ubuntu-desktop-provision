import 'package:collection/collection.dart';
import 'package:subiquity_client/subiquity_client.dart';

export 'package:subiquity_client/subiquity_client.dart'
    show Disk, DiskObject, Gap, GapUsable, Partition;

extension GapExtension on Gap {
  bool get tooManyPrimaryPartitions =>
      usable == GapUsable.TOO_MANY_PRIMARY_PARTS;
}

extension PartitionExtension on Partition {
  bool get canWipe => PartitionFormat.fromPartition(this)?.canWipe ?? false;
  bool get canEdit => format != 'BitLocker';
  bool get isEncrypted => format == 'BitLocker';
  bool get isWiped => wipe == 'superblock';
  bool mustWipe(String? format) {
    // a preserved partition must be wiped if its format changed
    return (preserve ?? false) && format != null && this.format != format;
  }
}

/// Available partition formats.
enum PartitionFormat {
  none('', null),
  btrfs('btrfs', 'Btrfs'),
  ext2('ext2', 'Ext2'),
  ext3('ext3', 'Ext3'),
  ext4('ext4', 'Ext4'),
  fat('fat', 'FAT'),
  fat12('fat12', 'FAT12'),
  fat16('fat16', 'FAT16'),
  fat32('fat32', 'FAT32'),
  iso9660('iso9660', 'ISO9660'),
  vfat('vfat', 'VFAT'),
  jfs('jfs', 'JFS'),
  ntfs('ntfs', 'NTFS'),
  reiserfs('reiserfs', 'ReiserFS'),
  swap('swap', 'Swap'),
  xfs('xfs', 'XFS'),
  zfsroot('zfsroot', 'ZFS root');

  const PartitionFormat(this.type, this.displayName);

  /// The type of the partition format (e.g. 'ext4').
  final String type;

  /// The display name of the partition format (e.g. 'Ext4').
  final String? displayName;

  /// Whether a partition with this format can be wiped.
  bool get canWipe => type != 'swap';

  /// The default partition format.
  static PartitionFormat get defaultValue => PartitionFormat.ext4;

  /// Converts a Partition object to a PartitionFormat enum value.
  static PartitionFormat? fromPartition(Partition partition) =>
      values.firstWhereOrNull((e) => e.type == partition.format);

  /// Partition formats supported for new partitions.
  static List<PartitionFormat> get supported => [ext4, xfs, btrfs, vfat];
}

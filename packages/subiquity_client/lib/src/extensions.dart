import 'package:path/path.dart' as p;

import 'types.dart';

extension DiskX on Disk {
  /// "/dev/sda" => "sda"
  String get sysname => p.basename(path ?? '');
}

extension PartitionX on Partition {
  /// "/dev/sda1" => "sda1"
  String get sysname => p.basename(path ?? '');
}

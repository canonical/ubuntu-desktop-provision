import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';

enum DataUnit {
  bytes,
  kilobytes,
  megabytes,
  gigabytes;

  String l10n(BuildContext context) {
    final lang = UbuntuLocalizations.of(context);
    switch (this) {
      case DataUnit.bytes:
        return lang.byte;
      case DataUnit.kilobytes:
        return lang.kilobyte;
      case DataUnit.megabytes:
        return lang.megabyte;
      case DataUnit.gigabytes:
        return lang.gigabyte;
    }
  }
}

int toBytes(num size, DataUnit unit) {
  return (size * math.pow(1000, unit.index)).round();
}

double fromBytes(int size, DataUnit unit) {
  return size / math.pow(1000, unit.index).toInt();
}

/// Aligns the given size to the next MiB boundary. If [maxSize] is given, the
/// alignment is limited to that size and the next smaller MiB boundary is
/// returned if the next alignment would exceed the maximum size.
int mibiAlign(int size, [int? maxSize]) {
  assert(maxSize == null || size <= maxSize);
  const mibiByte = 1024 * 1024;
  final nextAlignment = (size + mibiByte - 1) ~/ mibiByte * mibiByte;
  if (maxSize == null || nextAlignment <= maxSize) {
    return nextAlignment;
  }
  return size ~/ mibiByte * mibiByte;
}

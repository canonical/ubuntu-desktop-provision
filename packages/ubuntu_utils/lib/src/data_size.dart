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

int toBytes(double size, DataUnit unit) {
  return (size * math.pow(1024, unit.index)).round();
}

double fromBytes(int size, DataUnit unit) {
  return size / math.pow(1024, unit.index).toInt();
}

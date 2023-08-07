import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:snapcraft_launcher/snapcraft_launcher.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

const kStoreDesktopId = 'snap-store_snap-store.desktop';

final storeModelProvider = ChangeNotifierProvider(
  (ref) => StoreModel(getService<PrivilegedDesktopLauncher>()),
);

class StoreModel extends ChangeNotifier {
  StoreModel(this._launcher);

  final PrivilegedDesktopLauncher _launcher;

  Future<bool> init() => _launcher.connect().then((_) => _launcher.isAvailable);

  Future<void> launch() => _launcher.openDesktopEntry(kStoreDesktopId);

  @override
  Future<void> dispose() => _launcher.close().then((_) => super.dispose());
}

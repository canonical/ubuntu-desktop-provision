import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

const kStoreUrl = 'snap://';

final storeModelProvider = ChangeNotifierProvider(
  (ref) => StoreModel(getService<UrlLauncher>()),
);

class StoreModel extends ChangeNotifier {
  StoreModel(this._launcher);

  final UrlLauncher _launcher;

  Future<bool> init() => _launcher.canLaunchUrl(kStoreUrl);

  Future<void> launch() => _launcher.launchUrl(kStoreUrl);
}

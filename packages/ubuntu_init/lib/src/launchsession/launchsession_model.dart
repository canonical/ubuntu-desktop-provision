import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final launchsessionModelProvider = ChangeNotifierProvider(
  (ref) => LaunchsessionModel(),
);

class LaunchsessionModel extends ChangeNotifier {
  LaunchsessionModel();

  Future<bool> init() async => true;
}

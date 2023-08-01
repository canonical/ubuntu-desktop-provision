import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stdlibc/stdlibc.dart';
import 'package:ubuntu_bootstrap/services.dart';

export 'package:subiquity_client/subiquity_client.dart' show RefreshCheckState;
export 'package:ubuntu_bootstrap/services.dart' show RefreshState;

final refreshModelProvider =
    ChangeNotifierProvider((_) => RefreshModel(getService<RefreshService>()));

class RefreshModel extends ChangeNotifier {
  RefreshModel(this._service);

  final RefreshService _service;
  StreamSubscription<RefreshState>? _stateChanged;

  RefreshState get state => _service.state;

  Future<bool> init() async {
    _stateChanged = _service.stateChanged.listen((_) => notifyListeners());
    return _service.check().then((state) => state.available);
  }

  @override
  void dispose() async {
    await _stateChanged?.cancel();
    _stateChanged = null;
    super.dispose();
  }

  Future<RefreshState> check() => _service.check();
  Future<void> refresh() => _service.refresh();

  Future<void> restart() async {
    execv(Platform.resolvedExecutable, []);
  }
}

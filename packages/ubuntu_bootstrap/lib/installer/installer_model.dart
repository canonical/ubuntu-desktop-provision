import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/services.dart';

final installerModelProvider = ChangeNotifierProvider.autoDispose(
  (_) => InstallerModel(
    getService<InstallerService>(),
    getService<RefreshService>(),
  ),
);

class InstallerModel extends SafeChangeNotifier {
  InstallerModel(this._installer, this._refresh);

  final InstallerService _installer;
  final RefreshService _refresh;

  ApplicationStatus? _status;
  StreamSubscription<ApplicationStatus?>? _statusChange;
  StreamSubscription<RefreshState>? _refreshChange;

  ApplicationStatus? get status => _status;
  bool get isInstalling => status?.isInstalling ?? false;
  bool get isRefreshing => _refresh.state.busy;

  Future<void> init() async {
    _statusChange = _installer.monitorStatus().listen((status) {
      _status = status;
      notifyListeners();
    });
    _refreshChange = _refresh.stateChanged.listen((_) {
      notifyListeners();
    });
  }

  bool hasRoute(String route) => _installer.hasRoute(route);

  @override
  Future<void> dispose() async {
    await _statusChange?.cancel();
    _statusChange = null;
    await _refreshChange?.cancel();
    _refreshChange = null;
    super.dispose();
  }
}

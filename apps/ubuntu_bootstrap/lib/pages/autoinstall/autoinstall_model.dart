import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_bootstrap/app/installer_model.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_provider.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';

part 'autoinstall_model.freezed.dart';
part 'autoinstall_model.g.dart';

enum AutoinstallType {
  none,
  direct,
  landscape,
}

@freezed
class AutoinstallState with _$AutoinstallState {
  factory AutoinstallState({
    required AutoinstallType type,
  }) = _AutoinstallState;
}

@Riverpod(keepAlive: true)
class AutoinstallModel extends _$AutoinstallModel {
  late final _service = getService<AutoinstallService>();

  @override
  AutoinstallState build() {
    return AutoinstallState(type: AutoinstallType.none);
  }

  void setType(AutoinstallType? type) {
    if (type == null) return;
    state = state.copyWith(type: type);
  }

  AutoinstallType? getType() {
    return state.type;
  }

  Future<void> restart() async {
    await _service.restartSubiquity();
    ref.read(restartProvider.notifier).state++;
    ref.invalidate(loadingProvider);
  }

  Future<String> getFileContent() => _service.getFileContent();

  bool get showLandscape =>
      getService<InstallerService>().experimentalFeatures.contains('landscape');
}

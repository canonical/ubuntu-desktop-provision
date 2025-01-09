import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_bootstrap/app/installer_model.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_provider.dart';
import 'package:ubuntu_bootstrap/services/autoinstall_service.dart';
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

  Future<void> restart() async {
    await _service.restartSubiquity();
    ref.read(restartProvider.notifier).state++;
    ref.invalidate(loadingProvider);
  }

  Future<String> getFileContent() => _service.getFileContent();
}

@riverpod
class AutoinstallDirectModel extends _$AutoinstallDirectModel {
  @override
  Future<String> build() async {
    return '';
  }

  void setUrl(String? url) {
    if (url == null) return;
    state = AsyncData(url);
  }

  /// Returns true on success, which indicates that we can restart subiquity and the UI
  Future<bool> fetchAndWrite() async {
    if (state.value == null) return false;

    state = const AsyncValue.loading();
    final newState = await AsyncValue.guard(() async {
      await getService<AutoinstallService>()
          .fetchAndWriteFileFromUrl(state.value!);
      return state.value!;
    });

    // If there was an error, update the state to display it, otherwise remain in the loading state
    // and wait for UI restart
    if (newState.hasError) {
      state = newState;
      return false;
    }
    return true;
  }
}

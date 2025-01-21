import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_bootstrap/services.dart';

part 'autoinstall_landscape_model.freezed.dart';
part 'autoinstall_landscape_model.g.dart';

class LandscapeData with _$LandscapeData {
  factory LandscapeData({
    @Default('') String userCode,
    @Default(AuthenticationStatus.authenticationPending) AuthenticationStatus authenticationStatus,
  }) = _LandscapeData;

  LandscapeData._();
}

@riverpod
class LandscapeDataModel extends _$LandscapeDataModel {
  StreamSubscription<WatchAuthenticationResponse>? _subscription;

  @override
  LandscapeData build() {
    return LandscapeData();
  }

  Future<void> attach() async {
    final response = await getService<LandscapeService>().attach();
    if (response.status == AttachStatus.attachSuccess &&
        response.userCode != null) {
      state = state.copyWith(userCode: response.userCode!);
    }
  }
  
  // TODO: add a new provider that is just a method that returns the WatchAuthenticationResponse
  // see here: https://riverpod.dev/docs/concepts/combining_providers
  void watch() {
  //TODO ref.read(autoinstallModelNotifierProvider.restart)
    _subscription?.cancel();

    if (state.userCode.isEmpty) {
      return;
    }

      // TODO:
      // get autoinstall service if success status, write autoinstall and restart subiquity
    _subscription =
        getService<LandscapeService>().watch(state.userCode).listen((event) {
      state = state.copyWith(authenticationStatus: event.status);
    });
  }
}



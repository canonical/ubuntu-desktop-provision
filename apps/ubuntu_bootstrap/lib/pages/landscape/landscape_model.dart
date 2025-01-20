import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_bootstrap/services.dart';

part 'landscape_model.freezed.dart';
part 'landscape_model.g.dart';

@freezed
class LandscapeData with _$LandscapeData {
  factory LandscapeData({
    // TODO: default to ''
    required String userCode,
    // Swap to optional once we can retrive the status form the service.
    // TODO: default to auth pending
    required AuthenticationStatus authenticationStatus,
  }) = _LandscapeData;

  LandscapeData._();
}

@riverpod
class LandscapeDataModel extends _$LandscapeDataModel {
  StreamSubscription<WatchAuthenticationResponse>? _subscription;

  @override
  LandscapeData build() {
    return LandscapeData(
      userCode: '',
      authenticationStatus: AuthenticationStatus.authenticationPending,
    );
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

    _subscription =
        getService<LandscapeService>().watch(state.userCode).listen((event) {
      state = state.copyWith(authenticationStatus: event.status);
      // TODO:
      // get autoinstall service if success status, write autoinstall and restart subiquity
    });
  }
}

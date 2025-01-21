import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

part 'autoinstall_landscape_model.freezed.dart';
part 'autoinstall_landscape_model.g.dart';

final _log = Logger();

class LandscapeData with _$LandscapeData {
  factory LandscapeData({
    @Default('') String userCode,
    @Default(AuthenticationStatus.authenticationPending)
    AuthenticationStatus authenticationStatus,
  }) = _LandscapeData;

  LandscapeData._();
}

@riverpod
Stream<WatchAuthenticationResponse> watchResponse(
  Ref ref,
) {
  final userCode = ref.read(landscapeDataModelProvider).userCode;

  _log.info('Usercode is : $userCode');
  final landscapeService = getService<LandscapeService>();
  return landscapeService.watch(userCode);
}

@riverpod
class LandscapeDataModel extends _$LandscapeDataModel {
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

  void watch() {
    if (state.userCode.isEmpty) {
      _log.warning('Cannot watch; userCode is empty.');
      return;
    }

    ref.listen<AsyncValue<WatchAuthenticationResponse>>(
      watchResponseProvider,
      (previous, next) {
        next.when(
          data: (value) {
            _log.info('response.value is: $value');
            state = state.copyWith(authenticationStatus: value.status);

            if (state.authenticationStatus ==
                AuthenticationStatus.authenticationSuccess) {
              _log.info('Auth success!');
            }
          },
          loading: () {
            _log.info('StreamProvider is still loading...');
          },
          error: (err, stack) {
            _log.error('StreamProvider error: $err');
          },
        );
      },
    );
  }
}

import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_bootstrap/app/installer_model.dart';
import 'package:ubuntu_bootstrap/l10n/ubuntu_bootstrap_localizations.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_provider.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaml/yaml.dart';

part 'autoinstall_landscape_model.freezed.dart';
part 'autoinstall_landscape_model.g.dart';

final _log = Logger('landscape_model');

@freezed
class LandscapeData with _$LandscapeData {
  factory LandscapeData({
    @Default('') String userCode,
    @Default(AuthenticationStatus.authenticationPending)
    AuthenticationStatus authenticationStatus,
    AttachStatus? attachStatus,
    @Default('') String autoinstall,
    @Default('') String domainUrl,
    @Default(false) bool isLoading,
    @Default(false) bool unretryableError,
    Object? error,
  }) = _LandscapeData;

  LandscapeData._();
}

@riverpod
Stream<WatchAuthenticationResponse> watchResponse(
  Ref ref,
) {
  final userCode = ref.read(landscapeDataModelProvider).userCode;
  final landscapeService = getService<LandscapeBackendService>();
  return landscapeService.watch(userCode);
}

@riverpod
class LandscapeDataModel extends _$LandscapeDataModel {
  ProviderSubscription<AsyncValue<WatchAuthenticationResponse>>? _stream;

  @override
  LandscapeData build() {
    final data = LandscapeData();
    return data;
  }

  void cancelStream() {
    if (_stream == null) {
      return;
    }
    _stream?.close();
    state = state.copyWith(
      authenticationStatus: AuthenticationStatus.authenticationPending,
    );
  }

  void setUrl(String? url) {
    if (url == null) return;
    state = state.copyWith(domainUrl: url, error: null);
  }

  Future<void> _handleAuthenticationStatus(
    AuthenticationStatus status,
    String? autoinstall,
  ) async {
    switch (status) {
      case AuthenticationStatus.authenticationSuccess:
        loadYaml(autoinstall!);
        await getService<AutoinstallService>().writeFile(autoinstall);
        await getService<AutoinstallService>().restartSubiquity();
        ref.read(restartProvider.notifier).state++;
        ref.invalidate(loadingProvider);
      case AuthenticationStatus.authenticationPending:
      case AuthenticationStatus.errorCodeNotFound:
      case AuthenticationStatus.errorCanceledByUser:
      case AuthenticationStatus.errorCodeExpired:
        break;
      case AuthenticationStatus.errorEmployeeLimitExceeded:
      case AuthenticationStatus.errorEmployeeDeactivated:
      case AuthenticationStatus.errorEmployeeComputerLimitExceeded:
      case AuthenticationStatus.errorMissingAutoinstallFile:
        state = state.copyWith(
          unretryableError: true,
        );
    }
  }

  Future<bool> attach() async {
    state = state.copyWith(isLoading: true);
    try {
      final response =
          await getService<LandscapeBackendService>().attach(state.domainUrl);
      if (response.status == AttachStatus.attachSuccess &&
          response.userCode != null) {
        state = state.copyWith(userCode: response.userCode!, isLoading: false);
      } else {
        // FIXME: Designs have this land on the error page.
        final e = Exception('Landscape is not enabled on this account');
        _log.debug('Through error during attach: $e');
        throw Exception(e);
      }
    } on Exception catch (e) {
      _log.debug('Caught error during attach: $e');

      state = state.copyWith(error: e, isLoading: false);
      return false;
    }
    return true;
  }

  Future<void> watch() async {
    if (state.userCode.isEmpty) {
      _log.debug('Cannot watch; userCode is empty.');
      return;
    }

    _stream = ref.listen<AsyncValue<WatchAuthenticationResponse>>(
      watchResponseProvider,
      (previous, next) {
        next.when(
          data: (value) async {
            await _handleAuthenticationStatus(value.status, value.autoinstall);
            state = state.copyWith(authenticationStatus: value.status);
          },
          loading: () {
            _log.debug('watchResponseProvider is still loading...');
          },
          error: (err, stack) {
            _log.debug('watchResponseProvider error');
          },
        );
      },
    );
  }

  void resetUnretryableError() {
    state = state.copyWith(domainUrl: '', unretryableError: false, error: null);
  }
}

import 'package:landscape_client/landscape_client.dart' as landscape;
import 'package:meta/meta.dart';

enum AuthenticationStatus {
  authenticationPending,
  authenticationSuccess,
  errorCodeNotFound,
  errorCanceledByUser,
  errorCodeExpired,
  errorEmployeeLimitExceeded,
  errorEmployeeDeactivated,
  errorEmployeeComputerLimitExceeded,
  errorMissingAutoinstallFile,
}

class WatchAuthenticationResponse {
  WatchAuthenticationResponse({
    required this.status,
    this.autoinstall,
  });

  factory WatchAuthenticationResponse.watchAuthenticationFromGrpc(
    landscape.WatchAuthenticationResponse response,
  ) =>
      switch (response.status) {
        landscape.AuthenticationStatus.AUTHENTICATION_PENDING =>
          WatchAuthenticationResponse(
            status: AuthenticationStatus.authenticationPending,
          ),
        landscape.AuthenticationStatus.AUTHENTICATION_SUCCESS =>
          WatchAuthenticationResponse(
            status: AuthenticationStatus.authenticationSuccess,
            autoinstall: response.autoinstall,
          ),
        landscape.AuthenticationStatus.ERROR_CODE_NOT_FOUND =>
          WatchAuthenticationResponse(
            status: AuthenticationStatus.errorCodeNotFound,
          ),
        landscape.AuthenticationStatus.ERROR_CANCELED_BY_USER =>
          WatchAuthenticationResponse(
            status: AuthenticationStatus.errorCanceledByUser,
          ),
        landscape.AuthenticationStatus.ERROR_CODE_EXPIRED =>
          WatchAuthenticationResponse(
            status: AuthenticationStatus.errorCodeExpired,
          ),
        landscape.AuthenticationStatus.ERROR_EMPLOYEE_LIMIT_EXCEEDED =>
          WatchAuthenticationResponse(
            status: AuthenticationStatus.errorEmployeeLimitExceeded,
          ),
        landscape.AuthenticationStatus.ERROR_EMPLOYEE_DEACTIVATED =>
          WatchAuthenticationResponse(
            status: AuthenticationStatus.errorEmployeeDeactivated,
          ),
        landscape.AuthenticationStatus.ERROR_EMPLOYEE_COMPUTER_LIMIT_EXCEEDED =>
          WatchAuthenticationResponse(
            status: AuthenticationStatus.errorEmployeeComputerLimitExceeded,
          ),
        landscape.AuthenticationStatus.ERROR_MISSING_AUTOINSTALL_FILE =>
          WatchAuthenticationResponse(
            status: AuthenticationStatus.errorMissingAutoinstallFile,
          ),
        _ => throw Exception('Unknown status: ${response.status}'),
      };

  final AuthenticationStatus status;
  final String? autoinstall;
}

enum AttachStatus {
  attachSuccess,
  errorNotEnabled,
}

class AttachResponse {
  AttachResponse({
    required this.status,
    this.userCode,
    this.token,
    this.validUntil,
  });
  factory AttachResponse.attachFromGrpc(landscape.AttachResponse response) =>
      switch (response.status) {
        landscape.AttachStatus.ATTACH_SUCCESS => AttachResponse(
            status: AttachStatus.attachSuccess,
            userCode: response.userCode,
            token: response.token,
            validUntil: response.validUntil.toDateTime(),
          ),
        landscape.AttachStatus.ERROR_NOT_ENABLED => AttachResponse(
            status: AttachStatus.errorNotEnabled,
          ),
        _ => throw Exception('Unknown status: ${response.status}'),
      };

  final AttachStatus status;
  final String? userCode;
  final String? token;
  final DateTime? validUntil;
}

class LandscapeBackendService {
  LandscapeBackendService({
    required int port,
    required bool useTls,
  })  : _port = port,
        _useTls = useTls,
        _client = null;

  @visibleForTesting
  LandscapeBackendService.withClient(this._client, this._useTls, this._port);

  landscape.LandscapeClient? _client;
  final int _port;
  final bool _useTls;

  Stream<WatchAuthenticationResponse> watch(String userCode, String token) {
    if (_client == null) {
      throw Exception('Client cannot be null');
    }
    final grpcResponse = _client!.watch(userCode, token);
    return grpcResponse
        .map(WatchAuthenticationResponse.watchAuthenticationFromGrpc);
  }

  Future<AttachResponse> attach(
    String serverUrl, {
    @visibleForTesting landscape.LandscapeClient? mockClient,
  }) async {
    _client =
        mockClient ?? landscape.LandscapeClient(serverUrl, _port, _useTls);
    final response = await _client!.attach();
    return AttachResponse.attachFromGrpc(response);
  }
}

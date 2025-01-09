import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'landscape_model.freezed.dart';
part 'landscape_model.g.dart';

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

@freezed
class LandscapeData with _$LandscapeData {
  factory LandscapeData({
    required String userCode,
    // Swap to optional once we can retrive the status form the service.
    required AuthenticationStatus authenticationStatus,
  }) = _LandscapeData;

  LandscapeData._();
}

@riverpod
class LandscapeDataModel extends _$LandscapeDataModel {
  @override
  LandscapeData build() {
    return LandscapeData(
      userCode: 'ABCD EFGH',
      authenticationStatus: AuthenticationStatus.authenticationSuccess,
    );
  }
}

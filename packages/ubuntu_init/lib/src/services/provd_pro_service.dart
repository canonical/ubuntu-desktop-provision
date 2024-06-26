import 'package:provd_client/provd_client.dart' as provd;
import 'package:ubuntu_init/src/services/provd_address.dart';

abstract class ProService {
  Stream<ProResponse> proMagicAttach();
  Future<ProResponse> proAttach(String token);
}

sealed class ProResponse {
  const ProResponse();

  factory ProResponse.magicAttachFromProvd(
          provd.ProMagicAttachResponse response,) =>
      switch (response.type) {
        provd.ProMagicAttachResponseType.USER_CODE =>
          ProResponseUserCode(response.userCode),
        provd.ProMagicAttachResponseType.REFRESHED_USER_CODE =>
          ProResponseUserCode(response.userCode, refreshed: true),
        provd.ProMagicAttachResponseType.SUCCESS => ProResponseSuccess(),
        provd.ProMagicAttachResponseType.NETWORK_ERROR =>
          ProResponseNetworkError(),
        provd.ProMagicAttachResponseType.SUBSCRIPTION_LIMIT_REACHED =>
          ProResponseSubscriptionLimitReached(),
        provd.ProMagicAttachResponseType.UNKNOWN_ERROR =>
          ProResponseUnknownError(),
        provd.ProMagicAttachResponseType.ALREADY_ATTACHED =>
          ProResponseAlreadyAttached(),
        _ => ProResponseUnknown(),
      };

  factory ProResponse.manualAttachFromProvd(provd.ProAttachResponse response) =>
      switch (response.type) {
        provd.ProAttachResponse_ProAttachResponseType.SUCCESS =>
          ProResponseSuccess(),
        provd.ProAttachResponse_ProAttachResponseType.NETWORK_ERROR =>
          ProResponseNetworkError(),
        provd.ProAttachResponse_ProAttachResponseType.UNKNOWN_ERROR =>
          ProResponseUnknownError(),
        provd.ProAttachResponse_ProAttachResponseType.ALREADY_ATTACHED =>
          ProResponseAlreadyAttached(),
        _ => ProResponseUnknown(),
      };
}

class ProResponseUserCode extends ProResponse {
  ProResponseUserCode(this.userCode, {this.refreshed = false});

  final String userCode;
  final bool refreshed;
}

class ProResponseSuccess extends ProResponse {}

class ProResponseNetworkError extends ProResponse {}

class ProResponseSubscriptionLimitReached extends ProResponse {}

class ProResponseUnknownError extends ProResponse {}

class ProResponseAlreadyAttached extends ProResponse {}

class ProResponseUnknown extends ProResponse {}

class ProvdProService with ProvdAddress implements ProService {
  ProvdProService({provd.ProvdProClient? client})
      : _client = client ??
            provd.ProvdProClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final provd.ProvdProClient _client;

  @override
  Stream<ProResponse> proMagicAttach() =>
      _client.proMagicAttach().map(ProResponse.magicAttachFromProvd);

  @override
  Future<ProResponse> proAttach(String token) =>
      _client.proAttach(token).then(ProResponse.manualAttachFromProvd);
}

import 'package:meta/meta.dart';
import 'package:provd_client/provd_client.dart' as provd;
import 'package:ubuntu_init/src/services/provd_address.dart';

abstract class PrivacyService {
  Future<bool> isLocationEnabled();
  Future<void> setLocationEnabled(bool enabled);
}

class ProvdPrivacyService with ProvdAddress implements PrivacyService {
  ProvdPrivacyService({@visibleForTesting provd.ProvdPrivacyClient? client})
      : _client = client ??
            provd.ProvdPrivacyClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final provd.ProvdPrivacyClient _client;

  @override
  Future<bool> isLocationEnabled() => _client.getLocationServices();

  @override
  Future<void> setLocationEnabled(bool enabled) async {
    if (enabled) {
      await _client.enableLocationServices();
    } else {
      await _client.disableLocationServices();
    }
  }
}

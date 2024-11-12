import 'package:meta/meta.dart';
import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/src/services/provd_address.dart';
import 'package:ubuntu_provision/services.dart';

class ProvdTimezoneService with ProvdAddress implements TimezoneService {
  ProvdTimezoneService({@visibleForTesting ProvdTimezoneClient? client})
      : _client = client ??
            ProvdTimezoneClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final ProvdTimezoneClient _client;

  @override
  Future<String> getTimezone() => _client.getTimezone();

  @override
  Future<void> setTimezone(String? timezone) =>
      _client.setTimezone(timezone ?? 'geoip');
}

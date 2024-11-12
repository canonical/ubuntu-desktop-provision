import 'package:meta/meta.dart';
import 'package:provd_client/provd_client.dart' as provd;
import 'package:ubuntu_init/src/services/provd_address.dart';
import 'package:ubuntu_provision/services.dart';

class ProvdLocaleService with ProvdAddress implements LocaleService {
  ProvdLocaleService({@visibleForTesting provd.ProvdLocaleClient? client})
      : _client = client ??
            provd.ProvdLocaleClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final provd.ProvdLocaleClient _client;

  @override
  Future<String> getLocale() => _client.getLocale();

  @override
  Future<void> setLocale(String locale) => _client.setLocale(locale);
}

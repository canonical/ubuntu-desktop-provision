import 'package:meta/meta.dart';
import 'package:provd_client/provd_client.dart' as provd;
import 'package:ubuntu_init/src/services/provd_address.dart';
import 'package:ubuntu_provision/services.dart';

class ProvdLocaleService with ProvdAddress implements LocaleService {
  ProvdLocaleService({@visibleForTesting provd.ProvdLocaleClient? client})
      : _localeClient = client ??
            provd.ProvdLocaleClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final provd.ProvdLocaleClient _localeClient;

  @override
  Future<String> getLocale() => _localeClient.getLocale();

  @override
  Future<void> setLocale(String locale) => _localeClient.setLocale(locale);
}

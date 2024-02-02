import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/locale.pbgrpc.dart';

class ProvdLocaleClient {
  ProvdLocaleClient(Object host, int port)
      : _localeClient = LocaleServiceClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdLocaleClient.withClient(this._localeClient);

  final LocaleServiceClient _localeClient;

  /// Sets the locale to [locale].
  Future<void> setLocale(String locale) async {
    final request = SetLocaleRequest(locale: locale);
    await _localeClient.setLocale(request);
  }

  /// Returns the current locale.
  Future<String> getLocale() async {
    final response = await _localeClient.getLocale(Empty());
    return response.locale;
  }
}

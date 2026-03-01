import 'package:provd_client/provd_client.dart' as provd;
import 'package:ubuntu_init/services/provd_address.dart';

class ProvdAgeVerificationService with ProvdAddress {
  ProvdAgeVerificationService({provd.ProvdAgeVerificationClient? client})
      : _client = client ??
            provd.ProvdAgeVerificationClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final provd.ProvdAgeVerificationClient _client;

  Future<void> setAge(String username, int birthYear) async {
    return _client.setAge(username, birthYear);
  }

  Future<provd.AgeBracket> getAgeBracket(String username) async {
    return _client.getAgeBracket(username);
  }
}

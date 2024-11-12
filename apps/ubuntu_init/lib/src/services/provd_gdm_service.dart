import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/src/services/provd_address.dart';

abstract class GdmService {
  Future<void> launchSession(String username, String password);
}

class ProvdGdmService with ProvdAddress implements GdmService {
  ProvdGdmService({ProvdGdmClient? client})
      : _client = client ??
            ProvdGdmClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final ProvdGdmClient _client;

  @override
  Future<void> launchSession(String username, String password) =>
      _client.launchDesktopSession(username, password);
}

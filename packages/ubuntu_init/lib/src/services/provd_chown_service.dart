import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/provd_client.dart' as provd;
import 'package:ubuntu_init/src/services/provd_address.dart';

abstract class ChownService {
  Future<bool> chownSettings(String username);
}

class ProvdChownService with ProvdAddress implements ChownService {
  ProvdChownService({@visibleForTesting provd.ProvdChownClient? client})
      : _client = client ??
          provd.ProvdChownClient(
            ProvdAddress.socketAddress,
            ProvdAddress.port,
          );

  final provd.ProvdChownClient _client;

  @override
  Future<bool> chownSettings(String username) => _client.chownSettings(username);
}

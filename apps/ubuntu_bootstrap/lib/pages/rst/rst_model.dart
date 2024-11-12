import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/rst/rst_page.dart';
import 'package:ubuntu_bootstrap/services.dart';

final rstModelProvider =
    Provider<RstModel>((_) => RstModel(getService<SubiquityClient>()));

/// View model for [RstPage].
class RstModel {
  /// Creates an instance with the given client.
  RstModel(this._client);

  final SubiquityClient _client;

  Future<bool> hasRst() => _client.hasRst();

  Future<void> reboot() => _client.reboot(immediate: true);
}

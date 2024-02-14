import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('flavor_provider');

final flavorProvider = StateProvider((_) {
  final detectedFlavor = UbuntuFlavor.detect();
  if (detectedFlavor == UbuntuFlavor.unknown) {
    _log.warning('Unknown flavor detected, defaulting to Ubuntu');
    return UbuntuFlavor.ubuntu;
  }
  return detectedFlavor;
});

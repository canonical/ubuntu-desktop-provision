import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final _log = Logger('flavor_provider');

final flavorProvider = StateProvider((_) => UbuntuFlavor.ubuntu);

Future<UbuntuFlavor> loadFlavor({
  @visibleForTesting UbuntuFlavor? detectedFlavor,
}) async {
  final configService = getService<ConfigService>();
  final configFlavorName = await configService.get<String>('flavor');

  if (configFlavorName?.isNotEmpty ?? false) {
    final configFlavor = UbuntuFlavor.fromName(configFlavorName!);
    if (configFlavor != UbuntuFlavor.unknown) {
      _log.info('Using flavor from config: $configFlavor');
      return configFlavor;
    } else {
      final validFlavorsNames = UbuntuFlavor.values
          .whereNot((f) => f == UbuntuFlavor.unknown)
          .map((f) => f.name)
          .toList();
      _log.warning('Unknown flavor found in config: $configFlavorName. '
          'Valid flavors are: $validFlavorsNames');
    }
  }

  detectedFlavor ??= UbuntuFlavor.detect();
  if (detectedFlavor == UbuntuFlavor.unknown) {
    _log.warning('Unknown flavor detected, defaulting to Ubuntu');
    return UbuntuFlavor.ubuntu;
  }
  _log.info('Using detected flavor: $detectedFlavor');
  return detectedFlavor;
}

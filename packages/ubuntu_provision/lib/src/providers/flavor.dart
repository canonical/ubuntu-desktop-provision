import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

/// A provider that provides the flavor of the app.
///
/// The flavor is never changed after the config file is read during the
/// start-up of the app.
final flavorProvider = Provider(
  (_) => tryGetService<FlavorService>()?.flavor ?? UbuntuFlavor.ubuntu,
);

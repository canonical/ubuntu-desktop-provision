import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/providers.dart';

final loadingProvider = FutureProvider<void>(
  (ref) => Future.wait([
    getService<InstallerService>().load(),
    ref.read(pageImagesProvider).preCache(),
  ]),
);

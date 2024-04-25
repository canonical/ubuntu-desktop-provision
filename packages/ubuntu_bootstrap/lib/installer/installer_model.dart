import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/services.dart';

final restartProvider = StateProvider((_) => 0);

final applicationStatusProvider = StreamProvider(
  (ref) => getService<InstallerService>().monitorStatus(),
);

final hasRouteProvider = Provider.family<bool, String>(
  (ref, route) => getService<InstallerService>().hasRoute(route),
);

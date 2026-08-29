import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/services.dart';

part 'installer_model.g.dart';

final restartProvider = StateProvider((_) => 0);

@riverpod
Stream<ApplicationStatus?> applicationStatus(Ref ref) =>
    getService<InstallerService>().monitorStatus();

@riverpod
bool hasRoute(Ref ref, String route) =>
    getService<InstallerService>().hasRoute(route);

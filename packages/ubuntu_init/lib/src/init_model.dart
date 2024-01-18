import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final initModelProvider = Provider(
  (_) => InitModel(
    pageConfig: tryGetService<PageConfigService>(),
    args: tryGetService<ArgResults>(),
    identityService: tryGetService<IdentityService>(),
    gdmService: tryGetService<GdmService>(),
  ),
);

class InitModel {
  InitModel({
    PageConfigService? pageConfig,
    ArgResults? args,
    IdentityService? identityService,
    GdmService? gdmService,
  })  : _gdmService = gdmService,
        _identityService = identityService,
        _pageConfig = pageConfig;

  final PageConfigService? _pageConfig;
  final IdentityService? _identityService;
  final GdmService? _gdmService;
  List<String>? _excludedPages;

  Future<void> init() async {
    _excludedPages = _pageConfig?.excludedPages;
  }

  Future<void> launchDesktopSession() async {
    final identity = await _identityService?.getIdentity();
    if (identity == null) return;

    await _gdmService?.init();
    await _gdmService?.launchSession(
      identity.username,
      identity.password,
    );
  }

  bool hasRoute(String route) {
    return !(_excludedPages?.contains(route.removePrefix('/')) ?? false);
  }
}

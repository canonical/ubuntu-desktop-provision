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
  ),
);

class InitModel {
  InitModel({PageConfigService? pageConfig, ArgResults? args})
      : _pageConfig = pageConfig;

  final PageConfigService? _pageConfig;
  List<String>? _excludedPages;

  Future<void> init() async {
    _excludedPages = _pageConfig?.excludedPages;
  }

  bool hasRoute(String route) {
    return !(_excludedPages?.contains(route.removePrefix('/')) ?? false);
  }
}

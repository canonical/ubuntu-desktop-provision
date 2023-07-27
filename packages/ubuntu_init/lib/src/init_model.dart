import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final initModelProvider = Provider(
  (_) => InitModel(
    config: tryGetService<ConfigService>(),
    args: tryGetService<ArgResults>(),
  ),
);

class InitModel {
  InitModel({ConfigService? config, ArgResults? args})
      : _config = config,
        _args = args;

  final ConfigService? _config;
  final ArgResults? _args;
  Set<String>? _routes;

  Future<void> init() async {
    _routes ??= (await _config?.getRoutes() ?? _args?.getRoutes())
        ?.map((r) => r.removePrefix('/'))
        .toSet();
  }

  bool hasRoute(String route) {
    return _routes?.contains(route.removePrefix('/')) ?? true;
  }
}

extension on ConfigService {
  Future<List<String>?> getRoutes() {
    return get<List>('routes').then((value) => value?.cast());
  }
}

extension on ArgResults {
  List<String>? getRoutes() => (this['routes'] as String?)?.split(',');
}

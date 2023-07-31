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
  Set<String>? _pages;

  Future<void> init() async {
    _pages ??= (await _config?.getPages() ?? _args?.getPages())
        ?.map((r) => r.removePrefix('/'))
        .toSet();
  }

  bool hasRoute(String route) {
    return _pages?.contains(route.removePrefix('/')) ?? true;
  }
}

extension on ConfigService {
  Future<List<String>?> getPages() async {
    final value = await get('pages');
    return (value is List ? value.cast<String>() : value?.toString().split(','))
        ?.map((p) => p.trim())
        .toList();
  }
}

extension on ArgResults {
  List<String>? getPages() => (this['pages'] as String?)?.split(',');
}

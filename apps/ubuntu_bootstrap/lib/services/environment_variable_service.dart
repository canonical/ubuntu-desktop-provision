import 'dart:io';

import 'package:meta/meta.dart';

class EnvironmentVariableService {
  EnvironmentVariableService({@visibleForTesting Map<String, String>? env})
      : _env = env ?? Platform.environment;
  final Map<String, String> _env;

  bool _landscapeClientUseTls = true;

  void load() {
    _landscapeClientUseTls =
        _env['LANDSCAPE_CLIENT_USE_TLS']?.toLowerCase() != 'false';
  }

  bool get landscapeClientUseTls => _landscapeClientUseTls;
}

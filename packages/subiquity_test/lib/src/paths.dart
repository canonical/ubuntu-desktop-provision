import 'dart:async';

import 'package:path/path.dart' as p;
import 'package:subiquity_client/subiquity_server.dart';

/// "/path/to/subiquity/.subiquity"
Future<String> getSubiquityDataPath() {
  return getSubiquityPath().then((path) => p.join(path, '.subiquity'));
}

/// "/path/to/subiquity/.subiquity/etc/wsl.conf"
Future<String> getSubiquityConfigFile(String fileName) {
  return getSubiquityDataPath().then(fileName.toSubiquityConfigFile);
}

/// "/path/to/subiquity/.subiquity/var/log/installer/autoinstall-user-data"
Future<String> getSubiquityLogFile(String fileName) {
  return getSubiquityDataPath().then(fileName.toSubiquityLogFile);
}

/// "/path/to/subiquity/.subiquity/run/subiquity/states/Locale"
Future<String> getSubiquityStateFile(String fileName) {
  return getSubiquityDataPath().then(fileName.toSubiquityStateFile);
}

extension on String {
  String toSubiquityConfigFile(String dataPath) {
    return p.join(dataPath, 'etc', p.basename(this));
  }

  String toSubiquityLogFile(String dataPath) {
    return p.join(dataPath, 'var', 'log', 'installer', p.basename(this));
  }

  String toSubiquityStateFile(String dataPath) {
    return p.join(dataPath, 'run', 'subiquity', 'states', p.basename(this));
  }
}

import 'package:yaml/yaml.dart';

extension YamlMapExtension on YamlMap {
  Map<String, dynamic> toMap() => _convertYamlMapToMap(this);
}

extension MapExtension on Map<String, dynamic> {
  Map<String, dynamic> toMap() => _convertYamlMapToMap(this);
}

// ignore: strict_raw_type
Map<String, dynamic> _convertYamlMapToMap(Map yamlMap) {
  final map = <String, dynamic>{};

  for (final entry in yamlMap.entries) {
    if (entry.value is Map) {
      map[entry.key.toString()] = _convertYamlMapToMap(entry.value as Map);
    } else {
      map[entry.key.toString()] = entry.value;
    }
  }
  return map;
}

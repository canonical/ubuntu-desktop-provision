import 'dart:convert';

import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:toml/toml.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:xdg_directories/xdg_directories.dart' as xdg;
import 'package:yaml/yaml.dart';

/// @internal
final log = Logger('config');

class ConfigService {
  ConfigService(
    String? path, {
    @visibleForTesting FileSystem fs = const LocalFileSystem(),
  })  : _path = path ?? lookupPath(fs),
        _fs = fs;

  final String? _path;
  final FileSystem _fs;
  Map<String, dynamic>? _config;

  Future<T?> get<T>(String key) async {
    _config ??= await load();
    return _config?[key] as T?;
  }

  @visibleForTesting
  Future<Map<String, dynamic>?> load() async {
    final file = _fs.file(_path ?? '');
    if (!file.existsSync()) return {};
    try {
      final data = await file.readAsString();
      final config = switch (p.extension(_path!)) {
        '.yml' || '.yaml' => loadYaml(data),
        '.conf' || '.tml' || '.toml' => TomlDocument.parse(data).toMap(),
        '.json' => jsonDecode(data),
        _ => throw UnsupportedError(_path!),
      };
      log.debug('loaded $_path');
      return (config as Map).cast();
    } on FileSystemException catch (e) {
      log.error('failed to load $_path', e);
      return null;
    }
  }

  /// Looks up the config file path in the following order:
  ///
  /// - /etc/ubuntu-provision.{conf,yaml,yml} (admin)
  /// - /usr/local/share/ubuntu-provision.{conf,yaml,yml} (oem)
  /// - /usr/share/ubuntu-provision.{conf,yaml,yml} (distro)
  @visibleForTesting
  static String? lookupPath(FileSystem fs) {
    const exts = ['conf', 'yaml', 'yml'];
    final dirs = [...xdg.configDirs, fs.directory('/etc'), ...xdg.dataDirs];
    for (final dir in dirs) {
      for (final ext in exts) {
        final path = p.join(dir.path, 'ubuntu-provision.$ext');
        if (fs.file(path).existsSync()) return path;
      }
    }
    return null;
  }
}

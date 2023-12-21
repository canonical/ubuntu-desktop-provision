import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:xdg_directories/xdg_directories.dart' as xdg;
import 'package:yaml/yaml.dart';

final _log = Logger('config');

class ConfigService {
  ConfigService({
    String? path,
    String? scope,
    @visibleForTesting FileSystem fs = const LocalFileSystem(),
  })  : _scope = scope,
        _path = path ?? lookupPath(fs),
        _fs = fs;

  final String? _path;
  final String? _scope;
  final FileSystem _fs;
  Map<String, dynamic>? _config;
  static const _extensions = ['yaml', 'yml'];
  static const _filename = 'ubuntu-provision';

  Future<T?> get<T>(String key, {String? scope}) async {
    _config ??= await load();
    if (scope == null && _scope == null) {
      return _config?[key] as T?;
    }
    return _config?[scope ?? _scope]?[key] as T?;
  }

  /// Loads the config file, if none are found on the filesystem by
  /// [lookupPath], then it will try to load the default config file from the
  /// assets. If no config file is found, it will return an empty map.
  @visibleForTesting
  Future<Map<String, dynamic>?> load() async {
    final file = _fs.file(_path ?? '');
    String? assetData;
    if (!file.existsSync()) {
      for (final ext in _extensions) {
        try {
          assetData = await rootBundle.loadString('assets/$_filename.$ext');
          // Since there isn't any `exists` method for assets we'll just try to
          // load the file and catch the exception if it doesn't exist and
          // continue. If no file is found, then we'll return an empty map
          // and log an error.
          // ignore: avoid_catches_without_on_clauses
        } catch (_) {
          continue;
        }
      }
      if (assetData == null) {
        _log.error('No config file found on the filesystem or in assets.');
        return {};
      }
    }

    try {
      final data = assetData ?? await file.readAsString();
      final config = switch (p.extension(_path!)) {
        '.yml' || '.yaml' => loadYaml(data),
        _ => throw UnsupportedError(
            'Only supports yaml/yml files, so $_path is not supported.'),
      };
      _log.debug('loaded $_path');
      return (config as Map).cast();
    } on FileSystemException catch (e) {
      _log.error('failed to load $_path', e);
      return null;
    }
  }

  /// Looks up the config file path in the following order:
  ///
  /// - /etc/ubuntu-provision.{yaml,yml} (admin)
  /// - /usr/local/share/ubuntu-provision.{yaml,yml} (oem)
  /// - /usr/share/ubuntu-provision.{yaml,yml} (distro)
  @visibleForTesting
  static String? lookupPath(FileSystem fs) {
    final dirs = [
      ...xdg.configDirs,
      fs.directory('/etc'),
      ...xdg.dataDirs,
    ];
    for (final dir in dirs) {
      for (final ext in _extensions) {
        final path = p.join(dir.path, '$_filename.$ext');
        if (fs.file(path).existsSync()) return path;
      }
    }
    return null;
  }
}

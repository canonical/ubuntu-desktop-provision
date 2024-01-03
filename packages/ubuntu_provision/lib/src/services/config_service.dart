// ignore_for_file: avoid_catches_without_on_clauses

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
  /// assets. If no config file is found, it will return null.
  @visibleForTesting
  Future<Map<String, dynamic>?> load() async {
    final path = _path;
    final file = path != null ? _fs.file(path) : null;
    final Map<String, dynamic>? data;
    if (path == null || file == null || !file.existsSync()) {
      data = await _loadFromAssets();
    } else {
      data = await _loadFromFilesystem(path, file);
    }

    if (data == null) {
      _log.error('No config file found on path or in assets.');
    }
    return data;
  }

  Future<Map<String, dynamic>?> _loadFromFilesystem(
    String path,
    File file,
  ) async {
    try {
      final data = await file.readAsString();
      final config = loadYaml(data);
      _log.debug('Loaded config file from $path');
      return (config as Map).cast();
    } catch (e) {
      _log.error('Failed to load file from $path', e);
      return null;
    }
  }

  Future<Map<String, dynamic>?> _loadFromAssets() async {
    String? path;
    String? assetData;
    for (final ext in _extensions) {
      try {
        path = 'assets/$_filename.$ext';
        assetData = await rootBundle.loadString(path);
        break;
        // Since there isn't any `exists` method for assets we'll just try to
        // load the file and catch the exception if it doesn't exist and
        // continue. If no file is found, then we'll return an empty map
        // and log an error.
      } catch (_) {
        continue;
      }
    }
    if (assetData == null) {
      _log.error('No config file found in assets.');
      return null;
    }
    return (loadYaml(assetData) as Map).cast();
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

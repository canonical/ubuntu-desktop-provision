// ignore_for_file: avoid_catches_without_on_clauses

import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:yaml/yaml.dart';

final _log = Logger('config');

class ConfigService {
  ConfigService({
    this.scope,
    @visibleForTesting this.filesystem = const LocalFileSystem(),
    @visibleForTesting AssetBundle? assetBundle,
  }) : _assetBundle = assetBundle ?? rootBundle;

  final String? scope;
  final FileSystem filesystem;
  final AssetBundle _assetBundle;
  Map<String, dynamic>? _config;

  static const _extensions = ['yaml', 'yml'];
  static const _filename = 'whitelabel';
  static const whiteLabelDirectory = '/usr/share/desktop-provision/';

  Future<T?> get<T>(String key, {String? scopeOverride}) async {
    _config ??= await load();
    if (scopeOverride == null && scope == null) {
      return _config?[key] as T?;
    }
    return _config?[scopeOverride ?? scope]?[key] as T?;
  }

  /// Loads the config file, if none are found on the filesystem by
  /// [lookupPath], then it will load the default config file from the assets.
  /// If no default config file is found, a [ConfigServiceException] will be
  /// thrown.
  @visibleForTesting
  Future<Map<String, dynamic>> load() async {
    final path = lookupPath(filesystem);
    final file = path != null ? filesystem.file(path) : null;
    final defaultConfig = await _loadFromAssets();
    Map<String, dynamic>? customConfig;
    if (path != null && file != null && file.existsSync()) {
      customConfig = await _loadFromFilesystem(path, file);
    }

    if (defaultConfig == null) {
      const errorMessage = 'No default config file found in assets.';
      _log.error(errorMessage);
      throw ConfigServiceException(errorMessage);
    }

    return mergeConfig(defaultConfig, customConfig);
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
        path = 'packages/ubuntu_provision/assets/$_filename.$ext';
        assetData = await _assetBundle.loadString(path);
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

  /// Looks up the config file from:
  /// - /usr/share/desktop-provision/whitelabel.{yaml,yml}
  @visibleForTesting
  static String? lookupPath(FileSystem fs) {
    for (final ext in _extensions) {
      final path = join(whiteLabelDirectory, '$_filename.$ext');
      if (fs.file(path).existsSync()) return path;
    }
    return null;
  }

  @visibleForTesting
  static Map<String, dynamic> mergeConfig(
    Map<String, dynamic> defaultConfig,
    Map<String, dynamic>? customConfig,
  ) {
    final result = defaultConfig.toMap();
    if (customConfig == null) return result;
    customConfig.forEach((key, value) {
      if (value is Map && result[key] is Map) {
        result[key] = mergeConfig(
          Map<String, dynamic>.from(result[key] as Map),
          Map<String, dynamic>.from(value),
        );
      } else {
        result[key] = value;
      }
    });
    return result.toMap();
  }
}

class ConfigServiceException implements Exception {
  ConfigServiceException(this.message);
  final String message;

  @override
  String toString() => 'ConfigServiceException: $message';
}

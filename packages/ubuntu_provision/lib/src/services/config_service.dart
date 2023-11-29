import 'package:file/file.dart';
import 'package:file/local.dart';
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

  Future<T?> get<T>(String key, {String? scope}) async {
    _config ??= await load();
    if (scope == null && _scope == null) {
      return _config?[key] as T?;
    }
    return _config?[scope ?? _scope]?[key] as T?;
  }

  @visibleForTesting
  Future<Map<String, dynamic>?> load() async {
    final file = _fs.file(_path ?? '');
    if (!file.existsSync()) return {};
    try {
      final data = await file.readAsString();
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
    const extensions = ['yaml', 'yml'];
    final dirs = [
      ...xdg.configDirs,
      fs.directory('/etc'),
      ...xdg.dataDirs,
    ];
    for (final dir in dirs) {
      for (final ext in extensions) {
        final path = p.join(dir.path, 'ubuntu-provision.$ext');
        if (fs.file(path).existsSync()) return path;
      }
    }
    return null;
  }
}

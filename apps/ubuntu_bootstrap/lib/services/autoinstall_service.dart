import 'dart:convert';
import 'dart:io';

import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_client/subiquity_server.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaml/yaml.dart';

final _log = Logger('autoinstall_service');

class AutoinstallService {
  AutoinstallService(
    this._subiquity,
    this._subiquityServer, {
    bool liveRun = false,
    @visibleForTesting FileSystem? fs,
    @visibleForTesting HttpClient? httpClient,
  })  : _fs = fs ?? const LocalFileSystem(),
        _httpClient = httpClient ?? HttpClient(),
        _liveRun = liveRun;
  final SubiquityClient _subiquity;
  final SubiquityServer _subiquityServer;
  final HttpClient _httpClient;
  final FileSystem _fs;
  final bool _liveRun;

  static const filename = 'autoinstall.yaml';
  static const targetDir = '/';

  Future<void> writeFile(String content) async {
    final file = _fs.file(
      p.join(
        _fs.systemTempDirectory.absolute.path,
        filename,
      ),
    );
    await file.writeAsString(content);
    _log.debug('Wrote provided content to ${file.absolute.path}');

    if (!_liveRun) {
      final dir = _fs.directory(p.join(await getSubiquityPath(), '.subiquity'));
      if (dir.existsSync()) {
        _log.debug(
          'renaming ${file.path} to ${p.join(dir.absolute.path, filename)}',
        );
        file.copySync(p.join(dir.absolute.path, filename));
      }
      return;
    }

    final result =
        await Process.run('sudo', ['cp', file.absolute.path, targetDir]);
    if (result.exitCode != 0) {
      _log.error(
        'Failed to move ${file.absolute.path} to $targetDir: ${result.stderr}',
      );
      return;
    }
    _log.debug('Moved ${file.absolute.path} to $targetDir');
  }

  Future<void> fetchAndWriteFileFromUrl(String url) async {
    final uri = Uri.parse(url);

    final String content;

    if (uri.scheme == 'file') {
      content = await _fs.file(uri.toFilePath()).readAsString();
    } else {
      if (uri.host.isEmpty) {
        throw FormatException('No host specified in URi $uri');
      }
      _httpClient.connectionTimeout = const Duration(seconds: 10);
      content = await _httpClient
          .getUrl(uri)
          .then((request) => request.close())
          .then((httpResponse) => httpResponse.transform(utf8.decoder).join());
    }

    loadYaml(content);

    await writeFile(content);
  }

  Future<String> getFileContent() async {
    final directory =
        _liveRun ? targetDir : p.join(await getSubiquityPath(), '.subiquity');
    final file = _fs.file(p.join(directory, filename));
    return file.readAsString();
  }

  Future<void> restartSubiquity() async {
    _log.debug('Restarting subiquity');
    await _subiquity.restart();
    await _subiquityServer.waitSubiquity();
  }
}

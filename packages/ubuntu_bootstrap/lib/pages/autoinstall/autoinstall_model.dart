import 'dart:convert';
import 'dart:io';

import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:stdlibc/stdlibc.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaml/yaml.dart';

final _log = Logger('autoinstall_model');

final autoinstallModelProvider = ChangeNotifierProvider(
  (_) => AutoinstallModel(getService<SubiquityClient>()),
);

class AutoinstallModel extends SafeChangeNotifier {
  AutoinstallModel(
    this._subiquity, {
    @visibleForTesting FileSystem? fs,
    @visibleForTesting HttpClient? httpClient,
    @visibleForTesting bool runExternalCommands = true,
  })  : _fs = fs ?? const LocalFileSystem(),
        _httpClient = httpClient ?? HttpClient(),
        _runExternalCommands = runExternalCommands {
    Listenable.merge([_url, _state]).addListener(notifyListeners);
  }

  static const filename = 'autoinstall.yaml';
  static const targetDir = '/';

  final SubiquityClient _subiquity;
  final FileSystem _fs;
  final HttpClient _httpClient;
  final bool _runExternalCommands;

  final _url = ValueNotifier('');
  String get url => _url.value;
  set url(String value) {
    state = const AsyncValue<void>.data(null);
    _url.value = value;
  }

  final _state = ValueNotifier(const AsyncValue<void>.data(null));
  AsyncValue<void> get state => _state.value;
  set state(AsyncValue<void> value) => _state.value = value;

  Future<void> _fetch() async {
    final uri = Uri.parse(url);

    final response = await _httpClient
        .getUrl(uri)
        .then((request) => request.close())
        .then((httpResponse) => httpResponse.transform(utf8.decoder).join());

    loadYaml(response);

    final file = _fs.file(p.join(
      _fs.systemTempDirectory.absolute.path,
      filename,
    ));
    await file.writeAsString(response);
    _log.debug('Downloaded $uri to ${file.absolute.path}');

    if (!_runExternalCommands) {
      return;
    }

    final result =
        await Process.run('sudo', ['mv', file.absolute.path, targetDir]);
    if (result.exitCode != 0) {
      _log.error(
          'Failed to move ${file.absolute.path} to $targetDir: ${result.stderr}');
      return;
    }
    _log.debug('Moved ${file.absolute.path} to $targetDir');
  }

  Future<void> _restart() async {
    _log.debug('Restarting subiquity');
    await _subiquity.restart();

    if (!_runExternalCommands) {
      return;
    }
    execv(Platform.resolvedExecutable, []);
  }

  Future<void> apply() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
    if (state.hasError) {
      return;
    }
    await _restart();
  }
}

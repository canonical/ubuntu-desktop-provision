import 'dart:convert';
import 'dart:io';

import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_bootstrap/app/installer_model.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_provider.dart';
import 'package:ubuntu_bootstrap/services/autoinstall_service.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:yaml/yaml.dart';

final autoinstallModelProvider = ChangeNotifierProvider(
  (ref) => AutoinstallModel(
    getService<AutoinstallService>(),
    () {
      ref.read(restartProvider.notifier).state++;
      ref.invalidate(loadingProvider);
    },
  ),
);

class AutoinstallModel extends SafeChangeNotifier {
  AutoinstallModel(
    this._autoinstallService,
    this.resetUi, {
    @visibleForTesting FileSystem? fs,
    @visibleForTesting HttpClient? httpClient,
  })  : _fs = fs ?? const LocalFileSystem(),
        _httpClient = httpClient ?? HttpClient() {
    Listenable.merge([_url, _state]).addListener(notifyListeners);
  }

  final AutoinstallService _autoinstallService;
  final VoidCallback resetUi;
  final FileSystem _fs;
  final HttpClient _httpClient;

  bool _autoinstall = false;
  bool get autoinstall => _autoinstall;
  set autoinstall(bool value) {
    if (value == _autoinstall) return;
    _autoinstall = value;
    notifyListeners();
  }

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

    final String content;

    if (uri.scheme == 'file') {
      content = await _fs.file(uri.toFilePath()).readAsString();
    } else {
      _httpClient.connectionTimeout = const Duration(seconds: 10);
      content = await _httpClient
          .getUrl(uri)
          .then((request) => request.close())
          .then((httpResponse) => httpResponse.transform(utf8.decoder).join());
    }

    loadYaml(content);

    await _autoinstallService.writeFile(content);
  }

  Future<String> getFileContent() => _autoinstallService.getFileContent();

  Future<void> _restart() async {
    await _autoinstallService.restartSubiquity();
    resetUi();
  }

  Future<void> apply() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await _fetch();
      await _restart();
    });
  }
}

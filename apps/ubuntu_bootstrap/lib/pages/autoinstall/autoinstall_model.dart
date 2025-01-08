import 'dart:convert';
import 'dart:io';

import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_bootstrap/app/installer_model.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_provider.dart';
import 'package:ubuntu_bootstrap/services/autoinstall_service.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:yaml/yaml.dart';

part 'autoinstall_model.freezed.dart';
part 'autoinstall_model.g.dart';

final autoinstallDirectModelProvider = ChangeNotifierProvider(
  (ref) => AutoinstallDirectModel(
    getService<AutoinstallService>(),
  ),
);

enum AutoinstallType {
  none,
  direct,
  landscape,
}

@freezed
class AutoinstallState with _$AutoinstallState {
  factory AutoinstallState({
    required AutoinstallType type,
  }) = _AutoinstallState;
}

@riverpod
class AutoinstallModel extends _$AutoinstallModel {
  late final _service = getService<AutoinstallService>();

  @override
  AutoinstallState build() {
    return AutoinstallState(type: AutoinstallType.none);
  }

  void setType(AutoinstallType? type) {
    if (type == null) return;
    state = state.copyWith(type: type);
  }

  Future<void> restart() async {
    await _service.restartSubiquity();
    ref.read(restartProvider.notifier).state++;
    ref.invalidate(loadingProvider);
  }

  Future<String> getFileContent() => _service.getFileContent();
}

class AutoinstallDirectModel extends SafeChangeNotifier {
  AutoinstallDirectModel(
    this._autoinstallService, {
    @visibleForTesting FileSystem? fs,
    @visibleForTesting HttpClient? httpClient,
  })  : _fs = fs ?? const LocalFileSystem(),
        _httpClient = httpClient ?? HttpClient() {
    Listenable.merge([_url, _state]).addListener(notifyListeners);
  }

  final AutoinstallService _autoinstallService;
  final FileSystem _fs;
  final HttpClient _httpClient;

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

  Future<void> fetch() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await _fetch();
    });
  }
}

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaml/yaml.dart';

part 'autoinstall_direct_model.freezed.dart';
part 'autoinstall_direct_model.g.dart';

final _log = Logger('autoinstall_model');

@freezed
abstract class AutoinstallDirectState with _$AutoinstallDirectState {
  factory AutoinstallDirectState({
    @Default('') String url,
    Uri? localPath,
    @Default(false) bool isLoading,
    AutoinstallDirectError? error,
  }) = _AutoinstallDirectState;
}

@freezed
sealed class AutoinstallDirectError with _$AutoinstallDirectError {
  factory AutoinstallDirectError.network() = AutoinstallDirectErrorNetwork;
  factory AutoinstallDirectError.invalidUrl() =
      AutoinstallDirectErrorInvalidUrl;
  factory AutoinstallDirectError.invalidContent() =
      AutoinstallDirectErrorInvalidContent;
  factory AutoinstallDirectError.fileSystem() =
      AutoinstallDirectErrorFileSystem;
  factory AutoinstallDirectError.unknown({required String rawError}) =
      AutoinstallDirectErrorUnknown;

  factory AutoinstallDirectError.from(Object? e) => switch (e) {
        FileSystemException _ => AutoinstallDirectError.fileSystem(),
        YamlException _ => AutoinstallDirectError.invalidContent(),
        FormatException _ => AutoinstallDirectError.invalidUrl(),
        SocketException _ => AutoinstallDirectError.network(),
        final e => AutoinstallDirectError.unknown(rawError: e.toString()),
      };

  AutoinstallDirectError._();

  String body(UbuntuBootstrapLocalizations l10n) => switch (this) {
        AutoinstallDirectErrorNetwork() =>
          l10n.autoinstallDirectErrorNetworkBody,
        AutoinstallDirectErrorInvalidUrl() =>
          l10n.autoinstallDirectErrorInvalidUrlBody,
        AutoinstallDirectErrorInvalidContent() =>
          l10n.autoinstallDirectErrorInvalidContentBody,
        AutoinstallDirectErrorFileSystem() =>
          l10n.autoinstallDirectErrorFileSystemBody,
        AutoinstallDirectErrorUnknown(rawError: final rawError) => rawError,
      };

  String title(UbuntuBootstrapLocalizations l10n) => switch (this) {
        AutoinstallDirectErrorNetwork() =>
          l10n.autoinstallDirectErrorNetworkTitle,
        AutoinstallDirectErrorInvalidUrl() =>
          l10n.autoinstallDirectErrorInvalidUrlTitle,
        AutoinstallDirectErrorInvalidContent() =>
          l10n.autoinstallDirectErrorInvalidContentTitle,
        AutoinstallDirectErrorFileSystem() =>
          l10n.autoinstallDirectErrorFileSystemTitle,
        AutoinstallDirectErrorUnknown() =>
          l10n.autoinstallDirectErrorUnkownTitle,
      };
}

@riverpod
class AutoinstallDirectModel extends _$AutoinstallDirectModel {
  @override
  AutoinstallDirectState build() => AutoinstallDirectState();

  void setUrl(String? url) {
    if (url == null) return;
    state = state.copyWith(url: url, localPath: null, error: null);
  }

  void setLocalPath(Uri? localPath) {
    state = state.copyWith(localPath: localPath, url: '', error: null);
  }

  void setError(Exception e) {
    state = state.copyWith(
      error: AutoinstallDirectError.from(e),
      isLoading: false,
    );
  }

  /// Returns true on success, which indicates that we can restart subiquity and the UI
  Future<bool> fetchAndWrite() async {
    if (state.error != null) return false;

    state = state.copyWith(isLoading: true);

    try {
      final url =
          state.localPath != null ? state.localPath! : Uri.parse(state.url);
      await getService<AutoinstallService>().fetchAndWriteFileFromUri(url);
    } on Exception catch (e) {
      _log.debug('Caught error during fetchAndWrite: $e');
      state = state.copyWith(
        error: AutoinstallDirectError.from(e),
        isLoading: false,
      );
      return false;
    }

    return true;
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:xdg_desktop_portal/xdg_desktop_portal.dart';

part 'autoinstall_direct_model.freezed.dart';
part 'autoinstall_direct_model.g.dart';

final _log = Logger('autoinstall_model');

@freezed
class AutoinstallDirectState with _$AutoinstallDirectState {
  factory AutoinstallDirectState({
    @Default('') String url,
    Uri? localPath,
    @Default(false) bool isLoading,
    Object? error,
  }) = _AutoinstallDirectState;
}

@riverpod
class AutoinstallDirectModel extends _$AutoinstallDirectModel {
  late final _portal = getService<XdgDesktopPortalClient>();

  @override
  AutoinstallDirectState build() => AutoinstallDirectState();

  void setUrl(String? url) {
    if (url == null) return;
    state = state.copyWith(url: url, localPath: null, error: null);
  }

  void setLocalPath(Uri localPath) {
    state = state.copyWith(localPath: localPath, url: '', error: null);
  }

  Future<void> pickLocalFile(String title, String filterName) async {
    try {
      final result = await _portal.fileChooser.openFile(
        title: title,
        filters: [
          XdgFileChooserFilter(
            filterName,
            [
              XdgFileChooserGlobPattern('*.yaml'),
              XdgFileChooserGlobPattern('*.yml'),
              XdgFileChooserMimeTypePattern('application/yaml'),
            ],
          ),
        ],
      ).first;
      final uri = Uri.parse(result.uris.first);
      setLocalPath(uri);
    } on Exception catch (e) {
      _log.debug('Caught error during pickLocalFile: $e');
      state = switch (e) {
        XdgPortalRequestCancelledException _ =>
          state.copyWith(localPath: null, isLoading: false),
        _ => state.copyWith(error: e, isLoading: false),
      };
    }
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
      state = state.copyWith(error: e, isLoading: false);
      return false;
    }

    return true;
  }
}

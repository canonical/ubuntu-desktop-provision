import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

part 'try_or_install_model.g.dart';

final _log = Logger('try_or_install');

/// The available options on the Try or Install page.
enum TryOrInstallOption {
  /// The user wants to try Ubuntu.
  tryUbuntu,

  /// The user wants to install Ubuntu.
  installUbuntu,
}

/// Implements the business logic of the try_or_install page.
///
/// The state is the currently selected option.
@Riverpod(keepAlive: true)
class TryOrInstallModel extends _$TryOrInstallModel {
  @override
  TryOrInstallOption build() => TryOrInstallOption.installUbuntu;

  /// Selects the given [option].
  void selectOption(TryOrInstallOption option) {
    if (state == option) return;
    state = option;
    _log.info('Selected ${option.name} option');
  }
}

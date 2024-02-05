import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

final _log = Logger('try_or_install');

final tryOrInstallModelProvider = ChangeNotifierProvider(
  (_) => TryOrInstallModel(
    network: getService<NetworkService>(),
  ),
);

/// The available options on the Try or Install page.
enum TryOrInstallOption {
  /// No option is selected.
  none,

  /// The user wants to repair Ubuntu.
  repairUbuntu,

  /// The user wants to try Ubuntu.
  tryUbuntu,

  /// The user wants to install Ubuntu.
  installUbuntu,
}

/// Implements the business logic of the try_or_install page.
class TryOrInstallModel extends SafeChangeNotifier with PropertyStreamNotifier {
  /// Creates the model with the given client.
  TryOrInstallModel({
    required NetworkService network,
  }) : _network = network {
    addPropertyListener('Connectivity', notifyListeners);
  }

  final NetworkService _network;

  Future<void> init() {
    return _network
        .connect()
        .then((_) => setProperties(_network.propertiesChanged))
        .then((_) => notifyListeners());
  }

  /// The currently selected option.
  TryOrInstallOption get option => _option;
  TryOrInstallOption _option = TryOrInstallOption.none;

  /// Selects the given [option].
  void selectOption(TryOrInstallOption option) {
    if (_option == option) return;
    _option = option;
    _log.info('Selected ${option.name} option');
    notifyListeners();
  }

  /// Returns true if there is a network connection.
  bool get isConnected => _network.isConnected;
}

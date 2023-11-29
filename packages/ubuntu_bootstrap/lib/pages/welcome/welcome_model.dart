import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

final _log = Logger('welcome');

final welcomeModelProvider = ChangeNotifierProvider(
  (_) => WelcomeModel(
    network: getService<NetworkService>(),
    product: getService<ProductService>(),
  ),
);

/// The available options on the welcome page.
enum Option {
  /// No option is selected.
  none,

  /// The user wants to repair Ubuntu.
  repairUbuntu,

  /// The user wants to try Ubuntu.
  welcomeTryOption,

  /// The user wants to install Ubuntu.
  welcomeInstallOption,
}

/// Implements the business logic of the welcome page.
class WelcomeModel extends SafeChangeNotifier with PropertyStreamNotifier {
  /// Creates the model with the given client.
  WelcomeModel({
    required NetworkService network,
    required ProductService product,
  })  : _network = network,
        _product = product {
    addPropertyListener('Connectivity', notifyListeners);
  }

  final NetworkService _network;
  final ProductService _product;

  Future<void> init() {
    return _network
        .connect()
        .then((_) => setProperties(_network.propertiesChanged))
        .then((_) => notifyListeners());
  }

  /// The currently selected option.
  Option get option => _option;
  Option _option = Option.none;

  /// Selects the given [option].
  void selectOption(Option option) {
    if (_option == option) return;
    _option = option;
    _log.info('Selected ${option.name} option');
    notifyListeners();
  }

  /// Returns true if there is a network connection.
  bool get isConnected => _network.isConnected;

  /// Returns the URL of the release notes for the given [locale].
  String releaseNotesURL(Locale locale) {
    return _product.getReleaseNotesURL(locale.languageCode);
  }
}

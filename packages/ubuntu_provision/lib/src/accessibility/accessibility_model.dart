import 'dart:collection';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

final _log = Logger('accessibility');

final accessibilityModelProvider = ChangeNotifierProvider(
  (_) => AccessibilityModel(
    product: getService<ProductService>(),
  ),
);

/// Implements the business logic of the accessibility page.
class AccessibilityModel extends SafeChangeNotifier
    with PropertyStreamNotifier {
  /// Creates the model with the given client.
  AccessibilityModel({required this.product}) {
    addPropertyListener('Connectivity', notifyListeners);
  }

  final List<AccessibilityOption> _activeOptions = [];
  UnmodifiableListView<AccessibilityOption> get activeOptions =>
      UnmodifiableListView(_activeOptions);

  final ProductService product;

  String get distroName => product.getProductInfo().name;

  /// Toggles the given [option] and notifies listeners.
  void toggleOption(AccessibilityOption option) {
    if (_activeOptions.contains(option)) {
      _activeOptions.remove(option);
      _log.info('Disabled $option');
    } else {
      _activeOptions.add(option);
      _log.info('Enabled $option');
    }
    notifyListeners();
  }
}

/// The available accessibility options that can be activated.
enum AccessibilityOption {
  // Seeing
  highContrast,
  largeText,
  reduceAnimation,
  screenReader,
  // Hearing
  visualAlerts,
}

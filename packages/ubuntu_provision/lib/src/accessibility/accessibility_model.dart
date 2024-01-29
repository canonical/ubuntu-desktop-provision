import 'dart:collection';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

final _log = Logger('accessibility');

final accessibilityModelProvider = ChangeNotifierProvider(
  (_) => AccessibilityModel(),
);

/// Implements the business logic of the accessibility page.
class AccessibilityModel extends SafeChangeNotifier
    with PropertyStreamNotifier {
  final List<AccessibilityOption> _activeOptions = [];
  UnmodifiableListView<AccessibilityOption> get activeOptions =>
      UnmodifiableListView(_activeOptions);

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

import 'dart:collection';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

final _log = Logger('accessibility');

final accessibilityModelProvider = ChangeNotifierProvider(
  (_) => AccessibilityModel(getService<AccessibilityService>()),
);

/// Implements the business logic of the accessibility page.
class AccessibilityModel extends SafeChangeNotifier
    with PropertyStreamNotifier {
  AccessibilityModel(this._service);

  final AccessibilityService _service;

  final List<AccessibilityOption> _activeOptions = [];
  UnmodifiableListView<AccessibilityOption> get activeOptions =>
      UnmodifiableListView(_activeOptions);

  Future<bool> init() async {
    final isSupported = await _service.isSupported();
    if (!isSupported) {
      return false;
    }

    for (final option in AccessibilityOption.values) {
      final currentValue = await _service.getOption(option);
      if (currentValue) {
        _activeOptions.add(option);
      }
    }
    return true;
  }

  /// Toggles the given [option] and notifies listeners.
  void toggleOption(AccessibilityOption option) {
    if (_activeOptions.contains(option)) {
      _activeOptions.remove(option);
      _service.setOption(option, false);
      _log.info('Disabled $option');
    } else {
      _activeOptions.add(option);
      _service.setOption(option, true);
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
  // Typing
  stickyKeys,
  slowKeys,
  // Pointer
  mouseKeys,
  // Zoom
  desktopZoom,
}

extension on AccessibilityService {
  Future<void> setOption(AccessibilityOption option, bool value) =>
      switch (option) {
        AccessibilityOption.highContrast => setHighContrast(value),
        AccessibilityOption.largeText => setLargeText(value),
        AccessibilityOption.reduceAnimation => setReduceAnimation(value),
        AccessibilityOption.screenReader => setScreenReader(value),
        AccessibilityOption.visualAlerts => setVisualAlerts(value),
        AccessibilityOption.stickyKeys => setStickyKeys(value),
        AccessibilityOption.slowKeys => setSlowKeys(value),
        AccessibilityOption.mouseKeys => setMouseKeys(value),
        AccessibilityOption.desktopZoom => setDesktopZoom(value),
      };
  Future<bool> getOption(AccessibilityOption option) => switch (option) {
        AccessibilityOption.highContrast => getHighContrast(),
        AccessibilityOption.largeText => getLargeText(),
        AccessibilityOption.reduceAnimation => getReduceAnimation(),
        AccessibilityOption.screenReader => getScreenReader(),
        AccessibilityOption.visualAlerts => getVisualAlerts(),
        AccessibilityOption.stickyKeys => getStickyKeys(),
        AccessibilityOption.slowKeys => getSlowKeys(),
        AccessibilityOption.mouseKeys => getMouseKeys(),
        AccessibilityOption.desktopZoom => getDesktopZoom(),
      };
}

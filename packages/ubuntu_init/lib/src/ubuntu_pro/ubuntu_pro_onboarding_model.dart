import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ubuntuProOnboardingModelProvider =
    ChangeNotifierProvider((ref) => UbuntuProOnBoardingModel());

// Enum between UbuntuProOnboardingPage and UbuntuProOnboardingModel
enum UbuntuProOnboardingPageSelection {
  // Skip the onboarding.
  // Default when no selection is made.
  skipForNow,

  // Enable Ubuntu Pro.
  // Go the Ubuntu Pro attach process page.
  enableUbuntuPro,
}

class UbuntuProOnBoardingModel extends ChangeNotifier {
  UbuntuProOnboardingPageSelection get selection => _selection;
  UbuntuProOnboardingPageSelection _selection =
      UbuntuProOnboardingPageSelection.skipForNow;

  set selection(UbuntuProOnboardingPageSelection? selection) {
    if (_selection == selection) return;
    _selection = selection!;
    notifyListeners();
  }

  Future<bool> init() async => true;
}

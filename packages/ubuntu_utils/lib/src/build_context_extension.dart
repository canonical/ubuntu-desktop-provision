import 'package:flutter/widgets.dart';

extension DarkMode on BuildContext {
  bool get isDarkMode {
    final brightness = MediaQuery.platformBrightnessOf(this);
    return brightness == Brightness.dark;
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yaru/yaru.dart';

class YaruThemeVariant extends ValueVariant<ThemeData> {
  YaruThemeVariant()
      : super(_resolveThemes(Platform.environment['SCREENSHOT_THEME']));

  String get currentName => describeValue(currentValue!);

  @override
  String describeValue(ThemeData value) {
    if (identical(value, yaruLight)) {
      return 'light';
    } else if (identical(value, yaruDark)) {
      return 'dark';
    } else if (identical(value, yaruHighContrastLight)) {
      return 'high-contrast-light';
    } else if (identical(value, yaruHighContrastDark)) {
      return 'high-contrast-dark';
    } else {
      return 'unknown';
    }
  }

  static Set<ThemeData> _resolveThemes(String? name) {
    switch (name) {
      case 'dark':
        return {yaruDark};
      case 'high-contrast-light':
        return {yaruHighContrastLight};
      case 'high-contrast-dark':
        return {yaruHighContrastDark};
      case 'all':
        return {
          yaruLight,
          yaruDark,
          yaruHighContrastLight,
          yaruHighContrastDark,
        };
      default:
        return {yaruLight};
    }
  }
}

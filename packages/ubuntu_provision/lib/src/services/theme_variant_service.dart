import 'package:flutter/material.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaru/yaru.dart';

import '../../services.dart';

final _log = Logger('theme_variant');

class ThemeVariant {
  const ThemeVariant({
    this.theme,
    this.darkTheme,
    this.windowTitle,
  });

  final ThemeData? theme;
  final ThemeData? darkTheme;
  final String? windowTitle;
}

class ThemeVariantService {
  ThemeVariantService({ConfigService? config}) : _config = config;

  final ConfigService? _config;
  ThemeVariant? themeVariant;

  Future<(ThemeData?, ThemeData?)> _loadTheme() async {
    final accentColor = await _config?.getColor('accent-color');
    if (accentColor == null) {
      return (null, null);
    }

    final elevatedButtonColor =
        await _config?.getColor('elevated-button-color');
    final elevatedButtonTextColor =
        await _config?.getColor('elevated-button-text-color');

    final theme = createYaruLightTheme(
      primaryColor: accentColor,
      elevatedButtonColor: elevatedButtonColor,
      elevatedButtonTextColor: elevatedButtonTextColor,
    );
    final darkTheme = createYaruDarkTheme(
      primaryColor: accentColor,
      elevatedButtonColor: elevatedButtonColor,
      elevatedButtonTextColor: elevatedButtonTextColor,
    );
    return (theme, darkTheme);
  }

  Future<void> load() async {
    final (theme, darkTheme) = await _loadTheme();
    final windowTitle = await _config?.get<String>('window-title');

    themeVariant = ThemeVariant(
      theme: theme,
      darkTheme: darkTheme,
      windowTitle: windowTitle,
    );
  }
}

extension on ConfigService {
  Future<Color?> getColor(String name) async {
    final colorString = (await get<String>(name))?.replaceFirst(r'#', '');
    if (colorString == null) {
      return null;
    }
    final color = int.tryParse(colorString, radix: 16);
    if (color == null) {
      _log.error('could not parse color \'$colorString\' for $name');
      return null;
    }
    return Color(color).withOpacity(1);
  }
}

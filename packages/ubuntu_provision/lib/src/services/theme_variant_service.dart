import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:yaru/yaru.dart';

part 'theme_variant_service.freezed.dart';
part 'theme_variant_service.g.dart';

final _log = Logger('theme_variant');

@freezed
class ThemeConfig with _$ThemeConfig {
  const factory ThemeConfig({
    String? accentColor,
    String? elevatedButtonColor,
    String? elevatedButtonTextColor,
    String? windowTitle,
  }) = _ThemeConfig;
  factory ThemeConfig.fromJson(Map<String, dynamic> json) =>
      _$ThemeConfigFromJson(json);
}

class ThemeVariant {
  const ThemeVariant({
    this.theme,
    this.darkTheme,
    this.windowTitle,
  });

  factory ThemeVariant.fromThemeConfig(ThemeConfig themeConfig) {
    final accentColor = _parseColorString(themeConfig.accentColor);
    if (accentColor == null) {
      return ThemeVariant(windowTitle: themeConfig.windowTitle);
    }

    final elevatedButtonColor =
        _parseColorString(themeConfig.elevatedButtonColor);
    final elevatedButtonTextColor =
        _parseColorString(themeConfig.elevatedButtonTextColor);

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
    return ThemeVariant(
      theme: theme,
      darkTheme: darkTheme,
      windowTitle: themeConfig.windowTitle,
    );
  }

  final ThemeData? theme;
  final ThemeData? darkTheme;
  final String? windowTitle;

  static Color? _parseColorString(String? colorString) {
    if (colorString == null) {
      return null;
    }
    final color = int.tryParse(colorString.replaceFirst('#', ''), radix: 16);
    if (color == null) {
      _log.error('could not parse color \'$colorString\'');
      return null;
    }
    return Color(color).withOpacity(1);
  }
}

class ThemeVariantService {
  ThemeVariantService({ConfigService? config}) : _config = config;

  final ConfigService? _config;
  ThemeVariant? themeVariant;

  Future<void> load() async {
    final themeConfig = ThemeConfig.fromJson(
      await _config!.get<Map<String, dynamic>>('theme') ?? <String, dynamic>{},
    );
    themeVariant = ThemeVariant.fromThemeConfig(themeConfig);
  }
}

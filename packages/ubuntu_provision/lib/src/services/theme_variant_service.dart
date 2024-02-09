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
  }) = _ThemeConfig;
  factory ThemeConfig.fromJson(Map<String, dynamic> json) =>
      _$ThemeConfigFromJson(json);
}

class ThemeVariant {
  const ThemeVariant({
    this.theme,
    this.darkTheme,
  });

  factory ThemeVariant.fromThemeConfig({
    required ThemeConfig lightThemeConfig,
    ThemeConfig? darkThemeconfig,
  }) {
    final lightAccentColor = _parseColorString(lightThemeConfig.accentColor);
    if (lightAccentColor == null) {
      return const ThemeVariant();
    }

    final lightElevatedButtonColor =
        _parseColorString(lightThemeConfig.elevatedButtonColor);
    final lightElevatedButtonTextColor =
        _parseColorString(lightThemeConfig.elevatedButtonTextColor);

    final theme = createYaruLightTheme(
      primaryColor: lightAccentColor,
      elevatedButtonColor: lightElevatedButtonColor,
      elevatedButtonTextColor: lightElevatedButtonTextColor,
    );

    final darkAccentColor =
        _parseColorString(darkThemeconfig?.accentColor) ?? lightAccentColor;

    final darkElevatedButtonColor =
        _parseColorString(darkThemeconfig?.elevatedButtonColor) ??
            lightElevatedButtonColor;
    final darkElevatedButtonTextColor =
        _parseColorString(darkThemeconfig?.elevatedButtonTextColor) ??
            lightElevatedButtonTextColor;

    final darkTheme = createYaruDarkTheme(
      primaryColor: darkAccentColor,
      elevatedButtonColor: darkElevatedButtonColor,
      elevatedButtonTextColor: darkElevatedButtonTextColor,
    );

    return ThemeVariant(
      theme: theme,
      darkTheme: darkTheme,
    );
  }

  final ThemeData? theme;
  final ThemeData? darkTheme;

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
    final lightThemeConfig = ThemeConfig.fromJson(
      await _config!
              .get<Map<String, dynamic>>('light', scopeOverride: 'theme') ??
          <String, dynamic>{},
    );
    final darkThemeConfig = ThemeConfig.fromJson(
      await _config!
              .get<Map<String, dynamic>>('dark', scopeOverride: 'theme') ??
          <String, dynamic>{},
    );
    themeVariant = ThemeVariant.fromThemeConfig(
      lightThemeConfig: lightThemeConfig,
      darkThemeconfig: darkThemeConfig,
    );
  }
}

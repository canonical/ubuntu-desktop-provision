import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/theme_variant.dart';

import '../test_utils.dart';

void main() {
  test('getThemeVariant', () async {
    final config = {
      'accent-color': '#ff0000',
      'elevated-button-color': '#00ff00',
      'elevated-button-text-color': '#0000ff',
    };
    final service =
        ThemeVariantService(config: createMockConfigService(config: config));
    await service.load();
    final themeVariant = service.themeVariant;
    expect(themeVariant, isNotNull);
    expect(themeVariant!.theme?.primaryColor, equals(const Color(0xffff0000)));
    expect(themeVariant.theme?.elevatedButtonColor,
        equals(const Color(0xff00ff00)));
    expect(themeVariant.theme?.elevatedButtonTextColor,
        equals(const Color(0xff0000ff)));
    expect(
        themeVariant.darkTheme?.primaryColor, equals(const Color(0xffff0000)));
    expect(themeVariant.darkTheme?.elevatedButtonColor,
        equals(const Color(0xff00ff00)));
    expect(themeVariant.darkTheme?.elevatedButtonTextColor,
        equals(const Color(0xff0000ff)));
  });

  test('getThemeVariant with missing config', () async {
    final service = ThemeVariantService(config: createMockConfigService());
    await service.load();
    final variant = service.themeVariant;
    expect(variant, isNotNull);
    expect(variant!.theme, null);
    expect(variant.darkTheme, null);
  });
}

MockConfigService createMockConfigService({Map<String, dynamic>? config}) {
  final mock = MockConfigService();
  when(mock.get('theme'))
      .thenAnswer((_) async => config ?? <String, dynamic>{});
  return mock;
}

extension on ThemeData {
  Color? get elevatedButtonColor =>
      elevatedButtonTheme.style?.backgroundColor?.resolve({});
  Color? get elevatedButtonTextColor =>
      elevatedButtonTheme.style?.foregroundColor?.resolve({});
}

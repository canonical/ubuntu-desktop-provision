import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

void main() {
  test('normalizes the Swedish territory code', () {
    expect(normalizeLocale(const Locale('sv', 'SV')), const Locale('sv', 'SE'));
  });

  test('preserves other locales', () {
    const locale = Locale('fr', 'CA');
    expect(normalizeLocale(locale), locale);
  });
}

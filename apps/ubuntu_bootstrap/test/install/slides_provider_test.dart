import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:ubuntu_bootstrap/providers/slides_provider.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_provision/l10n.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('all default slides load in Swedish when Swedish is selected', () async {
    final originalLocale = Intl.defaultLocale;
    addTearDown(() => Intl.defaultLocale = originalLocale);
    final languages = await loadLocalizedLanguages(supportedLocales);
    final swedish = languages.singleWhere(
      (language) => language.locale.languageCode == 'sv',
    );
    await initDefaultLocale(swedish.locale.toString());

    final model = SlidesModel.internal(
      brightness: Brightness.light,
      flavor: UbuntuFlavor.ubuntu,
    );
    await model.preCache();

    expect(model.slides, hasLength(9));
    expect(model.slides.map((slide) => slide.locale), everyElement('sv_SE'));
    expect(model.slides.last.data, contains('Hjälp och support'));
  });
}

import 'dart:io';
import 'dart:ui';

import 'package:diacritic/diacritic.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_provision/src/locale/locale_model.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

import 'test_locale.dart';

void main() {
  test('load languages', () async {
    final locale = MockLocaleService();
    when(locale.getLocale()).thenAnswer((_) async => 'en_US.UTF-8');
    final sound = MockSoundService();

    final model = LocaleModel(locale: locale, sound: sound);

    await model.init(Directory.systemTemp.path);
    expect(model.languageCount, greaterThan(1));
    expect(model.selectedIndex, isPositive);

    final selected = model.locale(model.selectedIndex);
    expect(selected.languageCode, 'en');
    expect(selected.countryCode, 'US');
  });

  test('sort languages', () async {
    final locale = MockLocaleService();
    when(locale.getLocale()).thenAnswer((_) async => 'en_US.UTF-8');
    final sound = MockSoundService();

    final model = LocaleModel(locale: locale, sound: sound);
    await model.init(Directory.systemTemp.path);

    final languages = List.generate(model.languageCount, model.language);
    expect(languages.length, greaterThan(1));

    final sortedLanguages = List.of(languages)
      ..sort((a, b) => removeDiacritics(a).compareTo(removeDiacritics(b)));
    expect(languages, equals(sortedLanguages));
  });

  test('select locale', () async {
    final locale = MockLocaleService();
    when(locale.getLocale()).thenAnswer((_) async => 'en_US.UTF-8');
    final sound = MockSoundService();

    final tempDir = Directory.systemTemp;

    final model = LocaleModel(locale: locale, sound: sound);
    await model.init(tempDir.path);
    expect(model.languageCount, greaterThan(1));
    expect(model.selectedIndex, isPositive);

    // falls back to the base locale (en_US)
    await model.selectLocale(const Locale('foo'), tempDir.path);
    expect(model.locale(model.selectedIndex), equals(const Locale('en', 'US')));

    final firstLocale = model.locale(0);
    final lastLocale = model.locale(model.languageCount - 1);
    expect(firstLocale, isNot(equals(lastLocale)));

    await model.selectLocale(
      Locale.fromSubtags(
        languageCode: lastLocale.languageCode,
        countryCode: lastLocale.countryCode,
        scriptCode: 'bar',
      ),
      tempDir.path,
    );
    expect(model.selectedIndex, equals(model.languageCount - 1));
  });

  test('set locale', () {
    final locale = MockLocaleService();
    when(locale.setLocale('fr_CA.UTF-8')).thenAnswer((_) async {});
    final sound = MockSoundService();

    final model = LocaleModel(locale: locale, sound: sound);
    model.applyLocale(const Locale('fr', 'CA'));
    verify(locale.setLocale('fr_CA.UTF-8')).called(1);
  });

  test('selected language', () async {
    final locale = MockLocaleService();
    final sound = MockSoundService();

    final model = LocaleModel(locale: locale, sound: sound);
    final mockAccessibilityService = MockAccessibilityService();
    registerMockService<AccessibilityService>(mockAccessibilityService);
    when(mockAccessibilityService.getScreenReader()).thenAnswer((_) {
      return Future(() => false);
    });

    var wasNotified = false;
    model.addListener(() => wasNotified = true);

    final tempDir = Directory.systemTemp;
    final overrideFile = File(
      p.join(
        tempDir.path,
        '.config/systemd/user/orca.service.d/override.conf',
      ),
    );
    var doExist = await overrideFile.exists();
    if (doExist) {
      await overrideFile.delete();
      doExist = await overrideFile.exists();
    }
    expect(doExist, isFalse);

    expect(model.selectedIndex, isZero);
    await model.selectLanguage(0, tempDir.path);
    expect(model.selectedIndex, isZero);
    expect(wasNotified, isFalse);

    expect(await overrideFile.exists(), isFalse);

    await model.selectLanguage(1, tempDir.path);
    expect(model.selectedIndex, equals(1));
    expect(wasNotified, isTrue);
    expect(await overrideFile.exists(), isFalse);
  });

  test('search language', () async {
    final locale = MockLocaleService();
    when(locale.getLocale()).thenAnswer((_) async => 'en_US.UTF-8');
    final sound = MockSoundService();

    final tempDir = Directory.systemTemp;
    final overrideFile = File(
      p.join(
        tempDir.path,
        '.config/systemd/user/orca.service.d/override.conf',
      ),
    );
    var doExist = await overrideFile.exists();
    if (doExist) {
      await overrideFile.delete();
      doExist = await overrideFile.exists();
    }
    expect(await overrideFile.exists(), isFalse);

    final model = LocaleModel(locale: locale, sound: sound);
    await model.init(tempDir.path);

    final english = model.searchLanguage('eng');
    expect(model.language(english), equals('English'));
    await model.selectLanguage(english, tempDir.path);
    expect(model.searchLanguage('eng'), english);

    expect(await overrideFile.exists(), isFalse);
    final contents = await overrideFile.readAsString();
    expect(contents, equals('[Service]\nEnvironment="LANG=en_US.UTF-8"\n'));
    await overrideFile.delete();

    // next language with the same prefix
    final spanish = model.searchLanguage('e');
    expect(model.language(spanish), equals('Español'));

    // case-insensitive
    final french = model.searchLanguage('FRA');
    expect(model.language(french), equals('Français'));
    await model.selectLanguage(french, tempDir.path);

    expect(await overrideFile.exists(), isTrue);
    await overrideFile.delete();

    // wrap around
    final danish = model.searchLanguage('d');
    expect(model.language(danish), equals('Dansk'));
    await model.selectLanguage(danish, tempDir.path);

    expect(await overrideFile.exists(), isTrue);
    await overrideFile.delete();

    // ignores diacritics
    final icelandic = model.searchLanguage('is');
    expect(model.language(icelandic), equals('Íslenska'));

    // no match
    expect(model.searchLanguage('foo'), isNegative);
    expect(model.searchLanguage('none'), isNegative);
  });

  test('play try_or_install sound', () async {
    final locale = MockLocaleService();
    final sound = MockSoundService();

    final model = LocaleModel(locale: locale, sound: sound);
    await model.playWelcomeSound();
    verify(sound.play('system-ready')).called(1);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_page.dart';
import 'package:ubuntu_bootstrap/services/storage_service.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_passphrase.dart';

void main() {
  Widget buildPage(PassphraseModel model) {
    final pageImages = PageImages.internal(
      MockPageConfigService(),
      MockThemeVariantService(),
    );
    return ProviderScope(
      overrides: [
        passphraseModelProvider.overrideWith((_) => model),
        pageImagesProvider.overrideWith((_) => pageImages),
      ],
      child: const PassphrasePage(),
    );
  }

  testWidgets('passphrase input', (tester) async {
    final model = buildPassphraseModel(passphrase: 'foo');
    await tester.pumpApp((_) => buildPage(model));

    final textField = find.textField('foo');
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'bar');
    verify(model.passphrase = 'bar').called(1);
  });

  testWidgets('passphrase confirmation', (tester) async {
    final model =
        buildPassphraseModel(passphrase: 'foo', confirmedPassphrase: 'foo');
    await tester.pumpApp((_) => buildPage(model));

    final textFields = find.textField('foo');
    expect(textFields, findsNWidgets(2));
    await tester.enterText(textFields.first, 'bar');
    verify(model.passphrase = 'bar').called(1);
    await tester.enterText(textFields.last, 'bar');
    verify(model.confirmedPassphrase = 'bar').called(1);
  });

  testWidgets('valid input', (tester) async {
    final model = buildPassphraseModel(isValid: true);
    await tester.pumpApp((_) => buildPage(model));

    expect(find.button(find.nextLabel), isEnabled);
  });

  testWidgets('invalid input', (tester) async {
    final model = buildPassphraseModel(isValid: false);
    await tester.pumpApp((_) => buildPage(model));

    expect(find.button(find.nextLabel), isDisabled);
  });

  testWidgets('show passphrase', (tester) async {
    final model = buildPassphraseModel(showPassphrase: false);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(PassphrasePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final showPassphraseButton = find.button(l10n.showSecurityKey);
    expect(showPassphraseButton, findsOneWidget);

    await tester.tap(showPassphraseButton);
    verify(model.showPassphrase = true).called(1);
  });

  testWidgets('save passphrase', (tester) async {
    final model = buildPassphraseModel(isValid: true);
    await tester.pumpApp((_) => buildPage(model));

    await tester.tapNext();
    verify(model.savePassphrase()).called(1);
  });

  testWidgets('PIN', (tester) async {
    final model = buildPassphraseModel(
      passphrase: '1234',
      passphraseType: PassphraseType.pin,
    );
    await tester.pumpApp((_) => buildPage(model));

    final textField = find.textField('1234');
    expect(textField, findsOneWidget);
    await tester.enterText(textField, '4b3kk21');
    verify(model.passphrase = '4321').called(1);
  });

  group('pin/passphrase entropy', () {
    for (final testCase in <({
      String name,
      PassphraseType passphraseType,
      Entropy? entropy,
      bool isTpm,
      String? Function(UbuntuBootstrapLocalizations) expectedString,
    })>[
      (
        name: 'insufficient passphrase',
        passphraseType: PassphraseType.passphrase,
        entropy: Entropy.belowMin,
        isTpm: true,
        expectedString: (l10n) => l10n.passphrasePagePassphraseEntropyBelowMin,
      ),
      (
        name: 'sufficient passphrase',
        passphraseType: PassphraseType.passphrase,
        entropy: Entropy.belowOptimal,
        isTpm: true,
        expectedString: (l10n) =>
            l10n.passphrasePagePassphraseEntropyBelowOptimal,
      ),
      (
        name: 'more than sufficient passphrase',
        passphraseType: PassphraseType.passphrase,
        entropy: Entropy.optimal,
        isTpm: true,
        expectedString: (l10n) => l10n.passphrasePagePassphraseEntropyOptimal
      ),
      (
        name: 'insufficient pin',
        passphraseType: PassphraseType.pin,
        entropy: Entropy.belowMin,
        isTpm: true,
        expectedString: (l10n) => l10n.passphrasePagePassphraseEntropyBelowMin,
      ),
      (
        name: 'sufficient pin',
        passphraseType: PassphraseType.pin,
        entropy: Entropy.belowOptimal,
        isTpm: true,
        expectedString: (l10n) => l10n.passphrasePagePassphraseEntropyOptimal,
      ),
      (
        name: 'more than sufficient pin',
        passphraseType: PassphraseType.pin,
        entropy: Entropy.optimal,
        isTpm: true,
        expectedString: (l10n) => l10n.passphrasePagePassphraseEntropyOptimal,
      ),
      (
        name: 'no tpm fde',
        passphraseType: PassphraseType.passphrase,
        entropy: null,
        isTpm: false,
        expectedString: (_) => null,
      ),
    ]) {
      testWidgets(testCase.name, (tester) async {
        final model = buildPassphraseModel(
          passphrase: '12345',
          entropy: testCase.entropy,
          isTpm: testCase.isTpm,
        );
        await tester.pumpApp((_) => buildPage(model));

        if (testCase.expectedString(tester.lang) != null) {
          expect(
            find.text(testCase.expectedString(tester.lang)!),
            findsOneWidget,
          );
        }
      });
    }
  });
}

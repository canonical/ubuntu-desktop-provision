import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_page.dart';
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

  testWidgets('can skip', (tester) async {
    final model = buildPassphraseModel(isTpm: true);
    await tester.pumpApp((_) => buildPage(model));

    expect(find.button(find.ul10n((l10n) => l10n.skipLabel)), isEnabled);
    expect(find.button(find.nextLabel), findsNothing);
  });

  testWidgets('tpm can not skip', (tester) async {
    final model =
        buildPassphraseModel(isTpm: true, isValid: false, passphrase: 'foo');
    await tester.pumpApp((_) => buildPage(model));

    expect(find.button(find.ul10n((l10n) => l10n.skipLabel)), findsNothing);
    expect(find.button(find.nextLabel), isDisabled);
  });

  testWidgets('luks can not skip', (tester) async {
    final model = buildPassphraseModel(isTpm: false, isValid: false);
    await tester.pumpApp((_) => buildPage(model));

    expect(find.button(find.ul10n((l10n) => l10n.skipLabel)), findsNothing);
    expect(find.button(find.nextLabel), isDisabled);
  });
}

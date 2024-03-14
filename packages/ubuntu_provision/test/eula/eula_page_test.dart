import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_provision/eula.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

import '../test_utils.dart';

void main() {
  testWidgets('find EULA title', (tester) async {
    final pageImages = PageImages(MockPageConfigService());
    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [
          pageImagesProvider.overrideWithValue(pageImages),
        ],
        child: const EULAPage(),
      ),
    );

    final eulaCheckboxFinder = find.byType(CheckboxListTile);
    expect(eulaCheckboxFinder, findsOneWidget);

    final eulaCheckbox = tester.widget(eulaCheckboxFinder) as CheckboxListTile;
    expect(eulaCheckbox.value, false);

    final nextButtonFinder = find.byType(NextWizardButton);
    expect(nextButtonFinder, findsOneWidget);

    final nextButton = tester.widget(nextButtonFinder) as NextWizardButton;
    expect(nextButton.enabled, false);

    await tester.tap(eulaCheckboxFinder);
    await tester.pumpAndSettle();

    final eulaCheckboxPostTap =
        tester.widget(eulaCheckboxFinder) as CheckboxListTile;
    expect(eulaCheckboxPostTap.value, true);

    final nextButtonPostTap =
        tester.widget(nextButtonFinder) as NextWizardButton;
    expect(nextButtonPostTap.enabled, true);
  });
}

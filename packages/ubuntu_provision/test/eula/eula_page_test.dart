import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_provision/eula.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_test/yaru_test.dart';

import '../test_utils.dart';

void main() {
  testWidgets('check EULA checkbox', (tester) async {
    final pageImages = PageImages.internal(
      MockPageConfigService(),
      MockThemeVariantService(),
    );
    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [
          pageImagesProvider.overrideWithValue(pageImages),
        ],
        child: const EULAPage(),
      ),
    );

    final nextButtonFinder = find.byType(NextWizardButton);
    expect(nextButtonFinder, findsOneWidget);

    final nextButton = tester.widget(nextButtonFinder) as NextWizardButton;
    expect(nextButton.enabled, false);

    final eulaPage = find.byType(EULAPage);
    final l10n = EULALocalizations.of(tester.element(eulaPage));
    final checkbox = find.checkButton(l10n.eulaAcceptTerms);
    expect(checkbox, findsOneWidget);
    expect(checkbox, isNotChecked);
    await tester.tap(checkbox);
    await tester.pumpAndSettle();
    expect(checkbox, isChecked);

    final nextButtonPostTap =
        tester.widget(nextButtonFinder) as NextWizardButton;
    expect(nextButtonPostTap.enabled, true);
  });
}

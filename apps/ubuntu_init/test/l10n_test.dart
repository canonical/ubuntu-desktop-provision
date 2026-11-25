import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:ubuntu_init/l10n.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

void main() {
  testWidgets('material_ui localizations support all init locales',
      (tester) async {
    await tester.pumpWidget(
      WizardApp(
        localizationsDelegates: GlobalUbuntuInitLocalizations.delegates,
        supportedLocales: supportedLocales,
        home: const SizedBox.shrink(),
      ),
    );
    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    final delegates = app.localizationsDelegates!;

    final unsupported = supportedLocales.where(
      (locale) => !delegates.any(
        (delegate) =>
            delegate.type == MaterialLocalizations &&
            delegate.isSupported(locale),
      ),
    );
    expect(unsupported, isEmpty);
  });
}

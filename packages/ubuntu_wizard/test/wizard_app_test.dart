import 'package:flutter/material.dart' as legacy_material;
import 'package:flutter_localizations/flutter_localizations.dart'
    as legacy_localizations;
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

void main() {
  testWidgets('app structure', (tester) async {
    await tester.pumpWidget(
      const WizardApp(
        localizationsDelegates: UbuntuLocalizations.localizationsDelegates,
        supportedLocales: UbuntuLocalizations.supportedLocales,
        home: Text('home'),
      ),
    );

    expect(find.byType(YaruTheme), findsOneWidget);
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(YaruWindowTitleBar), findsOneWidget);
  });

  testWidgets(
    'resolves locale before selecting legacy localization delegates',
    (tester) async {
      await tester.pumpWidget(
        WizardApp(
          locale: const Locale('zz'),
          localizationsDelegates: [
            ...GlobalUbuntuLocalizations.delegates,
            ...legacy_localizations.GlobalMaterialLocalizations.delegates,
          ],
          supportedLocales: const [Locale('en')],
          home: const Text('home'),
        ),
      );

      final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
      final delegates = app.localizationsDelegates!;
      expect(app.locale, const Locale('en'));
      expect(
        delegates.any(
          (delegate) =>
              delegate.type ==
              legacy_localizations.GlobalMaterialLocalizations.delegate.type,
        ),
        isTrue,
      );
    },
  );

  testWidgets(
    'keeps widgets localization when legacy material is unsupported',
    (tester) async {
      legacy_material.MaterialLocalizations? legacyLocalizations;
      await tester.pumpWidget(
        WizardApp(
          locale: const Locale('dz'),
          localizationsDelegates: [
            ...GlobalUbuntuLocalizations.delegates,
            ...legacy_localizations.GlobalMaterialLocalizations.delegates,
          ],
          supportedLocales: const [Locale('dz')],
          home: Builder(
            builder: (context) {
              legacyLocalizations = legacy_material.MaterialLocalizations.of(
                context,
              );
              return const Text('home');
            },
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);

      final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
      final delegates = app.localizationsDelegates!;
      expect(
        delegates.any(
          (delegate) =>
              delegate.type ==
              legacy_localizations.GlobalMaterialLocalizations.delegate.type,
        ),
        isFalse,
      );
      expect(
        delegates.any(
          (delegate) =>
              delegate.type ==
              legacy_localizations.GlobalWidgetsLocalizations.delegate.type,
        ),
        isTrue,
      );
      expect(
        delegates.any(
          (delegate) =>
              delegate.type == MaterialLocalizations &&
              delegate.isSupported(const Locale('dz')),
        ),
        isTrue,
      );
      expect(legacyLocalizations?.backButtonTooltip, 'Back');
    },
  );
}

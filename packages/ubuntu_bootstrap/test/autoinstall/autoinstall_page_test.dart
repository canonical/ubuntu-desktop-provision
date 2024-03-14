import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/l10n/ubuntu_bootstrap_localizations.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_page.dart';
import 'package:ubuntu_bootstrap/widgets.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

import '../test_utils.dart';
import 'test_autoinstall.dart';

void main() {
  setUpAll(registerFlavorMock);

  testWidgets('interactive installation', (tester) async {
    final model = buildAutoinstallModel();
    await tester.pumpApp((_) => buildAutoinstallPage(model));

    final context = tester.element(find.byType(AutoinstallPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.optionButton(l10n.autoinstallInteractiveOption);
    expect(radio, findsOneWidget);

    expect(find.button(find.nextLabel), isEnabled);
  });

  testWidgets('automatic installation', (tester) async {
    final model = buildAutoinstallModel(url: 'url');
    await tester.pumpApp((_) => buildAutoinstallPage(model));

    final context = tester.element(find.byType(AutoinstallPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.optionButton(l10n.autoinstallAutomatedOption);
    expect(radio, findsOneWidget);

    await tester.tap(radio);
    await tester.pumpAndSettle();

    expect(find.button(find.nextLabel), findsNothing);

    final textField = find.textField('url');
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'http://example.com');
    verify(model.url = 'http://example.com').called(1);

    final validateButton = find.button(l10n.validate);
    await tester.scrollUntilVisible(
        validateButton, -kMinInteractiveDimension / 2,
        scrollable: find.byType(Scrollable).last);
    await tester.pump();
    expect(validateButton, findsOneWidget);
    await tester.tap(validateButton);
    verify(model.apply()).called(1);
  });
}

extension on CommonFinders {
  Finder optionButton(String text) {
    return widgetWithText(
      OptionButton<bool>,
      text,
    );
  }
}

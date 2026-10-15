import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/done/done_page.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_done.dart';

void main() {
  setUpAll(YaruTestWindow.ensureInitialized);

  testWidgets('buttons fit on compact displays', (tester) async {
    final model = buildDoneModel();
    await tester.pumpApp((_) => buildPage(model));

    tester.view.physicalSize = const Size(640, 480);
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);

    final context = tester.element(find.byType(DonePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final buttons = [
      find.button(l10n.continueTesting),
      find.button(l10n.restartNow),
    ];

    for (final button in buttons) {
      expect(button, findsOneWidget);
      expect(tester.getRect(button).bottom, lessThanOrEqualTo(480));
    }
  });

  testWidgets('restart', (tester) async {
    final model = buildDoneModel();
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(DonePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final restartButton = find.button(l10n.restartNow);
    expect(restartButton, findsOneWidget);

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.tap(restartButton);
    await tester.pump();
    verify(model.reboot()).called(1);

    await expectLater(windowClosed, completes);
  });

  testWidgets('continue testing', (tester) async {
    final model = buildDoneModel();
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(DonePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final continueButton = find.button(l10n.continueTesting);
    expect(continueButton, findsOneWidget);

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.tap(continueButton);
    await tester.pump();
    verifyNever(model.reboot());

    await expectLater(windowClosed, completes);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_test/yaru_test.dart';

extension UbuntuWizardTester on WidgetTester {
  Future<void> tapConfirm() {
    return tapButton(find.l10n<UbuntuBootstrapLocalizations>(
      (l10n) => l10n.confirmInstallButton,
    ));
  }

  Future<void> tapContinueTesting() {
    return tapButton(
      find.l10n<UbuntuBootstrapLocalizations>((l10n) => l10n.continueTesting),
    );
  }

  Future<void> tapSkip() {
    return tapButton(find.ul10n((l10n) => l10n.skipLabel));
  }

  Future<void> tapRestart() {
    return tapButton(find.ul10n((l10n) => l10n.restartLabel));
  }

  Future<void> tapRestartNow() {
    return tapButton(
      find.l10n<UbuntuBootstrapLocalizations>((l10n) => l10n.restartNow),
    );
  }

  Future<void> pumpUntilPage(Type page) async {
    await pumpUntil(find.byType(page));
    await pumpAndSettle();
  }

  Future<void> jumpToPage(String route) async {
    final context = element(find.byType(WizardPage));
    await Wizard.of(context).jump(route);
    await pumpUntil(find.byElementPredicate((element) {
      return Wizard.maybeOf(element)?.controller.currentRoute == route;
    }));
    await pumpAndSettle();
  }

  Future<void> takeScreenshot(String screenshot) async {
    // avoid blinking cursors to keep the screenshots deterministic
    primaryFocus?.unfocus();
    await pumpAndSettle();

    await expectLater(
      find.byType(WizardApp),
      matchesGoldenFile('screenshots/$screenshot.png'),
    );
  }
}

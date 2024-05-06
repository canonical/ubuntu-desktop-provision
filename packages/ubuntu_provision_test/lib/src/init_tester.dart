import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision_test/src/wizard_tester.dart';
import 'package:yaru_test/yaru_test.dart';

extension UbuntuInitPageTester on WidgetTester {
  Future<void> testWelcomeInitPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(WelcomePage);

    final context = element(find.byType(WelcomePage));
    final l10n = UbuntuInitLocalizations.of(context);

    expect(find.titleBar(l10n.welcomePageTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testTelemetryPage({
    bool? enabled,
    String? screenshot,
  }) async {
    await pumpUntilPage(TelemetryPage);

    final context = element(find.byType(TelemetryPage));
    final l10n = TelemetryLocalizations.of(context);

    expect(find.titleBar(l10n.telemetryPageTitle), findsOneWidget);

    if (enabled != null) {
      await tapRadio(enabled);
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testUbuntuProPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(UbuntuProPage);

    final context = element(find.byType(UbuntuProPage));
    final l10n = UbuntuProLocalizations.of(context);

    expect(find.titleBar(l10n.ubuntuProPageTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testUbunutuProOnboardingPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(UbuntuProOnboardingPage);

    final context = element(find.byType(UbuntuProOnboardingPage));
    final l10n = UbuntuProLocalizations.of(context);

    expect(find.titleBar(l10n.ubuntuProPageTitle), findsOneWidget);

    final tileFinder = find.byType(ProOnboardingSelectionTile);
    expect(tileFinder, findsExactly(2));

    await tap(tileFinder.first);

    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testUbuntuProSuccessAttachProPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(UbuntuProSuccessAttachPage);

    final context = element(find.byType(UbuntuProSuccessAttachPage));
    final l10n = UbuntuProLocalizations.of(context);

    expect(find.titleBar(l10n.ubuntuProPageTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }
}

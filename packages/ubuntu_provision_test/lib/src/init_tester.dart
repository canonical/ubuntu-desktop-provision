import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:yaru_test/yaru_test.dart';

import 'wizard_tester.dart';

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

  Future<void> testPrivacyPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(PrivacyPage);

    final context = element(find.byType(PrivacyPage));
    final l10n = PrivacyLocalizations.of(context);

    expect(find.titleBar(l10n.privacyPageTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testStorePage({
    String? screenshot,
  }) async {
    await pumpUntilPage(StorePage);

    final context = element(find.byType(StorePage));
    final l10n = StoreLocalizations.of(context);

    expect(find.titleBar(l10n.storeTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }
}

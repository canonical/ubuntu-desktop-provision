import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:yaru_test/yaru_test.dart';

import 'wizard_tester.dart';

extension UbuntuInitPageTester on WidgetTester {
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
}

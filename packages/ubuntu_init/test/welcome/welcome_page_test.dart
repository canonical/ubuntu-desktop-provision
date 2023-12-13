import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/welcome/welcome_l10n.dart';
import 'package:ubuntu_init/src/welcome/welcome_model.dart';
import 'package:ubuntu_init/src/welcome/welcome_page.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

import 'test_welcome.dart';

void main() {
  Widget buildPage(WelcomeModel model) {
    return ProviderScope(
      overrides: [
        welcomeModelProvider.overrideWith((_) => model),
      ],
      child: const WelcomePage(),
    );
  }

  testWidgets('view changelog', (tester) async {
    const testUrl = 'https://wiki.ubuntu.com/ManticMinotaur/ReleaseNotes';

    final urlLauncher = MockUrlLauncher();
    when(urlLauncher.launchUrl(testUrl)).thenAnswer((_) async => true);
    registerMockService<UrlLauncher>(urlLauncher);

    final model = buildWelcomeModel(releaseNotesUrl: testUrl);

    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(WelcomePage));
    final l10n = WelcomeLocalizations.of(context);

    await tester.tap(find.html(l10n.welcomeChangelogLabel(testUrl)));

    verify(urlLauncher.launchUrl(testUrl)).called(1);
  });
}

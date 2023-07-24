import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ubuntu_init/main.dart' as app;
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/ubuntu_provision_test.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(YaruTestWindow.ensureInitialized);

  setUp(() {
    if (Platform.environment['CI'] == null) {
      fail('This test should only be run in CI.');
    }
  });

  testWidgets('init', (tester) async {
    await tester.runApp(() => app.main([]));

    await tester.testLocalePage(language: 'Deutsch');
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testKeyboardPage(
      keyboard: const KeyboardSetting(layout: 'Englisch (Britisch)'),
    );
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.tapNext();

    const timezone = 'Europe/Berlin';
    await tester.testTimezonePage(timezone: timezone);
    await tester.tapNext();
    await tester.pumpAndSettle();

    const identity = Identity(
      realname: 'User',
      username: 'user',
      hostname: 'ubuntu',
    );
    await tester.testIdentityPage(
      identity: identity,
      password: 'password',
    );
    await tester.tapNext();
    await tester.pumpAndSettle();

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.testThemePage();
    await tester.tapDone();

    await expectLater(windowClosed, completes);

    await expectLocale('de_DE.UTF-8');
    await expectKeyboard(const KeyboardSetting(layout: 'gb'));
    await expectTimezone(timezone);
    await expectIdentity(identity);
  }, skip: Platform.environment['CI'] == null);
}

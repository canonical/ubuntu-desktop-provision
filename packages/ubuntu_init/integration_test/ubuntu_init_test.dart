import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/ubuntu_provision_test.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(YaruTestWindow.ensureInitialized);

  setUp(registerFakeInitServices);
  tearDown(() async {
    await resetAllServices();
    rootBundle.clear();
  });

  testWidgets('init', (tester) async {
    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.runApp(() => runInitApp([]));

    await tester.testWelcomeInitPage();
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testLocalePage(language: 'Deutsch');
    await tester.tapNext();
    await tester.pumpAndSettle();
    await expectLocale('de_DE.UTF-8');

    await tester.testKeyboardPage(layout: 'Englisch (Britisch)');
    await tester.tapNext();
    await tester.pumpAndSettle();
    await expectKeyboard(const KeyboardSetting(layout: 'gb'));

    await tester.testNetworkPage(mode: ConnectMode.none);
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
    await expectIdentity(identity);

    await tester.testUbuntuProPage();
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testPrivacyPage();
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testTimezonePage(timezone: 'Europe/Berlin');
    await tester.tapNext();
    await tester.pumpAndSettle();
    await expectTimezone('Europe/Berlin');

    await tester.testTelemetryPage(enabled: false);
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testThemePage(theme: Brightness.dark);
    await tester.tapDone();
    await expectTheme(Brightness.dark);
    await tester.pumpAndSettle();
    await expectLater(windowClosed, completes);
  });
}

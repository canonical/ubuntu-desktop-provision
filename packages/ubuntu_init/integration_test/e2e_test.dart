import 'dart:io';

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

  tearDown(() async {
    await resetAllServices();
    rootBundle.clear();
  });

  testWidgets('init wizard', (tester) async {
    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.runApp(() => runInitApp([]));

    await tester.testLocalePage(language: 'Deutsch');
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testKeyboardPage(layout: 'Englisch (Britisch)');
    await tester.tapNext();
    await tester.pumpAndSettle();

    await expectCommand('localectl', [], [
      contains('LANG=de_DE.UTF-8'),
      contains('X11 Layout: gb'),
    ]);

    // TODO: Test gsettings input-sources

    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.tapNext();
    await tester.pumpAndSettle();

    const identity = Identity(
      realname: 'Test User',
      username: 'testuser',
      hostname: 'testhost',
    );
    await tester.testIdentityPage(
      identity: identity,
      password: 'password',
    );
    await tester.tapNext();
    await tester.pumpAndSettle();

    await expectCommand('getent', [
      'passwd',
      identity.username,
    ], [
      contains('${identity.username}:x:'),
      contains(identity.realname),
    ]);
    await expectCommand('hostnamectl', [], [
      contains('Static hostname: ${identity.hostname}'),
    ]);
    await expectUser(identity, 'password');

    await tester.testUbuntuProPage();
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testPrivacyPage();
    await tester.tapNext();
    await tester.pumpAndSettle();
    // TODO: Test privacy settings

    await tester.testTimezonePage(timezone: 'Europe/Berlin');
    await tester.tapNext();
    await tester.pumpAndSettle();
    await expectCommand('timedatectl', [], [
      contains('Time zone: Europe/Berlin'),
    ]);

    await tester.testTelemetryPage(enabled: false);
    await tester.tapDone();
    await tester.pumpAndSettle();
    await expectLater(windowClosed, completes);
  });
}

Future<void> expectCommand(
  String command,
  List<String> args,
  List<Matcher> matchers,
) async {
  final result = await Process.run(command, args);
  for (final matcher in matchers) {
    expect(result.stdout, matcher);
  }
}

Future<void> expectUser(Identity identity, String password) async {
  final process = await Process.start(
    'su',
    [identity.username],
  );
  process.stdin.writeln(password);
  process.stdin.writeln('exit');
  expect(await process.exitCode, isZero);
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ubuntu_init/src/routes.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/ubuntu_provision_test.dart';
import 'package:ubuntu_test/ubuntu_test.dart';

Future<void> main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() => autoUpdateGoldenFiles = true);

  setUp(registerFakeInitServices);

  tearDown(rootBundle.clear);

  testWidgets('01.locale', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.locale);
    await tester.pumpAndSettle();

    await tester.testLocalePage(
      screenshot: '$currentThemeName/01.locale',
    );
  }, variant: themeVariant);

  testWidgets('02.keyboard', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.keyboard);
    await tester.pumpAndSettle();

    await tester.testKeyboardPage(
      screenshot: '$currentThemeName/02.keyboard',
    );
  }, variant: themeVariant);

  testWidgets('03.network', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.network);
    await tester.pumpAndSettle();

    await tester.testNetworkPage(
      mode: ConnectMode.none,
      screenshot: '$currentThemeName/03.network',
    );
  }, variant: themeVariant);

  testWidgets('04.timezone', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.timezone);
    await tester.pumpAndSettle();

    await tester.testTimezonePage(
      screenshot: '$currentThemeName/04.timezone',
    );
  }, variant: themeVariant);

  testWidgets('05.identity', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.identity);
    await tester.pumpAndSettle();

    await tester.testIdentityPage(
      identity: const Identity(
        realname: 'Ubuntu User',
        hostname: 'ubuntu',
        username: 'user',
      ),
      password: 'password',
      screenshot: '$currentThemeName/05.identity',
    );
  }, variant: themeVariant);

  testWidgets('06.theme', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.theme);
    await tester.pumpAndSettle();

    await tester.testThemePage(
      screenshot: '$currentThemeName/06.theme',
    );
  }, variant: themeVariant);

  testWidgets('07.welcome', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.testWelcomeInitPage(
      screenshot: '$currentThemeName/07.welcome',
    );
  }, variant: themeVariant);

  testWidgets('08.telemetry', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.telemetry);
    await tester.pumpAndSettle();

    await tester.testTelemetryPage(
      screenshot: '$currentThemeName/08.telemetry',
    );
  }, variant: themeVariant);

  testWidgets('09.privacy', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.privacy);
    await tester.pumpAndSettle();

    await tester.testPrivacyPage(
      screenshot: '$currentThemeName/09.privacy',
    );
  }, variant: themeVariant);

  testWidgets('12.ubuntu-pro', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.ubuntuPro);
    await tester.pumpAndSettle();

    await tester.testUbuntuProPage(
      screenshot: '$currentThemeName/10.ubuntu-pro',
    );
  }, variant: themeVariant);
}

ThemeData get currentTheme => themeVariant.currentValue!;
String get currentThemeName => themeVariant.currentName;

final themeVariant = YaruThemeVariant();

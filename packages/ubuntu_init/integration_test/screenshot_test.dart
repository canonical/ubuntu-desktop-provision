import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/ubuntu_provision_test.dart';
import 'package:ubuntu_test/ubuntu_test.dart';

Future<void> main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() => autoUpdateGoldenFiles = true);

  setUp(registerFakeInitServices);

  testWidgets('1.locale', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitRoutes.locale);
    await tester.pumpAndSettle();

    await tester.testLocalePage(
      screenshot: '$currentThemeName/1.locale',
    );
  }, variant: themeVariant);

  testWidgets('2.keyboard', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitRoutes.keyboard);
    await tester.pumpAndSettle();

    await tester.testKeyboardPage(
      screenshot: '$currentThemeName/2.keyboard',
    );
  }, variant: themeVariant);

  testWidgets('3.network', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitRoutes.network);
    await tester.pumpAndSettle();

    await tester.testNetworkPage(
      mode: ConnectMode.none,
      screenshot: '$currentThemeName/3.network',
    );
  }, variant: themeVariant);

  testWidgets('4.timezone', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitRoutes.timezone);
    await tester.pumpAndSettle();

    await tester.testTimezonePage(
      screenshot: '$currentThemeName/4.timezone',
    );
  }, variant: themeVariant);

  testWidgets('5.identity', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitRoutes.identity);
    await tester.pumpAndSettle();

    await tester.testIdentityPage(
      identity: const Identity(
        realname: 'Ubuntu User',
        hostname: 'ubuntu',
        username: 'user',
      ),
      password: 'password',
      screenshot: '$currentThemeName/5.identity',
    );
  }, variant: themeVariant);

  testWidgets('6.theme', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitRoutes.theme);
    await tester.pumpAndSettle();

    await tester.testThemePage(
      screenshot: '$currentThemeName/6.theme',
    );
  }, variant: themeVariant);

  testWidgets('7.welcome', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.testWelcomeInitPage(
      screenshot: '$currentThemeName/7.welcome',
    );
  }, variant: themeVariant);

  testWidgets('8.telemetry', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitRoutes.telemetry);
    await tester.pumpAndSettle();

    await tester.testTelemetryPage(
      screenshot: '$currentThemeName/8.telemetry',
    );
  }, variant: themeVariant);

  testWidgets('9.privacy', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitRoutes.privacy);
    await tester.pumpAndSettle();

    await tester.testPrivacyPage(
      screenshot: '$currentThemeName/9.privacy',
    );
  }, variant: themeVariant);

  testWidgets('10.store', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitRoutes.store);
    await tester.pumpAndSettle();

    await tester.testStorePage(
      screenshot: '$currentThemeName/10.store',
    );
  }, variant: themeVariant);
}

ThemeData get currentTheme => themeVariant.currentValue!;
String get currentThemeName => themeVariant.currentName;

final themeVariant = YaruThemeVariant();

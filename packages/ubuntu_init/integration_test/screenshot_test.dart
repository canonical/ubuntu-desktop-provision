import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ubuntu_init/src/init_step.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/ubuntu_provision_test.dart';
import 'package:ubuntu_test/ubuntu_test.dart';

Future<void> main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() => autoUpdateGoldenFiles = true);

  setUp(registerFakeInitServices);

  tearDown(rootBundle.clear);

  testWidgets('welcome', (tester) async {
    await tester.runApp(() => runInitApp(['--welcome'], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.testWelcomeInitPage(
      screenshot: '$currentThemeName/welcome',
    );
  }, variant: themeVariant);

  testWidgets('locale', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.testLocalePage(
      screenshot: '$currentThemeName/locale',
    );
  }, variant: themeVariant);

  testWidgets('accessibility', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.accessibility.route);
    await tester.pumpAndSettle();

    await tester.testAccessibilityPage(
      screenshot: '$currentThemeName/accessibility',
    );
  });

  testWidgets('keyboard', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.keyboard.route);
    await tester.pumpAndSettle();

    await tester.testKeyboardPage(
      screenshot: '$currentThemeName/keyboard',
    );
  }, variant: themeVariant);

  testWidgets('network', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.network.route);
    await tester.pumpAndSettle();

    await tester.testNetworkPage(
      mode: ConnectMode.none,
      screenshot: '$currentThemeName/network',
    );
  }, variant: themeVariant);

  testWidgets('eula', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.eula.route);
    await tester.pumpAndSettle();

    await tester.testEulaPage(
      screenshot: '$currentThemeName/eula',
    );
  }, variant: themeVariant);

  testWidgets('identity', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.identity.route);
    await tester.pumpAndSettle();

    await tester.testIdentityPage(
      identity: const Identity(
        realname: 'Ubuntu User',
        hostname: 'ubuntu',
        username: 'user',
      ),
      password: 'password',
      screenshot: '$currentThemeName/identity',
    );
  }, variant: themeVariant);

  testWidgets('ubuntu-pro-onboarding', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.ubuntuProOnboarding.route);
    await tester.pumpAndSettle();

    await tester.testUbunutuProOnboardingPage(
      screenshot: '$currentThemeName/ubuntu-pro-onboarding',
    );
  }, variant: themeVariant);

  testWidgets('ubuntu-pro', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.ubuntuProOnboarding.route);
    await tester.pumpAndSettle();

    final context = tester.element(find.byType(UbuntuProOnboardingPage));
    final l10n = UbuntuProLocalizations.of(context);

    final option = find.text(l10n.ubuntuProOnBoardingEnableUbuntuPro);
    await tester.tap(option);
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.ubuntuPro.route);
    await tester.pumpAndSettle();

    await tester.testUbuntuProPage(
      screenshot: '$currentThemeName/ubuntu-pro',
    );
  }, variant: themeVariant);

  testWidgets('ubuntu-pro-success', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.ubuntuProOnboarding.route);
    await tester.pumpAndSettle();

    final context = tester.element(find.byType(UbuntuProOnboardingPage));
    final l10n = UbuntuProLocalizations.of(context);

    final option = find.text(l10n.ubuntuProOnBoardingEnableUbuntuPro);
    await tester.tap(option);
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.ubuntuProSuccess.route);
    await tester.pumpAndSettle();

    await tester.testUbuntuProSuccessAttachProPage(
      screenshot: '$currentThemeName/ubuntu-pro-success',
    );
  }, variant: themeVariant);

  testWidgets('timezone', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.timezone.route);
    await tester.pumpAndSettle();

    await tester.testTimezonePage(
      screenshot: '$currentThemeName/timezone',
    );
  }, variant: themeVariant);

  testWidgets('telemetry', (tester) async {
    await tester.runApp(() => runInitApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InitStep.telemetry.route);
    await tester.pumpAndSettle();

    await tester.testTelemetryPage(
      screenshot: '$currentThemeName/telemetry',
    );
  }, variant: themeVariant);
}

ThemeData get currentTheme => themeVariant.currentValue!;
String get currentThemeName => themeVariant.currentName;

final themeVariant = YaruThemeVariant();

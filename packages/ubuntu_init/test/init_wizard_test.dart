import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/l10n.dart';
import 'package:ubuntu_init/src/init_model.dart';
import 'package:ubuntu_init/src/init_pages.dart';
import 'package:ubuntu_init/src/init_step.dart';
import 'package:ubuntu_init/src/init_wizard.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_test/yaru_test.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

// TODO: move to shared packages
import '../../ubuntu_provision/test/identity/test_identity.dart';
import '../../ubuntu_provision/test/keyboard/test_keyboard.dart';
import '../../ubuntu_provision/test/locale/test_locale.dart';
import '../../ubuntu_provision/test/network/test_network.dart';
import '../../ubuntu_provision/test/timezone/test_timezone.dart';
import 'privacy/test_privacy.dart';
import 'telemetry/test_telemetry.dart';
import 'welcome/test_welcome.dart';

void main() {
  LiveTestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    YaruTestWindow.ensureInitialized(state: const YaruWindowState());
    setupMockPageConfig();
  });

  testWidgets('init', (tester) async {
    final initModel = buildInitModel();
    final localeModel = buildLocaleModel();
    final keyboardModel = buildKeyboardModel();
    final networkModel = buildNetworkModel();
    final ethernetModel = buildEthernetModel();
    final wifiModel = buildWifiModel();
    final hiddenWifiModel = buildHiddenWifiModel();
    final timezoneModel = buildTimezoneModel();
    final identityModel = buildIdentityModel(isValid: true);
    final telemetryModel = buildTelemetryModel();
    final privacyModel = buildPrivacyModel();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          initModelProvider.overrideWith((_) => initModel),
          localeModelProvider.overrideWith((_) => localeModel),
          keyboardModelProvider.overrideWith((_) => keyboardModel),
          networkModelProvider.overrideWith((_) => networkModel),
          ethernetModelProvider.overrideWith((_) => ethernetModel),
          wifiModelProvider.overrideWith((_) => wifiModel),
          hiddenWifiModelProvider.overrideWith((_) => hiddenWifiModel),
          timezoneModelProvider.overrideWith((_) => timezoneModel),
          identityModelProvider.overrideWith((_) => identityModel),
          telemetryModelProvider.overrideWith((_) => telemetryModel),
          privacyModelProvider.overrideWith((_) => privacyModel),
        ],
        child: tester.buildTestWizard(),
      ),
    );

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.pump(const Duration(seconds: 1));

    await tester.pumpAndSettle();
    expect(find.byType(LocalePage), findsOneWidget);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(KeyboardPage), findsOneWidget);
    verify(keyboardModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(NetworkPage), findsOneWidget);
    verify(networkModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(IdentityPage), findsOneWidget);
    verify(identityModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(UbuntuProPage), findsOneWidget);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(PrivacyPage), findsOneWidget);
    verify(privacyModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpUntil(find.byType(TimezonePage));
    await tester.pumpAndSettle();
    expect(find.byType(TimezonePage), findsOneWidget);
    verify(timezoneModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(TelemetryPage), findsOneWidget);
    verify(telemetryModel.init()).called(1);

    await tester.tapDone();
    await tester.pumpAndSettle();

    await expectLater(windowClosed, completes);
  });

  testWidgets('welcome', (tester) async {
    final initModel = buildInitModel();
    final welcomeModel = buildWelcomeModel();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          initModelProvider.overrideWith((_) => initModel),
          welcomeModelProvider.overrideWith((_) => welcomeModel),
        ],
        child: tester.buildTestWizard(welcome: true),
      ),
    );

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.pump(const Duration(seconds: 1));

    await tester.pumpAndSettle();
    expect(find.byType(WelcomePage), findsOneWidget);

    await tester.tapDone();
    await tester.pumpAndSettle();

    await expectLater(windowClosed, completes);
  });

  testWidgets('pages', (tester) async {
    final initModel = buildInitModel(pages: [
      InitStep.locale.name,
      InitStep.keyboard.name,
      InitStep.identity.name,
      InitStep.telemetry.name,
    ]);
    final localeModel = buildLocaleModel();
    final keyboardModel = buildKeyboardModel();
    final identityModel = buildIdentityModel(isValid: true);
    final telemetryModel = buildTelemetryModel();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          initModelProvider.overrideWith((_) => initModel),
          localeModelProvider.overrideWith((_) => localeModel),
          keyboardModelProvider.overrideWith((_) => keyboardModel),
          identityModelProvider.overrideWith((_) => identityModel),
          telemetryModelProvider.overrideWith((_) => telemetryModel),
        ],
        child: tester.buildTestWizard(),
      ),
    );

    await tester.pump(const Duration(seconds: 1));

    await tester.pumpAndSettle();
    expect(find.byType(LocalePage), findsOneWidget);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(KeyboardPage), findsOneWidget);
    verify(keyboardModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(IdentityPage), findsOneWidget);
    verify(identityModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(TelemetryPage), findsOneWidget);
    verify(telemetryModel.init()).called(1);

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.tapDone();
    await tester.pumpAndSettle();

    await expectLater(windowClosed, completes);
  });

  group('error page', () {
    testWidgets('init wizard', (tester) async {
      final initModel = buildInitModel(pages: [InitStep.locale.name]);
      final localeModel = buildLocaleModel(error: Exception());

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            initModelProvider.overrideWith((_) => initModel),
            localeModelProvider.overrideWith((_) => localeModel),
          ],
          child: tester.buildTestWizard(),
        ),
      );
      await tester.pump(const Duration(seconds: 1));

      await tester.pumpAndSettle();
      expect(find.byType(LocalePage), findsNothing);
      expect(find.byType(ErrorPage), findsOneWidget);
    });

    testWidgets('welcome wizard', (tester) async {
      final initModel = buildInitModel(pages: [WelcomeStep.welcome.name]);
      final welcomeModel = buildWelcomeModel(error: Exception());

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            initModelProvider.overrideWith((_) => initModel),
            welcomeModelProvider.overrideWith((_) => welcomeModel),
          ],
          child: tester.buildTestWizard(welcome: true),
        ),
      );
      await tester.pump(const Duration(seconds: 1));

      await tester.pumpAndSettle();
      expect(find.byType(WelcomePage), findsNothing);
      expect(find.byType(ErrorPage), findsOneWidget);
    });
  });
}

extension on WidgetTester {
  Widget buildTestWizard({bool welcome = false}) {
    return WizardApp(
      localizationsDelegates: GlobalUbuntuInitLocalizations.delegates,
      supportedLocales: supportedLocales,
      home: DefaultAssetBundle(
        bundle: ProxyAssetBundle(rootBundle, package: 'ubuntu_init'),
        child: welcome ? const WelcomeWizard() : const InitWizard(),
      ),
    );
  }
}

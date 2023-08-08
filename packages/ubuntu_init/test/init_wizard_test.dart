import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/l10n.dart';
import 'package:ubuntu_init/src/init_model.dart';
import 'package:ubuntu_init/src/init_pages.dart';
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
import '../../ubuntu_provision/test/theme/test_theme.dart';
import '../../ubuntu_provision/test/timezone/test_timezone.dart';
import 'privacy/test_privacy.dart';
import 'store/test_store.dart';
import 'welcome/test_welcome.dart';

void main() {
  LiveTestWidgetsFlutterBinding.ensureInitialized();

  setUp(() => YaruTestWindow.ensureInitialized(state: const YaruWindowState()));

  testWidgets('init', (tester) async {
    final initModel = buildInitModel();
    final welcomeModel = buildWelcomeModel();
    final localeModel = buildLocaleModel();
    final keyboardModel = buildKeyboardModel();
    final networkModel = buildNetworkModel();
    final ethernetModel = buildEthernetModel();
    final wifiModel = buildWifiModel();
    final hiddenWifiModel = buildHiddenWifiModel();
    final timezoneModel = buildTimezoneModel();
    final identityModel = buildIdentityModel(isValid: true);
    final themeModel = buildThemeModel();
    final privacyModel = buildPrivacyModel();
    final storeModel = buildStoreModel();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          initModelProvider.overrideWith((_) => initModel),
          welcomeModelProvider.overrideWith((_) => welcomeModel),
          localeModelProvider.overrideWith((_) => localeModel),
          keyboardModelProvider.overrideWith((_) => keyboardModel),
          networkModelProvider.overrideWith((_) => networkModel),
          ethernetModelProvider.overrideWith((_) => ethernetModel),
          wifiModelProvider.overrideWith((_) => wifiModel),
          hiddenWifiModelProvider.overrideWith((_) => hiddenWifiModel),
          timezoneModelProvider.overrideWith((_) => timezoneModel),
          identityModelProvider.overrideWith((_) => identityModel),
          themeModelProvider.overrideWith((_) => themeModel),
          privacyModelProvider.overrideWith((_) => privacyModel),
          storeModelProvider.overrideWith((_) => storeModel),
        ],
        child: tester.buildTestWizard(),
      ),
    );

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.pump(const Duration(seconds: 1));

    await tester.pumpAndSettle();
    expect(find.byType(WelcomePage), findsOneWidget);

    await tester.tapNext();
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
    expect(find.byType(TimezonePage), findsOneWidget);
    verify(timezoneModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(IdentityPage), findsOneWidget);
    verify(identityModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(ThemePage), findsOneWidget);
    verify(themeModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(PrivacyPage), findsOneWidget);
    verify(privacyModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(StorePage), findsOneWidget);
    verify(storeModel.init()).called(1);

    await tester.tapDone();
    await tester.pumpAndSettle();

    await expectLater(windowClosed, completes);
  });

  testWidgets('pages', (tester) async {
    final initModel = buildInitModel(pages: [
      InitRoutes.locale,
      InitRoutes.keyboard,
      InitRoutes.identity,
      InitRoutes.theme,
    ]);
    final localeModel = buildLocaleModel();
    final keyboardModel = buildKeyboardModel();
    final identityModel = buildIdentityModel(isValid: true);
    final themeModel = buildThemeModel();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          initModelProvider.overrideWith((_) => initModel),
          localeModelProvider.overrideWith((_) => localeModel),
          keyboardModelProvider.overrideWith((_) => keyboardModel),
          identityModelProvider.overrideWith((_) => identityModel),
          themeModelProvider.overrideWith((_) => themeModel),
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
    expect(find.byType(ThemePage), findsOneWidget);
    verify(themeModel.init()).called(1);

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.tapNext();
    await tester.pumpAndSettle();

    await expectLater(windowClosed, completes);
  });
}

extension on WidgetTester {
  Widget buildTestWizard() {
    return WizardApp(
      localizationsDelegates: GlobalUbuntuInitLocalizations.delegates,
      supportedLocales: supportedLocales,
      home: DefaultAssetBundle(
        bundle: ProxyAssetBundle(rootBundle, package: 'ubuntu_init'),
        child: const InitWizard(),
      ),
    );
  }
}

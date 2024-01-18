import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/installer.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/pages/confirm/confirm_model.dart';
import 'package:ubuntu_bootstrap/pages/install/install_model.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_model.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_model.dart';
import 'package:ubuntu_bootstrap/pages/rst/rst_model.dart';
import 'package:ubuntu_bootstrap/pages/secure_boot/secure_boot_model.dart';
import 'package:ubuntu_bootstrap/pages/source/not_enough_disk_space/not_enough_disk_space_model.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/bitlocker/bitlocker_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_reformat/guided_reformat_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/recovery_key/recovery_key_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/security_key/security_key_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/pages/welcome/welcome_model.dart';
import 'package:ubuntu_bootstrap/routes.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_test/yaru_test.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import '../../ubuntu_provision/test/keyboard/test_keyboard.dart';
import '../../ubuntu_provision/test/locale/test_locale.dart';
import '../../ubuntu_provision/test/network/test_network.dart';
import 'confirm/test_confirm.dart';
import 'install/test_install.dart';
import 'loading/test_loading.dart';
import 'refresh/test_refresh.dart';
import 'rst/test_rst.dart';
import 'secure_boot/test_secure_boot.dart';
import 'source/not_enough_disk_space/test_not_enough_disk_space.dart';
import 'source/test_source.dart';
import 'storage/test_storage.dart';
import 'welcome/test_welcome.dart';

void main() {
  LiveTestWidgetsFlutterBinding.ensureInitialized();

  setUp(() => YaruTestWindow.ensureInitialized(state: const YaruWindowState()));

  testWidgets('try ubuntu', (tester) async {
    final loadingModel = buildLoadingModel(delay: const Duration(seconds: 1));
    final localeModel = buildLocaleModel();
    final welcomeModel = buildWelcomeModel(option: Option.welcomeTryOption);

    registerMockService<TelemetryService>(MockTelemetryService());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          loadingModelProvider.overrideWith((_) => loadingModel),
          localeModelProvider.overrideWith((_) => localeModel),
          welcomeModelProvider.overrideWith((_) => welcomeModel),
        ],
        child: tester.buildTestWizard(excludePages: []),
      ),
    );

    expect(find.byType(LoadingPage), findsOneWidget);
    await tester.pump(const Duration(seconds: 1));
    verify(loadingModel.init()).called(1);

    await tester.pumpAndSettle();
    expect(find.byType(LocalePage), findsOneWidget);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(WelcomePage), findsOneWidget);
    verify(welcomeModel.init()).called(1);

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.tapNext();
    await tester.pumpAndSettle();

    await expectLater(windowClosed, completes);
  });

  testWidgets('guided reformat', (tester) async {
    // TODO: Fix SourcePage overflow so that this isn't needed
    await tester.binding.setSurfaceSize(const Size(800, 800));
    final loadingModel = buildLoadingModel();
    final localeModel = buildLocaleModel();
    final welcomeModel = buildWelcomeModel(option: Option.welcomeInstallOption);
    final rstModel = buildRstModel();
    final keyboardModel = buildKeyboardModel();
    final networkModel = buildNetworkModel();
    final ethernetModel = buildEthernetModel();
    final wifiModel = buildWifiModel();
    final hiddenWifiModel = buildHiddenWifiModel();
    final refreshModel = buildRefreshModel();
    final sourceModel = buildSourceModel();
    final notEnoughDiskSpaceModel = buildNotEnoughDiskSpaceModel();
    final secureBootModel = buildSecureBootModel();
    final storageModel = buildStorageModel();
    final bitLockerModel = buildBitLockerModel();
    final guidedReformatModel = buildGuidedReformatModel();
    final securityKeyModel = buildSecurityKeyModel(useSecurityKey: false);
    final recoveryKeyModel = buildRecoveryKeyModel();
    final confirmModel = buildConfirmModel();
    final installModel = buildInstallModel(isDone: true);

    registerMockService<DesktopService>(MockDesktopService());
    registerMockService<TelemetryService>(MockTelemetryService());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          loadingModelProvider.overrideWith((_) => loadingModel),
          localeModelProvider.overrideWith((_) => localeModel),
          welcomeModelProvider.overrideWith((_) => welcomeModel),
          rstModelProvider.overrideWith((_) => rstModel),
          keyboardModelProvider.overrideWith((_) => keyboardModel),
          networkModelProvider.overrideWith((_) => networkModel),
          ethernetModelProvider.overrideWith((_) => ethernetModel),
          wifiModelProvider.overrideWith((_) => wifiModel),
          hiddenWifiModelProvider.overrideWith((_) => hiddenWifiModel),
          refreshModelProvider.overrideWith((_) => refreshModel),
          sourceModelProvider.overrideWith((_) => sourceModel),
          notEnoughDiskSpaceModelProvider
              .overrideWith((_) => notEnoughDiskSpaceModel),
          secureBootModelProvider.overrideWith((_) => secureBootModel),
          storageModelProvider.overrideWith((_) => storageModel),
          bitLockerModelProvider.overrideWith((_) => bitLockerModel),
          guidedReformatModelProvider.overrideWith((_) => guidedReformatModel),
          securityKeyModelProvider.overrideWith((_) => securityKeyModel),
          recoveryKeyModelProvider.overrideWith((_) => recoveryKeyModel),
          confirmModelProvider.overrideWith((_) => confirmModel),
          installModelProvider.overrideWith((_) => installModel),
        ],
        child: tester.buildTestWizard(excludePages: []),
      ),
    );

    final context = tester.element(find.byType(Wizard));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    await tester.pumpAndSettle();
    expect(find.byType(LocalePage), findsOneWidget);
    // localeModel is not a mock
    // verify(localeModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(WelcomePage), findsOneWidget);
    verify(welcomeModel.init()).called(1);

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
    expect(find.byType(SourcePage), findsOneWidget);
    verify(refreshModel.init()).called(1); // skipped
    verify(sourceModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(StoragePage), findsOneWidget);
    verify(storageModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(ConfirmPage), findsOneWidget);
    verify(bitLockerModel.init()).called(1); // skipped
    verify(guidedReformatModel.init()).called(1); // skipped
    verify(securityKeyModel.init()).called(1); // skipped
    verify(recoveryKeyModel.init()).called(1); // skipped
    verify(confirmModel.init()).called(1);

    await tester.tapButton(l10n.confirmInstallButton);
    await tester.pumpAndSettle();
    expect(find.byType(InstallPage), findsOneWidget);
    verify(installModel.init()).called(1);
  });

  testWidgets('rst', (tester) async {
    final localeModel = buildLocaleModel();
    final rstModel = buildRstModel(hasRst: true);

    final subiquityClient = MockSubiquityClient();
    final productService = MockProductService();
    registerMockService<TelemetryService>(MockTelemetryService());
    registerMockService<NetworkService>(
      SubiquityNetworkService(subiquityClient),
    );
    registerMockService<ProductService>(productService);
    when(productService.getReleaseNotesURL(any)).thenReturn('');

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          localeModelProvider.overrideWith((_) => localeModel),
          rstModelProvider.overrideWith((_) => rstModel),
        ],
        child: tester.buildTestWizard(),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(RstPage), findsOneWidget);
    verify(rstModel.hasRst()).called(1);
  });

  testWidgets('secure boot', (tester) async {
    final localeModel = buildLocaleModel();
    final sourceModel = buildSourceModel();
    final notEnoughDiskSpaceModel = buildNotEnoughDiskSpaceModel();
    final secureBootModel = buildSecureBootModel(hasSecureBoot: true);

    registerMockService<TelemetryService>(MockTelemetryService());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          localeModelProvider.overrideWith((_) => localeModel),
          sourceModelProvider.overrideWith((_) => sourceModel),
          notEnoughDiskSpaceModelProvider
              .overrideWith((_) => notEnoughDiskSpaceModel),
          secureBootModelProvider.overrideWith((_) => secureBootModel),
        ],
        child: tester.buildTestWizard(),
      ),
    );
    await tester.pumpAndSettle();
    await tester.jumpToWizardRoute(Routes.source);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(SecureBootPage), findsOneWidget);
    verify(secureBootModel.hasSecureBoot()).called(1);
  });

  testWidgets('bitlocker', (tester) async {
    final localeModel = buildLocaleModel();
    final storageModel = buildStorageModel(type: StorageType.alongside);
    final bitlockerModel = buildBitLockerModel(hasBitLocker: true);

    final storage = MockStorageService();
    when(storage.guidedTarget).thenReturn(null);

    registerMockService<SessionService>(MockSessionService());
    registerMockService<StorageService>(storage);
    registerMockService<SubiquityClient>(MockSubiquityClient());
    registerMockService<TelemetryService>(MockTelemetryService());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          localeModelProvider.overrideWith((_) => localeModel),
          storageModelProvider.overrideWith((_) => storageModel),
          bitLockerModelProvider.overrideWith((_) => bitlockerModel),
        ],
        child: tester.buildTestWizard(),
      ),
    );
    await tester.pumpAndSettle();
    await tester.jumpToWizardRoute(Routes.storage);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(BitLockerPage), findsOneWidget);
    verify(bitlockerModel.init()).called(1);
  });

  testWidgets('pages', (tester) async {
    final keyboardModel = buildKeyboardModel();
    final confirmModel = buildConfirmModel();
    final installModel = buildInstallModel(isDone: true);

    registerMockService<TelemetryService>(MockTelemetryService());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          keyboardModelProvider.overrideWith((_) => keyboardModel),
          confirmModelProvider.overrideWith((_) => confirmModel),
          installModelProvider.overrideWith((_) => installModel),
        ],
        child: tester.buildTestWizard(pages: [
          Routes.keyboard,
        ]),
      ),
    );

    final context = tester.element(find.byType(Wizard));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    await tester.pumpAndSettle();
    expect(find.byType(KeyboardPage), findsOneWidget);
    verify(keyboardModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(ConfirmPage), findsOneWidget);
    verify(confirmModel.init()).called(1);

    await tester.tapButton(l10n.confirmInstallButton);
    await tester.pumpAndSettle();
    expect(find.byType(InstallPage), findsOneWidget);
    verify(installModel.init()).called(1);
  });

  testWidgets('refresh', (tester) async {
    final localeModel = buildLocaleModel();
    final networkModel = buildNetworkModel();
    final ethernetModel = buildEthernetModel();
    final wifiModel = buildWifiModel();
    final hiddenWifiModel = buildHiddenWifiModel();
    final refreshModel = buildRefreshModel(
        state: const RefreshState.status(
            RefreshStatus(availability: RefreshCheckState.AVAILABLE)));

    registerMockService<TelemetryService>(MockTelemetryService());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          localeModelProvider.overrideWith((_) => localeModel),
          networkModelProvider.overrideWith((_) => networkModel),
          ethernetModelProvider.overrideWith((_) => ethernetModel),
          wifiModelProvider.overrideWith((_) => wifiModel),
          hiddenWifiModelProvider.overrideWith((_) => hiddenWifiModel),
          refreshModelProvider.overrideWith((_) => refreshModel),
        ],
        child: tester.buildTestWizard(),
      ),
    );
    await tester.pumpAndSettle();
    await tester.jumpToWizardRoute(Routes.network);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(RefreshPage), findsOneWidget);
    verify(refreshModel.init()).called(1);
  });
}

extension on WidgetTester {
  Widget buildTestWizard({
    List<String>? pages,
    List<String> excludePages = const ['welcome'],
  }) {
    final installer = MockInstallerService();
    when(installer.hasRoute(any)).thenAnswer((i) {
      return pages?.contains(i.positionalArguments.single) ?? true;
    });
    when(installer.monitorStatus()).thenAnswer((_) => const Stream.empty());
    registerMockService<InstallerService>(installer);

    setupMockPageConfig(excludePages: excludePages);
    final subiquityClient = MockSubiquityClient();
    when(subiquityClient.hasRst()).thenAnswer((_) async => false);
    registerMockService<SubiquityClient>(subiquityClient);
    registerMockService<SessionService>(
      SubiquitySessionService(subiquityClient),
    );
    final keyboardService = SubiquityKeyboardService(subiquityClient);
    registerMockService<KeyboardService>(keyboardService);
    when(keyboardService.getKeyboard()).thenAnswer((_) async => keyboardSetup);

    final refresh = MockRefreshService();
    when(refresh.state).thenReturn(const RefreshState.status(
        RefreshStatus(availability: RefreshCheckState.UNAVAILABLE)));
    when(refresh.stateChanged).thenAnswer((_) => const Stream.empty());
    registerMockService<RefreshService>(refresh);

    return MaterialApp(
      localizationsDelegates: GlobalUbuntuBootstrapLocalizations.delegates,
      supportedLocales: supportedLocales,
      theme: yaruLight,
      home: const InstallerWizard(),
    );
  }

  Future<void> jumpToWizardRoute(String route) {
    final context = element(find.byType(WizardPage));
    Wizard.of(context).jump(route);
    return pumpAndSettle();
  }
}

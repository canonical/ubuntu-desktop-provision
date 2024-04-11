import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/installer.dart';
import 'package:ubuntu_bootstrap/installer/installation_step.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_bootstrap/pages/confirm/confirm_model.dart';
import 'package:ubuntu_bootstrap/pages/install/install_model.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_provider.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_model.dart';
import 'package:ubuntu_bootstrap/pages/rst/rst_model.dart';
import 'package:ubuntu_bootstrap/pages/secure_boot/secure_boot_model.dart';
import 'package:ubuntu_bootstrap/pages/source/not_enough_disk_space/not_enough_disk_space_model.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/bitlocker/bitlocker_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_reformat/guided_reformat_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/recovery_key/recovery_key_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_model.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_bootstrap/slides/slides_provider.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_test/yaru_test.dart';

import '../../ubuntu_provision/test/accessibility/test_accessibility.dart';
import '../../ubuntu_provision/test/active_directory/test_active_directory.dart';
import '../../ubuntu_provision/test/identity/test_identity.dart';
import '../../ubuntu_provision/test/keyboard/test_keyboard.dart';
import '../../ubuntu_provision/test/locale/test_locale.dart';
import '../../ubuntu_provision/test/network/test_network.dart';
import '../../ubuntu_provision/test/timezone/test_timezone.dart';
import 'autoinstall/test_autoinstall.dart';
import 'confirm/test_confirm.dart';
import 'install/test_install.dart';
import 'refresh/test_refresh.dart';
import 'rst/test_rst.dart';
import 'secure_boot/test_secure_boot.dart';
import 'source/not_enough_disk_space/test_not_enough_disk_space.dart';
import 'source/test_source.dart';
import 'storage/test_storage.dart';
import 'try_or_install/test_try_or_install.dart';

void main() {
  LiveTestWidgetsFlutterBinding.ensureInitialized();
  const loadingTime = Duration(seconds: 1);

  setUp(() {
    YaruTestWindow.ensureInitialized(state: const YaruWindowState());
    registerMockService<ThemeVariantService>(MockThemeVariantService());
    registerMockService<TelemetryService>(MockTelemetryService());
  });

  testWidgets('try ubuntu', (tester) async {
    final accessibilityModel = buildAccessibilityModel();
    final keyboardModel = buildKeyboardModel();
    final networkModel = buildNetworkModel();
    final ethernetModel = buildEthernetModel();
    final wifiModel = buildWifiModel();
    final hiddenWifiModel = buildHiddenWifiModel();
    final refreshModel = buildRefreshModel();
    final localeModel = buildLocaleModel();
    final tryOrInstallModel =
        buildTryOrInstallModel(option: TryOrInstallOption.tryUbuntu);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          accessibilityModelProvider.overrideWith((_) => accessibilityModel),
          keyboardModelProvider.overrideWith((_) => keyboardModel),
          networkModelProvider.overrideWith((_) => networkModel),
          ethernetModelProvider.overrideWith((_) => ethernetModel),
          wifiModelProvider.overrideWith((_) => wifiModel),
          hiddenWifiModelProvider.overrideWith((_) => hiddenWifiModel),
          refreshModelProvider.overrideWith((_) => refreshModel),
          loadingProvider
              .overrideWith((_) => Future<void>.delayed(loadingTime)),
          localeModelProvider.overrideWith((_) => localeModel),
          tryOrInstallModelProvider.overrideWith((_) => tryOrInstallModel),
        ],
        child: tester.buildTestWizard(excludedPages: {}),
      ),
    );

    final loadingPage = find.byType(LoadingPage);
    expect(loadingPage, findsOneWidget);
    final container = ProviderScope.containerOf(tester.element(loadingPage));
    await tester.pump(const Duration(seconds: 1));
    await expectLater(container.read(loadingProvider.future), completes);

    await tester.pumpAndSettle();
    expect(find.byType(LocalePage), findsOneWidget);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(AccessibilityPage), findsOneWidget);

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
    expect(find.byType(TryOrInstallPage), findsOneWidget);
    verify(tryOrInstallModel.init()).called(1);

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.tapClose();
    await tester.pumpAndSettle();

    await expectLater(windowClosed, completes);
  });

  testWidgets('guided reformat', (tester) async {
    final accessibilityModel = buildAccessibilityModel();
    final autoinstallModel = buildAutoinstallModel();
    final localeModel = buildLocaleModel();
    final tryOrInstallModel =
        buildTryOrInstallModel(option: TryOrInstallOption.installUbuntu);
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
    final passphraseModel = buildPassphraseModel(usePassphrase: false);
    final recoveryKeyModel = buildRecoveryKeyModel();
    final confirmModel = buildConfirmModel();
    final timezoneModel = buildTimezoneModel();
    final identityModel = buildIdentityModel(isValid: true);
    final activeDirectoryModel = buildActiveDirectoryModel();
    final installModel = buildInstallModel(isDone: true);

    registerMockService<DesktopService>(MockDesktopService());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          accessibilityModelProvider.overrideWith((_) => accessibilityModel),
          autoinstallModelProvider.overrideWith((_) => autoinstallModel),
          loadingProvider.overrideWith((_) => Future.delayed(loadingTime)),
          localeModelProvider.overrideWith((_) => localeModel),
          tryOrInstallModelProvider.overrideWith((_) => tryOrInstallModel),
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
          passphraseModelProvider.overrideWith((_) => passphraseModel),
          recoveryKeyModelProvider.overrideWith((_) => recoveryKeyModel),
          confirmModelProvider.overrideWith((_) => confirmModel),
          timezoneModelProvider.overrideWith((_) => timezoneModel),
          identityModelProvider.overrideWith((_) => identityModel),
          activeDirectoryModelProvider
              .overrideWith((_) => activeDirectoryModel),
          installModelProvider.overrideWith((_) => installModel),
        ],
        child: tester.buildTestWizard(excludedPages: {}),
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
    expect(find.byType(AccessibilityPage), findsOneWidget);

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
    expect(find.byType(TryOrInstallPage), findsOneWidget);
    verify(tryOrInstallModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(AutoinstallPage), findsOneWidget);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(SourceSelectionPage), findsOneWidget);
    verify(sourceModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(CodecsAndDriversPage), findsOneWidget);

    verify(refreshModel.init()).called(1); // skipped

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(StoragePage), findsOneWidget);
    verify(storageModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(IdentityPage), findsOneWidget);
    verify(identityModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(TimezonePage), findsOneWidget);
    verify(timezoneModel.init()).called(1);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(ConfirmPage), findsOneWidget);
    verify(bitLockerModel.init()).called(1); // skipped
    verify(guidedReformatModel.init()).called(1); // skipped
    verify(passphraseModel.init()).called(1); // skipped
    verify(recoveryKeyModel.init()).called(1); // skipped
    verify(confirmModel.init()).called(1);

    await tester.tapButton(l10n.confirmInstallButton);
    await tester.pumpAndSettle();
    expect(find.byType(InstallPage), findsOneWidget);
    verify(installModel.init()).called(1);
  });

  testWidgets('rst', (tester) async {
    final accessibilityModel = buildAccessibilityModel();
    final localeModel = buildLocaleModel();
    final rstModel = buildRstModel(hasRst: true);

    final subiquityClient = MockSubiquityClient();
    final productService = MockProductService();
    registerMockService<NetworkService>(
      SubiquityNetworkService(subiquityClient),
    );
    registerMockService<ProductService>(productService);
    when(productService.getReleaseNotesURL(any)).thenReturn('');

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          accessibilityModelProvider.overrideWith((_) => accessibilityModel),
          localeModelProvider.overrideWith((_) => localeModel),
          rstModelProvider.overrideWith((_) => rstModel),
        ],
        child: tester.buildTestWizard(),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tapNext();
    await tester.pumpAndSettle();
    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(RstPage), findsOneWidget);
    verify(rstModel.hasRst()).called(1);
  });

  testWidgets('secure boot', (tester) async {
    final accessibilityModel = buildAccessibilityModel();
    final localeModel = buildLocaleModel();
    final sourceModel = buildSourceModel();
    final notEnoughDiskSpaceModel = buildNotEnoughDiskSpaceModel();
    final secureBootModel = buildSecureBootModel(hasSecureBoot: true);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          accessibilityModelProvider.overrideWith((_) => accessibilityModel),
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
    await tester.jumpToWizardRoute(InstallationStep.codecsAndDrivers.route);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(SecureBootPage), findsOneWidget);
    verify(secureBootModel.hasSecureBoot()).called(1);
  });

  testWidgets('bitlocker', (tester) async {
    final accessibilityModel = buildAccessibilityModel();
    final localeModel = buildLocaleModel();
    final storageModel = buildStorageModel(type: StorageType.alongside);
    final bitlockerModel = buildBitLockerModel(hasBitLocker: true);

    final storage = MockStorageService();
    when(storage.guidedTarget).thenReturn(null);

    registerMockService<SessionService>(MockSessionService());
    registerMockService<StorageService>(storage);
    registerMockService<SubiquityClient>(MockSubiquityClient());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          accessibilityModelProvider.overrideWith((_) => accessibilityModel),
          localeModelProvider.overrideWith((_) => localeModel),
          storageModelProvider.overrideWith((_) => storageModel),
          bitLockerModelProvider.overrideWith((_) => bitlockerModel),
        ],
        child: tester.buildTestWizard(),
      ),
    );
    await tester.pumpAndSettle();
    await tester.jumpToWizardRoute(InstallationStep.storage.route);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(BitLockerPage), findsOneWidget);
    verify(bitlockerModel.init()).called(1);
  });

  testWidgets('active directory', (tester) async {
    final localeModel = buildLocaleModel();
    final identityModel =
        buildIdentityModel(useActiveDirectory: true, isValid: true);
    final activeDirectoryModel = buildActiveDirectoryModel(isUsed: true);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          localeModelProvider.overrideWith((_) => localeModel),
          identityModelProvider.overrideWith((_) => identityModel),
          activeDirectoryModelProvider
              .overrideWith((_) => activeDirectoryModel),
        ],
        child: tester.buildTestWizard(),
      ),
    );
    await tester.pumpAndSettle();
    await tester.jumpToWizardRoute(InstallationStep.identity.route);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(ActiveDirectoryPage), findsOneWidget);
    verify(activeDirectoryModel.init()).called(1);
  });

  testWidgets('exclude pages', (tester) async {
    final accessibilityModel = buildAccessibilityModel();
    final keyboardModel = buildKeyboardModel();
    final confirmModel = buildConfirmModel();
    final installModel = buildInstallModel(isDone: true);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          autoinstallModelProvider.overrideWith((_) => buildAutoinstallModel()),
          accessibilityModelProvider.overrideWith((_) => accessibilityModel),
          keyboardModelProvider.overrideWith((_) => keyboardModel),
          confirmModelProvider.overrideWith((_) => confirmModel),
          installModelProvider.overrideWith((_) => installModel),
          slidesProvider.overrideWith((_) => MockSlidesModel()),
        ],
        child: tester.buildTestWizard(excludedPages: {
          'autoinstall',
          'tryOrInstall',
          'locale',
          'rst',
          'network',
          'refresh',
          'sourceSelection',
          'codecsAndDrivers',
          'notEnoughDiskSpace',
          'secureBoot',
          'storage',
          'identity',
          'activeDirectory',
          'timezone',
        }),
      ),
    );

    final context = tester.element(find.byType(Wizard));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    await tester.pumpAndSettle();
    expect(find.byType(AccessibilityPage), findsOneWidget);

    await tester.tapNext();
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
    final accessibilityModel = buildAccessibilityModel();
    final localeModel = buildLocaleModel();
    final networkModel = buildNetworkModel();
    final ethernetModel = buildEthernetModel();
    final wifiModel = buildWifiModel();
    final hiddenWifiModel = buildHiddenWifiModel();
    final refreshModel = buildRefreshModel(
      state: const RefreshState.status(
        RefreshStatus(availability: RefreshCheckState.AVAILABLE),
      ),
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          accessibilityModelProvider.overrideWith((_) => accessibilityModel),
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
    await tester.jumpToWizardRoute(InstallationStep.network.route);

    await tester.tapNext();
    await tester.pumpAndSettle();
    expect(find.byType(RefreshPage), findsOneWidget);
    verify(refreshModel.init()).called(1);
  });
}

extension on WidgetTester {
  Widget buildTestWizard(
      {Set<String> excludedPages = const {'tryOrInstall'},
      bool includeTryOrInstall = false}) {
    final installer = MockInstallerService();
    when(installer.hasRoute(any)).thenAnswer((i) {
      return !excludedPages.contains(
          (i.positionalArguments.first as String).replaceFirst('/', ''));
    });
    when(installer.monitorStatus()).thenAnswer((_) => const Stream.empty());
    registerMockService<InstallerService>(installer);

    setupMockPageConfig(includeTryOrInstall: includeTryOrInstall);
    final subiquityClient = MockSubiquityClient();
    when(subiquityClient.hasRst()).thenAnswer((_) async => false);
    registerMockService<SubiquityClient>(subiquityClient);
    registerMockService<SessionService>(
      SubiquitySessionService(subiquityClient),
    );
    final inputSettings = MockGSettings();
    when(inputSettings.set(any, any)).thenAnswer((_) async {});
    final keyboardService = SubiquityKeyboardService(
      subiquityClient,
      inputSourceSettings: inputSettings,
      runProcess: (_, __) async => ProcessResult(0, 0, '', ''),
    );
    registerMockService<KeyboardService>(keyboardService);
    when(keyboardService.getKeyboard()).thenAnswer((_) async => keyboardSetup);

    registerMockService<PowerService>(MockPowerService());

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

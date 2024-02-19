import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/installer/installation_step.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/ubuntu_provision_test.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_test/yaru_test.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

Future<void> main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  final window = await YaruWindow.ensureInitialized();

  setUpAll(() => autoUpdateGoldenFiles = true);

  setUp(() async {
    await cleanUpSubiquity();
    registerMockService<DesktopService>(FakeDesktopService());
    registerMockService<ProductService>(FakeProductService());
    await YaruWindowTitleBar.ensureInitialized();
    return YaruTestWindow.ensureInitialized(
      state: const YaruWindowState(isActive: true, isClosable: true),
    );
  });

  tearDown(() async {
    final windowClosed = YaruTestWindow.waitForClosed();
    await window.close();
    await windowClosed;
    await resetAllServices();
    rootBundle.clear();
  });

  testWidgets('01.locale', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.testLocalePage(
      screenshot: '$currentThemeName/01.locale',
    );
  }, variant: themeVariant);

  testWidgets('02.accessibility', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.accessibility.route);
    await tester.pumpAndSettle();

    await tester.testAccessibilityPage(
      screenshot: '$currentThemeName/02.accessibility',
    );
  }, variant: themeVariant);

  testWidgets('03.try-or-install', (tester) async {
    await tester
        .runApp(() => runInstallerApp(['--welcome'], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.tryOrInstall.route);
    await tester.pumpAndSettle();

    await tester.testTryOrInstallPage(
      option: TryOrInstallOption.installUbuntu,
      screenshot: '$currentThemeName/03.welcome',
    );
  }, variant: themeVariant);

  testWidgets('04.rst', (tester) async {
    registerService<SubiquityClient>(FakeSubiquityClient.new);

    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.rst.route);
    await tester.pumpAndSettle();

    await tester.testRstPage(
      screenshot: '$currentThemeName/04.rst',
    );
  }, variant: themeVariant);

  testWidgets('04.keyboard', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.keyboard.route);
    await tester.pumpAndSettle();

    await tester.testKeyboardPage(
      screenshot: '$currentThemeName/04.keyboard',
    );
  }, variant: themeVariant);

  testWidgets('05.network', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.network.route);
    await tester.pumpAndSettle();

    await tester.testNetworkPage(
      mode: ConnectMode.none,
      screenshot: '$currentThemeName/05.network',
    );
  }, variant: themeVariant);

  testWidgets('06.refresh', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.refresh.route);
    await tester.pumpAndSettle();

    await tester.testRefreshPage(
      screenshot: '$currentThemeName/06.refresh',
    );
  }, variant: themeVariant);

  testWidgets('06.application-selection-page', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.applicationsSelection.route);
    await tester.pumpAndSettle();

    await tester.testApplicationsSelectionPage(
      screenshot: '$currentThemeName/06.application-selection-page',
    );
  }, variant: themeVariant);

  testWidgets('06.codecs-and-drivers', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.codecsAndDrivers.route);
    await tester.pumpAndSettle();

    await tester.testCodecsAndDriversPage(
      screenshot: '$currentThemeName/06-1.codecs-and-drivers',
    );
  }, variant: themeVariant);

  testWidgets('07.not-enough-space', (tester) async {
    final client = FakeSubiquityClient();
    registerServiceInstance<SubiquityClient>(client);

    final service = FakeStorageService(client);
    registerServiceInstance<StorageService>(service);

    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.applicationsSelection.route);
    await tester.jumpToPage(InstallationStep.notEnoughDiskSpace.route);
    await tester.pumpAndSettle();

    await tester.testNotEnoughDiskSpacePage(
      screenshot: '$currentThemeName/07.not-enough-space',
    );
  }, variant: themeVariant);

  testWidgets('07.storage', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(
      type: StorageType.erase,
      screenshot: '$currentThemeName/07.storage',
    );
  }, variant: themeVariant);

  testWidgets('07.storage-advanced-features', (tester) async {
    await tester.runApp(() => runInstallerApp([
          '--dry-run-config=examples/dry-run-configs/tpm.yaml',
        ], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(
      type: StorageType.erase,
      guidedCapability: GuidedCapability.LVM,
      screenshot: '$currentThemeName/07.storage-advanced-features',
    );
  }, variant: themeVariant);

  testWidgets('07.storage-alongside-windows', (tester) async {
    await tester.runApp(() => runInstallerApp([
          '--machine-config=examples/machines/win10.json',
        ], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(
      type: StorageType.alongside,
      screenshot: '$currentThemeName/07.storage-alongside-windows',
    );
  }, variant: themeVariant);

  testWidgets('08.storage-manual', (tester) async {
    await tester.runApp(() => runInstallerApp([
          '--',
          '--bootloader=uefi',
        ], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(type: StorageType.manual);
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testManualStoragePage(
      storage: [
        fakeDisk(
          path: '/dev/sda',
          partitions: [
            Partition(
              size: toBytes(50, DataUnit.gigabytes),
              mount: '/',
              path: '/dev/sda1',
            ),
          ],
        ),
      ],
      screenshot: '$currentThemeName/08.storage-manual',
    );
  }, variant: themeVariant);

  testWidgets('08.storage-guided-resize', (tester) async {
    await tester.runApp(() => runInstallerApp([
          '--machine-config=examples/machines/win10-along-ubuntu.json',
          '--',
          '--bootloader=uefi',
        ], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(type: StorageType.alongside);
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testGuidedResizePage(
      sizes: {'ext4': 32768},
      screenshot: '$currentThemeName/08.storage-guided-resize',
    );
  }, variant: themeVariant);

  testWidgets('08.storage-guided-reformat', (tester) async {
    await tester.runApp(() => runInstallerApp([
          '--machine-config=examples/machines/imsm.json',
        ], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(type: StorageType.erase);
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testGuidedReformatPage(
      screenshot: '$currentThemeName/08.storage-guided-reformat',
    );
  }, variant: themeVariant);

  testWidgets('08.bitlocker', (tester) async {
    await tester.runApp(() => runInstallerApp([
          '--machine-config=examples/machines/win10.json',
        ], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(type: StorageType.alongside);
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testBitLockerPage(
      screenshot: '$currentThemeName/08.bitlocker',
    );
  }, variant: themeVariant);

  testWidgets('09.security-key', (tester) async {
    await tester.runApp(() => runInstallerApp([
          '--machine-config=examples/machines/win10-along-ubuntu.json',
        ], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(
      type: StorageType.erase,
      guidedCapability: GuidedCapability.LVM_LUKS,
    );
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testSecurityKeyPage(
      securityKey: 'password',
      screenshot: '$currentThemeName/09.security-key',
    );
  }, variant: themeVariant);

  testWidgets('10.confirm', (tester) async {
    await tester.runApp(() => runInstallerApp([
          '--',
          '--bootloader=uefi',
        ], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(
      type: StorageType.erase,
    );
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testIdentityPage(
      identity: const Identity(
        realname: 'Ubuntu User',
        hostname: 'ubuntu',
        username: 'user',
      ),
      password: 'password',
    );
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testTimezonePage();
    await tester.tapNext();
    await tester.pumpAndSettle();

    await tester.testConfirmPage(
      screenshot: '$currentThemeName/09.confirm',
    );
  }, variant: themeVariant);

  testWidgets('10.timezone', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.timezone.route);
    await tester.pumpAndSettle();

    await tester.testTimezonePage(
      screenshot: '$currentThemeName/10.timezone',
    );
  }, variant: themeVariant);

  testWidgets('11.identity', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.identity.route);
    await tester.pumpAndSettle();

    await tester.testIdentityPage(
      identity: const Identity(
        realname: 'Ubuntu User',
        hostname: 'ubuntu',
        username: 'user',
      ),
      password: 'password',
      screenshot: '$currentThemeName/11.identity',
    );
  }, variant: themeVariant);

  testWidgets('12.active-directory', (tester) async {
    final client = FakeSubiquityClient();
    registerServiceInstance<SubiquityClient>(client);

    final service = FakeActiveDirectoryService(client);
    registerServiceInstance<ActiveDirectoryService>(service);

    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.activeDirectory.route);
    await tester.pumpAndSettle();

    await tester.testActiveDirectoryPage(
      adminName: 'admin',
      password: 'password',
      screenshot: '$currentThemeName/12.active-directory',
    );
  }, variant: themeVariant);

  testWidgets('15.install', (tester) async {
    await YaruTestWindow.ensureInitialized(
      state: const YaruWindowState(isActive: true, isClosable: false),
    );

    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.install.route);
    await tester.pump(kThemeAnimationDuration);

    for (var i = 0; i < defaultSlides.length; ++i) {
      await tester.takeScreenshot(
        '$currentThemeName/15.install-$i',
      );
      if (i < defaultSlides.length - 1) {
        await tester.tap(find.iconButton(YaruIcons.pan_end));
        await tester.pump(kThemeAnimationDuration);
      }
    }
  }, variant: themeVariant);

  testWidgets('16.complete', (tester) async {
    registerService<SubiquityClient>(
        () => FakeSubiquityClient(ApplicationState.DONE));

    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(InstallationStep.install.route);
    await tester.pumpAndSettle();

    await tester.testInstallPage(
      screenshot: '$currentThemeName/16.complete',
    );
  }, variant: themeVariant);
}

class FakeActiveDirectoryService extends SubiquityActiveDirectoryService {
  FakeActiveDirectoryService(super.client);

  @override
  Future<bool> isUsed() async => true;
}

class FakeDesktopService implements DesktopService {
  @override
  Future<void> inhibit() async {}

  @override
  Future<void> close() async {}
}

class FakeProductService implements ProductService {
  @override
  ProductInfo getProductInfo() => ProductInfo(name: 'Ubuntu', version: '23.04');

  @override
  String getReleaseNotesURL(String languageCode) =>
      'https://wiki.ubuntu.com/ManticMinotaur/ReleaseNotes';
}

class FakeStorageService extends StorageService {
  FakeStorageService(super.client);

  @override
  int get installMinimumSize => 24426577920;

  @override
  int get largestDiskSize => 16284385280;
}

class FakeSubiquityClient extends SubiquityClient {
  FakeSubiquityClient([this.state = ApplicationState.WAITING]);

  final ApplicationState state;

  @override
  Future<ApplicationStatus> getStatus({ApplicationState? current}) async {
    return fakeApplicationStatus(state);
  }

  @override
  Stream<ApplicationStatus?> monitorStatus() {
    return Stream.value(fakeApplicationStatus(state));
  }

  @override
  Future<bool> hasRst() async => true;
}

ThemeData get currentTheme => themeVariant.currentValue!;
String get currentThemeName => themeVariant.currentName;

final themeVariant = YaruThemeVariant();

extension on WidgetTester {
  Future<void> jumpToStorageWizard() async {
    // an installation source must be explicitly selected before calling storage APIs
    await jumpToPage(InstallationStep.applicationsSelection.route);
    await tapNext();
    await pumpAndSettle();
    await tapNext();
    await pumpUntil(find.byType(StorageWizard));
  }
}

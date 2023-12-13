import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
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
  });

  testWidgets('01.locale', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.testLocalePage(
      screenshot: '$currentThemeName/01.locale',
    );
  }, variant: themeVariant);

  testWidgets('02.welcome', (tester) async {
    await tester
        .runApp(() => runInstallerApp(['--welcome'], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.welcome);
    await tester.pumpAndSettle();

    await tester.testWelcomePage(
      option: Option.welcomeInstallOption,
      screenshot: '$currentThemeName/02.welcome',
    );
  }, variant: themeVariant);

  testWidgets('03.rst', (tester) async {
    registerService<SubiquityClient>(FakeSubiquityClient.new);

    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.rst);
    await tester.pumpAndSettle();

    await tester.testRstPage(
      screenshot: '$currentThemeName/03.rst',
    );
  }, variant: themeVariant);

  testWidgets('03.keyboard', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.keyboard);
    await tester.pumpAndSettle();

    await tester.testKeyboardPage(
      screenshot: '$currentThemeName/03.keyboard',
    );
  }, variant: themeVariant);

  testWidgets('04.network', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.network);
    await tester.pumpAndSettle();

    await tester.testNetworkPage(
      mode: ConnectMode.none,
      screenshot: '$currentThemeName/04.network',
    );
  }, variant: themeVariant);

  testWidgets('05.refresh', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.refresh);
    await tester.pumpAndSettle();

    await tester.testRefreshPage(
      screenshot: '$currentThemeName/05.refresh',
    );
  }, variant: themeVariant);

  testWidgets('05.source', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.source);
    await tester.pumpAndSettle();

    await tester.testSourcePage(
      screenshot: '$currentThemeName/05.source',
    );
  }, variant: themeVariant);

  testWidgets('06.not-enough-space', (tester) async {
    final client = FakeSubiquityClient();
    registerServiceInstance<SubiquityClient>(client);

    final service = FakeStorageService(client);
    registerServiceInstance<StorageService>(service);

    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.source);
    await tester.jumpToPage(Routes.notEnoughDiskSpace);
    await tester.pumpAndSettle();

    await tester.testNotEnoughDiskSpacePage(
      screenshot: '$currentThemeName/06.not-enough-space',
    );
  }, variant: themeVariant);

  testWidgets('06.storage', (tester) async {
    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(
      type: StorageType.erase,
      screenshot: '$currentThemeName/06.storage',
    );
  }, variant: themeVariant);

  testWidgets('06.storage-advanced-features', (tester) async {
    await tester.runApp(() => runInstallerApp([
          '--dry-run-config=examples/dry-run-configs/tpm.yaml',
        ], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(
      type: StorageType.erase,
      guidedCapability: GuidedCapability.LVM,
      screenshot: '$currentThemeName/06.storage-advanced-features',
    );
  }, variant: themeVariant);

  testWidgets('06.storage-alongside-windows', (tester) async {
    await tester.runApp(() => runInstallerApp([
          '--machine-config=examples/machines/win10.json',
        ], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToStorageWizard();
    await tester.pumpAndSettle();

    await tester.testStoragePage(
      type: StorageType.alongside,
      screenshot: '$currentThemeName/06.storage-alongside-windows',
    );
  }, variant: themeVariant);

  testWidgets('07.storage-manual', (tester) async {
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
      screenshot: '$currentThemeName/07.storage-manual',
    );
  }, variant: themeVariant);

  testWidgets('07.storage-guided-resize', (tester) async {
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
      screenshot: '$currentThemeName/07.storage-guided-resize',
    );
  }, variant: themeVariant);

  testWidgets('07.storage-guided-reformat', (tester) async {
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
      screenshot: '$currentThemeName/07.storage-guided-reformat',
    );
  }, variant: themeVariant);

  testWidgets('07.bitlocker', (tester) async {
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
      screenshot: '$currentThemeName/07.bitlocker',
    );
  }, variant: themeVariant);

  testWidgets('08.security-key', (tester) async {
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
      screenshot: '$currentThemeName/08.security-key',
    );
  }, variant: themeVariant);

  testWidgets('09.confirm', (tester) async {
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

    await tester.testConfirmPage(
      screenshot: '$currentThemeName/09.confirm',
    );
  }, variant: themeVariant);

  testWidgets('14.install', (tester) async {
    await YaruTestWindow.ensureInitialized(
      state: const YaruWindowState(isActive: true, isClosable: false),
    );

    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.install);
    await tester.pump(kThemeAnimationDuration);

    for (var i = 0; i < defaultSlides.length; ++i) {
      await tester.takeScreenshot(
        '$currentThemeName/14.install-$i',
      );
      if (i < defaultSlides.length - 1) {
        await tester.tap(find.iconButton(YaruIcons.pan_end));
        await tester.pump(kThemeAnimationDuration);
      }
    }
  }, variant: themeVariant);

  testWidgets('15.complete', (tester) async {
    registerService<SubiquityClient>(
        () => FakeSubiquityClient(ApplicationState.DONE));

    await tester.runApp(() => runInstallerApp([], theme: currentTheme));
    await tester.pumpAndSettle();

    await tester.jumpToPage(Routes.install);
    await tester.pumpAndSettle();

    await tester.testInstallPage(
      screenshot: '$currentThemeName/15.complete',
    );
  }, variant: themeVariant);
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
    await jumpToPage(Routes.source);
    await tapNext();
    await pumpUntil(find.byType(StorageWizard));
  }
}

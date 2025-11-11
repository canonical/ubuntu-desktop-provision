import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/main.dart' as app;
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/ubuntu_provision_test.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:yaml/yaml.dart';
import 'package:yaru_test/yaru_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(YaruTestWindow.ensureInitialized);

  setUp(() async {
    await cleanUpSubiquity();
    registerMockService<DesktopService>(FakeDesktopService());
  });
  tearDown(() async {
    await resetAllServices();
    rootBundle.clear();
  });

  testWidgets('minimal installation', (tester) async {
    const language = 'Français';
    const locale = 'fr_FR.UTF-8';
    const keyboard = KeyboardSetting(layout: 'fr', variant: 'latin9');
    const timezone = 'Europe/Paris';
    const identity = Identity(
      realname: 'User',
      hostname: 'ubuntu',
      username: 'user',
    );

    await tester.runApp(() => app.main(<String>[]));
    await tester.pumpAndSettle();

    await tester.testLocalePage(language: language);
    await expectLocale(locale);

    await tester.testAccessibilityPage();

    await tester.testKeyboardPage(layout: language);
    await expectKeyboard(keyboard);

    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(type: StorageType.erase);
    await tester.testGuidedCapabilityPage();

    await tester.testIdentityPage(identity: identity, password: 'password');
    await expectIdentity(identity);

    await tester.testTimezonePage(timezone: timezone);
    await expectTimezone(timezone);

    await tester.testConfirmPage();
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    await verifySubiquityConfig(
      identity: identity,
      keyboard: keyboard,
      locale: locale,
      timezone: timezone,
    );
  });

  testWidgets('OEM', (tester) async {
    registerMockService<ConfigService>(
      FakeConfigService(mode: ProvisioningMode.oem),
    );

    await tester.runApp(() => app.main(<String>[]));
    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(type: StorageType.erase);
    await tester.testGuidedCapabilityPage();
    await tester.testConfirmPage();
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    await verifySubiquityConfig(identity: const Identity());
  });

  testWidgets('LVM Encrypted', (tester) async {
    const identity = Identity(
      realname: 'User',
      hostname: 'ubuntu',
      username: 'user',
    );

    await tester.runApp(() => app.main(<String>[]));
    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(
      type: StorageType.erase,
    );
    await tester.testGuidedCapabilityPage(
      guidedCapability: GuidedCapability.LVM_LUKS,
    );
    await tester.testPassphrasePage(passphrase: 'password');

    await tester.testIdentityPage(identity: identity, password: 'password');
    await expectIdentity(identity);

    await tester.testTimezonePage();
    await tester.testConfirmPage();
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    await verifySubiquityConfig(
      identity: identity,
      capability: GuidedCapability.LVM_LUKS,
    );
  });

  testWidgets('LVM Encrypted alongside Windows', (tester) async {
    const identity = Identity(
      realname: 'User',
      hostname: 'ubuntu',
      username: 'user',
    );

    await tester.runApp(
      () => app.main(<String>[
        '--machine-config=examples/machines/win10-along-ubuntu.json',
        '--',
        '--bootloader=uefi',
      ]),
    );
    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(type: StorageType.alongside);
    await tester.testGuidedResizePage(size: 30);
    await tester.testGuidedCapabilityPage(
      guidedCapability: GuidedCapability.LVM_LUKS,
    );
    await tester.testPassphrasePage(passphrase: 'password');

    await tester.testIdentityPage(identity: identity, password: 'password');
    await expectIdentity(identity);

    await tester.testTimezonePage();
    await tester.testConfirmPage();
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    await verifySubiquityConfig(
      identity: identity,
      capability: GuidedCapability.LVM_LUKS,
    );
  });

  testWidgets('ZFS unencrypted', (tester) async {
    const identity = Identity(
      realname: 'User',
      hostname: 'ubuntu',
      username: 'user',
    );

    await tester.runApp(() => app.main(<String>[]));
    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(
      type: StorageType.erase,
    );
    await tester.testGuidedCapabilityPage(
      guidedCapability: GuidedCapability.ZFS,
    );
    await tester.testIdentityPage(identity: identity, password: 'password');
    await expectIdentity(identity);

    await tester.testTimezonePage();
    await tester.testConfirmPage();
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    await verifySubiquityConfig(
      identity: identity,
      capability: GuidedCapability.ZFS,
    );
  });

  testWidgets('ZFS encrypted', (tester) async {
    const identity = Identity(
      realname: 'User',
      hostname: 'ubuntu',
      username: 'user',
    );

    await tester.runApp(() => app.main(<String>[]));
    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(
      type: StorageType.erase,
    );
    await tester.testGuidedCapabilityPage(
      guidedCapability: GuidedCapability.ZFS_LUKS_KEYSTORE,
    );
    await tester.testPassphrasePage(passphrase: 'password');

    await tester.testIdentityPage(identity: identity, password: 'password');
    await expectIdentity(identity);

    await tester.testTimezonePage();
    await tester.testConfirmPage();
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    await verifySubiquityConfig(
      identity: identity,
      capability: GuidedCapability.ZFS_LUKS_KEYSTORE,
    );
  });

  testWidgets('tpm', (tester) async {
    const identity = Identity(
      realname: 'User',
      hostname: 'ubuntu',
      username: 'user',
    );

    await tester.runApp(
      () => app.main([
        '--source-catalog=examples/sources/tpm.yaml',
        '--dry-run-config=examples/dry-run-configs/tpm.yaml',
        '--',
        '--bootloader=uefi',
      ]),
    );

    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(
      type: StorageType.erase,
    );
    await tester.testGuidedCapabilityPage(
      guidedCapability: GuidedCapability.CORE_BOOT_ENCRYPTED,
    );

    await tester.testIdentityPage(identity: identity, password: 'password');
    await expectIdentity(identity);

    await tester.testTimezonePage();
    await tester.testConfirmPage();
    await tester.testInstallPage();
    await tester.testRecoveryKeyPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    await verifySubiquityConfig(
      identity: identity,
      capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
    );
  });

  testWidgets(
    'tpm with passphrase',
    (tester) async {
      const identity = Identity(
        realname: 'User',
        hostname: 'ubuntu',
        username: 'user',
      );

      await tester.runApp(
        () => app.main([
          '--source-catalog=examples/sources/tpm.yaml',
          '--dry-run-config=examples/dry-run-configs/tpm.yaml',
          '--',
          '--bootloader=uefi',
        ]),
      );

      await tester.pumpAndSettle();
      await tester.testLocalePage();
      await tester.testAccessibilityPage();
      await tester.testKeyboardPage();
      await tester.testNetworkPage(mode: ConnectMode.none);
      await tester.testRefreshPage();
      await tester.testAutoinstallPage();
      await tester.testSourceSelectionPage();
      await tester.testCodecsAndDriversPage();

      await tester.testStoragePage(
        type: StorageType.erase,
      );
      await tester.testGuidedCapabilityPage(
        guidedCapability: GuidedCapability.CORE_BOOT_ENCRYPTED,
      );

      await tester.testPassphraseTypePage(
        passphraseType: PassphraseType.passphrase,
      );
      await tester.testPassphrasePage(passphrase: 'passphrase');

      await tester.testIdentityPage(identity: identity, password: 'password');
      await expectIdentity(identity);

      await tester.testTimezonePage();
      await tester.testConfirmPage();
      await tester.testInstallPage();
      await tester.testRecoveryKeyPage();
      await tester.testDonePage();

      final windowClosed = YaruTestWindow.waitForClosed();
      await tester.tapContinueTesting();
      await expectLater(windowClosed, completes);

      await verifySubiquityConfig(
        identity: identity,
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
      );
    },
    // TODO: re-enable once this can be tested in subiquity's dry-run mode
    skip: true,
  );

  testWidgets(
    'tpm with pin',
    (tester) async {
      const identity = Identity(
        realname: 'User',
        hostname: 'ubuntu',
        username: 'user',
      );

      await tester.runApp(
        () => app.main([
          '--source-catalog=examples/sources/tpm.yaml',
          '--dry-run-config=examples/dry-run-configs/tpm.yaml',
          '--',
          '--bootloader=uefi',
        ]),
      );

      await tester.pumpAndSettle();
      await tester.testLocalePage();
      await tester.testAccessibilityPage();
      await tester.testKeyboardPage();
      await tester.testNetworkPage(mode: ConnectMode.none);
      await tester.testRefreshPage();
      await tester.testAutoinstallPage();
      await tester.testSourceSelectionPage();
      await tester.testCodecsAndDriversPage();

      await tester.testStoragePage(
        type: StorageType.erase,
      );
      await tester.testGuidedCapabilityPage(
        guidedCapability: GuidedCapability.CORE_BOOT_ENCRYPTED,
      );

      await tester.testPassphraseTypePage(
        passphraseType: PassphraseType.pin,
      );
      await tester.testPassphrasePage(
        passphrase: '12345',
        passphraseType: PassphraseType.pin,
      );

      await tester.testIdentityPage(identity: identity, password: 'password');
      await expectIdentity(identity);

      await tester.testTimezonePage();
      await tester.testConfirmPage();
      await tester.testInstallPage();
      await tester.testRecoveryKeyPage();
      await tester.testDonePage();

      final windowClosed = YaruTestWindow.waitForClosed();
      await tester.tapContinueTesting();
      await expectLater(windowClosed, completes);

      await verifySubiquityConfig(
        identity: identity,
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
      );
    },
    // TODO: re-enable once PIN support lands in snapd
    skip: true,
  );

  testWidgets('manual partitioning', (tester) async {
    final storage = [
      fakeDisk(
        path: '/dev/sda',
        partitions: [
          Partition(size: toBytes(6, DataUnit.gigabytes), mount: '/'),
          Partition(size: toBytes(2, DataUnit.gigabytes), mount: '/mnt/test'),
        ],
      ),
    ];

    await tester.runApp(() => app.main(<String>[]));
    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(type: StorageType.manual);
    await tester.testManualStoragePage(storage: storage);

    await tester.testIdentityPage(
      identity: const Identity(realname: 'a', hostname: 'b', username: 'c'),
      password: 'password',
    );

    await tester.testTimezonePage();
    await tester.testConfirmPage();
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    await verifySubiquityConfig(
      storage: [
        fakeDisk(
          path: '/dev/sda',
          partitions: [
            Partition(
              size: mibiAlign(toBytes(6, DataUnit.gigabytes)),
              mount: '/',
            ),
            Partition(
              size: mibiAlign(toBytes(2, DataUnit.gigabytes)),
              mount: '/mnt/test',
            ),
          ],
        ),
      ],
    );
  });

  // threebuntu-on-msdos has three existing ubuntu partitions:
  //   - 20.04.4 on sda1 (primary)
  //   - 21.10   on sda5 (logical)
  //   - 22.04   on sda6 (logical)
  testWidgets(
    'erase and install primary partition',
    (tester) => eraseInstallTest(
      tester: tester,
      machineConfig: 'examples/machines/threebuntu-on-msdos.json',
      target: GuidedStorageTargetEraseInstall(
        diskId: 'disk-sda',
        partitionNumber: 1,
      ),
      disks: [
        fakeDisk(
          path: '/dev/sda',
          partitions: [
            Partition(number: 1, preserve: false, mount: '/'),
            Partition(number: 5, preserve: true, path: '/dev/sda5'),
            Partition(number: 6, preserve: true, path: '/dev/sda6'),
          ],
        ),
      ],
    ),
  );

  // FIXME: this currently fails due to a known Subiquity bug with partition relabelling
  testWidgets(
    'erase and install first logical partition',
    skip: true,
    (tester) => eraseInstallTest(
      tester: tester,
      machineConfig: 'examples/machines/threebuntu-on-msdos.json',
      target: GuidedStorageTargetEraseInstall(
        diskId: 'disk-sda',
        partitionNumber: 5,
      ),
      disks: [
        fakeDisk(
          path: '/dev/sda',
          partitions: [
            Partition(number: 1, preserve: true, path: '/dev/sda1'),
            Partition(number: 5, preserve: false, mount: '/'),
            Partition(number: 6, preserve: true, path: '/dev/sda6'),
          ],
        ),
      ],
    ),
  );

  testWidgets(
    'erase and install last logical partition',
    (tester) => eraseInstallTest(
      tester: tester,
      machineConfig: 'examples/machines/threebuntu-on-msdos.json',
      target: GuidedStorageTargetEraseInstall(
        diskId: 'disk-sda',
        partitionNumber: 6,
      ),
      disks: [
        fakeDisk(
          path: '/dev/sda',
          partitions: [
            Partition(number: 1, preserve: true, path: '/dev/sda1'),
            Partition(number: 5, preserve: true, path: '/dev/sda5'),
            Partition(number: 6, preserve: false, mount: '/'),
          ],
        ),
      ],
    ),
  );

  testWidgets('erase windows with bitlocker', (tester) async {
    await tester.runApp(
      () => app.main(<String>[
        '--machine-config=examples/machines/win10.json',
        '--',
        '--bootloader=uefi',
      ]),
    );

    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(type: StorageType.erase, hasBitLocker: true);
    await tester.testGuidedCapabilityPage();

    await tester.testIdentityPage(
      identity: const Identity(realname: 'a', hostname: 'b', username: 'c'),
      password: 'password',
    );

    await tester.testTimezonePage();
    await tester.testConfirmPage(hasBitLocker: true);
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);
  });

  testWidgets('use gap alongside windows with bitlocker', (tester) async {
    await tester.runApp(
      () => app.main(<String>[
        '--machine-config=examples/machines/win11-and-free-space.json',
        '--',
        '--bootloader=uefi',
      ]),
    );

    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(
      type: StorageType.alongside,
      hasBitLocker: true,
    );
    await tester.testGuidedCapabilityPage();

    await tester.testIdentityPage(
      identity: const Identity(realname: 'a', hostname: 'b', username: 'c'),
      password: 'password',
    );

    await tester.testTimezonePage();
    await tester.testConfirmPage(hasBitLocker: true);
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    // size of sda4 - size of sda3 - start of sda4 from machine config
    final gapSize = 512 * (267100160 - 122880000 - 239616);

    await verifySubiquityConfig(
      storage: [
        fakeDisk(
          path: '/dev/sda',
          partitions: [
            Partition(
              number: 1,
              size: mibiAlign(512 * 204800),
              path: '/dev/sda1',
              preserve: true,
            ),
            Partition(
              number: 2,
              size: mibiAlign(512 * 32768),
              path: '/dev/sda2',
              preserve: true,
            ),
            Partition(
              number: 3,
              size: mibiAlign(512 * 122880000),
              path: '/dev/sda3',
              preserve: true,
            ),
            Partition(
              number: 4,
              size: mibiAlign(512 * 1331200),
              path: '/dev/sda4',
              preserve: true,
            ),
            Partition(
              number: 5,
              size: mibiAlign(gapSize),
              path: 'xxx',
              mount: '/',
            ),
          ],
        ),
      ],
    );
  });

  testWidgets('alongside windows', (tester) async {
    await tester.runApp(
      () => app.main(<String>[
        '--machine-config=examples/machines/win10-along-ubuntu.json',
        '--',
        '--bootloader=uefi',
      ]),
    );

    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(type: StorageType.alongside);
    await tester.testGuidedResizePage(size: 30);
    await tester.testGuidedCapabilityPage();

    await tester.testIdentityPage(
      identity: const Identity(realname: 'a', hostname: 'b', username: 'c'),
      password: 'password',
    );

    await tester.testTimezonePage();
    await tester.testConfirmPage();
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    const totalSize =
        512 * 166486126; // total size of sda3 from the machine config
    final newPartitionSize = mibiAlign(toBytes(30, DataUnit.gigabytes));

    await verifySubiquityConfig(
      storage: [
        fakeDisk(
          path: '/dev/sda',
          partitions: [
            Partition(
              number: 3,
              size: mibiAlign(totalSize - newPartitionSize, totalSize),
            ),
            Partition(number: 6, size: newPartitionSize, mount: '/'),
          ],
        ),
      ],
    );
  });

  testWidgets('resize existing ubuntu alongside windows with bitlocker',
      (tester) async {
    await tester.runApp(
      () => app.main(<String>[
        '--machine-config=examples/machines/win11-along-ubuntu.json',
        '--',
        '--bootloader=uefi',
      ]),
    );

    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testAutoinstallPage();
    await tester.testSourceSelectionPage();
    await tester.testCodecsAndDriversPage();
    await tester.testStoragePage(
      type: StorageType.alongside,
      hasBitLocker: true,
    );
    await tester.testGuidedResizePage(
      size: 30,
      hasBitLocker: true,
      existingOS: [
        OsProber(
          long: 'Windows Boot Manager',
          label: 'Windows',
          type: 'efi',
        ),
        OsProber(
          long: 'Ubuntu Plucky Puffin',
          label: 'Ubuntu',
          version: '25.04',
          type: 'linux',
        ),
      ],
    );
    await tester.testGuidedCapabilityPage();

    await tester.testIdentityPage(
      identity: const Identity(realname: 'a', hostname: 'b', username: 'c'),
      password: 'password',
    );

    await tester.testTimezonePage();
    await tester.testConfirmPage(hasBitLocker: true);
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapContinueTesting();
    await expectLater(windowClosed, completes);

    const totalSize =
        512 * 135788544; // total size of sda5 from the machine config
    final resizedSize = mibiAlign(totalSize - toBytes(30, DataUnit.gigabytes));

    await verifySubiquityConfig(
      storage: [
        fakeDisk(
          path: '/dev/sda',
          partitions: [
            Partition(
              number: 1,
              size: mibiAlign(512 * 204800),
              path: '/dev/sda1',
            ),
            Partition(
              number: 2,
              size: mibiAlign(512 * 32768),
              path: '/dev/sda2',
            ),
            Partition(
              number: 3,
              size: mibiAlign(512 * 131072000),
              path: '/dev/sda3',
            ),
            Partition(
              number: 4,
              size: mibiAlign(512 * 1331200),
              path: '/dev/sda4',
            ),
            Partition(
              number: 5,
              size: mibiAlign(resizedSize),
              path: '/dev/sda5',
            ),
            Partition(
              number: 6,
              size: mibiAlign(totalSize - resizedSize),
              path: 'xxx',
              mount: '/',
            ),
          ],
        ),
      ],
    );
  });

  testWidgets('welcome', (tester) async {
    await tester.runApp(() => app.main(<String>['--welcome']));
    await tester.pumpAndSettle();
    await tester.testLocalePage();
    await tester.testAccessibilityPage();
    await tester.testKeyboardPage();
    await tester.testNetworkPage(mode: ConnectMode.none);
    await tester.testRefreshPage();
    await tester.testTryOrInstallPage(option: TryOrInstallOption.installUbuntu);
    await tester.testAutoinstallPage();
  });

  testWidgets('semi-automated autoinstall', (tester) async {
    await tester.runApp(
      () => app.main(<String>[
        '--',
        '--autoinstall=examples/autoinstall/interactive.yaml',
      ]),
    );

    await tester.pumpAndSettle();
    await tester.testNetworkPage();
    await tester.testConfirmPage();
    await tester.testInstallPage();
    await tester.testDonePage();

    final windowClosed = YaruTestWindow.waitForClosed();
    await tester.tapRestartNow();
    await expectLater(windowClosed, completes);
  });
}

Future<void> eraseInstallTest({
  required WidgetTester tester,
  required String machineConfig,
  required GuidedStorageTargetEraseInstall target,
  required List<Disk> disks,
}) async {
  await tester.runApp(
    () => app.main(<String>[
      '--machine-config=$machineConfig',
      '--',
      '--bootloader=uefi',
    ]),
  );

  await tester.pumpAndSettle();
  await tester.testLocalePage();
  await tester.testAccessibilityPage();
  await tester.testKeyboardPage();
  await tester.testNetworkPage(mode: ConnectMode.none);
  await tester.testRefreshPage();
  await tester.testAutoinstallPage();
  await tester.testSourceSelectionPage();
  await tester.testCodecsAndDriversPage();
  await tester.testStoragePage(type: StorageTypeEraseInstall(target));
  await tester.testGuidedCapabilityPage();
  await tester.testIdentityPage(
    identity: const Identity(realname: 'a', hostname: 'b', username: 'c'),
    password: 'password',
  );
  await tester.testTimezonePage();
  await tester.testConfirmPage();
  await tester.testInstallPage();
  await tester.testDonePage();

  final windowClosed = YaruTestWindow.waitForClosed();
  await tester.tapContinueTesting();
  await expectLater(windowClosed, completes);

  // Verify that the correct partition was reused and that other partitions
  // are unmodified.

  final path = await getSubiquityLogFile('autoinstall-user-data');
  await expectLater(path, existsLater);

  final yaml = loadYaml(File(path).readAsStringSync());
  final actualStorage = yaml['autoinstall']['storage']['config'] as YamlList;

  for (final disk in disks) {
    final actualDisk = actualStorage.firstWhereOrNull(
      (d) => d['type'] == 'disk' && d['path'] == disk.path,
    );
    expect(actualDisk, isNotNull);

    for (final p in disk.partitions.whereType<Partition>()) {
      final actualPartition = actualStorage.firstWhereOrNull(
        (d) => d['type'] == 'partition' && d['number'] == p.number,
      );
      expect(actualPartition, isNotNull);
      expect(
        actualPartition['preserve'],
        equals(p.preserve),
        reason: 'partition ${p.number} preserve',
      );

      // 'xxx' is the placeholder used by Subiquity when it is modifying an existing partition
      final expectedPath = p.path ?? 'xxx';
      expect(
        actualPartition['path'],
        equals(expectedPath),
        reason: 'partition ${p.number} path',
      );

      // The storage config section in autoinstall-user-data is a flat list of maps
      // that vary in type (partition, format & mount) that we need to search through
      // in order to get back the full information for a given Partition.
      final id = actualPartition['id'] as String;
      final format = actualStorage.firstWhereOrNull(
        (d) => d['type'] == 'format' && d['volume'] == id,
      );

      if (p.mount == null) {
        expect(format, isNull);
      } else {
        expect(format, isNotNull);
        final mount = actualStorage.firstWhereOrNull(
          (d) => d['type'] == 'mount' && d['device'] == format['id'] as String,
        );
        expect(mount, isNotNull);
        expect(
          mount['path'],
          equals(p.mount),
          reason: 'partition ${p.number} mount',
        );
      }
    }
  }
}

Future<void> verifySubiquityConfig({
  Identity? identity,
  KeyboardSetting? keyboard,
  String? locale,
  String? timezone,
  List<Disk>? storage,
  GuidedCapability? capability,
}) async {
  final path = await getSubiquityLogFile('autoinstall-user-data');
  await expectLater(path, existsLater);

  final yaml = loadYaml(File(path).readAsStringSync());

  if (identity == const Identity()) {
    // OEM case: no idendity should be configured
    expect(yaml['autoinstall']['identity'], isNull);
  } else if (identity != null) {
    final actualIdentity = yaml['autoinstall']['identity'];
    expect(actualIdentity['hostname'], equals(identity.hostname));
    expect(actualIdentity['realname'], equals(identity.realname));
    expect(actualIdentity['username'], equals(identity.username));
  }

  if (keyboard != null) {
    final actualKeyboard = yaml['autoinstall']['keyboard'];
    if (keyboard.layout.isNotEmpty) {
      expect(actualKeyboard['layout'], equals(keyboard.layout));
    }
    if (keyboard.variant.isNotEmpty) {
      expect(actualKeyboard['variant'], equals(keyboard.variant));
    }
  }

  if (locale != null) {
    final actualLocale = yaml['autoinstall']['locale'];
    expect(actualLocale, equals(locale));
  }

  if (timezone != null) {
    final actualTimezone = yaml['autoinstall']['timezone'];
    expect(actualTimezone, equals(timezone));
  }

  final actualStorage = yaml['autoinstall']['storage']['config'] as YamlList;

  if (storage != null) {
    for (final disk in storage) {
      final actualDisk = actualStorage.firstWhereOrNull(
        (d) => d['type'] == 'disk' && d['path'] == disk.path,
      );
      expect(actualDisk, isNotNull);

      for (final partition in disk.partitions.whereType<Partition>()) {
        final actualPartition = actualStorage.firstWhereOrNull(
          (d) => d['type'] == 'partition' && d['size'] == partition.size,
        );
        expect(actualPartition, isNotNull);

        if (partition.mount != null) {
          final actualMount = actualStorage.firstWhereOrNull(
            (d) => d['type'] == 'mount' && d['path'] == partition.mount,
          );
          expect(actualMount, isNotNull);
        }
      }
    }
  }

  if (capability != null) {
    switch (capability) {
      case GuidedCapability.LVM:
        expect(
          actualStorage.where((config) => config['type'] == 'lvm_volgroup'),
          isNotEmpty,
        );
        break;
      case GuidedCapability.LVM_LUKS:
        expect(
          actualStorage.where((config) => config['type'] == 'lvm_volgroup'),
          isNotEmpty,
        );
        expect(
          actualStorage.where((config) => config['type'] == 'dm_crypt'),
          isNotEmpty,
        );
      case GuidedCapability.ZFS:
        expect(
          actualStorage.where((config) => config['type'] == 'zpool'),
          isNotEmpty,
        );
        break;
      case GuidedCapability.ZFS_LUKS_KEYSTORE:
        expect(
          actualStorage.where((config) => config['type'] == 'zpool'),
          isNotEmpty,
        );
        expect(
          actualStorage.where((config) => config['type'] == 'dm_crypt'),
          isNotEmpty,
        );
        break;
      case GuidedCapability.CORE_BOOT_ENCRYPTED:
        expect(
          actualStorage
              .where((config) => config['path'] == '/dev/mapper/ubuntu-data'),
          isNotEmpty,
        );
        expect(
          actualStorage
              .where((config) => config['path'] == '/dev/mapper/ubuntu-save'),
          isNotEmpty,
        );
        break;
      default:
        break;
    }
  }
}

class FakeDesktopService implements DesktopService {
  @override
  Future<void> inhibit() async {}

  @override
  Future<void> close() async {}
}

class FakeConfigService extends ConfigService {
  FakeConfigService({this.mode = ProvisioningMode.standard});
  final ProvisioningMode mode;

  @override
  Future<ProvisioningMode> get provisioningMode async => mode;
}

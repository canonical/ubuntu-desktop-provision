import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

import '../source/test_source.dart';
import '../storage/test_storage.dart';
import 'test_confirm.dart';

final testDisks = <Disk>[
  fakeDisk(
    path: '/dev/sda',
    size: 12,
    partitions: [
      const Partition(
        path: '/dev/sda1',
        number: 1,
        size: 11,
        mount: '/mnt/1',
        format: 'ext',
        preserve: false,
      ),
      const Partition(
        path: '/dev/sda2',
        number: 2,
        size: 22,
        mount: '/mnt/2',
        format: 'ext2',
        preserve: false,
      )
    ],
  ),
  fakeDisk(
    path: '/dev/sdb',
    size: 23,
    partitions: [
      const Partition(
        path: '/dev/sdb3',
        number: 3,
        size: 33,
        wipe: 'superblock',
        mount: '/mnt/3',
        format: 'ext3',
      ),
      const Partition(
        path: '/dev/sdb4',
        number: 4,
        size: 44,
        wipe: 'superblock',
        format: 'ext4',
      ),
      const Partition(
        path: '/dev/sdb5',
        number: 5,
        size: 55,
        mount: '/mnt/5',
      ),
      const Partition(
        path: '/dev/sdb6',
        number: 6,
        size: 66,
        resize: true,
      ),
      const Partition(
        path: '/dev/sdb7',
        number: 7,
        preserve: false,
        wipe: 'superblock',
      ),
    ],
  ),
];

void main() {
  setUp(() {
    final mockInstallerService = MockInstallerService();
    when(mockInstallerService.monitorStatus()).thenAnswer(
      (_) => Stream.value(fakeApplicationStatus(ApplicationState.RUNNING)),
    );
    registerMockService<PageConfigService>(MockPageConfigService());
    registerMockService<ThemeVariantService>(MockThemeVariantService());
    registerMockService<InstallerService>(mockInstallerService);
    registerMockService<RefreshService>(MockRefreshService());
  });

  testWidgets('general summary', (tester) async {
    final confirm = buildConfirmModel(disks: testDisks, partitions: {
      testDisks.first.sysname: testDisks.first.partitions.cast<Partition>(),
      testDisks.last.sysname: testDisks.last.partitions.cast<Partition>(),
    });
    final storage = buildStorageModel();
    final source = buildSourceModel();
    await tester.pumpApp(
      (_) => buildConfirmPage(
        confirm: confirm,
        storage: storage,
        source: source,
      ),
    );

    final context = tester.element(find.byType(ConfirmPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.text(l10n.installationTypeErase('Ubuntu')), findsOneWidget);

    for (final disk in testDisks) {
      expect(find.byKey(ValueKey(disk)), findsOneWidget);

      for (final partition in disk.partitions.whereType<Partition>()) {
        expect(find.byKey(ValueKey(partition)), findsOneWidget);
      }
    }

    expect(find.text(l10n.fullInstallationTitle), findsOneWidget);
  });

  testWidgets('security and more summary', (tester) async {
    final confirm =
        buildConfirmModel(guidedCapability: GuidedCapability.LVM_LUKS);
    final storage = buildStorageModel();
    final source = buildSourceModel(installDrivers: true);
    await tester.pumpApp(
      (_) => buildConfirmPage(
        confirm: confirm,
        storage: storage,
        source: source,
      ),
    );

    final context = tester.element(find.byType(ConfirmPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.text(l10n.confirmDiskEncryptionLVM), findsOneWidget);
    expect(find.text(l10n.confirmProprietarySoftwareDrivers), findsOneWidget);
  });

  testWidgets('partition change summary', (tester) async {
    final confirm = buildConfirmModel(disks: testDisks, partitions: {
      testDisks.first.sysname: testDisks.first.partitions.cast<Partition>(),
      testDisks.last.sysname: testDisks.last.partitions.cast<Partition>(),
    }, originals: {
      'sdb': [const Partition(number: 6, size: 123)],
    });
    final storage = buildStorageModel();
    final source = buildSourceModel();
    await tester.pumpApp(
      (_) => buildConfirmPage(
        confirm: confirm,
        storage: storage,
        source: source,
      ),
    );

    final context = tester.element(find.byType(ConfirmPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
        find.html(l10n.confirmPartitionFormatMount('sdb3', 'ext3', '/mnt/3')),
        findsOneWidget);
    expect(
        find.html(l10n.confirmPartitionFormat('sdb4', 'ext4')), findsOneWidget);
    expect(find.html(l10n.confirmPartitionMount('sdb5', '/mnt/5')),
        findsOneWidget);
    expect(find.html(l10n.confirmPartitionResize('sdb6', '123 B', '66 B')),
        findsOneWidget);
    expect(find.html(l10n.confirmPartitionCreate('sdb7')), findsOneWidget);
  });

  testWidgets('starts installation', (tester) async {
    final confirm = buildConfirmModel();
    final storage = buildStorageModel();
    final source = buildSourceModel();
    await tester.pumpApp(
      (_) => buildConfirmPage(
        confirm: confirm,
        storage: storage,
        source: source,
      ),
    );

    final context = tester.element(find.byType(ConfirmPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final installButton = find.button(l10n.confirmInstallButton);
    expect(installButton, findsOneWidget);

    await tester.tap(installButton);
    verifyNever(confirm.startInstallation());

    await tester.pumpAndSettle(kThemeAnimationDuration);
    verify(confirm.markNetworkConfigured()).called(1);
    verify(confirm.startInstallation()).called(1);
  });
}

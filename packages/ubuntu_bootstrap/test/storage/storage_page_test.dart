import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_page.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_storage.dart';

void main() {
  Widget buildPage(StorageModel model) {
    final pageImages = PageImages(MockPageConfigService());
    return ProviderScope(
      overrides: [
        storageModelProvider.overrideWith((_) => model),
        pageImagesProvider.overrideWith((_) => pageImages),
      ],
      child: const StoragePage(),
    );
  }

  testWidgets('no existing OS', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 1000));
    await tester.pumpApp((_) => buildPage(buildStorageModel()));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.text(l10n.installationTypeNoOSDetected),
      findsOneWidget,
    );
  });

  testWidgets('one existing OS', (tester) async {
    final model = buildStorageModel(existingOS: [
      const OsProber(long: 'Ubuntu 18.04 LTS', label: 'Ubuntu', type: 'ext4')
    ]);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.text(l10n.installationTypeOSDetected('Ubuntu 18.04 LTS')),
      findsOneWidget,
    );
  });

  testWidgets('two existing OSes', (tester) async {
    final model = buildStorageModel(existingOS: [
      const OsProber(long: 'Ubuntu 18.04 LTS', label: 'Ubuntu', type: 'ext4'),
      const OsProber(long: 'Ubuntu 20.04 LTS', label: 'Ubuntu', type: 'ext4')
    ]);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.text(l10n.installationTypeDualOSDetected(
          'Ubuntu 18.04 LTS', 'Ubuntu 20.04 LTS')),
      findsOneWidget,
    );
  });

  testWidgets('multiple existing OSes', (tester) async {
    final model = buildStorageModel(existingOS: [
      const OsProber(long: 'Windows 10', label: 'windows', type: 'ntfs'),
      const OsProber(long: 'Ubuntu 20.04 LTS', label: 'Ubuntu', type: 'ext4'),
      const OsProber(long: 'Ubuntu 20.04 LTS', label: 'Ubuntu', type: 'ext4')
    ]);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.text(l10n.installationTypeMultiOSDetected),
      findsOneWidget,
    );
  });

  testWidgets('duplicate existing OSes', (tester) async {
    final model = buildStorageModel(existingOS: [
      const OsProber(long: 'Ubuntu 20.04 LTS', label: 'Ubuntu', type: 'ext4'),
      const OsProber(long: 'Ubuntu 20.04 LTS', label: 'Ubuntu', type: 'ext4')
    ]);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.text(l10n.installationTypeMultiOSDetected),
      findsOneWidget,
    );
  });

  testWidgets('alongside windows', (tester) async {
    final model = buildStorageModel(
      productInfo: ProductInfo(name: 'Ubuntu 22.10'),
      existingOS: [
        const OsProber(
          long: 'Windows 10',
          label: 'WIN10',
          version: '10',
          type: 'ntfs',
        ),
      ],
      canInstallAlongside: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioButton<StorageType>(
        l10n.installationTypeAlongside('Ubuntu 22.10', 'Windows 10'));
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = StorageType.alongside).called(1);
  });

  testWidgets('alongside bitlocker', (tester) async {
    final model = buildStorageModel(
      productInfo: ProductInfo(name: 'Ubuntu 22.10'),
      existingOS: [
        const OsProber(
          long: 'Windows 11',
          label: 'WIN11',
          version: '11',
          type: 'BitLocker',
        ),
      ],
      canInstallAlongside: false,
      hasBitLocker: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioButton<StorageType>(
        l10n.installationTypeAlongside('Ubuntu 22.10', 'Windows 11'));
    expect(radio, findsOneWidget);

    await tester.tap(radio);
    verify(model.type = StorageType.alongside).called(1);
  });

  testWidgets('alongside ubuntu', (tester) async {
    final model = buildStorageModel(
      productInfo: ProductInfo(name: 'Ubuntu 22.10'),
      existingOS: [
        const OsProber(
          long: 'Ubuntu 18.04 LTS',
          label: 'Ubuntu',
          version: '18.04 LTS',
          type: 'ext4',
        ),
      ],
      canInstallAlongside: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioButton<StorageType>(
        l10n.installationTypeAlongside('Ubuntu 22.10', 'Ubuntu 18.04 LTS'));
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = StorageType.alongside).called(1);
  });

  testWidgets('alongside unknown', (tester) async {
    final model = buildStorageModel(
      productInfo: ProductInfo(name: 'Ubuntu 22.10'),
      canInstallAlongside: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioButton<StorageType>(
        l10n.installationTypeAlongsideUnknown('Ubuntu 22.10'));
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = StorageType.alongside).called(1);
  });

  testWidgets('alongside dual os', (tester) async {
    final model = buildStorageModel(
      productInfo: ProductInfo(name: 'Ubuntu 22.10'),
      existingOS: [
        const OsProber(
          long: 'Windows 10',
          label: 'WIN10',
          version: '10',
          type: 'ntfs',
        ),
        const OsProber(
          long: 'Ubuntu 20.04 LTS',
          label: 'Ubuntu',
          version: '20.04 LTS',
          type: 'ext4',
        ),
      ],
      canInstallAlongside: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioButton<StorageType>(
        l10n.installationTypeAlongsideDual(
            'Ubuntu 22.10', 'Windows 10', 'Ubuntu 20.04 LTS'));
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = StorageType.alongside).called(1);
  });

  testWidgets('alongside duplicate os', (tester) async {
    final model = buildStorageModel(
      productInfo: ProductInfo(name: 'Ubuntu 22.10'),
      existingOS: [
        const OsProber(
          long: 'Ubuntu 20.04 LTS',
          label: 'Ubuntu1',
          version: '20.04 LTS',
          type: 'ext4',
        ),
        const OsProber(
          long: 'Ubuntu 20.04 LTS',
          label: 'Ubuntu2',
          version: '20.04 LTS',
          type: 'ext4',
        ),
      ],
      canInstallAlongside: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioButton<StorageType>(
        l10n.installationTypeAlongsideMulti('Ubuntu 22.10'));
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = StorageType.alongside).called(1);
  });

  testWidgets('alongside multi os', (tester) async {
    final model = buildStorageModel(
      productInfo: ProductInfo(name: 'Ubuntu 22.10'),
      existingOS: [
        const OsProber(
          long: 'Windows 10',
          label: 'WIN10',
          version: '10',
          type: 'ntfs',
        ),
        const OsProber(
          long: 'Ubuntu 18.04 LTS',
          label: 'Ubuntu',
          version: '18.04 LTS',
          type: 'ext4',
        ),
        const OsProber(
          long: 'Ubuntu 20.04 LTS',
          label: 'Ubuntu',
          version: '20.04 LTS',
          type: 'ext4',
        ),
      ],
      canInstallAlongside: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioButton<StorageType>(
        l10n.installationTypeAlongsideMulti('Ubuntu 22.10'));
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = StorageType.alongside).called(1);
  });

  testWidgets('can erase disk', (tester) async {
    final model = buildStorageModel(canEraseDisk: true);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio =
        find.radioButton<StorageType>(l10n.installationTypeErase('Ubuntu'));
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = StorageType.erase).called(1);
  });

  testWidgets('cannot erase disk', (tester) async {
    final model = buildStorageModel(canEraseDisk: false);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio =
        find.radioButton<StorageType>(l10n.installationTypeErase('Ubuntu'));
    expect(radio, findsNothing);
  });

  testWidgets('can manual partition', (tester) async {
    final model = buildStorageModel(type: StorageType.manual);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioButton<StorageType>(l10n.installationTypeManual);
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = StorageType.manual).called(1);

    expect(find.button(l10n.installationTypeAdvancedLabel), isDisabled);
  });

  testWidgets('cannot manual partition', (tester) async {
    final model = buildStorageModel(canManualPartition: false);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioButton<StorageType>(l10n.installationTypeManual);
    expect(radio, findsNothing);
  });

  group('advanced features', () {
    testWidgets('dialog', (tester) async {
      final model = buildStorageModel();
      await tester.pumpWidget(
          ProviderScope(child: tester.buildApp((_) => buildPage(model))));

      final context = tester.element(find.byType(StoragePage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      final button = find.button(l10n.installationTypeAdvancedLabel);
      expect(button, findsOneWidget);
      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.byType(AlertDialog), findsOneWidget);
    });

    testWidgets('none selected', (tester) async {
      final model = buildStorageModel();
      await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

      final context = tester.element(find.byType(StoragePage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      expect(find.text(l10n.installationTypeNoneSelected), findsOneWidget);
    });

    testWidgets('lvm selected', (tester) async {
      final model = buildStorageModel(guidedCapability: GuidedCapability.LVM);
      await tester.pumpApp((_) => buildPage(model));

      final context = tester.element(find.byType(StoragePage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      expect(find.text(l10n.installationTypeLVMSelected), findsOneWidget);
    });

    testWidgets('encrypted lvm selected', (tester) async {
      final model =
          buildStorageModel(guidedCapability: GuidedCapability.LVM_LUKS);
      await tester.pumpApp((_) => buildPage(model));

      final context = tester.element(find.byType(StoragePage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      expect(find.text(l10n.installationTypeLVMEncryptionSelected),
          findsOneWidget);
    });

    testWidgets('zfs selected', (tester) async {
      final model = buildStorageModel(guidedCapability: GuidedCapability.ZFS);
      await tester.pumpApp((_) => buildPage(model));

      final context = tester.element(find.byType(StoragePage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      expect(find.text(l10n.installationTypeZFSSelected), findsOneWidget);
    });

    testWidgets('no advanced features', (tester) async {
      final model = buildStorageModel(hasAdvancedFeatures: false);
      await tester.pumpApp((_) => buildPage(model));

      final context = tester.element(find.byType(StoragePage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      expect(find.text(l10n.installationTypeAdvancedLabel), findsNothing);
    });
  });

  testWidgets('no capabilities', (tester) async {
    final model = buildStorageModel(
        canEraseDisk: false,
        canInstallAlongside: false,
        canManualPartition: false);
    await tester.pumpApp((_) => buildPage(model));

    expect(find.button(find.nextLabel), isDisabled);

    await tester.tapNext();
    verifyNever(model.save());
  });

  testWidgets('can erase disk', (tester) async {
    final model = buildStorageModel(canEraseDisk: true);
    await tester.pumpApp((_) => buildPage(model));

    expect(find.button(find.nextLabel), isEnabled);

    await tester.tapNext();
    verify(model.save()).called(1);
  });

  testWidgets('can install alongside', (tester) async {
    final model = buildStorageModel(canInstallAlongside: true);
    await tester.pumpApp((_) => buildPage(model));

    expect(find.button(find.nextLabel), isEnabled);

    await tester.tapNext();
    verify(model.save()).called(1);
  });

  testWidgets('can manual partition', (tester) async {
    final model = buildStorageModel(canManualPartition: true);
    await tester.pumpApp((_) => buildPage(model));

    await tester.tapNext();
    verify(model.save()).called(1);
  });
}

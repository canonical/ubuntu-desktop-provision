// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_capabilities_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_page.dart';
import 'package:ubuntu_bootstrap/widgets/bitlocker_warning.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_storage.dart';

void main() {
  Widget buildPage(StorageModel model) {
    final pageImages = PageImages.internal(
      MockPageConfigService(),
      MockThemeVariantService(),
    );
    return ProviderScope(
      overrides: [
        storageModelProvider.overrideWith((_) => model),
        pageImagesProvider.overrideWith((_) => pageImages),
      ],
      child: StoragePage(),
    );
  }

  Widget buildGuidedCapabilitiesPage(StorageModel model) {
    final pageImages = PageImages.internal(
      MockPageConfigService(),
      MockThemeVariantService(),
    );
    return ProviderScope(
      overrides: [
        storageModelProvider.overrideWith((_) => model),
        pageImagesProvider.overrideWith((_) => pageImages),
      ],
      child: GuidedCapabilitiesPage(),
    );
  }

  testWidgets('no existing OS', (tester) async {
    await tester.pumpApp((_) => buildPage(buildStorageModel()));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.text(l10n.installationTypeHeader('Ubuntu')),
      findsOneWidget,
    );
  });

  testWidgets('one existing OS', (tester) async {
    const osProber = OsProber(
      long: 'Ubuntu 18.04 LTS',
      label: 'Ubuntu',
      type: 'ext4',
    );
    const productInfo = ProductInfo(name: 'Ubuntu');
    final model = buildStorageModel(
      existingOS: [osProber],
      productInfo: productInfo,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.radioListTile(
        l10n.installationTypeAlongside(productInfo.name, osProber.long),
      ),
      findsOneWidget,
    );
  });

  testWidgets('two existing OSes', (tester) async {
    final osProbers = [
      const OsProber(long: 'Ubuntu 18.04 LTS', label: 'Ubuntu', type: 'ext4'),
      const OsProber(long: 'Ubuntu 20.04 LTS', label: 'Ubuntu', type: 'ext4'),
    ];
    const productInfo = ProductInfo(name: 'Ubuntu');
    final model = buildStorageModel(
      existingOS: osProbers,
      productInfo: productInfo,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.radioListTile(
        l10n.installationTypeAlongsideDual(
          productInfo.name,
          osProbers[0].long,
          osProbers[1].long,
        ),
      ),
      findsOneWidget,
    );
  });

  testWidgets('multiple existing OSes', (tester) async {
    const productInfo = ProductInfo(name: 'Ubuntu');
    final model = buildStorageModel(
      existingOS: [
        const OsProber(long: 'Windows 10', label: 'windows', type: 'ntfs'),
        const OsProber(long: 'Ubuntu 20.04 LTS', label: 'Ubuntu', type: 'ext4'),
        const OsProber(long: 'Ubuntu 20.04 LTS', label: 'Ubuntu', type: 'ext4'),
      ],
      productInfo: productInfo,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.radioListTile(l10n.installationTypeAlongsideMulti(productInfo.name)),
      findsOneWidget,
    );
  });

  testWidgets('duplicate existing OSes', (tester) async {
    const productInfo = ProductInfo(name: 'Ubuntu');
    final model = buildStorageModel(
      existingOS: [
        const OsProber(long: 'Ubuntu 20.04 LTS', label: 'Ubuntu', type: 'ext4'),
        const OsProber(long: 'Ubuntu 20.04 LTS', label: 'Ubuntu', type: 'ext4'),
      ],
      productInfo: productInfo,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.radioListTile(l10n.installationTypeAlongsideMulti(productInfo.name)),
      findsOneWidget,
    );
  });

  testWidgets('alongside windows', (tester) async {
    const osProber = OsProber(
      long: 'Windows 10',
      label: 'WIN10',
      version: '10',
      type: 'ntfs',
    );
    final model = buildStorageModel(
      existingOS: [osProber],
      canInstallAlongside: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioListTile(
      l10n.installationTypeAlongside('Ubuntu', osProber.long),
    );
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = argThat(isA<StorageTypeAlongside>())).called(1);
  });

  testWidgets('fake alongside bitlocker', (tester) async {
    const osProber = OsProber(
      long: 'Windows 11',
      label: 'WIN11',
      version: '11',
      type: 'BitLocker',
    );
    final model = buildStorageModel(
      existingOS: [osProber],
      canInstallAlongside: false,
      hasBitLocker: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioListTile(
      l10n.installationTypeAlongside('Ubuntu', osProber.long),
    );
    expect(radio, findsOneWidget);
    expect(radio, isDisabled);
    expect(find.byType(BitlockerInfoBox), findsOneWidget);
  });

  testWidgets('alongside bitlocker', (tester) async {
    const osProber = OsProber(
      long: 'Windows 11',
      label: 'WIN11',
      version: '11',
      type: 'BitLocker',
    );
    final model = buildStorageModel(
      existingOS: [osProber],
      canInstallAlongside: true,
      hasBitLocker: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioListTile(
      l10n.installationTypeAlongside('Ubuntu', osProber.long),
    );
    expect(radio, findsOneWidget);
    expect(radio, isEnabled);
    expect(find.byType(BitlockerInfoBox), findsOneWidget);
  });

  testWidgets('alongside ubuntu', (tester) async {
    const osProber = OsProber(
      long: 'Ubuntu 18.04 LTS',
      label: 'Ubuntu',
      version: '18.04 LTS',
      type: 'ext4',
    );
    final model = buildStorageModel(
      existingOS: [osProber],
      canInstallAlongside: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioListTile(
      l10n.installationTypeAlongside('Ubuntu', 'Ubuntu 18.04 LTS'),
    );
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = argThat(isA<StorageTypeAlongside>())).called(1);
  });

  testWidgets('alongside unknown', (tester) async {
    final model = buildStorageModel(
      canInstallAlongside: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioListTile(
      l10n.installationTypeAlongsideUnknown('Ubuntu'),
    );
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = argThat(isA<StorageTypeAlongside>())).called(1);
  });

  testWidgets('alongside dual os', (tester) async {
    final model = buildStorageModel(
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

    final radio = find.radioListTile(
      l10n.installationTypeAlongsideDual(
        'Ubuntu',
        'Windows 10',
        'Ubuntu 20.04 LTS',
      ),
    );
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = argThat(isA<StorageTypeAlongside>())).called(1);
  });

  testWidgets('alongside duplicate os', (tester) async {
    final model = buildStorageModel(
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

    final radio = find.radioListTile(
      l10n.installationTypeAlongsideMulti('Ubuntu'),
    );
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = argThat(isA<StorageTypeAlongside>())).called(1);
  });

  testWidgets('alongside multi os', (tester) async {
    final model = buildStorageModel(
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

    final radio = find.radioListTile(
      l10n.installationTypeAlongsideMulti('Ubuntu'),
    );
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = argThat(isA<StorageTypeAlongside>())).called(1);
  });

  testWidgets('can erase disk', (tester) async {
    final model = buildStorageModel(canEraseDisk: true);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioListTile(l10n.installationTypeErase('Ubuntu'));
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = argThat(isA<StorageTypeErase>())).called(1);
  });

  testWidgets('cannot erase disk', (tester) async {
    final model = buildStorageModel(canEraseDisk: false);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioListTile(l10n.installationTypeErase('Ubuntu'));
    expect(radio, findsNothing);
  });

  testWidgets('can manual partition', (tester) async {
    final model = buildStorageModel(type: StorageTypeManual());
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioListTile(l10n.installationTypeManual);
    await tester.ensureVisible(radio);
    expect(radio, findsOneWidget);
    await tester.tap(radio);
    verify(model.type = argThat(isA<StorageTypeManual>())).called(1);
  });

  testWidgets('cannot manual partition', (tester) async {
    final model = buildStorageModel(canManualPartition: false);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final radio = find.radioListTile(l10n.installationTypeManual);
    expect(radio, findsNothing);
  });

  group('advanced features', () {
    testWidgets('none', (tester) async {
      final model = buildStorageModel(
        showAdvanced: false,
        guidedCapability: GuidedCapability.LVM_LUKS,
      );

      await tester.pumpApp((_) => buildGuidedCapabilitiesPage(model));

      final context = tester.element(find.byType(GuidedCapabilitiesPage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      expect(find.text(l10n.installationTypeAdvancedLabel), findsOneWidget);
      expect(find.text(l10n.installationTypeNone), findsOneWidget);

      await tester.tap(find.text(l10n.installationTypeNone));

      verify(model.guidedCapability = GuidedCapability.DIRECT).called(1);
    });

    testWidgets('lvm luks', (tester) async {
      final model = buildStorageModel(showAdvanced: true);

      await tester.pumpApp((_) => buildGuidedCapabilitiesPage(model));

      final context = tester.element(find.byType(GuidedCapabilitiesPage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      expect(find.text(l10n.installationTypeAdvancedLabel), findsNothing);
      expect(find.text(l10n.installationTypeLVMEncryption), findsOneWidget);

      await tester.tap(find.text(l10n.installationTypeLVMEncryption));

      verify(model.guidedCapability = GuidedCapability.LVM_LUKS).called(1);
    });

    testWidgets('lvm', (tester) async {
      final model = buildStorageModel(showAdvanced: true);

      await tester.pumpApp((_) => buildGuidedCapabilitiesPage(model));

      final context = tester.element(find.byType(GuidedCapabilitiesPage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      expect(find.text(l10n.installationTypeAdvancedLabel), findsNothing);
      expect(find.text(l10n.installationTypeLVM), findsOneWidget);

      await tester.tap(find.text(l10n.installationTypeLVM));

      verify(model.guidedCapability = GuidedCapability.LVM).called(1);
    });

    testWidgets('zfs', (tester) async {
      final model = buildStorageModel(showAdvanced: true);

      await tester.pumpApp((_) => buildGuidedCapabilitiesPage(model));

      final context = tester.element(find.byType(GuidedCapabilitiesPage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      await tester.scrollUntilVisible(
        find.text(l10n.installationTypeZFS),
        -kMinInteractiveDimension / 2,
        scrollable: find.byType(Scrollable).last,
      );

      await tester.pump();

      expect(find.text(l10n.installationTypeAdvancedLabel), findsNothing);
      expect(find.text(l10n.installationTypeZFS), findsOneWidget);

      await tester.tap(find.text(l10n.installationTypeZFS));

      verify(model.guidedCapability = GuidedCapability.ZFS).called(1);
    });

    testWidgets('zfs luks', (tester) async {
      final model = buildStorageModel(showAdvanced: true);

      await tester.pumpApp((_) => buildGuidedCapabilitiesPage(model));

      final context = tester.element(find.byType(GuidedCapabilitiesPage));
      final l10n = UbuntuBootstrapLocalizations.of(context);

      await tester.scrollUntilVisible(
        find.text(l10n.installationTypeZFSEncryption),
        -kMinInteractiveDimension / 2,
        scrollable: find.byType(Scrollable).last,
      );

      await tester.pump();

      expect(find.text(l10n.installationTypeAdvancedLabel), findsNothing);
      expect(find.text(l10n.installationTypeZFSEncryption), findsOneWidget);

      await tester.tap(find.text(l10n.installationTypeZFSEncryption));

      verify(model.guidedCapability = GuidedCapability.ZFS_LUKS_KEYSTORE)
          .called(1);
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
      canManualPartition: false,
    );
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

  testWidgets('reset storage on return', (tester) async {
    final model = buildStorageModel();
    await tester.pumpApp((_) => buildPage(model));

    await tester.tapNext();
    await tester.pumpAndSettle();
    await tester.tapBack();
    await tester.pumpAndSettle();
    verify(model.resetStorage()).called(1);
  });
}

extension on CommonFinders {
  Finder radioListTile(String text) {
    return widgetWithText(
      YaruRadioListTile<StorageType>,
      text,
    );
  }
}

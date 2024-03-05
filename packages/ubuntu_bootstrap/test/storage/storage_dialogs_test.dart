import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_dialogs.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_page.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_storage.dart';

void main() {
  Widget buildPage(WidgetTester tester, StorageModel model) {
    final pageImages = PageImages(MockPageConfigService());
    return ProviderScope(
      overrides: [
        storageModelProvider.overrideWith((_) => model),
        pageImagesProvider.overrideWith((_) => pageImages),
      ],
      child: tester.buildApp((_) => StoragePage()),
    );
  }

  testWidgets('select zfs', (tester) async {
    final model = buildStorageModel();
    await tester.pumpWidget(buildPage(tester, model));

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    await tester.tap(find.radio(GuidedCapability.ZFS));
    await tester.pump();

    await tester.tapOk();
    await result;

    verify(model.guidedCapability = GuidedCapability.ZFS).called(1);
  });

  testWidgets('select lvm', (tester) async {
    final model = buildStorageModel();
    await tester.pumpWidget(buildPage(tester, model));

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    await tester.tap(find.radio(GuidedCapability.LVM));
    await tester.pump();

    await tester.tapOk();
    await result;

    verify(model.guidedCapability = GuidedCapability.LVM).called(1);
  });

  testWidgets('select encrypted lvm', (tester) async {
    final model = buildStorageModel();
    await tester.pumpWidget(buildPage(tester, model));

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    await tester.tap(find.radio(GuidedCapability.LVM_LUKS));
    await tester.pump();

    await tester.tapOk();
    await result;

    verify(model.guidedCapability = GuidedCapability.LVM_LUKS).called(1);
  });

  testWidgets('tpm supported', (tester) async {
    final model = buildStorageModel(
      hasTpm: true,
      hasDirect: false,
      hasLvm: false,
      hasZfs: false,
      scenario: SecureBootScenarios.supported,
    );

    await tester.pumpWidget(buildPage(tester, model));

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    expect(find.radio(GuidedCapability.DIRECT), findsNothing);
    expect(find.radio(GuidedCapability.LVM), findsNothing);
    expect(find.radio(GuidedCapability.LVM_LUKS), findsNothing);
    expect(find.radio(GuidedCapability.ZFS), findsNothing);
    expect(find.radio(GuidedCapability.ZFS_LUKS_KEYSTORE), findsNothing);
    expect(find.radio(GuidedCapability.CORE_BOOT_ENCRYPTED), findsOneWidget);

    final finder = find.radio(GuidedCapability.CORE_BOOT_ENCRYPTED);
    await tester.tap(finder);
    await tester.pump();
    await tester.tapOk();
    await result;

    verify(model.guidedCapability = GuidedCapability.CORE_BOOT_ENCRYPTED)
        .called(1);
  });

  testWidgets('tpm requires uefi and secure boot', (tester) async {
    final model = buildStorageModel(
      hasTpm: true,
      scenario: SecureBootScenarios.bios,
    );
    await tester.pumpWidget(buildPage(tester, model));

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    final finder = find.radio(GuidedCapability.CORE_BOOT_ENCRYPTED);
    expect(finder, findsOneWidget);
    expect(finder, isDisabled);

    await tester.pump();
    await tester.tapCancel();

    await result;
    expect(model.guidedCapability, GuidedCapability.DIRECT);
  });

  testWidgets('tpm not present', (tester) async {
    final model = buildStorageModel(
      scenario: SecureBootScenarios.noTpm,
    );
    await tester.pumpWidget(buildPage(tester, model));

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    final finder = find.radio(GuidedCapability.CORE_BOOT_ENCRYPTED);
    expect(finder, findsOneWidget);
    expect(finder, isDisabled);

    await tester.pump();
    await tester.tapCancel();

    await result;
    expect(model.guidedCapability, GuidedCapability.DIRECT);
  });

  testWidgets('tpm incompatible with third party drivers', (tester) async {
    final model = buildStorageModel(
      hasTpm: true,
      scenario: SecureBootScenarios.thirdPartyDrivers,
    );
    await tester.pumpWidget(buildPage(tester, model));

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    final finder = find.radio(GuidedCapability.CORE_BOOT_ENCRYPTED);
    expect(finder, findsOneWidget);
    expect(finder, isDisabled);

    await tester.pump();
    await tester.tapCancel();

    await result;
    expect(model.guidedCapability, GuidedCapability.DIRECT);
  });
}

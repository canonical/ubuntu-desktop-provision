import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
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
      child: tester.buildApp((_) => const StoragePage()),
    );
  }

  testWidgets('select zfs', (tester) async {
    final model = buildStorageModel();
    await tester.binding.setSurfaceSize(const Size(900, 900));
    await tester.pumpWidget(buildPage(tester, model));

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    await tester.tap(find.radio(AdvancedFeature.zfs));
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

    await tester.tap(find.radio(AdvancedFeature.lvm));
    await tester.pump();

    await tester.tapOk();
    await result;

    verify(model.guidedCapability = GuidedCapability.LVM).called(1);
  });

  testWidgets('select encrypted lvm', (tester) async {
    final model = buildStorageModel();
    await tester.pumpWidget(buildPage(tester, model));

    final context = tester.element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    await tester.tap(find.radio(AdvancedFeature.lvm));
    await tester.pump();

    await tester.tap(find.checkButton(l10n.installationTypeEncrypt('Ubuntu')));
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

    expect(find.radio(AdvancedFeature.none), findsNothing);
    expect(find.radio(AdvancedFeature.lvm), findsNothing);
    expect(find.radio(AdvancedFeature.zfs), findsNothing);
    expect(find.radio(AdvancedFeature.tpm), findsOneWidget);

    final finder = find.radio(AdvancedFeature.tpm);
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

    final finder = find.radio(AdvancedFeature.tpm);
    expect(finder, findsOneWidget);
    expect(finder, isDisabled);

    await tester.pump();
    await tester.tapCancel();

    await result;
    expect(model.guidedCapability, GuidedCapability.DIRECT);
  });

  testWidgets('tpm not present', (tester) async {
    final model = buildStorageModel(
      hasTpm: false,
      scenario: SecureBootScenarios.noTpm,
    );
    await tester.pumpWidget(buildPage(tester, model));

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    final finder = find.radio(AdvancedFeature.tpm);
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

    final finder = find.radio(AdvancedFeature.tpm);
    expect(finder, findsOneWidget);
    expect(finder, isDisabled);

    await tester.pump();
    await tester.tapCancel();

    await result;
    expect(model.guidedCapability, GuidedCapability.DIRECT);
  });
}

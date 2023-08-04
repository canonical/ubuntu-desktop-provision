import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_dialogs.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_page.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_storage.dart';

void main() {
  testWidgets('select zfs', (tester) async {
    final model = buildStorageModel();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [storageModelProvider.overrideWith((_) => model)],
        child: tester.buildApp((_) => const StoragePage()),
      ),
    );

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

    await tester.pumpWidget(
      ProviderScope(
        overrides: [storageModelProvider.overrideWith((_) => model)],
        child: tester.buildApp((_) => const StoragePage()),
      ),
    );

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

    await tester.pumpWidget(
      ProviderScope(
        overrides: [storageModelProvider.overrideWith((_) => model)],
        child: tester.buildApp((_) => const StoragePage()),
      ),
    );

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

  testWidgets('select tpm', (tester) async {
    final model = buildStorageModel(
      hasTpm: true,
      hasDirect: false,
      hasLvm: false,
      hasZfs: false,
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [storageModelProvider.overrideWith((_) => model)],
        child: tester.buildApp((_) => const StoragePage()),
      ),
    );

    final result = showAdvancedFeaturesDialog(
        tester.element(find.byType(StoragePage)), model);
    await tester.pumpAndSettle();

    expect(find.radio(AdvancedFeature.none), findsNothing);
    expect(find.radio(AdvancedFeature.lvm), findsNothing);
    expect(find.radio(AdvancedFeature.zfs), findsNothing);
    expect(find.radio(AdvancedFeature.tpm), findsOneWidget);

    await tester.tap(find.radio(AdvancedFeature.tpm));
    await tester.pump();

    await tester.tapOk();
    await result;

    verify(model.guidedCapability = GuidedCapability.CORE_BOOT_ENCRYPTED)
        .called(1);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_capabilities_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_x.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/src/wizard_tester.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:yaru_test/yaru_test.dart';

extension UbuntuBootstrapPageTester on WidgetTester {
  Future<void> testTryOrInstallPage({
    TryOrInstallOption? option,
    String? screenshot,
  }) async {
    await pumpUntilPage(TryOrInstallPage);

    final context = element(find.byType(TryOrInstallPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.tryOrInstallTitle('Ubuntu')), findsOneWidget);

    if (option != null) {
      await tap(find.radio<TryOrInstallOption>(option));
      await pump();
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testAutoinstallPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(AutoinstallPage);

    final context = element(find.byType(AutoinstallPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.autoinstallTitle), findsOneWidget);

    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testLandscapePage({
    String? screenshot,
  }) async {
    await pumpUntilPage(AutoinstallLandscapeQrPage);

    final context = element(find.byType(AutoinstallLandscapeQrPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.landscapePageTitle), findsOneWidget);

    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testRstPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(RstPage);

    final context = element(find.byType(RstPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.rstTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapButton(l10n.restartComputer);
    await pumpAndSettle();
    expect(find.byType(AlertDialog), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot('$screenshot-confirm');
    }
  }

  Future<void> testRefreshPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(RefreshPage);

    final context = element(find.byType(RefreshPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.refreshPageTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapSkip();
    await pumpAndSettle();
  }

  Future<void> testSourceSelectionPage({
    String? sourceId,
    String? screenshot,
  }) async {
    await pumpUntilPage(SourceSelectionPage);

    final context = element(find.byType(SourceSelectionPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.updatesOtherSoftwarePageTitle), findsOneWidget);

    if (sourceId != null) {
      final radio = find.radio<String?>(sourceId);
      await ensureVisible(radio);
      await tap(radio);
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testCodecsAndDriversPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(CodecsAndDriversPage);

    final context = element(find.byType(CodecsAndDriversPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.codecsAndDriversPageTitle), findsOneWidget);
    //final checkbox = find.text(l10n.installDriversTitle);
    //await tap(checkbox);
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testNotEnoughDiskSpacePage({
    String? screenshot,
  }) async {
    await pumpUntilPage(NotEnoughDiskSpacePage);

    final context = element(find.byType(NotEnoughDiskSpacePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.notEnoughDiskSpaceTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testStoragePage({
    StorageType? type,
    GuidedCapability? guidedCapability,
    bool hasBitLocker = false,
    String? screenshot,
  }) async {
    await pumpUntilPage(StoragePage);

    final context = element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.installationTypeTitle), findsOneWidget);

    expect(
      find.byType(BitlockerInfoBox),
      hasBitLocker ? findsOneWidget : findsNothing,
    );

    if (type != null) {
      await tapRadio<StorageType?>(type);
      await pump();
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testGuidedCapabilityPage({
    GuidedCapability? guidedCapability,
    String? screenshot,
  }) async {
    await pumpUntilPage(GuidedCapabilitiesPage);

    final context = element(find.byType(GuidedCapabilitiesPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.installationTypeAdvancedTitle), findsOneWidget);

    if (guidedCapability != null) {
      switch (guidedCapability) {
        case GuidedCapability.DIRECT:
          await tap(find.text(l10n.installationTypeNone));
          break;
        case GuidedCapability.LVM:
          await tap(find.text(l10n.installationTypeAdvancedLabel));
          await pump();
          await tap(find.text(l10n.installationTypeLVM));
          break;
        case GuidedCapability.LVM_LUKS:
          await tap(find.text(l10n.installationTypeLVMEncryption));
          break;
        case GuidedCapability.ZFS:
          await tap(find.text(l10n.installationTypeAdvancedLabel));
          await pump();
          await scrollUntilVisible(
            find.text(l10n.installationTypeZFS),
            -kMinInteractiveDimension / 2,
            scrollable: find.byType(Scrollable).last,
          );
          await pump();
          await tap(find.text(l10n.installationTypeZFS));
          break;
        case GuidedCapability.ZFS_LUKS_KEYSTORE:
          await tap(find.text(l10n.installationTypeAdvancedLabel));
          await pump();
          await scrollUntilVisible(
            find.text(l10n.installationTypeZFSEncryption),
            -kMinInteractiveDimension / 2,
            scrollable: find.byType(Scrollable).last,
          );
          await pump();
          await tap(find.text(l10n.installationTypeZFSEncryption));
          break;
        case GuidedCapability.CORE_BOOT_ENCRYPTED:
          await tap(find.text(l10n.installationTypeAdvancedLabel));
          await pump();
          await scrollUntilVisible(
            find.text(l10n.installationTypeTPM),
            -kMinInteractiveDimension / 2,
            scrollable: find.byType(Scrollable).last,
          );
          await pump();
          await tap(find.text(l10n.installationTypeTPM));
          break;
        default:
          break;
      }
      if (screenshot != null) {
        await takeScreenshot(screenshot);
      }
    }

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testGuidedReformatPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(GuidedReformatPage);

    final context = element(find.byType(GuidedReformatPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.titleBar(l10n.selectGuidedStoragePageTitle('Ubuntu')),
      findsOneWidget,
    );

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testGuidedResizePage({
    int? size,
    bool hasBitLocker = false,
    List<OsProber>? existingOS,
    String? screenshot,
  }) async {
    await pumpUntilPage(GuidedResizePage);

    final context = element(find.byType(GuidedResizePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final productInfo = getService<ProductService>().getProductInfo();
    expect(
      find.titleBar(
        switch (existingOS?.length ?? 0) {
          0 => l10n.installationTypeAlongsideUnknown(productInfo.toString()),
          1 => l10n.installationTypeAlongside(
              productInfo.toString(),
              existingOS!.single.long,
            ),
          2 => l10n.installationTypeAlongsideDual(
              productInfo.toString(),
              existingOS!.first.long,
              existingOS.last.long,
            ),
          _ => l10n.installationTypeAlongsideMulti(productInfo.toString()),
        },
      ),
      findsOneWidget,
    );

    expect(
      find.byType(BitlockerInfoBox),
      hasBitLocker ? findsOneWidget : findsNothing,
    );

    if (size != null) {
      await enterText(find.byType(TextFormField), size.toString());
      await testTextInput.receiveAction(TextInputAction.done);
      await pump();
    }

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testManualStoragePage({
    List<Disk>? storage,
    String? screenshot,
  }) async {
    await pumpUntilPage(ManualStoragePage);

    final context = element(find.byType(ManualStoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.allocateDiskSpace), findsOneWidget);

    await tapButton(l10n.newPartitionTable);
    await pumpAndSettle();

    for (final disk in storage ?? const <Disk>[]) {
      for (final partition in disk.partitions.whereType<Partition>()) {
        // TODO: find the correct "free space" slot when there are multiple disks
        await tap(find.text(l10n.freeDiskSpace).last);
        await pump();

        await tap(find.byIcon(Icons.add));
        await pumpAndSettle();

        if (partition.size != null) {
          final size = fromBytes(partition.size!, DataUnit.megabytes);
          await tap(find.byType(SpinBox));
          await enterText(find.byType(SpinBox), '${size.round()}');
          await pump();
        }

        if (partition.mount != null) {
          await tap(find.byType(TextFormField));
          await enterText(find.byType(TextFormField), partition.mount!);
          await pump();
          await testTextInput.receiveAction(TextInputAction.done);
          await pump();
        }

        await pumpAndSettle();

        if (screenshot != null) {
          await takeScreenshot('$screenshot-${partition.sysname}');
        }

        await tapOk();
        await pumpAndSettle();
      }
      await pumpAndSettle();
    }

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testTpmActionPage({
    CoreBootFixAction? action,
    String? screenshot,
  }) async {
    await pumpUntilPage(TpmActionPage);

    final context = element(find.byType(TpmActionPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.titleBar(l10n.installationTypeAdvancedTitle),
      findsOneWidget,
    );

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    if (action != null) {
      await tapButton(
        CoreBootFixActionWithCategoryAndArgs(
          type: action,
          forUser: false,
        ).label(l10n),
      );
      await pump();
    }
  }

  Future<void> testPassphraseTypePage({
    PassphraseType passphraseType = PassphraseType.none,
    String? screenshot,
  }) async {
    await pumpUntilPage(PassphraseTypePage);

    final context = element(find.byType(PassphraseTypePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.passphrasePageTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tap(find.text(passphraseType.localizedTileTitle(l10n)));
    await pumpAndSettle();

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testPassphrasePage({
    required String passphrase,
    String? screenshot,
    PassphraseType passphraseType = PassphraseType.passphrase,
  }) async {
    await pumpUntilPage(PassphrasePage);

    final context = element(find.byType(PassphrasePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.passphrasePageTitle), findsOneWidget);

    await enterText(
      find.textField(passphraseType.localizedChooseHint(l10n)),
      passphrase,
    );
    await enterText(
      find.textField(passphraseType.localizedConfirmHint(l10n)),
      passphrase,
    );

    await pumpAndSettle(const Duration(milliseconds: 500));

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testRecoveryKeyPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(RecoveryKeyPage);

    final context = element(find.byType(RecoveryKeyPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.recoveryKeyTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    final checkbox = find.text(l10n.recoveryKeyConfirmation);
    await tap(checkbox);
    await pumpAndSettle();

    await tapNext();
    await pumpAndSettle();
  }

  Future<void> testConfirmPage({
    String? screenshot,
    bool hasBitLocker = false,
  }) async {
    await pumpUntilPage(ConfirmPage);

    final context = element(find.byType(ConfirmPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.confirmPageTitle), findsOneWidget);

    expect(
      find.byType(BitlockerInfoBox),
      hasBitLocker ? findsOneWidget : findsNothing,
    );

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapConfirm();
    await pump();
  }

  Future<void> testInstallPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(InstallPage);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await pumpAndSettle();
  }

  Future<void> testDonePage({
    String? screenshot,
  }) async {
    await pumpUntilPage(DonePage);
    final context = element(find.byType(DonePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
    await pumpUntil(find.button(l10n.continueTesting));
    await pumpAndSettle();
  }
}

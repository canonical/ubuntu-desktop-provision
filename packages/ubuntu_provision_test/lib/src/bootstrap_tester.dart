import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/src/wizard_tester.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:yaru_test/yaru_test.dart';

extension UbuntuBootstrapPageTester on WidgetTester {
  Future<void> testWelcomePage({
    Option? option,
    String? screenshot,
  }) async {
    await pumpUntilPage(WelcomePage);

    final context = element(find.byType(WelcomePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.welcomePageTitle('Ubuntu')), findsOneWidget);

    if (option != null) {
      await tap(find.radio<Option>(option));
      await pump();
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
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

    await tapButton(l10n.restartIntoWindows);
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
  }

  Future<void> testSourcePage({
    String? sourceId,
    String? screenshot,
  }) async {
    await pumpUntilPage(SourcePage);

    final context = element(find.byType(SourcePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.updatesOtherSoftwarePageTitle), findsOneWidget);

    if (sourceId != null) {
      await tapRadio<String>(sourceId);
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
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
    String? screenshot,
  }) async {
    await pumpUntilPage(StoragePage);

    final context = element(find.byType(StoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.installationTypeTitle), findsOneWidget);

    if (type != null) {
      await tapRadio<StorageType>(type);
      await pump();
    }
    if (guidedCapability != null) {
      await tapButton(l10n.installationTypeAdvancedLabel);
      await pumpAndSettle();

      switch (guidedCapability) {
        case GuidedCapability.DIRECT:
          await tap(find.text(l10n.installationTypeNone));
          break;
        case GuidedCapability.LVM:
          await tap(find.text(l10n.installationTypeLVM('Ubuntu')));
          break;
        case GuidedCapability.LVM_LUKS:
          await tap(find.text(l10n.installationTypeLVM('Ubuntu')));
          await pump();
          await tap(find.text(l10n.installationTypeEncrypt('Ubuntu')));
          break;
        case GuidedCapability.ZFS:
          await tap(find.text(l10n.installationTypeZFS));
          await pump();
          break;
        default:
          break;
      }

      await pumpAndSettle();

      if (screenshot != null) {
        await takeScreenshot(screenshot);
      }

      await tapOk();
    }

    await pumpAndSettle();

    if (guidedCapability == null && screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testBitLockerPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(BitLockerPage);

    final context = element(find.byType(BitLockerPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.bitlockerTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await tapButton(l10n.restartIntoWindows);
    await pumpAndSettle();
    expect(find.byType(AlertDialog), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot('$screenshot-confirm');
    }
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
    Map<String, int> sizes = const {},
    String? screenshot,
  }) async {
    await pumpUntilPage(GuidedResizePage);

    final context = element(find.byType(GuidedResizePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final productInfo = getService<ProductService>().getProductInfo();
    expect(
      find.titleBar(l10n.installationTypeAlongsideUnknown(productInfo)),
      findsOneWidget,
    );

    for (final entry in sizes.entries) {
      await tap(find.ancestor(
        of: find.textContaining(entry.key),
        matching: find.byType(OutlinedButton),
      ));
      await pumpAndSettle();

      await enterText(find.byType(SpinBox), entry.value.toString());
      await pump();

      if (screenshot != null) {
        await takeScreenshot('$screenshot-${entry.key.split(' ').first}');
      }

      await tapOk();
      await pumpAndSettle();
    }

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
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
  }

  Future<void> testSecurityKeyPage({
    required String securityKey,
    String? screenshot,
  }) async {
    await pumpUntilPage(SecurityKeyPage);

    final context = element(find.byType(SecurityKeyPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.chooseSecurityKeyTitle), findsOneWidget);

    await enterText(
      find.textField(l10n.chooseSecurityKey),
      securityKey,
    );
    await enterText(
      find.textField(l10n.confirmSecurityKey),
      securityKey,
    );

    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
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
  }

  Future<void> testConfirmPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(ConfirmPage);

    final context = element(find.byType(ConfirmPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.confirmPageTitle), findsOneWidget);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testInstallPage({
    String? screenshot,
  }) async {
    await pumpUntilPage(InstallPage);

    final context = element(find.byType(InstallPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }

    await pumpUntil(find.button(l10n.continueTesting));
  }
}

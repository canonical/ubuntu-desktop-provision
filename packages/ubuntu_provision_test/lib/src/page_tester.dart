import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_test/yaru_test.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

extension UbuntuProvisionPageTester on WidgetTester {
  Future<void> testLocalePage({
    String? language,
    String? screenshot,
  }) async {
    await pumpUntilPage(LocalePage);

    final context = element(find.byType(LocalePage));
    final l10n = LocaleLocalizations.of(context);

    final flavor = UbuntuFlavor.detect() ?? UbuntuFlavor.ubuntu;
    expect(find.titleBar(l10n.localePageTitle(flavor.name)), findsOneWidget);

    if (language != null) {
      final tile = find.listTile(language, skipOffstage: false);
      await ensureVisible(tile);
      await pump();
      await tap(tile);
      await pump();
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testKeyboardPage({
    String? layout,
    String? variant,
    String? screenshot,
  }) async {
    await pumpUntilPage(KeyboardPage);

    final context = element(find.byType(KeyboardPage));
    final l10n = KeyboardLocalizations.of(context);

    expect(find.titleBar(l10n.keyboardTitle), findsOneWidget);

    if (layout != null) {
      final tile = find.listTile(layout, skipOffstage: false);
      await ensureVisible(tile.last);
      await pump();
      await tap(tile.last);
      await pump();
    }
    if (variant != null) {
      final tile = find.listTile(variant, skipOffstage: false);
      await ensureVisible(tile.first);
      await pump();
      await tap(tile.first);
      await pump();
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);

      await tapButton(l10n.keyboardDetectButton);
      await pumpAndSettle();

      await takeScreenshot('$screenshot-detect');

      await tap(find.descendant(
          of: find.byType(AlertDialog),
          matching: find.byType(YaruWindowControl)));
      await pumpAndSettle();
    }
  }

  Future<void> testNetworkPage({
    ConnectMode? mode,
    String? screenshot,
  }) async {
    await pumpUntilPage(NetworkPage);

    final context = element(find.byType(NetworkPage));
    final l10n = NetworkLocalizations.of(context);

    expect(find.titleBar(l10n.networkPageTitle), findsOneWidget);

    if (mode != null) {
      await tapRadio<ConnectMode>(mode);
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testTimezonePage({
    String? location,
    String? timezone,
    String? screenshot,
  }) async {
    await pumpUntilPage(TimezonePage);

    final context = element(find.byType(TimezonePage));
    final l10n = TimezoneLocalizations.of(context);

    expect(find.titleBar(l10n.timezonePageTitle), findsOneWidget);

    if (location != null) {
      await enterText(
        find.textField(l10n.timezoneLocationLabel),
        location,
      );
      await pump();
      await testTextInput.receiveAction(TextInputAction.done);
      await pump();
    }

    if (timezone != null) {
      await enterText(
        find.textField(l10n.timezoneTimezoneLabel),
        timezone,
      );
      await pump();
      await testTextInput.receiveAction(TextInputAction.done);
      await pump();
    }

    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testIdentityPage({
    Identity? identity,
    String? password,
    String? screenshot,
  }) async {
    await pumpUntilPage(IdentityPage);

    final context = element(find.byType(IdentityPage));
    final l10n = IdentityLocalizations.of(context);

    expect(find.titleBar(l10n.identityPageTitle), findsOneWidget);

    if (identity?.realname != null) {
      await enterText(
        find.textField(l10n.identityRealNameLabel),
        identity!.realname,
      );
    }
    if (identity?.hostname != null) {
      await enterText(
        find.textField(l10n.identityHostnameLabel),
        identity!.hostname,
      );
    }
    if (identity?.username != null) {
      await enterText(
        find.textField(l10n.identityUsernameLabel),
        identity!.username,
      );
    }
    if (password != null) {
      await enterText(
        find.textField(l10n.identityPasswordLabel),
        password,
      );
      await enterText(
        find.textField(l10n.identityConfirmPasswordLabel),
        password,
      );
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testActiveDirectoryPage(
    WidgetTester tester, {
    String? domainName,
    String? adminName,
    String? password,
    String? screenshot,
  }) async {
    await tester.pumpUntilPage(ActiveDirectoryPage);

    final context = tester.element(find.byType(ActiveDirectoryPage));
    final l10n = ActiveDirectoryLocalizations.of(context);

    expect(find.titleBar(l10n.activeDirectoryTitle), findsOneWidget);

    if (domainName != null) {
      await tester.enterText(
        find.textField(l10n.activeDirectoryDomainLabel),
        domainName,
      );
    }
    if (adminName != null) {
      await tester.enterText(
        find.textField(l10n.activeDirectoryAdminLabel),
        adminName,
      );
    }
    if (password != null) {
      await tester.enterText(
        find.textField(l10n.activeDirectoryPasswordLabel),
        password,
      );
    }
    await tester.pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }

  Future<void> testThemePage({
    Brightness? theme,
    String? screenshot,
  }) async {
    await pumpUntilPage(ThemePage);

    final context = element(find.byType(ThemePage));
    final l10n = ThemeLocalizations.of(context);

    expect(find.titleBar(l10n.themePageTitle), findsOneWidget);

    if (theme != null) {
      final asset = find.asset('assets/theme/${theme.name}-theme.png');
      expect(asset, findsOneWidget);
      await tap(asset);
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }
}

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
    AdvancedFeature? advancedFeature,
    bool? useEncryption,
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
    if (advancedFeature != null) {
      await tapButton(l10n.installationTypeAdvancedLabel);
      await pumpAndSettle();

      await tapRadio<AdvancedFeature>(advancedFeature);
      await pump();

      if (useEncryption != null) {
        await toggleButton(
          l10n.installationTypeEncrypt('Ubuntu'),
          true,
        );
      }

      await pumpAndSettle();

      if (screenshot != null) {
        await takeScreenshot(screenshot);
      }

      await tapOk();
    }

    await pumpAndSettle();

    if (advancedFeature == null && screenshot != null) {
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

  Future<void> testSecurityKeyPage(
    WidgetTester tester, {
    required String securityKey,
    String? screenshot,
  }) async {
    await tester.pumpUntilPage(SecurityKeyPage);

    final context = tester.element(find.byType(SecurityKeyPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(find.titleBar(l10n.chooseSecurityKeyTitle), findsOneWidget);

    await tester.enterText(
      find.textField(l10n.chooseSecurityKey),
      securityKey,
    );
    await tester.enterText(
      find.textField(l10n.confirmSecurityKey),
      securityKey,
    );

    await tester.pumpAndSettle();

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

extension on WidgetTester {
  Future<void> pumpUntilPage(Type page) async {
    await pumpUntil(find.byType(page));
    await pumpAndSettle();
  }

  Future<void> takeScreenshot(String screenshot) async {
    // avoid blinking cursors to keep the screenshots deterministic
    primaryFocus?.unfocus();
    await pumpAndSettle();

    await expectLater(
      find.byType(WizardApp),
      matchesGoldenFile('screenshots/$screenshot.png'),
    );
  }
}

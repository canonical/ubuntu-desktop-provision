import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/src/wizard_tester.dart';
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

    expect(find.titleBar(l10n.localePageTitle(UbuntuFlavor.ubuntu.displayName)),
        findsOneWidget);

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

      if (find.button(l10n.keyboardDetectButton).evaluate().isNotEmpty) {
        await tapButton(l10n.keyboardDetectButton);
        await pumpAndSettle();

        await takeScreenshot('$screenshot-detect');

        await tap(find.descendant(
            of: find.byType(AlertDialog),
            matching: find.byType(YaruWindowControl)));
        await pumpAndSettle();
      }
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

  Future<void> testActiveDirectoryPage({
    String? domainName,
    String? adminName,
    String? password,
    String? screenshot,
  }) async {
    await pumpUntilPage(ActiveDirectoryPage);

    final context = element(find.byType(ActiveDirectoryPage));
    final l10n = ActiveDirectoryLocalizations.of(context);

    expect(find.titleBar(l10n.activeDirectoryTitle), findsOneWidget);

    if (domainName != null) {
      await enterText(
        find.textField(l10n.activeDirectoryDomainLabel),
        domainName,
      );
    }
    if (adminName != null) {
      await enterText(
        find.textField(l10n.activeDirectoryAdminLabel),
        adminName,
      );
    }
    if (password != null) {
      await enterText(
        find.textField(l10n.activeDirectoryPasswordLabel),
        password,
      );
    }
    await pumpAndSettle();

    if (screenshot != null) {
      await takeScreenshot(screenshot);
    }
  }
}

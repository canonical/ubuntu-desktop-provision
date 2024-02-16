import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

enum InitStep with RouteName {
  locale(LocalePage.new),
  keyboard(KeyboardPage.new),
  network(NetworkPage.new),
  identity(IdentityPage.new),
  ubuntuPro(UbuntuProPage.new, hasPrevious: false),
  privacy(PrivacyPage.new, hasPrevious: false),
  timezone(TimezonePage.new, hasPrevious: false),
  telemetry(TelemetryPage.new, hasPrevious: false),
  error(ErrorPage.new, wizardStep: false, discreteStep: false);

  const InitStep(
    this.pageFactory, {
    this.hasPrevious = true,
    this.discreteStep = true,
    this.wizardStep = true,
  });

  final ProvisioningPage Function() pageFactory;

  /// Whether the page can go back to a previous page.
  final bool hasPrevious;

  /// If this is true the page is handled separately from the wizard steps.
  final bool wizardStep;

  /// If this is true the page has its own step in the wizard progress bar.
  final bool discreteStep;

  WizardRoute toRoute(BuildContext context, WidgetRef ref) {
    final page = pageFactory();
    return WizardRoute(
      builder: (_) => page,
      userData: WizardRouteData(
        step: values.indexOf(this),
        hasPrevious: hasPrevious,
      ),
      onLoad: (_) => page.load(context, ref),
    );
  }

  static InitStep? fromName(String name) {
    return values.firstWhereOrNull((e) => e.name == name);
  }
}

enum WelcomeStep with RouteName {
  welcome(WelcomePage.new);

  const WelcomeStep(this.pageFactory);

  final ProvisioningPage Function() pageFactory;

  WizardRoute toRoute(BuildContext context, WidgetRef ref) {
    final page = pageFactory();
    return WizardRoute(
      builder: (_) => page,
      userData: WizardRouteData(
        step: values.indexOf(this),
      ),
      onLoad: (_) => page.load(context, ref),
    );
  }

  static WelcomeStep? fromName(String name) {
    return values.firstWhereOrNull((e) => e.name == name);
  }
}

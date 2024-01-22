import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

enum InitStep {
  welcome(WelcomePage.new),
  locale(LocalePage.new),
  keyboard(KeyboardPage.new),
  network(NetworkPage.new),
  identity(IdentityPage.new),
  ubuntuPro(UbuntuProPage.new),
  privacy(PrivacyPage.new),
  timezone(TimezonePage.new),
  telemetry(TelemetryPage.new);

  const InitStep(this.pageFactory);

  final ProvisioningPage Function() pageFactory;

  WizardRoute? toRoute(BuildContext context, WidgetRef ref) {
    final pageConfig = ref.watch(pageConfigProvider);
    final includedIndex = pageConfig.includedPages.indexOf(name);
    final page = pageFactory();
    return WizardRoute(
      builder: (_) => page,
      userData: WizardRouteData(step: includedIndex),
      onLoad: (_) => page.load(context, ref),
    );
  }

  String get name => toString().split('.').last;

  static InitStep? fromName(String name) {
    return InitStep.values.firstOrNullWhere((e) => e.name == name);
  }
}

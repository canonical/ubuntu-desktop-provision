import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

enum InstallationStep {
  locale(LocalePage.new),
  welcome(WelcomePage.new),
  rst(RstPage.new),
  keyboard(KeyboardPage.new),
  network(NetworkPage.new),
  refresh(RefreshPage.new),
  source(SourcePage.new),
  secureBoot(SecureBootPage.new),
  storage(StorageWizard.new),
  confirm(ConfirmPage.new);

  const InstallationStep(this.pageFactory);

  final ProvisioningPage Function() pageFactory;

  WizardRoute toRoute(BuildContext context, WidgetRef ref) {
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

  static InstallationStep? fromName(String name) {
    return InstallationStep.values.firstOrNullWhere((e) => e.name == name);
  }
}

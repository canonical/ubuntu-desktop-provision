import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

enum InstallationStep {
  locale(LocalePage.new, true),
  welcome(WelcomePage.new, true),
  rst(RstPage.new, false),
  keyboard(KeyboardPage.new, true),
  network(NetworkPage.new, true),
  refresh(RefreshPage.new, true),
  source(SourcePage.new, true),
  notEnoughDiskSpace(NotEnoughDiskSpacePage.new, false),
  secureBoot(SecureBootPage.new, false),
  storage(StorageWizard.new, true),
  confirm(ConfirmPage.new, true);

  const InstallationStep(this.pageFactory, this.discreteStep);

  final ProvisioningPage Function() pageFactory;

  /// If this is true the page has its own step in the wizard progress bar.
  final bool discreteStep;

  WizardRoute toRoute(BuildContext context, WidgetRef ref) {
    final includedIndex = pageIndex(ref);
    final page = pageFactory();
    return WizardRoute(
      builder: (_) => page,
      userData: WizardRouteData(step: includedIndex),
      onLoad: (_) => page.load(context, ref),
    );
  }

  /// The index of this page in the wizard progress bar.
  int pageIndex(WidgetRef ref) {
    final pageConfig = ref.watch(pageConfigProvider);
    final initialIndex = pageConfig.includedPages.indexOf(name);
    var index = 0;
    for (var i = 0; i < initialIndex; i++) {
      if (InstallationStep.fromName(pageConfig.includedPages[i])!
          .discreteStep) {
        index++;
      }
    }
    return index;
  }

  String get name => toString().split('.').last;

  static InstallationStep? fromName(String name) {
    return InstallationStep.values.firstOrNullWhere((e) => e.name == name);
  }
}

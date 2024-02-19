import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

enum InstallationStep with RouteName {
  loading(LoadingPage.new, discreteStep: false, wizardStep: false),
  locale(LocalePage.new),
  accessibility(AccessibilityPage.new),
  tryOrInstall(TryOrInstallPage.new, discreteStep: false),
  rst(RstPage.new, discreteStep: false),
  keyboard(KeyboardPage.new),
  network(NetworkPage.new),
  refresh(RefreshPage.new),
  sourceSelection(SourceSelectionPage.new),
  codecsAndDrivers(CodecsAndDriversPage.new),
  notEnoughDiskSpace(NotEnoughDiskSpacePage.new, discreteStep: false),
  secureBoot(SecureBootPage.new),
  storage(StorageWizard.new, discreteStep: false),
  identity(IdentityPage.new),
  activeDirectory(ActiveDirectoryPage.new),
  timezone(TimezonePage.new),
  confirm(ConfirmPage.new),
  install(InstallPage.new, discreteStep: false, wizardStep: false);

  const InstallationStep(
    this.pageFactory, {
    this.discreteStep = true,
    this.wizardStep = true,
  });

  final ProvisioningPage Function() pageFactory;

  /// If this is true the page is handled separately from the wizard steps.
  final bool wizardStep;

  /// If this is true the page has its own step in the wizard progress bar.
  final bool discreteStep;

  /// Gets all the pages that should be handled by the wizard.
  static Iterable<InstallationStep> get wizardSteps =>
      values.where((e) => e.wizardStep);

  WizardRoute toRoute(BuildContext context, WidgetRef ref) {
    final page = pageFactory();
    return WizardRoute(
      builder: (_) => page,
      userData: WizardRouteData(step: pageIndex),
      onLoad: (_) => page.load(context, ref),
    );
  }

  /// The index of this page in the wizard progress bar.
  int get pageIndex {
    final initialIndex = values.indexOf(this);
    var index = 0;
    for (var i = 0; i <= initialIndex; i++) {
      if (values[i].discreteStep) {
        index++;
      }
    }
    return index - 1;
  }

  static InstallationStep? fromName(String name) {
    return values.firstWhereOrNull((e) => e.name == name);
  }
}

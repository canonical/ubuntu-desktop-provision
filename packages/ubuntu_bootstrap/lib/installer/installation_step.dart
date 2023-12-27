import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/installer/installer_model.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/routes.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

enum InstallationStep {
  locale(LocalePage.new),
  welcome(WelcomePage.new),
  rst(RstPage.new),
  keyboard(KeyboardPage.new),
  network(NetworkPage.new),
  refresh(RefreshPage.new),
  source(SourcePage.new),
  secureBoot(SecureBootPage.new),
  storage(StoragePage.new);

  const InstallationStep(this.pageFactory);

  final ProvisioningPage Function() pageFactory;

  WizardRoute? toRoute(BuildContext context, WidgetRef ref) {
    final page = pageFactory();
    return WizardRoute(
      builder: (_) => page,
      userData: WizardRouteData(step: index),
      onLoad: (_) => page.load(context, ref),
    );
  }

  String get name => toString().split('.').last;

  static InstallationStep? fromName(String name) {
    return InstallationStep.values.firstOrNullWhere((e) => e.name == name);
  }
}

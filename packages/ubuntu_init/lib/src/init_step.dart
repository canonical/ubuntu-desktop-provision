import 'package:collection/collection.dart';
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
  ubuntuPro(UbuntuProPage.new, hasPrevious: false),
  privacy(PrivacyPage.new, hasPrevious: false),
  timezone(TimezonePage.new, hasPrevious: false),
  telemetry(TelemetryPage.new, hasPrevious: false);

  const InitStep(this.pageFactory, {this.hasPrevious = true});

  final ProvisioningPage Function() pageFactory;
  final bool hasPrevious;

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

  String get name => toString().split('.').last;

  static InitStep? fromName(String name) {
    return values.firstWhereOrNull((e) => e.name == name);
  }
}

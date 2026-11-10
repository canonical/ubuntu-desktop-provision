import 'package:factory_reset_tools/pages/creation_progress_page.dart';
import 'package:factory_reset_tools/pages/done_page.dart';
import 'package:factory_reset_tools/pages/factory_reset_page.dart';
import 'package:factory_reset_tools/pages/home_page.dart';
import 'package:factory_reset_tools/pages/media_selector_page.dart';
import 'package:flutter/material.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

enum ResetToolsRoutes {
  home,
  mediaSelector,
  creation,
  done,
  factoryReset,
}

class ResetToolsWizard extends StatelessWidget {
  const ResetToolsWizard({super.key});

  @override
  Widget build(BuildContext context) {
    return WizardBuilder(
      routes: {
        // TODO: Remove once the wizard doesn't skip the first route
        '': WizardRoute(builder: (context) => const SizedBox()),
        ResetToolsRoutes.home.name: WizardRoute(
          builder: (context) => const HomePage(),
          onNext: (_) => ResetToolsRoutes.mediaSelector.name,
        ),
        ResetToolsRoutes.mediaSelector.name: WizardRoute(
          builder: (context) => const MediaSelectorPage(),
          onBack: (_) => ResetToolsRoutes.home.name,
          onNext: (_) => ResetToolsRoutes.creation.name,
        ),
        ResetToolsRoutes.creation.name: WizardRoute(
          builder: (context) => const CreationProgressPage(),
        ),
        ResetToolsRoutes.done.name: WizardRoute(
          builder: (context) => const DonePage(),
        ),
        ResetToolsRoutes.factoryReset.name: WizardRoute(
          builder: (context) => const FactoryResetPage(),
        ),
      },
    );
  }
}

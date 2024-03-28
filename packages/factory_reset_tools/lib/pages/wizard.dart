import 'package:factory_reset_tools/pages/home.dart';
import 'package:factory_reset_tools/pages/reboot.dart';
import 'package:factory_reset_tools/pages/reset_media/creation_progress_page.dart';
import 'package:factory_reset_tools/pages/reset_media/media_selector.dart';
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
          builder: (context) => const Home(),
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
          builder: (context) => const Home(),
        ),
        ResetToolsRoutes.factoryReset.name: WizardRoute(
          builder: (context) => const FactoryReset(),
        ),
      },
    );
  }
}

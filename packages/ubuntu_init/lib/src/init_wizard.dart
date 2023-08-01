import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'init_model.dart';

enum InitStep {
  locale,
  keyboard,
  network,
  timezone,
  identity,
  theme,
}

class InitRoutes {
  static const String initial = '/';
  static const String locale = '/locale';
  static const String keyboard = '/keyboard';
  static const String network = '/network';
  static const String timezone = '/timezone';
  static const String identity = '/identity';
  static const String theme = '/theme';
  static const String privacy = '/privacy';
}

class InitWizard extends ConsumerWidget {
  const InitWizard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WizardBuilder(
      routes: {
        // TODO: loading screen?
        InitRoutes.initial: WizardRoute(
          builder: (_) => const SizedBox.shrink(),
          onReplace: (_) =>
              ref.read(initModelProvider).init().then((_) => null),
        ),
        InitRoutes.locale: WizardRoute(
          builder: (_) => const LocalePage(),
          userData: WizardRouteData(
            step: InitStep.locale.index,
          ),
          onLoad: (_) => LocalePage.load(context, ref),
        ),
        InitRoutes.keyboard: WizardRoute(
          builder: (_) => const KeyboardPage(),
          userData: WizardRouteData(
            step: InitStep.keyboard.index,
          ),
          onLoad: (_) => KeyboardPage.load(ref),
        ),
        InitRoutes.network: WizardRoute(
          builder: (_) => const NetworkPage(),
          userData: WizardRouteData(
            step: InitStep.network.index,
          ),
          onLoad: (_) => NetworkPage.load(ref),
        ),
        InitRoutes.timezone: WizardRoute(
          builder: (_) => const TimezonePage(),
          userData: WizardRouteData(
            step: InitStep.timezone.index,
          ),
          onLoad: (_) => TimezonePage.load(context, ref),
        ),
        InitRoutes.identity: WizardRoute(
          builder: (_) => const IdentityPage(),
          userData: WizardRouteData(
            step: InitStep.identity.index,
          ),
          onLoad: (_) => IdentityPage.load(ref),
        ),
        InitRoutes.theme: WizardRoute(
          builder: (_) => const ThemePage(),
          userData: WizardRouteData(
            step: InitStep.theme.index,
          ),
          onLoad: (_) => ThemePage.load(ref),
        ),
        InitRoutes.privacy: WizardRoute(
          builder: (_) => const PrivacyPage(),
          onLoad: (_) => PrivacyPage.load(ref),
          onNext: (_) =>
              YaruWindow.of(context).close().then((_) => InitRoutes.initial),
        ),
      },
      userData: WizardData(totalSteps: InitStep.values.length),
      predicate: (route) => switch (route) {
        InitRoutes.initial => true,
        _ => ref.read(initModelProvider).hasRoute(route),
      },
    );
  }
}

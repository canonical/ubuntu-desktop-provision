import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/src/init_model.dart';
import 'package:ubuntu_init/src/init_step.dart';
import 'package:ubuntu_init/src/routes.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class InitWizard extends ConsumerWidget {
  const InitWizard({
    super.key,
    FutureOr<void> Function()? onDone,
  }) : _onDone = onDone;

  final FutureOr<void> Function()? _onDone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageConfig = ref.watch(pageConfigProvider);
    final routes = <String, WizardRoute>{
      for (final pageName in pageConfig.includedPages)
        Routes.routeMap[pageName]!:
            InitStep.fromName(pageName)!.toRoute(context, ref)!
    };

    return WizardBuilder(
      routes: {
        Routes.initial: WizardRoute(
          builder: (_) => const SizedBox.shrink(),
          onReplace: (_) =>
              ref.read(initModelProvider).init().then((_) => null),
        ),
        ...routes,
        Routes.theme: WizardRoute(
          builder: (_) => const ThemePage(),
          userData: WizardRouteData(
            step: InitStep.theme.index,
          ),
          onLoad: (_) => const ThemePage().load(context, ref),
          onNext: (_) async {
            final window = YaruWindow.of(context);
            await _onDone?.call();
            await ref.read(initModelProvider).launchDesktopSession();
            await window.close();
            return Routes.initial;
          },
        ),
      },
      userData: WizardData(totalSteps: InitStep.values.length),
      predicate: (route) => route == Routes.initial
          ? true
          : ref.read(initModelProvider).hasRoute(route),
    );
  }
}

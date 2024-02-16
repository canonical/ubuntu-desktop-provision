import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/src/init_model.dart';
import 'package:ubuntu_init/src/init_pages.dart';
import 'package:ubuntu_init/src/init_step.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

final _log = Logger('init_wizard');

const _initialPageName = '/';

class InitWizard extends ConsumerWidget {
  const InitWizard({
    super.key,
    FutureOr<void> Function()? onDone,
  }) : _onDone = onDone;

  final FutureOr<void> Function()? _onDone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routes = <String, WizardRoute>{
      for (final step in InitStep.values) step.route: step.toRoute(context, ref)
    };
    final totalSteps = InitStep.values.length;

    return WizardBuilder(
      errorRoute: InitStep.error.route,
      routes: {
        // TODO(Lukas): Replace this with a loader page
        _initialPageName: WizardRoute(
          builder: (_) => const SizedBox.shrink(),
          onReplace: (_) async {
            await ref.read(pageImagesProvider).preCache(context);
            return ref.read(initModelProvider).init().then((_) => null);
          },
        ),
        ...routes,
        // TODO: Replace with 'done' page
        // Currently the following entry explicitly overrides the telemetry page
        // entry from `routes` and makes it behave as the final page.
        InitStep.telemetry.route: WizardRoute(
          builder: (_) => const TelemetryPage(),
          userData: WizardRouteData(
            step: totalSteps - 1,
            hasPrevious: false,
            hasNext: false,
          ),
          onLoad: (_) => const TelemetryPage().load(context, ref),
          onNext: (_) async {
            final window = YaruWindow.of(context);
            await _onDone?.call();
            await ref.read(initModelProvider).launchDesktopSession();
            await window.close();
            return null;
          },
        ),
        InitStep.error.route: WizardRoute(
          builder: (context) {
            final exception = ModalRoute.of(context)?.settings.arguments;
            _log.error('Uncaught exception: $exception');
            return const ErrorPage();
          },
          userData: const WizardRouteData(
            hasPrevious: false,
            hasNext: false,
          ),
          onNext: (_) async {
            final window = YaruWindow.of(context);
            await window.close();
            return null;
          },
        ),
      },
      userData: WizardData(totalSteps: totalSteps),
      predicate: (route) => route == _initialPageName
          ? true
          : ref.read(initModelProvider).hasRoute(route),
    );
  }
}

class WelcomeWizard extends ConsumerWidget {
  const WelcomeWizard({
    super.key,
    FutureOr<void> Function()? onDone,
  }) : _onDone = onDone;

  final FutureOr<void> Function()? _onDone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routes = <String, WizardRoute>{
      for (final step in WelcomeStep.values)
        if (ref.read(initModelProvider).hasRoute(step.route))
          step.route: step.toRoute(context, ref)
    };

    return WizardBuilder(
      errorRoute: InitStep.error.route,
      routes: {
        // TODO(Lukas): Replace this with a loader page
        _initialPageName: WizardRoute(
          builder: (_) => const SizedBox.shrink(),
          onReplace: (_) async {
            await ref.read(pageImagesProvider).preCache(context);
            return ref.read(initModelProvider).init().then((_) => null);
          },
        ),
        ...routes,
        // TODO: Replace with 'done' page
        // Currently the following entry explicitly overrides the telemetry page
        // entry from `routes` and makes it behave as the final page.
        WelcomeStep.welcome.route: WizardRoute(
          builder: (_) => const WelcomePage(),
          userData: WizardRouteData(
            step: routes.length - 1,
            hasNext: false,
          ),
          onLoad: (_) => const WelcomePage().load(context, ref),
          onNext: (_) async {
            final window = YaruWindow.of(context);
            await _onDone?.call();
            await window.close();
            return null;
          },
        ),
        InitStep.error.route: WizardRoute(
          builder: (_) => const ErrorPage(),
          userData: const WizardRouteData(
            hasPrevious: false,
            hasNext: false,
          ),
          onNext: (_) async {
            final window = YaruWindow.of(context);
            await window.close();
            return _initialPageName;
          },
        ),
      },
      userData: WizardData(totalSteps: routes.length),
      predicate: (route) => route == _initialPageName
          ? true
          : ref.read(initModelProvider).hasRoute(route),
    );
  }
}

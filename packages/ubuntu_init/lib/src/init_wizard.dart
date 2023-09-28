import 'dart:async';
import 'dart:math';

import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'init_model.dart';
import 'init_pages.dart';

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
  static const String welcome = '/welcome';
  static const String locale = '/locale';
  static const String keyboard = '/keyboard';
  static const String network = '/network';
  static const String timezone = '/timezone';
  static const String identity = '/identity';
  static const String theme = '/theme';
  static const String telemetry = '/telemetry';
  static const String privacy = '/privacy';
  static const String store = '/store';
  static const String launchsession = '/launchsession';
}

class InitWizard extends ConsumerWidget {
  InitWizard({
    super.key,
    List<String>? pages,
    FutureOr<void> Function()? onDone,
  })  : _pages = pages?.map((r) => r.removePrefix('/')).toSet(),
        _onDone = onDone;

  final Set<String>? _pages;
  final FutureOr<void> Function()? _onDone;

  bool _hasRoute(String route) {
    return _pages?.contains(route.removePrefix('/')) ?? true;
  }

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
        InitRoutes.welcome: WizardRoute(
          builder: (_) => const WelcomePage(),
          onLoad: (_) => WelcomePage.load(ref),
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
        InitRoutes.telemetry: WizardRoute(
          builder: (_) => const TelemetryPage(),
          onLoad: (_) => TelemetryPage.load(ref),
        ),
        InitRoutes.privacy: WizardRoute(
          builder: (_) => const PrivacyPage(),
          onLoad: (_) => PrivacyPage.load(ref),
        ),
        InitRoutes.launchsession: () {
          bool shownPage = false;
          return WizardRoute(
            userData: const WizardRouteData(hasNext: false),
            builder: (_) => const LaunchSessionPage(),
            onLoad: (_) {
              shownPage = true;
              return LaunchSessionPage.load(ref);
            },
            onNext: (_) async {
              if (shownPage) {
                final window = YaruWindow.of(context);
                GdmService gdmService = getService<GdmService>();
                await gdmService.openNewSession();
                await _onDone?.call();
                await window.close();
                return InitRoutes.initial;
              } else {
                return null;
              }
            }
          );
        }(),
        InitRoutes.store: WizardRoute(
          userData: const WizardRouteData(hasNext: false),
          builder: (_) => const StorePage(),
          onLoad: (_) => StorePage.load(ref),
          onNext: (_) async {
            final window = YaruWindow.of(context);
            await _onDone?.call();
            await window.close();
            return InitRoutes.initial;
          }
        ),
      },
      userData: WizardData(totalSteps: InitStep.values.length),
      predicate: (route) => switch (route) {
        InitRoutes.initial => true,
        _ => _hasRoute(route) && ref.read(initModelProvider).hasRoute(route),
      },
    );
  }
}

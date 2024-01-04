import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/installer/installation_step.dart';
import 'package:ubuntu_bootstrap/installer/installer_model.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/routes.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class InstallerWizard extends ConsumerStatefulWidget {
  const InstallerWizard({super.key});

  @override
  ConsumerState<InstallerWizard> createState() => _InstallerWizardState();
}

class _InstallerWizardState extends ConsumerState<InstallerWizard> {
  @override
  void initState() {
    super.initState();

    final model = ref.read(installerModelProvider);
    model.init();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final model = ref.read(installerModelProvider);
    YaruWindow.setClosable(context, !model.isInstalling && !model.isRefreshing);
  }

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(installerModelProvider.select((m) => m.status));
    if (status?.state == ApplicationState.ERROR) {
      return const _ErrorWizard();
    }
    return status?.interactive == false
        ? _AutoinstallWizard(status: status)
        : const _InstallWizard();
  }
}

class _InstallWizard extends ConsumerWidget {
  const _InstallWizard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageConfig = ref.watch(pageConfigProvider);
    final preInstallRoutes = <String, WizardRoute>{
      for (final pageName in pageConfig.includedPages)
        Routes.routeMap[pageName]!:
            InstallationStep.fromName(pageName)!.toRoute(context, ref)
    };

    return WizardBuilder(
      initialRoute: Routes.initial,
      userData: WizardData(totalSteps: preInstallRoutes.length),
      routes: {
        Routes.loading: WizardRoute(
          builder: (_) => const LoadingPage(),
          userData: const WizardRouteData(
            hasPrevious: false,
            hasNext: false,
          ),
          onReplace: (_) => LoadingPage.init(context, ref).then((_) => null),
        ),
        ...preInstallRoutes,
        Routes.install: WizardRoute(
          builder: (_) => const InstallPage(),
          onLoad: (_) => const InstallPage().load(context, ref),
        ),
      },
      predicate: (route) {
        if ([Routes.loading, Routes.confirm, Routes.install].contains(route)) {
          return true;
        } else {
          return ref.read(installerModelProvider).hasRoute(route);
        }
      },
      observers: [_InstallerObserver(getService<TelemetryService>())],
    );
  }
}

class _InstallerObserver extends NavigatorObserver {
  _InstallerObserver(this._telemetry);

  final TelemetryService _telemetry;

  @override
  void didPush(Route<Object?> route, Route<Object?>? previousRoute) {
    if (route.settings.name != null) {
      _telemetry.addStage(route.settings.name!.removePrefix('/'));
    }
  }
}

class _AutoinstallWizard extends ConsumerWidget {
  const _AutoinstallWizard({this.status});

  final ApplicationStatus? status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WizardBuilder(
      routes: <String, WizardRoute>{
        Routes.loading: WizardRoute(
          builder: (_) => const LoadingPage(),
          userData: const WizardRouteData(
            hasPrevious: false,
            hasNext: false,
          ),
          onReplace: (_) => LoadingPage.init(context, ref).then((_) => null),
        ),
        Routes.confirm: WizardRoute(
          builder: (_) => const ConfirmPage(),
          onLoad: (_) => status?.isInstalling != true,
        ),
        Routes.install: WizardRoute(
          builder: (_) => const InstallPage(),
        ),
      },
    );
  }
}

class _ErrorWizard extends StatelessWidget {
  const _ErrorWizard();

  @override
  Widget build(BuildContext context) {
    return Wizard(
      routes: <String, WizardRoute>{
        Routes.install: WizardRoute(
          builder: (_) => const InstallPage(),
        ),
      },
    );
  }
}

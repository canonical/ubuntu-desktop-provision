import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_bootstrap/app/installation_step.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_l10n.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_model.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_x.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

String get snapName =>
    Platform.environment['SNAP_NAME'] ??
    p.basename(Platform.resolvedExecutable);

class RefreshView extends ConsumerWidget {
  const RefreshView({
    required this.state,
    super.key,
    this.onRefresh,
    this.onQuit,
  });

  final RefreshState state;
  final VoidCallback? onRefresh;
  final VoidCallback? onQuit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageImages = ref.watch(pageImagesProvider);
    final l10n = UbuntuBootstrapLocalizations.of(context);
    return Column(
      children: [
        const Flexible(child: SizedBox(height: 24)),
        MascotAvatar(
          image: pageImages.get(InstallationStep.refresh.name),
          progress: state.progress,
        ),
        const Flexible(child: SizedBox(height: 24)),
        Visibility(
          maintainSize: true,
          maintainState: true,
          maintainAnimation: true,
          visible: state.progress != null &&
              state.progress! > 0 &&
              state.progress! < 1,
          child: Text(
            '${(state.progress ?? 0 * 100).ceil()}%',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Text(
          switch (state) {
            RefreshStateStatus() => l10n.refreshHeader,
            RefreshStateDone() => l10n.refreshReady,
            _ => ''
          },
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Flexible(child: SizedBox(height: kWizardSpacing / 2)),
        Text(
          state.when(
            checking: () => '',
            status: (status) =>
                status.availability == RefreshCheckState.AVAILABLE
                    ? l10n.refreshInfo
                    : l10n.refreshUpToDate(status.currentSnapVersion),
            progress: (change) =>
                change.doing?.localize(context, snapName) ??
                l10n.refreshUpdating(snapName),
            done: () => l10n.refreshRestart,
            error: (error) => error.toString(),
          ),
        ),
        const Flexible(child: SizedBox(height: kWizardSpacing)),
        Visibility(
          maintainSize: true,
          maintainState: true,
          maintainAnimation: true,
          visible: state.available || state.ready,
          child: ElevatedButton(
            onPressed: state.maybeMap(
              status: (_) => onRefresh,
              done: (_) => onQuit,
              error: (_) => onQuit,
              orElse: () => null,
            ),
            child: state.maybeMap(
              status: (s) => Text(l10n.refreshUpdateNow),
              done: (_) => Text(l10n.refreshCloseLabel),
              error: (_) => Text(l10n.refreshCloseLabel),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}

class RefreshBar extends StatelessWidget {
  const RefreshBar({
    required this.state,
    super.key,
    this.onSkip,
  });

  final RefreshState state;
  final VoidCallback? onSkip;

  @override
  Widget build(BuildContext context) {
    final skip = WizardButton(
      label: UbuntuLocalizations.of(context).skipLabel,
      onActivated: onSkip,
    );

    return WizardBar(
      leading: state.whenOrNull(
        checking: BackWizardButton.new,
        status: (_) => const BackWizardButton(),
      ),
      trailing: state.whenOrNull(
        checking: () => [skip],
        status: (_) => [skip],
        done: () => [],
        error: (_) => [],
      ),
    );
  }
}

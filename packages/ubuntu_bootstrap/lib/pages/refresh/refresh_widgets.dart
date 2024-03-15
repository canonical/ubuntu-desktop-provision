import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_l10n.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_model.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_x.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

String get snapName =>
    Platform.environment['SNAP_NAME'] ??
    p.basename(Platform.resolvedExecutable);

class RefreshView extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    return Column(children: [
      const Spacer(),
      MascotAvatar(progress: state.progress),
      const Spacer(),
      Text(
        state.whenOrNull(
              status: (_) => l10n.refreshHeader,
              done: () => l10n.refreshReady,
            ) ??
            '',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      const SizedBox(height: kWizardSpacing / 2),
      Text(
        state.when(
          checking: () => '',
          status: (status) => status.availability == RefreshCheckState.AVAILABLE
              ? l10n.refreshInfo
              : l10n.refreshUpToDate(status.currentSnapVersion),
          progress: (change) =>
              change.doing?.localize(context, snapName) ??
              l10n.refreshUpdating(snapName),
          done: () => l10n.refreshRestart,
          error: (error) => error.toString(),
        ),
      ),
      const SizedBox(height: kWizardSpacing),
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
    ]);
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

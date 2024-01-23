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
  const RefreshView({required this.state, super.key, this.onRefresh});

  final RefreshState state;
  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    return Column(children: [
      const Spacer(),
      MascotAvatar(progress: state.progress),
      const Spacer(),
      Text(
        state.when(
          checking: () => '',
          status: (status) => status.availability == RefreshCheckState.AVAILABLE
              ? l10n.refreshCurrent(snapName, status.currentSnapVersion)
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
        visible: state.available,
        child: ElevatedButton(
          onPressed: onRefresh,
          child: state.maybeMap(
            status: (s) => Text(l10n.refreshInstall(s.status.newSnapVersion)),
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
    this.onRestart,
  });

  final RefreshState state;
  final VoidCallback? onSkip;
  final VoidCallback? onRestart;

  @override
  Widget build(BuildContext context) {
    final skip = WizardButton(
      label: UbuntuLocalizations.of(context).skipLabel,
      onActivated: onSkip,
    );

    final restart = WizardButton(
      label: UbuntuLocalizations.of(context).restartLabel,
      highlighted: true,
      onActivated: onRestart,
    );

    return WizardBar(
      leading: state.whenOrNull(
        checking: PreviousWizardButton.new,
        status: (_) => const PreviousWizardButton(),
      ),
      trailing: state.whenOrNull(
        checking: () => [skip],
        status: (_) => [skip],
        done: () => [restart],
        error: (_) => [restart],
      ),
    );
  }
}

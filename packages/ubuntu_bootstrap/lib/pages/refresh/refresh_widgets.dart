import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

import 'refresh_l10n.dart';
import 'refresh_model.dart';
import 'refresh_x.dart';

String get snapName =>
    Platform.environment['SNAP_NAME'] ??
    p.basename(Platform.resolvedExecutable);

class RefreshView extends StatelessWidget {
  const RefreshView({super.key, required this.state, this.onRefresh});

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
    super.key,
    required this.state,
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
        checking: () => WizardButton.previous(context),
        status: (_) => WizardButton.previous(context),
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

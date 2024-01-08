import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_model.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_widgets.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

/// A page to let the user know that the installer has a newer version
/// available that can be installed.
class RefreshPage extends ConsumerWidget with ProvisioningPage {
  const RefreshPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(refreshModelProvider).init();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(refreshModelProvider);

    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(l10n.refreshPageTitle),
      ),
      content: RefreshView(
        state: model.state,
        onRefresh: model.refresh,
      ),
      bottomBar: RefreshBar(
        state: model.state,
        onSkip: Wizard.of(context).next,
        onRestart: model.restart,
      ),
    );
  }
}

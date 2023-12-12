import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import '../../l10n.dart';
import 'refresh_model.dart';
import 'refresh_widgets.dart';

class RefreshPage extends ConsumerWidget {
  const RefreshPage({super.key});

  static Future<bool> load(WidgetRef ref) {
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

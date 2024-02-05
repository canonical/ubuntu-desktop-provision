import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/rst/rst_model.dart';
import 'package:ubuntu_bootstrap/widgets.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

/// Page inform the user that they have Intel Rapid Storage Technology (RST)
/// enabled and need to disable it.
///
/// If RST is not enabled, this page is skipped.
class RstPage extends ConsumerWidget with ProvisioningPage {
  const RstPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(rstModelProvider).hasRst();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flavor = ref.watch(flavorProvider);
    final model = ref.watch(rstModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    return HorizontalPage(
      windowTitle: lang.rstTitle,
      title: lang.rstHeader,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(lang.rstDescription),
          const SizedBox(height: kWizardSpacing),
          Html(
            data: lang.rstInstructions('help.ubuntu.com/rst'),
            style: {
              'body': Style(margin: Margins.zero),
              'a': Style(color: Theme.of(context).colorScheme.link),
            },
            onLinkTap: (url, _, __) => launchUrl(url!),
          ),
          const SizedBox(height: kWizardSpacing),
          FilledButton(
            onPressed: () async {
              final window = YaruWindow.of(context);
              final confirmed = await showConfirmationDialog(
                context,
                title: lang.restartIntoWindowsTitle,
                message: lang.restartIntoWindowsDescription(flavor.name),
                okLabel: UbuntuLocalizations.of(context).restartLabel,
                okElevated: true,
              );
              if (confirmed) {
                await model.reboot().then((_) => window.close());
              }
            },
            child: Text(
              lang.restartIntoWindows,
            ),
          )
        ],
      ),
      bottomBar: const WizardBar(
        leading: PreviousWizardButton(),
      ),
    );
  }
}

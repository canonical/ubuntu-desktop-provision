import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/bitlocker/bitlocker_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/widgets.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class BitLockerPage extends ConsumerWidget with ProvisioningPage {
  const BitLockerPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    final type = ref.read(storageModelProvider).type;
    if (type == StorageType.manual || type == StorageType.erase) {
      return Future.value(false);
    }

    return ref.read(bitLockerModelProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(bitLockerModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final flavor = ref.watch(flavorProvider);
    return HorizontalPage(
      windowTitle: lang.bitlockerTitle,
      title: lang.bitlockerHeader,
      bottomBar: const WizardBar(
        leading: BackWizardButton(),
      ),
      children: [
        Text(
          lang.bitlockerDescription(
            lang.installationTypeErase(flavor.displayName),
          ),
        ),
        const SizedBox(height: kWizardSpacing),
        Html(
          data: lang.bitlockerInstructions('help.ubuntu.com/bitlocker'),
          style: {
            'body': Style(margin: Margins.zero),
            'a': Style(color: Theme.of(context).colorScheme.link),
          },
          onLinkTap: (url, _, __) => launchUrl(url!),
        ),
        const SizedBox(height: kWizardSpacing),
        ElevatedButton(
          onPressed: () async {
            final window = YaruWindow.of(context);
            final confirmed = await showConfirmationDialog(
              context,
              title: lang.bitlockerTitle,
              message: lang.restartIntoWindowsDescription(flavor.displayName),
              okLabel: UbuntuLocalizations.of(context).restartLabel,
              okElevated: true,
            );
            if (confirmed) {
              await model.reboot().then((_) => window.close());
            }
          },
          child: Text(lang.restartIntoWindows),
        ),
      ],
    );
  }
}

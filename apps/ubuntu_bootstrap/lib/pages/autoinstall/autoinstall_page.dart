import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

class AutoinstallPage extends ConsumerWidget with ProvisioningPage {
  const AutoinstallPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async => true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final autoinstallModel = ref.watch(autoinstallModelProvider);
    final flavor = ref.watch(flavorProvider);

    return HorizontalPage(
      windowTitle: lang.autoinstallTitle,
      title: lang.autoinstallHeader(flavor.displayName),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: const [NextWizardButton()],
      ),
      children: [
        OptionButton(
          title: Text(lang.autoinstallInteractiveOption),
          subtitle: Text(lang.autoinstallInteractiveDescription),
          value: AutoinstallType.none,
          groupValue: autoinstallModel.type,
          onChanged: (value) =>
              ref.read(autoinstallModelProvider.notifier).setType(value),
        ),
        const SizedBox(height: kWizardSpacing / 2),
        OptionButton(
          title: Text(lang.autoinstallAutomatedOption),
          subtitle: Text(lang.autoinstallAutomatedDescription),
          value: AutoinstallType.direct,
          groupValue: autoinstallModel.type,
          onChanged: (value) =>
              ref.read(autoinstallModelProvider.notifier).setType(value),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_landscape_model.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

class AutoinstallPage extends ConsumerWidget with ProvisioningPage {
  const AutoinstallPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async {
    return true;
  }

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
        trailing: [
          NextWizardButton(
            onNext: () => ref
                .read(landscapeDataModelProvider.notifier)
                .resetUnretryableError(),
          ),
        ],
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
          title: Text(lang.autoinstallDirectOption),
          subtitle: Text(lang.autoinstallDirectDescription),
          value: AutoinstallType.direct,
          groupValue: autoinstallModel.type,
          onChanged: (value) =>
              ref.read(autoinstallModelProvider.notifier).setType(value),
        ),
        if (ref.watch(autoinstallModelProvider.notifier).showLandscape) ...[
          const SizedBox(height: kWizardSpacing / 2),
          OptionButton(
            title: Text(lang.autoinstallLandscapeOption),
            subtitle: Text(lang.autoinstallLandscapeDescription),
            value: AutoinstallType.landscape,
            groupValue: autoinstallModel.type,
            onChanged: (value) =>
                ref.read(autoinstallModelProvider.notifier).setType(value),
          ),
        ],
      ],
    );
  }
}

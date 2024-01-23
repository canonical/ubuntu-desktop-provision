import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/src/ubuntu_pro/ubuntu_pro_l10n.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class UbuntuProPage extends ConsumerWidget with ProvisioningPage {
  const UbuntuProPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuProLocalizations.of(context);
    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(l10n.ubuntuProPageTitle),
      ),
      content: const Center(
        child: Text('Ubuntu Pro'),
      ),
      bottomBar: const WizardBar(
        leading: PreviousWizardButton(),
        trailing: [
          NextWizardButton(),
        ],
      ),
    );
  }
}

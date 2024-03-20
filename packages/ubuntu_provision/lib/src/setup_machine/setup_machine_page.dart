import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/src/setup_machine/setup_machine_l10n.dart';
import 'package:ubuntu_provision/src/setup_machine/setup_machine_model.dart';
import 'package:ubuntu_provision/widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class SetupMachinePage extends ConsumerWidget with ProvisioningPage {
  const SetupMachinePage({super.key});

  Widget build(BuildContext context, WidgetRef ref) {
    final lang = SetupMachineLocalizations.of(context);
    final model = ref.watch(setupMachineModelProvider);

    return HorizontalPage(
      windowTitle: lang.setupMachinePageTitle,
      title: lang.setupMachinePageHeader,
      expandContent: true,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(lang.setupMachinePageHeaderDesc),
          const SizedBox(height: kWizardSpacing),
          Column(
            children: [
              _RadioLabeledTile(
                lang.setupMachinePersonal,
                lang.setupMachinePersonalDesc,
                model.isPersonalMachine == true,
                model.updateMachineType,
              ),
              const SizedBox(height: kWizardSpacing / 2),
              _RadioLabeledTile(
                lang.setupMachineManaged,
                lang.setupMachineManagedDesc,
                model.isPersonalMachine == false,
                model.updateMachineType,
              ),
            ],
          ),
        ],
      ),
      bottomBar: WizardBar(
        leading: const PreviousWizardButton(),
        trailing: [
          NextWizardButton(),
        ],
      ),
    );
  }
}

class _RadioLabeledTile extends StatelessWidget {
  const _RadioLabeledTile(
      this.label, this.description, this.isSelected, this.onTap);

  final String label;
  final String description;
  final bool isSelected;
  final Function(bool?) onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: YaruBorderContainer(
        color: isSelected
            ? colorScheme.primary.withOpacity(0.2)
            : colorScheme.primaryContainer,
        border: Border.all(
          color: isSelected ? colorScheme.primary : theme.dividerColor,
        ),
        borderRadius: kWizardBorderRadius,
        child: YaruRadioListTile(
          title: Text(
            label,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(description),
          contentPadding: kWizardTilePadding,
          isThreeLine: true,
          value: true,
          groupValue: null,
          onChanged: (value) => onTap,
        ),
      ),
    );
  }
}

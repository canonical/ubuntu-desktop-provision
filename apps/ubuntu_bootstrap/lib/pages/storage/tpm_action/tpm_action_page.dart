import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_x.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/widgets.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class TpmActionPage extends ConsumerWidget with ProvisioningPage {
  const TpmActionPage({super.key});
  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async =>
      ref.read(tpmActionModelProvider).init();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(tpmActionModelProvider);
    final notifier = ref.read(tpmActionModelProvider.notifier);

    final children = [
      if (model.tpmError != null) Text(model.tpmError!.kind.localize(lang)),
      if (model.confirmationNeeded)
        YaruCheckButton(
          value: model.confirmed,
          onChanged: (value) => model.confirmed = value!,
          title: Text('confirm'),
        ),
      if (model.action != null)
        OutlinedButton(
          onPressed:
              (!model.confirmationNeeded || model.confirmed) && !model.isLoading
                  ? () => notifier.performAction(model.action!)
                  : null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(model.action!.localize(lang)),
              if (model.isLoading)
                SizedBox.square(
                  dimension: IconTheme.of(context).size,
                  child: const YaruCircularProgressIndicator(
                    strokeWidth: 3,
                  ),
                ),
            ].withSpacing(kWizardSpacing / 2),
          ),
        ),
      if (model.tpmError != null)
        YaruExpandable(
          expandButtonPosition: YaruExpandableButtonPosition.start,
          header: Text(lang.tpmActionDetailsLabel),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(model.tpmError!.kind.name),
              Text(model.tpmError!.message),
            ],
          ),
        ),
    ];

    return HorizontalPage(
      windowTitle: lang.installationTypeAdvancedTitle,
      title: lang.tpmActionPageTitle,
      trailingTitleWidget: YaruInfoBadge(
        title: Text(lang.tpmActionBadgeLabel),
        yaruInfoType: YaruInfoType.warning,
      ),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [if (model.isFixed) NextWizardButton()],
      ),
      children: model.isFixed ? [Text('No errors')] : children,
    );
  }
}

extension on TpmActionModel {
  CoreBootEncryptionSupportError? get tpmError =>
      tpmDisallowedCapability?.errors?.first;

  CoreBootFixAction? get action => tpmError?.actions.first;

  bool get isFixed => tpmDisallowedCapability == null;
}

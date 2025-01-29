import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_landscape_model.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class AutoinstallLandscapeDomainPage extends ConsumerWidget
    with ProvisioningPage {
  const AutoinstallLandscapeDomainPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async =>
      ref.watch(autoinstallModelProvider).type == AutoinstallType.landscape;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final landscapeModel = ref.watch(landscapeDataModelProvider);
    final hasActiveConnection =
        ref.watch(networkModelProvider).hasActiveConnection;

    return HorizontalPage(
      windowTitle: l10n.landscapePageTitle,
      title: l10n.landscapeDomainHeader,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [_NextButton()],
      ),
      children: [
        if (!hasActiveConnection) ...[
          YaruInfoBox(
            yaruInfoType: YaruInfoType.danger,
            title: Text(l10n.landscapeDomainNoInternetTitleWarning),
            child: Text(
              l10n.landscapeDomainNoInternetDescriptionWarning,
            ),
          ),
          const SizedBox(height: kWizardSpacing),
        ],
        Text(l10n.landscapeDomainInstructions),
        const SizedBox(height: kWizardSpacing),
        TextFormField(
          enabled: hasActiveConnection,
          initialValue: landscapeModel.domainUrl,
          onChanged: ref.read(landscapeDataModelProvider.notifier).setUrl,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (_) => landscapeModel.error != null
              ? l10n.landscapeDomainInvalidDomainWarning
              : null,
        ),
      ],
    );
  }
}

class _NextButton extends ConsumerWidget {
  const _NextButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final landscapeModel = ref.watch(landscapeDataModelProvider);
    final theme = Theme.of(context);
    final l10n = UbuntuBootstrapLocalizations.of(context);

    return ElevatedButton(
      style: theme.filledButtonTheme.style?.copyWith(
        minimumSize: WidgetStateProperty.all(kPushButtonSize),
      ),
      onPressed:
          landscapeModel.error == null && (landscapeModel.domainUrl != '')
              ? () async {
                  if (await ref
                      .read(landscapeDataModelProvider.notifier)
                      .attach()) {
                    if (context.mounted) await Wizard.of(context).next();
                  }
                }
              : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (landscapeModel.isLoading) ...[
            SizedBox.square(
              dimension: 16.0,
              child: YaruCircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
            const SizedBox(width: 8),
          ],
          if (!landscapeModel.isLoading) Text(l10n.next),
        ],
      ),
    );
  }
}

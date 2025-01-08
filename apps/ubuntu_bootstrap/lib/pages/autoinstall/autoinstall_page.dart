import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaml/yaml.dart';
import 'package:yaru/yaru.dart';

class AutoinstallPage extends ConsumerWidget with ProvisioningPage {
  const AutoinstallPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async => true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final directModel = ref.watch(autoinstallDirectModelProvider);
    final autoinstallModel = ref.watch(autoinstallModelProvider);
    final flavor = ref.watch(flavorProvider);

    return HorizontalPage(
      windowTitle: lang.autoinstallTitle,
      title: lang.autoinstallHeader(flavor.displayName),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          autoinstallModel.type == AutoinstallType.none
              ? WizardButton(
                  label: UbuntuLocalizations.of(context).nextLabel,
                  onActivated: Wizard.of(context).next,
                )
              : _ValidateButton(),
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
          title: Text(lang.autoinstallAutomatedOption),
          subtitle: Text(lang.autoinstallAutomatedDescription),
          value: AutoinstallType.direct,
          groupValue: autoinstallModel.type,
          onChanged: (value) =>
              ref.read(autoinstallModelProvider.notifier).setType(value),
        ),
        const SizedBox(height: kWizardSpacing),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: autoinstallModel.type != AutoinstallType.none ? 1 : 0,
            child: SizedBox(
              height: autoinstallModel.type != AutoinstallType.none ? 160 : 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(lang.autoinstallInstructions),
                  const SizedBox(height: kWizardSpacing),
                  TextFormField(
                    initialValue: directModel.value,
                    onChanged: ref
                        .read(autoinstallDirectModelProvider.notifier)
                        .setUrl,
                    maxLines: null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (_) => switch (directModel.error) {
                      null => null,
                      YamlException _ => 'Invalid YAML',
                      final SocketException e => 'Network error: ${e.message}',
                      final ArgumentError e => 'Invalid URL: ${e.message}',
                      final FormatException e => 'Invalid Format: ${e.message}',
                      final FileSystemException e =>
                        'File system error: ${e.message}',
                      _ => 'Unknown Error',
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ValidateButton extends ConsumerWidget {
  const _ValidateButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final directModel = ref.watch(autoinstallDirectModelProvider);
    final autoinstallNotifier = ref.read(autoinstallModelProvider.notifier);
    final theme = Theme.of(context);
    final lang = UbuntuBootstrapLocalizations.of(context);

    return ElevatedButton(
      style: theme.elevatedButtonTheme.style?.copyWith(
        minimumSize: WidgetStateProperty.all(kPushButtonSize),
      ),
      onPressed:
          directModel.error == null && (directModel.value?.isNotEmpty ?? false)
              ? () async {
                  if (await ref
                      .read(autoinstallDirectModelProvider.notifier)
                      .fetchAndWrite()) {
                    await autoinstallNotifier.restart();
                  }
                }
              : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (directModel.isLoading) ...[
            SizedBox.square(
              dimension: 16.0,
              child: YaruCircularProgressIndicator(
                color: Theme.of(context).colorScheme.onPrimary,
                strokeWidth: 2,
              ),
            ),
            const SizedBox(width: 8),
          ],
          Text(lang.validate),
        ],
      ),
    );
  }
}

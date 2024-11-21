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
    final model = ref.watch(autoinstallModelProvider);
    final flavor = ref.watch(flavorProvider);

    return HorizontalPage(
      windowTitle: lang.autoinstallTitle,
      title: lang.autoinstallHeader(flavor.displayName),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          model.autoinstall
              ? _ValidateButton(model: model)
              : WizardButton(
                  label: UbuntuLocalizations.of(context).nextLabel,
                  onActivated: Wizard.of(context).next,
                ),
        ],
      ),
      children: [
        OptionButton(
          title: Text(lang.autoinstallInteractiveOption),
          subtitle: Text(lang.autoinstallInteractiveDescription),
          value: false,
          groupValue: model.autoinstall,
          onChanged: (value) =>
              ref.read(autoinstallModelProvider).autoinstall = value ?? false,
        ),
        const SizedBox(height: kWizardSpacing / 2),
        OptionButton(
          title: Text(lang.autoinstallAutomatedOption),
          subtitle: Text(lang.autoinstallAutomatedDescription),
          value: true,
          groupValue: model.autoinstall,
          onChanged: (value) =>
              ref.read(autoinstallModelProvider).autoinstall = value ?? false,
        ),
        const SizedBox(height: kWizardSpacing),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: model.autoinstall ? 1 : 0,
            child: SizedBox(
              height: model.autoinstall ? 160 : 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(lang.autoinstallInstructions),
                  const SizedBox(height: kWizardSpacing),
                  TextFormField(
                    initialValue: model.url,
                    onChanged: (value) => model.url = value,
                    maxLines: null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (_) => model.state.maybeWhen(
                      error: (error, _) {
                        return switch (error) {
                          YamlException _ => 'Invalid YAML',
                          final SocketException e =>
                            'Network error: ${e.message}',
                          final ArgumentError e => 'Invalid URL: ${e.message}',
                          final FormatException e =>
                            'Invalid Format: ${e.message}',
                          final FileSystemException e =>
                            'File system error: ${e.message}',
                          _ => 'Unknown Error',
                        };
                      },
                      orElse: () => null,
                    ),
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

class _ValidateButton extends StatelessWidget {
  const _ValidateButton({required this.model});

  final AutoinstallModel model;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = UbuntuBootstrapLocalizations.of(context);

    return ElevatedButton(
      style: theme.elevatedButtonTheme.style?.copyWith(
        minimumSize: WidgetStateProperty.all(kPushButtonSize),
      ),
      onPressed:
          !model.state.hasError && model.url.isNotEmpty ? model.apply : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (model.state.isLoading) ...[
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

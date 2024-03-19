import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_bootstrap/widgets.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaml/yaml.dart';
import 'package:yaru/yaru.dart';

class AutoinstallPage extends ConsumerStatefulWidget with ProvisioningPage {
  const AutoinstallPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async => true;

  @override
  ConsumerState<AutoinstallPage> createState() => _AutoinstallPageState();
}

class _AutoinstallPageState extends ConsumerState<AutoinstallPage> {
  bool autoinstall = false;

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(autoinstallModelProvider);
    final flavor = ref.watch(flavorProvider);
    return HorizontalPage(
      windowTitle: lang.autoinstallTitle,
      title: lang.autoinstallHeader(flavor.displayName),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          WizardButton(
            visible: !autoinstall,
            label: UbuntuLocalizations.of(context).nextLabel,
            onActivated: Wizard.of(context).next,
          )
        ],
      ),
      children: [
        OptionButton(
          title: Text(lang.autoinstallInteractiveOption),
          subtitle: Text(lang.autoinstallInteractiveDescription),
          value: false,
          groupValue: autoinstall,
          onChanged: (value) => setState(() => autoinstall = value ?? false),
        ),
        const SizedBox(height: kWizardSpacing / 2),
        OptionButton(
          title: Text(lang.autoinstallAutomatedOption),
          subtitle: Text(lang.autoinstallAutomatedDescription),
          value: true,
          groupValue: autoinstall,
          onChanged: (value) => setState(() => autoinstall = value ?? false),
        ),
        const SizedBox(height: kWizardSpacing),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: autoinstall ? 1 : 0,
            child: SizedBox(
              height: autoinstall ? 150 : 0,
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
                          _ => 'Unknown Error',
                        };
                      },
                      orElse: () => null,
                    ),
                  ),
                  const SizedBox(height: kWizardSpacing),
                  ElevatedButton(
                    onPressed: model.apply,
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

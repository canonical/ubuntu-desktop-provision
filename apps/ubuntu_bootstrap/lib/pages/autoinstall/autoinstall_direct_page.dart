import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaml/yaml.dart';
import 'package:yaru/yaru.dart';

class AutoinstallDirectPage extends ConsumerWidget with ProvisioningPage {
  const AutoinstallDirectPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async =>
      ref.watch(autoinstallModelProvider).type == AutoinstallType.direct;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final directModel = ref.watch(autoinstallDirectModelProvider);
    final autoinstallModel = ref.watch(autoinstallModelProvider);

    return HorizontalPage(
      windowTitle: lang.autoinstallDirectTitle,
      title: lang.autoinstallDirectHeader,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          autoinstallModel.type == AutoinstallType.none
              ? WizardButton(
                  label: UbuntuLocalizations.of(context).nextLabel,
                  onActivated: Wizard.of(context).next,
                )
              : _ImportButton(),
        ],
      ),
      children: [
        if (directModel.error != null) ...[
          YaruInfoBox(
            yaruInfoType: YaruInfoType.danger,
            title: Text('Error'),
            child: Text(
              switch (directModel.error) {
                YamlException _ => 'Invalid YAML',
                final SocketException e => 'Network error: ${e.message}',
                final ArgumentError e => 'Invalid URL: ${e.message}',
                final FormatException e => 'Invalid Format: ${e.message}',
                final FileSystemException e =>
                  'File system error: ${e.message}',
                _ => 'Unknown Error',
              },
            ),
          ),
          const SizedBox(height: kWizardSpacing),
        ],
        Text(lang.autoinstallDirectUrlLabel),
        const SizedBox(height: kWizardSpacing),
        TextFormField(
          enabled: directModel.localPath == null,
          initialValue: directModel.url,
          onChanged: ref.read(autoinstallDirectModelProvider.notifier).setUrl,
          maxLines: null,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (_) => directModel.error != null ? '' : null,
        ),
        const SizedBox(height: kWizardSpacing),
        Text(lang.autoinstallDirectFileLabel),
        const SizedBox(height: kWizardSpacing),
        Row(
          children: [
            OutlinedButton(
              onPressed: () => Navigator.of(context, rootNavigator: true).push(
                DialogRoute(
                  context: context,
                  builder: (_) => _FilePicker(
                    title: lang.autoinstallDirectFilePickerTitle,
                    filterLabel: lang.autoinstallDirectFilePickerFilterLabel,
                  ),
                ),
              ),
              child: Text(lang.autoinstallDirectFileButtonLabel),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Tooltip(
                message: directModel.localPath?.path ?? '',
                child: Text(
                  directModel.localPath?.pathSegments.last ?? '',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Custom file picker widget that displays a non-dismissable `ModalBarrier` while awaiting the
// response from `pickLocalFile`
class _FilePicker extends ConsumerStatefulWidget {
  const _FilePicker({
    required this.title,
    required this.filterLabel,
  });

  final String title;
  final String filterLabel;

  @override
  ConsumerState<_FilePicker> createState() => _FilePickerState();
}

class _FilePickerState extends ConsumerState<_FilePicker> {
  @override
  void initState() {
    super.initState();
    showPicker();
  }

  Future<void> showPicker() async {
    await ref
        .read(autoinstallDirectModelProvider.notifier)
        .pickLocalFile(widget.title, widget.filterLabel);
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return const ModalBarrier(dismissible: false);
  }
}

class _ImportButton extends ConsumerWidget {
  const _ImportButton();

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
      onPressed: directModel.error == null &&
              (directModel.url.isNotEmpty || directModel.localPath != null)
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
          Text(lang.autoinstallDirectImportButtonLabel),
        ],
      ),
    );
  }
}

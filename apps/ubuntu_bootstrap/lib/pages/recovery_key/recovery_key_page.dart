import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/recovery_key/recovery_key_l10n.dart';
import 'package:ubuntu_bootstrap/pages/recovery_key/recovery_key_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:xdg_desktop_portal/xdg_desktop_portal.dart';
import 'package:yaru/yaru.dart';

const fdeLink =
    'https://canonical-ubuntu-desktop-documentation.readthedocs-hosted.com/en/latest/explanation/hardware-backed-disk-encryption/#recovery-key';
const defaultRecoveryKeyFileName = 'recovery-key.txt';

class RecoveryKeyPage extends ConsumerWidget with ProvisioningPage {
  const RecoveryKeyPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    if (ref.read(storageModelProvider).type == StorageType.manual) {
      return Future.value(false);
    }

    return ref.read(recoveryKeyModelProvider).init();
  }

  void saveToClipboard(BuildContext context, String text) {
    Clipboard.setData(
      ClipboardData(text: text),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          UbuntuBootstrapLocalizations.of(context)
              .recoveryKeyClipboardNotifiaction,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(recoveryKeyModelProvider);

    return HorizontalPage(
      windowTitle: l10n.recoveryKeyTitle,
      title: l10n.recoveryKeyHeader,
      trailingTitleWidget: Expanded(
        child: Row(
          children: [
            YaruInfoBadge(
              title: Text(l10n.recoveryKeyTitleBadgeLabel),
              yaruInfoType: YaruInfoType.danger,
            ),
          ],
        ),
      ),
      bottomBar: WizardBar(
        trailing: [
          NextWizardButton(enabled: model.confirmed),
        ],
      ),
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.recoveryKeyStorageAdvice),
            Html(
              data: '<a href="$fdeLink">${l10n.recoveryKeyLinkLabel}</a>',
              style: {
                'body': Style(margin: Margins.zero),
                'a': Style(
                  color: Theme.of(context).colorScheme.link,
                  textDecoration: TextDecoration.none,
                ),
              },
              shrinkWrap: true,
              onLinkTap: (url, __, ___) => launchUrl(url!),
            ),
          ],
        ),
        Builder(
          // This builder is needed to access the build context that contains
          // the ScaffoldMessenger to display the Snackbar
          builder: (context) {
            return TextFormField(
              onTap: () => saveToClipboard(context, model.recoveryKey),
              initialValue: model.recoveryKey,
              decoration: InputDecoration(
                labelText: l10n.recoveryKeyTextFieldLabel,
                suffixIcon: YaruIconButton(
                  icon: const Icon(YaruIcons.copy, size: 16),
                  onPressed: () => saveToClipboard(context, model.recoveryKey),
                  tooltip: UbuntuLocalizations.of(context).copyLabel,
                ),
                suffixIconConstraints: BoxConstraints(
                  maxWidth: 32,
                  maxHeight: 32,
                ),
              ),
              readOnly: true,
              minLines: 1,
              maxLines: 2,
              style: TextStyle(
                inherit: false,
                fontFamily: 'Ubuntu Mono',
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                textBaseline: TextBaseline.alphabetic,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            );
          },
        ),
        Wrap(
          children: [
            OutlinedButton(
              onPressed: () async {
                try {
                  final uri = await showSaveFileDialog(
                    context: context,
                    title: l10n.recoveryKeyFilePickerTitle,
                    defaultFileName: defaultRecoveryKeyFileName,
                    filters: [
                      XdgFileChooserFilter(l10n.recoveryKeyFilePickerFilter, [
                        XdgFileChooserGlobPattern('*.txt'),
                      ]),
                    ],
                  );
                  if (uri != null) {
                    await model.writeRecoveryKey(uri);
                  }
                  model.setError(null);
                } on Exception catch (e) {
                  model.setError(RecoveryKeyException.from(e));
                }
              },
              child: Text(l10n.recoveryKeySaveToFileLabel),
            ),
            OutlinedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) =>
                    _RecoveryKeyDialog(recoveryKey: model.recoveryKey),
              ),
              child: Text(l10n.recoveryKeyShowQrCodeLabel),
            ),
          ].withSpacing(kWizardSpacing / 2),
        ),
        YaruCheckButton(
          title: Text(
            l10n.recoveryKeyConfirmation,
            maxLines: 2,
            // TODO: remove hardcoded style once this is avialable in yaru.
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          value: model.confirmed,
          onChanged: model.setConfirmed,
        ),
        if (model.error != null)
          YaruInfoBox(
            yaruInfoType: YaruInfoType.danger,
            title: Text(model.error!.localizedTitle(l10n)),
            child: Text(model.error!.localizedBody(l10n)),
          ),
      ].withSpacing(kWizardSpacing),
    );
  }
}

class _RecoveryKeyDialog extends ConsumerWidget {
  const _RecoveryKeyDialog({
    required this.recoveryKey,
  });

  final String recoveryKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final flavor = ref.watch(flavorProvider);
    return AlertDialog(
      title: YaruDialogTitleBar(
        title: Text(l10n.recoveryKeyQrDialogTitle(flavor.displayName)),
      ),
      titlePadding: EdgeInsets.zero,
      content: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 500),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.recoveryKeyQrDialogBody),
            BarcodeWidget(
              margin: const EdgeInsets.all(2 * kWizardSpacing),
              color: Theme.of(context).colorScheme.onSurface,
              barcode: Barcode.qrCode(),
              data: recoveryKey,
              width: 200,
              height: 200,
            ),
            Text(
              recoveryKey,
              style: TextStyle(
                inherit: false,
                fontFamily: 'Ubuntu Mono',
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                textBaseline: TextBaseline.alphabetic,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

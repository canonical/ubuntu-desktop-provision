import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

const kMagicAttachUrl = 'https://ubuntu.com/pro/attach';

class UbuntuProPage extends ConsumerWidget with ProvisioningPage {
  const UbuntuProPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async {
    await ref.read(ubuntuProModelProvider).magicAttach();
    return true;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuProLocalizations.of(context);
    final model = ref.watch(ubuntuProModelProvider);
    return HorizontalPage(
      windowTitle: l10n.ubuntuProPageTitle,
      title: l10n.ubuntuProHeader,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Html(
            data: l10n.ubuntuProMagicAttachInstructions(
              kMagicAttachUrl.replaceFirst('https://', ''),
            ),
            style: {
              'body': Style(margin: Margins.zero),
              'a': Style(color: Theme.of(context).colorScheme.link),
            },
            onLinkTap: (url, _, __) => launchUrl(url!),
          ),
          model.userCode.isEmpty
              ? const CircularProgressIndicator()
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BarcodeWidget(
                      margin:
                          const EdgeInsets.symmetric(vertical: kWizardSpacing),
                      color: Theme.of(context).colorScheme.onSurface,
                      barcode: Barcode.qrCode(),
                      data:
                          '$kMagicAttachUrl?magic-attach-code=${model.userCode}',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(width: kWizardSpacing),
                    SelectableText(
                      model.userCode,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
          const SizedBox(height: kWizardSpacing),
          OutlinedButton(
            onPressed: () => ref.read(ubuntuProModelProvider).magicAttach(),
            child: const Text('Refresh'),
          ),
          const SizedBox(height: kWizardSpacing),
          Visibility(
            visible: model.isAttached,
            child: const Text('Successfully attached!'),
          ),
        ],
      ),
    );
  }
}

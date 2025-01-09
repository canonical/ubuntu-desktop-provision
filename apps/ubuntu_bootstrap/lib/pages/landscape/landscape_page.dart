import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n/ubuntu_bootstrap_localizations.dart';
import 'package:ubuntu_bootstrap/pages/landscape/landscape_model.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

const kMagicAttachUrl =
    'myorg.saas.landscape.canonical.com/attach'; // Placeholder URL
const kUbuntuLandscapeUrl = 'https://ubuntu.com/landscape';

class LandscapePage extends ConsumerWidget with ProvisioningPage {
  const LandscapePage({super.key});

//   @override
//   Future<bool> load(BuildContext context, WidgetRef ref) async {
//     final model = ref.watch(landscapeDataModelProvider);
//     if (model.skipPro) return false;

//     await ref.read(landscapeDataModelProvider.notifier).magicAttach();
//     return true;
//   }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(landscapeDataModelProvider);
    final notifier = ref.watch(landscapeDataModelProvider.notifier);
    return HorizontalPage(
      windowTitle: l10n.landscapePageTitle,
      title: l10n.landscapeHeader,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        // Trailing to be removed in the future to match designs. Leaving this here for now for easier debugging.
        trailing: [
          WizardButton(
            label: UbuntuLocalizations.of(context).nextLabel,
            onActivated: Wizard.of(context).next,
          ),
        ],
      ),
      imageTitleWidget: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BarcodeWidget(
            margin: const EdgeInsets.symmetric(
              vertical: kWizardSpacing,
            ),
            color: Theme.of(context).colorScheme.onSurface,
            barcode: Barcode.qrCode(),
            data: '$kMagicAttachUrl?magic-attach-code=${model.userCode}',
            width: 200,
            height: 200,
          ),
        ],
      ),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Html(
              data: l10n.landscapeMagicAttachInstructions(
                kMagicAttachUrl.replaceFirst('https://', ''),
              ),
              style: {
                'body':
                    Style(margin: Margins.zero, fontWeight: FontWeight.w500),
                'a': Style(
                  color: Theme.of(context).colorScheme.link,
                  fontWeight: FontWeight.w500,
                ),
              },
              onLinkTap: (url, _, __) => launchUrl(url!),
            ),
            model.userCode.isEmpty
                ? const Padding(
                    padding: EdgeInsets.all(kWizardBarSpacing * 2),
                    child: YaruCircularProgressIndicator(),
                  )
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: SelectableText(
                              model.userCode,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                          const SizedBox(width: kWizardSpacing / 2),
                        ],
                      ),
                    ],
                  ),
          ],
        ),
      ],
    );
  }
}

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n/ubuntu_bootstrap_localizations.dart';
import 'package:ubuntu_bootstrap/pages/landscape/landscape_model.dart';
import 'package:ubuntu_bootstrap/pages/landscape/landscape_widgets.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

const kMagicAttachUrl =
    'https://ubuntu.com/landscape/attach'; // Placeholder URL
const kUbuntuLandscapeUrl = 'https://ubuntu.com/landscape';

class LandscapePage extends ConsumerWidget with ProvisioningPage {
  const LandscapePage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async {
    final model = ref.watch(landscapeDataModelProvider);
    if (model.skipPro) return false;

    await ref.read(landscapeDataModelProvider.notifier).magicAttach();
    return true;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(landscapeDataModelProvider);
    final notifier = ref.watch(landscapeDataModelProvider.notifier);
    final token = ref.watch(tokenNotifierProvider);
    return HorizontalPage(
      windowTitle: l10n.landscapePageTitle,
      title: l10n.landscapeHeader,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          model.isAttached
              ? WizardButton(
                  label: UbuntuLocalizations.of(context).nextLabel,
                  onActivated: Wizard.of(context).next,
                )
              : PushButton.filled(
                  onPressed: token.isEmpty
                      ? null
                      : () async {
                          await notifier.attachManuallyToken();
                        },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      Theme.of(context)
                          .colorScheme
                          .success
                          .withOpacity(token.isEmpty ? 0.5 : 1),
                    ),
                  ),
                  child: Text(
                    l10n.landscapeTokenAttachButton,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                ),
        ],
      ),
      imageTitleWidget: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            l10n.landscapeSubscriptionDescription,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: kWizardSpacing / 2),
          Html(
            data: l10n.landscapeSubscriptionFreeForPersonalUse(
              kUbuntuLandscapeUrl.replaceFirst('https://', ''),
            ),
            style: {
              'body': Style(margin: Margins.zero),
              'a': Style(
                color: Theme.of(context).colorScheme.link,
              ),
            },
            onLinkTap: (url, _, __) => launchUrl(url!),
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
                          BarcodeWidget(
                            margin: const EdgeInsets.symmetric(
                              vertical: kWizardSpacing,
                            ),
                            color: Theme.of(context).colorScheme.onSurface,
                            barcode: Barcode.qrCode(),
                            data:
                                '$kMagicAttachUrl?magic-attach-code=${model.userCode}',
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(width: kWizardSpacing),
                          Expanded(
                            child: SelectableText(
                              model.userCode,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                          const SizedBox(width: kWizardSpacing / 2),
                          if (model.isAttached &&
                              model.isAttachedThroughMagicAttach)
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SuccessIcon(),
                                  const SizedBox(width: kWizardSpacing / 4),
                                  Expanded(
                                    child: Text(
                                      l10n.landscapeTokenAttachSucess,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .success,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
            const SizedBox(height: kWizardSpacing),
            Text(
              l10n.landscapeOrAddTokenManually,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: kWizardSpacing),
            const TokenTextField(),
          ],
        ),
      ],
    );
  }
}

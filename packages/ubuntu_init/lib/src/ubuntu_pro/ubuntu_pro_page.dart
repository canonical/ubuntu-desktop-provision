import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/src/ubuntu_pro/ubuntu_pro_widgets.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

const kMagicAttachUrl = 'https://ubuntu.com/pro/attach';
const kUbuntuProUrl = 'https://ubuntu.com/pro';

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
      imageFlex: 4,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          model.isAttached
              ? WizardButton(
                  label: UbuntuLocalizations.of(context).nextLabel,
                  onActivated: Wizard.of(context).next,
                )
              : PushButton.filled(
                  onPressed:
                      model.token.isEmpty ? null : model.attachManuallyToken,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context)
                        .colorScheme
                        .success
                        .withOpacity(model.token.isEmpty ? 0.5 : 1)),
                  ),
                  child: Text(
                    l10n.ubuntuProTokenAttachButton,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                )
        ],
      ),
      imageBottomContent: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            l10n.ubuntuProSubscriptionDescription,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: kWizardSpacing / 2),
          Html(
            data: l10n.ubuntuProSubscriptionFreeForPersonalUse(
              kUbuntuProUrl.replaceFirst('https://', ''),
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
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Html(
            data: l10n.ubuntuProMagicAttachInstructions(
              kMagicAttachUrl.replaceFirst('https://', ''),
            ),
            style: {
              'body': Style(margin: Margins.zero, fontWeight: FontWeight.w500),
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
                  child: CircularProgressIndicator(),
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BarcodeWidget(
                          margin: const EdgeInsets.symmetric(
                              vertical: kWizardSpacing),
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
                        const SizedBox(width: kWizardSpacing / 2),
                        if (model.isAttached &&
                            model.isAttachedThroughMagicAttach)
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SuccessIcon(),
                              const SizedBox(width: kWizardSpacing / 4),
                              Text(
                                l10n.ubuntuProTokenAttachSucess,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.success,
                                    ),
                              ),
                            ],
                          )
                      ],
                    ),
                  ],
                ),
          const SizedBox(height: kWizardSpacing),
          Text(
            l10n.ubuntuProOrAddTokenManually,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: kWizardSpacing),
          const TokenTextField(),
        ],
      ),
    );
  }
}

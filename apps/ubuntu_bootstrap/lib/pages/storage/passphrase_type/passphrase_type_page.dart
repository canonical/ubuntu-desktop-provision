import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase_type/passphrase_type_l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase_type/passphrase_type_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

const _fdeLink =
    'https://ubuntu.com/desktop/docs/en/latest/explanation/hardware-backed-disk-encryption/#tpm-fde-encryption-passphrase';

class PassphraseTypePage extends ConsumerWidget {
  const PassphraseTypePage({super.key});

  static Future<bool> load(WidgetRef ref) =>
      ref.read(passphraseTypeModelProvider).init();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(passphraseTypeModelProvider);

    return HorizontalPage(
      windowTitle: l10n.passphrasePageTitle,
      title: l10n.passphraseTypePageHeader,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [NextWizardButton()],
      ),
      children: [
        SizedBox(
          width: kWizardDialogWidth,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.encryptionRequirements
                        .contains(CoreBootEncryptionRequirement.VOLUMES_AUTH)
                    ? l10n.passphraseTypePageBodyAuthRequired
                    : l10n.passphraseTypePageBody,
              ),
              const SizedBox(height: kWizardSpacing),
              ...model.supportedTypes.map(
                (type) {
                  return OptionButton(
                    title: Text(type.localizedTileTitle(l10n)),
                    value: type,
                    groupValue: model.passphraseType,
                    onChanged: (type) => model.passphraseType = type!,
                  );
                },
              ).withSpacing(kWizardSpacing / 2),
              const SizedBox(height: kWizardSpacing / 2),
              Html(
                data: '<a href="$_fdeLink">${l10n.recoveryKeyLinkLabel}</a>',
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
        ),
      ],
    );
  }
}

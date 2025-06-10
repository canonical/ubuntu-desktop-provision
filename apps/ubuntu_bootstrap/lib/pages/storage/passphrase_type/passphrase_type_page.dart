import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase_type/passphrase_type_l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase_type/passphrase_type_model.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

class PassphraseTypePage extends ConsumerWidget {
  const PassphraseTypePage({super.key});

  static Future<bool> load(WidgetRef ref) async =>
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
              Text(l10n.passphraseTypePageBody),
              const SizedBox(height: kWizardSpacing),
              ...[
                PassphraseType.none,
                PassphraseType.pin,
                PassphraseType.passphrase,
              ].map(
                (type) {
                  final subtitle = type.localizedTileSubTitle(l10n);
                  return OptionButton(
                    title: Text(type.localizedTileTitle(l10n)),
                    subtitle: subtitle != null ? Text(subtitle) : null,
                    isThreeLines: subtitle != null,
                    value: type,
                    groupValue: model.passphraseType,
                    onChanged: (type) => model.passphraseType = type!,
                  );
                },
              ).withSpacing(kWizardSpacing / 2),
            ],
          ),
        ),
      ],
    );
  }
}

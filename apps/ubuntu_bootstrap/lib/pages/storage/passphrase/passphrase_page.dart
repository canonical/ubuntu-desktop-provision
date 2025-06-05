import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_widgets.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
import 'package:ubuntu_bootstrap/widgets/info_box.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

/// Choose security key page.
///
/// See also:
/// * [PassphraseModel]
class PassphrasePage extends ConsumerWidget {
  const PassphrasePage({super.key});

  static Future<bool> load(WidgetRef ref) {
    return ref.read(passphraseModelProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final ulang = UbuntuLocalizations.of(context);
    final model = ref.watch(passphraseModelProvider);
    final notifier = ref.read(passphraseModelProvider.notifier);

    return HorizontalPage(
      windowTitle: lang.passphrasePageTitle,
      title: model.passphraseType.localizedHeader(lang),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            enabled: model.isValid,
            onNext: notifier.savePassphrase,
            onReturn: notifier.loadPassphrase,
            label: ulang.nextLabel,
          ),
        ],
      ),
      children: <Widget>[
        Text(
          model.isTpm
              ? model.passphraseType.localizedBody(lang)
              : lang.choosePassphraseBody,
        ),
        const PassphraseFormField(),
        const ConfirmPassphraseFormField(),
        if (!model.isTpm)
          InfoBox(
            title: lang.choosePassphraseInfoHeader,
            subtitle: lang.choosePassphraseInfoBody,
            type: InfoBoxType.warning,
            isThreeLine: true,
          ),
      ].withSpacing(kWizardSpacing),
    );
  }
}

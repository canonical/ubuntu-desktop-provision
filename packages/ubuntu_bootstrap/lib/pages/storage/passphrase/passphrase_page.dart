import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_widgets.dart';
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
    return HorizontalPage(
      windowTitle: lang.choosePassphraseTitle,
      title: lang.choosePassphraseHeader,
      content: Column(
        children: <Widget>[
          Text(lang.choosePassphraseBody),
          const PassphraseFormField(),
          const ConfirmPassphraseFormField(),
          InfoBox(
            title: lang.choosePassphraseInfoHeader,
            subtitle: lang.choosePassphraseInfoBody,
            type: InfoBoxType.warning,
            isThreeLine: true,
          ),
        ].withSpacing(kWizardSpacing),
      ),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            enabled: ref.watch(
                passphraseModelProvider.select((model) => model.isValid)),
            onNext: ref.read(passphraseModelProvider).savePassphrase,
            onExecute: ref.read(passphraseModelProvider).loadPassphrase,
          ),
        ],
      ),
    );
  }
}

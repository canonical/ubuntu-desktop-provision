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
    final isTpm = ref.watch(
      passphraseModelProvider.select((model) => model.isTpm),
    );
    final lang = UbuntuBootstrapLocalizations.of(context);
    final l10n = UbuntuLocalizations.of(context);

    return HorizontalPage(
      windowTitle: lang.choosePassphraseTitle,
      title: isTpm
          ? lang.chooseOptionalPassphraseHeader
          : lang.choosePassphraseHeader,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            enabled: ref.watch(
              passphraseModelProvider
                  .select((model) => model.isValid || model.canSkip),
            ),
            onNext: ref.read(passphraseModelProvider).savePassphrase,
            onReturn: ref.read(passphraseModelProvider).loadPassphrase,
            label: ref.watch(
              passphraseModelProvider.select((model) => model.canSkip),
            )
                ? l10n.skipLabel
                : l10n.nextLabel,
          ),
        ],
      ),
      children: <Widget>[
        Text(
          isTpm ? lang.chooseOptionalPassphraseBody : lang.choosePassphraseBody,
        ),
        const PassphraseFormField(),
        const ConfirmPassphraseFormField(),
        InfoBox(
          title: isTpm
              ? lang.choosePassphraseInfoHeader
              : lang.choosePassphraseInfoHeader,
          subtitle: isTpm
              ? lang.chooseOptionalPassphraseInfoBody
              : lang.choosePassphraseInfoBody,
          type: InfoBoxType.warning,
          isThreeLine: true,
        ),
      ].withSpacing(kWizardSpacing),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase_type/passphrase_type_l10n.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:yaru/icons.dart';

// TODO: this will need to be conditionally hooked up to the /storage/v2/calculate_entropy
//       endpoint in Subiquity once it is available
class PassphraseFormField extends ConsumerWidget {
  const PassphraseFormField({super.key, this.fieldWidth});

  final double? fieldWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.read(passphraseModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);

    return ValidatedFormField(
      fieldWidth: fieldWidth,
      labelText: model.passphraseType.localizedChooseHint(lang),
      obscureText: !model.showPassphrase,
      successWidget: model.passphrase.isNotEmpty ? const SuccessIcon() : null,
      initialValue: model.passphrase,
      suffixIcon: const _SecurityKeyShowButton(),
      validator: RequiredValidator(
        errorText: model.passphraseType.localizedRequiredError(lang),
      ),
      onChanged: (value) {
        model.passphrase = value;
      },
    );
  }
}

class ConfirmPassphraseFormField extends ConsumerWidget {
  const ConfirmPassphraseFormField({this.fieldWidth, super.key});

  final double? fieldWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(passphraseModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);

    return ValidatedFormField(
      fieldWidth: fieldWidth,
      labelText: model.passphraseType.localizedConfirmHint(lang),
      obscureText: !model.showPassphrase,
      successWidget:
          model.confirmedPassphrase.isNotEmpty ? const SuccessIcon() : null,
      initialValue: model.confirmedPassphrase,
      autovalidateMode: AutovalidateMode.always,
      validator: EqualValidator(
        model.passphrase,
        errorText: model.passphraseType.localizedMismatchError(lang),
      ),
      onChanged: (value) {
        model.confirmedPassphrase = value;
      },
    );
  }
}

class _SecurityKeyShowButton extends ConsumerWidget {
  const _SecurityKeyShowButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final showSecurityKey = ref.watch(
      passphraseModelProvider.select((model) => model.showPassphrase),
    );

    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: TextButton.icon(
        icon:
            Icon(YaruIcons.eye, color: theme.colorScheme.onSecondaryContainer),
        label:
            Text(showSecurityKey ? lang.hideSecurityKey : lang.showSecurityKey),
        onPressed: () {
          ref.read(passphraseModelProvider).showPassphrase = !showSecurityKey;
        },
        style: TextButton.styleFrom(
          foregroundColor: theme.colorScheme.onSecondaryContainer,
          backgroundColor: theme.colorScheme.primaryContainer,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(4.0),
              bottomRight: Radius.circular(4.0),
            ),
          ),
        ),
      ),
    );
  }
}

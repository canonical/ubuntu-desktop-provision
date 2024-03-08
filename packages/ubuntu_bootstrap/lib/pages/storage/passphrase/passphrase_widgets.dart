import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:yaru/icons.dart';

class PassphraseFormField extends ConsumerWidget {
  const PassphraseFormField({super.key, this.fieldWidth});

  final double? fieldWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final securityKey = ref.watch(
      passphraseModelProvider.select((model) => model.passphrase),
    );
    final showSecurityKey = ref.watch(
      passphraseModelProvider.select((model) => model.showPassphrase),
    );

    return ValidatedFormField(
      fieldWidth: fieldWidth,
      labelText: lang.choosePassphraseHint,
      obscureText: !showSecurityKey,
      successWidget: securityKey.isNotEmpty ? const SuccessIcon() : null,
      initialValue: securityKey,
      suffixIcon: const _SecurityKeyShowButton(),
      validator: RequiredValidator(
        errorText: lang.choosePassphraseRequired,
      ),
      onChanged: (value) {
        final model = ref.read(passphraseModelProvider);
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
    final lang = UbuntuBootstrapLocalizations.of(context);
    final securityKey =
        ref.watch(passphraseModelProvider.select((model) => model.passphrase));
    final confirmedSecurityKey = ref.watch(
        passphraseModelProvider.select((model) => model.confirmedPassphrase));
    final showSecurityKey = ref
        .watch(passphraseModelProvider.select((model) => model.showPassphrase));

    return ValidatedFormField(
      fieldWidth: fieldWidth,
      labelText: lang.choosePassphraseConfirmHint,
      obscureText: !showSecurityKey,
      successWidget:
          confirmedSecurityKey.isNotEmpty ? const SuccessIcon() : null,
      initialValue: confirmedSecurityKey,
      autovalidateMode: AutovalidateMode.always,
      validator: EqualValidator(
        securityKey,
        errorText: lang.choosePassphraseMismatch,
      ),
      onChanged: (value) {
        final model = ref.read(passphraseModelProvider);
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

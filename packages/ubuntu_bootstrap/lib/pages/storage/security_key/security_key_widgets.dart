import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/security_key/security_key_model.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class SecurityKeyFormField extends ConsumerWidget {
  const SecurityKeyFormField({super.key, this.fieldWidth});

  final double? fieldWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final securityKey = ref
        .watch(securityKeyModelProvider.select((model) => model.securityKey));
    final showSecurityKey = ref.watch(
        securityKeyModelProvider.select((model) => model.showSecurityKey));

    return ValidatedFormField(
      fieldWidth: fieldWidth,
      labelText: lang.chooseSecurityKeyHint,
      obscureText: !showSecurityKey,
      successWidget: securityKey.isNotEmpty ? const SuccessIcon() : null,
      initialValue: securityKey,
      validator: RequiredValidator(
        errorText: lang.chooseSecurityKeyRequired,
      ),
      onChanged: (value) {
        final model = ref.read(securityKeyModelProvider);
        model.securityKey = value;
      },
    );
  }
}

class ConfirmSecurityKeyFormField extends ConsumerWidget {
  const ConfirmSecurityKeyFormField({required this.fieldWidth, super.key});

  final double? fieldWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final securityKey = ref
        .watch(securityKeyModelProvider.select((model) => model.securityKey));
    final confirmedSecurityKey = ref.watch(
        securityKeyModelProvider.select((model) => model.confirmedSecurityKey));
    final showSecurityKey = ref.watch(
        securityKeyModelProvider.select((model) => model.showSecurityKey));

    return ValidatedFormField(
      fieldWidth: fieldWidth,
      labelText: lang.chooseSecurityKeyConfirmHint,
      obscureText: !showSecurityKey,
      successWidget:
          confirmedSecurityKey.isNotEmpty ? const SuccessIcon() : null,
      initialValue: confirmedSecurityKey,
      autovalidateMode: AutovalidateMode.always,
      validator: EqualValidator(
        securityKey,
        errorText: lang.chooseSecurityKeyMismatch,
      ),
      onChanged: (value) {
        final model = ref.read(securityKeyModelProvider);
        model.confirmedSecurityKey = value;
      },
    );
  }
}

class SecurityKeyShowButton extends ConsumerWidget {
  const SecurityKeyShowButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final showSecurityKey = ref.watch(
        securityKeyModelProvider.select((model) => model.showSecurityKey));

    return YaruCheckButton(
      value: showSecurityKey,
      title: Text(lang.showSecurityKey),
      onChanged: (value) {
        ref.read(securityKeyModelProvider).showSecurityKey = value!;
      },
    );
  }
}

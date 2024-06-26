import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_provision/src/active_directory/active_directory_l10n.dart';
import 'package:ubuntu_provision/src/active_directory/active_directory_model.dart';
import 'package:ubuntu_provision/src/identity/identity_widgets.dart'
    show ShowPasswordButton;
// TODO: Generalize password button widget
import 'package:ubuntu_widgets/ubuntu_widgets.dart';

class DomainNameFormField extends ConsumerWidget {
  const DomainNameFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ActiveDirectoryLocalizations.of(context);
    final domainName =
        ref.watch(activeDirectoryModelProvider.select((m) => m.domainName));
    final validation = ref.watch(
      activeDirectoryModelProvider.select((m) => m.domainNameValidation),
    );

    return ValidatedFormField(
      autofocus: true,
      labelText: lang.activeDirectoryDomainLabel,
      initialValue: domainName,
      successWidget: const SuccessIcon(),
      validator: CallbackValidator(
        (_) =>
            validation == null ||
            validation.singleOrNull == AdDomainNameValidation.OK,
        errorText: validation?.firstOrNull?.localize(context) ?? '',
      ),
      onChanged: ref.read(activeDirectoryModelProvider).setDomainName,
      onEditingComplete:
          ref.read(activeDirectoryModelProvider).pingDomainController,
    );
  }
}

class AdminNameFormField extends ConsumerWidget {
  const AdminNameFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ActiveDirectoryLocalizations.of(context);
    final adminName =
        ref.read(activeDirectoryModelProvider.select((m) => m.adminName));
    final validation = ref.watch(
      activeDirectoryModelProvider.select((m) => m.adminNameValidation),
    );

    return ValidatedFormField(
      labelText: lang.activeDirectoryAdminLabel,
      initialValue: adminName,
      successWidget: const SuccessIcon(),
      validator: CallbackValidator(
        (_) => validation == AdAdminNameValidation.OK,
        errorText: validation?.localize(context) ?? '',
      ),
      onChanged: ref.read(activeDirectoryModelProvider).setAdminName,
    );
  }
}

class PasswordFormField extends ConsumerWidget {
  const PasswordFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ActiveDirectoryLocalizations.of(context);
    final password =
        ref.watch(activeDirectoryModelProvider.select((m) => m.password));
    final validation = ref.watch(
      activeDirectoryModelProvider.select((m) => m.passwordValidation),
    );
    final showPassword =
        ref.watch(activeDirectoryModelProvider.select((m) => m.showPassword));

    return ValidatedFormField(
      labelText: lang.activeDirectoryPasswordLabel,
      obscureText: !showPassword,
      successWidget:
          password.isNotEmpty ? const SuccessIcon() : const SizedBox(),
      initialValue: password,
      suffixIcon: ShowPasswordButton(
        value: showPassword,
        onChanged: (value) =>
            ref.read(activeDirectoryModelProvider).showPassword = value,
      ),
      validator: CallbackValidator(
        (_) => validation == AdPasswordValidation.OK,
        errorText: validation?.localize(context) ?? '',
      ),
      onChanged: ref.read(activeDirectoryModelProvider).setPassword,
    );
  }
}

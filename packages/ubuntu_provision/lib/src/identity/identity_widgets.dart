import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_provision/src/identity/identity_l10n.dart';
import 'package:ubuntu_provision/src/identity/identity_model.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class RealNameFormField extends ConsumerWidget {
  const RealNameFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = IdentityLocalizations.of(context);
    final realName =
        ref.watch(identityModelProvider.select((model) => model.realName));

    return ValidatedFormField(
      autofocus: true,
      labelText: lang.identityRealNameLabel,
      successWidget: SuccessIcon(
        semanticLabel: lang.successIconSemanticLabel,
      ),
      initialValue: realName,
      validator: MultiValidator([
        RequiredValidator(
          errorText: lang.identityRealNameRequired,
        ),
        MaxLengthValidator(
          kMaxRealNameLength,
          errorText: lang.identityRealNameTooLong,
        ),
      ]),
      onChanged: (value) async {
        final model = ref.read(identityModelProvider);
        model.realName = value;
        await model.validate();
      },
    );
  }
}

class HostnameFormField extends ConsumerWidget {
  const HostnameFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = IdentityLocalizations.of(context);
    final hostname =
        ref.watch(identityModelProvider.select((model) => model.hostname));

    return ValidatedFormField(
      labelText: lang.identityHostnameLabel,
      successWidget: SuccessIcon(
        semanticLabel: lang.successIconSemanticLabel,
      ),
      initialValue: hostname,
      validator: MultiValidator([
        RequiredValidator(
          errorText: lang.identityHostnameRequired,
        ),
        PatternValidator(
          kValidHostnamePattern,
          errorText: lang.identityInvalidHostname,
        ),
        MaxLengthValidator(
          kMaxHostnameLength,
          errorText: lang.identityHostnameTooLong,
        ),
      ]),
      onChanged: (value) {
        final model = ref.read(identityModelProvider);
        model.hostname = value;
      },
    );
  }
}

extension UsernameValidationL10n on UsernameValidation {
  String localize(BuildContext context) {
    final lang = IdentityLocalizations.of(context);
    switch (this) {
      case UsernameValidation.OK:
        return '';
      case UsernameValidation.ALREADY_IN_USE:
        return lang.identityUsernameInUse;
      case UsernameValidation.SYSTEM_RESERVED:
        return lang.identityUsernameSystemReserved;
      case UsernameValidation.INVALID_CHARS:
        return lang.identityUsernameInvalidChars;
      case UsernameValidation.TOO_LONG:
        return lang.identityUsernameTooLong;
    }
  }
}

class UsernameFormField extends ConsumerWidget {
  const UsernameFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = IdentityLocalizations.of(context);
    final username =
        ref.watch(identityModelProvider.select((model) => model.username));
    final validation = ref.watch(
      identityModelProvider.select((model) => model.usernameValidation),
    );
    final model = ref.read(identityModelProvider);

    return ValidatedFormField(
      labelText: lang.identityUsernameLabel,
      successWidget: SuccessIcon(
        semanticLabel: lang.successIconSemanticLabel,
      ),
      initialValue: username,
      validator: MultiValidator([
        RequiredValidator(
          errorText: lang.identityUsernameRequired,
        ),
        PatternValidator(
          kValidUsernamePattern,
          errorText: lang.identityInvalidUsername,
        ),
        CallbackValidator(
          (_) => model.usernameOk,
          errorText: validation.localize(context),
        ),
      ]),
      onChanged: (value) async {
        final model = ref.read(identityModelProvider);
        model.username = value;
        await model.validate();
      },
    );
  }
}

class PasswordFormField extends ConsumerWidget {
  const PasswordFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = IdentityLocalizations.of(context);
    final password =
        ref.watch(identityModelProvider.select((model) => model.password));
    final passwordStrength = ref
        .watch(identityModelProvider.select((model) => model.passwordStrength));
    final showPassword =
        ref.watch(identityModelProvider.select((model) => model.showPassword));

    return ValidatedFormField(
      labelText: lang.identityPasswordLabel,
      obscureText: !showPassword,
      successWidget: PasswordStrengthLabel(strength: passwordStrength),
      initialValue: password,
      suffixIcon: ShowPasswordButton(
        value: showPassword,
        onChanged: (value) =>
            ref.read(identityModelProvider).showPassword = value,
      ),
      validator: RequiredValidator(
        errorText: lang.identityPasswordRequired,
      ),
      onChanged: (value) {
        final model = ref.read(identityModelProvider);
        model.password = value;
      },
    );
  }
}

class ConfirmPasswordFormField extends ConsumerWidget {
  const ConfirmPasswordFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = IdentityLocalizations.of(context);
    final password =
        ref.watch(identityModelProvider.select((model) => model.password));
    final confirmedPassword = ref.watch(
      identityModelProvider.select((model) => model.confirmedPassword),
    );
    final showPassword =
        ref.watch(identityModelProvider.select((model) => model.showPassword));

    return ValidatedFormField(
      obscureText: !showPassword,
      labelText: lang.identityConfirmPasswordLabel,
      successWidget: password.isNotEmpty
          ? SuccessIcon(
              semanticLabel: lang.successIconSemanticLabel,
            )
          : const SizedBox(),
      initialValue: confirmedPassword,
      autovalidateMode: AutovalidateMode.always,
      validator: EqualValidator(
        password,
        errorText: lang.identityPasswordMismatch,
      ),
      onChanged: (value) {
        final model = ref.read(identityModelProvider);
        model.confirmedPassword = value;
      },
    );
  }
}

class ShowPasswordButton extends StatefulWidget {
  const ShowPasswordButton({
    required this.onChanged,
    required this.value,
    super.key,
  });

  final ValueChanged<bool> onChanged;
  final bool value;

  @override
  State<ShowPasswordButton> createState() => _ShowPasswordButtonState();
}

class _ShowPasswordButtonState extends State<ShowPasswordButton> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final lang = IdentityLocalizations.of(context);
    final rtl = Directionality.of(context) == TextDirection.rtl;
    final theme = Theme.of(context);

    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(kYaruButtonRadius),
          bottomRight: Radius.circular(kYaruButtonRadius),
        ),
        border: BoxBorder.all(
          color: _focused ? theme.primaryColor : Colors.transparent,
          width: 2,
          strokeAlign: 1,
        ),
      ),
      child: FilledButton.icon(
        onFocusChange: (value) => setState(() {
          _focused = value;
        }),
        style: FilledButton.styleFrom(
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left:
                  rtl ? const Radius.circular(kYaruButtonRadius) : Radius.zero,
              right:
                  rtl ? Radius.zero : const Radius.circular(kYaruButtonRadius),
            ),
          ),
          // avoid increasing the size of the input field
          minimumSize: Size.zero,
        ),
        onPressed: () => widget.onChanged(!widget.value),
        icon: Icon(widget.value ? YaruIcons.hide : YaruIcons.eye),
        // build both labels to avoid size changes
        label: IndexedStack(
          index: widget.value ? 1 : 0,
          children: [
            Text(lang.identityPasswordShow),
            Text(lang.identityPasswordHide),
          ],
        ),
      ),
    );
  }
}

class UseActiveDirectoryCheckButton extends ConsumerWidget {
  const UseActiveDirectoryCheckButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = IdentityLocalizations.of(context);
    final hasActiveDirectorySupport = ref.watch(
      identityModelProvider.select((model) => model.hasActiveDirectorySupport),
    );
    final useActiveDirectory = ref.watch(
      identityModelProvider.select((model) => model.useActiveDirectory),
    );
    final isConnected =
        ref.watch(identityModelProvider.select((model) => model.isConnected));

    return Visibility(
      visible: (hasActiveDirectorySupport ?? true) != false,
      child: YaruCheckButton(
        value: useActiveDirectory,
        title: Text(lang.identityActiveDirectoryOption),
        contentPadding: kWizardPadding,
        onChanged: isConnected && (hasActiveDirectorySupport ?? false)
            ? (v) => ref.read(identityModelProvider).useActiveDirectory = v!
            : null,
      ),
    );
  }
}

class AutoLoginCheckButton extends ConsumerWidget {
  const AutoLoginCheckButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = IdentityLocalizations.of(context);
    final autoLogin =
        ref.watch(identityModelProvider.select((model) => model.autoLogin));
    return YaruCheckButton(
      title: Text(lang.identityRequirePassword),
      contentPadding: kWizardPadding,
      value: !autoLogin,
      onChanged: (value) {
        final model = ref.read(identityModelProvider);
        model.autoLogin = !(value ?? true);
      },
    );
  }
}

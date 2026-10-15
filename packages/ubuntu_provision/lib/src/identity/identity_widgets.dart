import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_provision/src/identity/identity_l10n.dart';
import 'package:ubuntu_provision/src/identity/identity_model.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:yaru/yaru.dart';

class RealNameFormField extends ConsumerWidget {
  const RealNameFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = IdentityLocalizations.of(context);
    final realName =
        ref.watch(identityModelProvider.select((model) => model.realName));

    final model = ref.read(identityModelProvider);

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
        CallbackValidator(
          (_) => model.realNameOk,
          errorText: lang.identityInvalidRealName,
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
      errorMaxLines: 2,
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

    return ShowPasswordFieldBuilder(
      value: showPassword,
      onChanged: (value) =>
          ref.read(identityModelProvider).showPassword = value,
      builder: (context, suffixIcon) => ValidatedFormField(
        labelText: lang.identityPasswordLabel,
        obscureText: !showPassword,
        successWidget: PasswordStrengthLabel(strength: passwordStrength),
        initialValue: password,
        suffixIcon: suffixIcon,
        validator: RequiredValidator(
          errorText: lang.identityPasswordRequired,
        ),
        onChanged: (value) {
          final model = ref.read(identityModelProvider);
          model.password = value;
        },
      ),
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

/// Lays out a password field with a show/hide button drawn over its suffix.
///
/// The button is not part of the field's widget subtree. Otherwise it would be
/// a semantic descendant of the text field, and screen readers announce the
/// field's label when focus moves to the button.
class ShowPasswordFieldBuilder extends StatefulWidget {
  const ShowPasswordFieldBuilder({
    required this.onChanged,
    required this.value,
    required this.builder,
    super.key,
  });

  final ValueChanged<bool> onChanged;
  final bool value;

  /// Builds the field. The given `suffixIcon` reserves the space of the button
  /// and must be passed to the field's suffix.
  final Widget Function(BuildContext context, Widget suffixIcon) builder;

  @override
  State<ShowPasswordFieldBuilder> createState() =>
      _ShowPasswordFieldBuilderState();
}

class _ShowPasswordFieldBuilderState extends State<ShowPasswordFieldBuilder> {
  final _link = LayerLink();
  final _buttonKey = GlobalKey();
  Size _buttonSize = Size.zero;

  @override
  void initState() {
    super.initState();
    // The size-changed notification is not sent for the first layout.
    WidgetsBinding.instance.addPostFrameCallback((_) => _measureButton());
  }

  void _measureButton() {
    final size = _buttonKey.currentContext?.size;
    if (mounted && size != null && size != _buttonSize) {
      setState(() => _buttonSize = size);
    }
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<SizeChangedLayoutNotification>(
      onNotification: (_) {
        // Notifications are dispatched during layout, when sizes can't be read.
        WidgetsBinding.instance.addPostFrameCallback((_) => _measureButton());
        return false;
      },
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          widget.builder(
            context,
            CompositedTransformTarget(
              link: _link,
              child: SizedBox.fromSize(size: _buttonSize),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: CompositedTransformFollower(
              link: _link,
              showWhenUnlinked: false,
              targetAnchor: Alignment.center,
              followerAnchor: Alignment.center,
              child: ConstrainedBox(
                key: _buttonKey,
                constraints: const BoxConstraints(
                  minWidth: kMinInteractiveDimension,
                  minHeight: kMinInteractiveDimension,
                ),
                child: SizeChangedLayoutNotifier(
                  child: _ShowPasswordButton(
                    value: widget.value,
                    onChanged: widget.onChanged,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ShowPasswordButton extends StatefulWidget {
  const _ShowPasswordButton({
    required this.onChanged,
    required this.value,
  });

  final ValueChanged<bool> onChanged;
  final bool value;

  @override
  State<_ShowPasswordButton> createState() => _ShowPasswordButtonState();
}

class _ShowPasswordButtonState extends State<_ShowPasswordButton> {
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
      value: !autoLogin,
      onChanged: (value) {
        final model = ref.read(identityModelProvider);
        model.autoLogin = !(value ?? true);
      },
    );
  }
}

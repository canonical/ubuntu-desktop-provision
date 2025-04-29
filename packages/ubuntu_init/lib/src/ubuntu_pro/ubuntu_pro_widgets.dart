import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class TokenTextField extends ConsumerWidget {
  const TokenTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuProLocalizations.of(context);
    final model = ref.watch(ubuntuProModelProvider);

    return ValidatedFormField(
      labelText: l10n.ubuntuProTokenTextfieldHint,
      initialValue: '',
      successWidget: model.isAttached && model.isAttachedThroughManualAttach
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SuccessIcon(),
                const SizedBox(width: kWizardSpacing / 4),
                Text(
                  l10n.ubuntuProTokenAttachSucess,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Theme.of(context).colorScheme.success),
                ),
              ],
            )
          : null,
      autovalidateMode: AutovalidateMode.always,
      validator: CallbackValidator(
        (value) {
          if (model.isAttached ||
              model.token.isEmpty ||
              model.hasNoErrorWhenAttachingManually) {
            return true;
          }
          return false;
        },
        errorText: l10n.ubuntuProTokenAttachError,
      ),
      onChanged: model.setToken,
    );
  }
}

class ProOnboardingSelectionTile extends ConsumerWidget {
  const ProOnboardingSelectionTile({
    required this.skipPro,
    required this.label,
    required this.subtitle,
    super.key,
  });

  final bool skipPro;
  final String label;
  final String subtitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final model = ref.watch(ubuntuProModelProvider);
    final isSelected = skipPro == model.skipPro;
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: YaruBorderContainer(
        color: isSelected
            ? colorScheme.primary.withValues(alpha: 0.2)
            : colorScheme.primaryContainer,
        border: Border.all(
          color: isSelected ? colorScheme.primary : theme.dividerColor,
        ),
        borderRadius: kWizardBorderRadius,
        child: YaruRadioListTile(
          title: Text(
            label,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(subtitle),
          contentPadding: kWizardTilePadding,
          value: skipPro,
          groupValue: model.skipPro,
          onChanged: (value) => model.skipPro = value ?? false,
        ),
      ),
    );
  }
}

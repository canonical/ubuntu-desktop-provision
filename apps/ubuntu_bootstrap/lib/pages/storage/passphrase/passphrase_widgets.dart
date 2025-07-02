import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase_type/passphrase_type_l10n.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:yaru/yaru.dart';

// TODO: this will need to be conditionally hooked up to the /storage/v2/calculate_entropy
//       endpoint in Subiquity once it is available
class PassphraseFormField extends ConsumerStatefulWidget {
  const PassphraseFormField({super.key, this.fieldWidth});

  final double? fieldWidth;

  @override
  ConsumerState<PassphraseFormField> createState() =>
      _PassphraseFormFieldState();
}

class _PassphraseFormFieldState extends ConsumerState<PassphraseFormField> {
  final _controller = TextEditingController();

  @override
  void initState() {
    final model = ref.read(passphraseModelProvider);

    super.initState();
    _controller.value = _controller.value.copyWith(text: model.passphrase);
    if (model.passphraseType == PassphraseType.pin) {
      _controller.addListener(() => _filterDigits(_controller));
    }
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(passphraseModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);

    final hasTpmLowEntropy = model.isTpm && !(model.entropy?.success ?? false);
    final hasTpmSufficientEntropy =
        model.isTpm && (model.entropy?.success ?? false);
    final isValid = model.passphrase.isNotEmpty && !hasTpmLowEntropy;
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Focus(
            onFocusChange: (hasFocus) {
              if (!hasFocus) {
                model.setPassphraseAndEntropy(_controller.text);
              }
            },
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: model.passphraseType.localizedChooseHint(lang),
                suffixIcon: const _SecurityKeyShowButton(),
                errorText: hasTpmLowEntropy
                    ? model.entropy?.semanticEntropy
                        .localize(lang, model.passphraseType)
                    : null,
                helperText: hasTpmSufficientEntropy
                    ? model.entropy?.semanticEntropy
                        .localize(lang, model.passphraseType)
                    : null,
                helperMaxLines: 2,
                errorMaxLines: 2,
              ),
              obscureText: !model.showPassphrase,
              onChanged: (value) {
                model.setPassphraseAndEntropy(value, debounce: true);
              },
            ),
          ),
        ),
        if (model.passphrase.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Icon(
              isValid ? Icons.check_circle : YaruIcons.error_filled,
              color: isValid ? colorScheme.success : colorScheme.error,
            ),
          ),
      ],
    );
  }
}

class ConfirmPassphraseFormField extends ConsumerStatefulWidget {
  const ConfirmPassphraseFormField({this.fieldWidth, super.key});

  final double? fieldWidth;

  @override
  ConsumerState<ConfirmPassphraseFormField> createState() =>
      _ConfirmPassphraseFormFieldState();
}

class _ConfirmPassphraseFormFieldState
    extends ConsumerState<ConfirmPassphraseFormField> {
  final _controller = TextEditingController();

  @override
  void initState() {
    final model = ref.read(passphraseModelProvider);

    super.initState();
    _controller.value =
        _controller.value.copyWith(text: model.confirmedPassphrase);
    if (model.passphraseType == PassphraseType.pin) {
      _controller.addListener(() => _filterDigits(_controller));
    }
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(passphraseModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final isValid = model.passphrase == model.confirmedPassphrase &&
        model.confirmedPassphrase.isNotEmpty;
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Focus(
            onFocusChange: (hasFocus) {
              if (!hasFocus) {
                model.setConfirmedPassphrase(_controller.text);
              }
            },
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: model.passphraseType.localizedConfirmHint(lang),
                errorText: !isValid && model.confirmedPassphrase.isNotEmpty
                    ? model.passphraseType.localizedMismatchError(lang)
                    : null,
              ),
              obscureText: !model.showPassphrase,
              onChanged: (value) {
                model.setConfirmedPassphrase(value, debounce: true);
              },
              onEditingComplete: () =>
                  model.setConfirmedPassphrase(_controller.value.text),
            ),
          ),
        ),
        if (model.confirmedPassphrase.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 8.0),
            child: Icon(
              isValid ? Icons.check_circle : YaruIcons.error_filled,
              color: isValid ? colorScheme.success : colorScheme.error,
            ),
          ),
      ],
    );
  }
}

void _filterDigits(TextEditingController controller) {
  final filteredInput = controller.text.replaceAll(RegExp('[^0-9]'), '');
  final newSelection = TextSelection(
    baseOffset: min(controller.selection.baseOffset, filteredInput.length),
    extentOffset: min(controller.selection.extentOffset, filteredInput.length),
  );
  controller.value = controller.value.copyWith(
    text: filteredInput,
    selection: newSelection,
  );
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
        icon: Icon(
          showSecurityKey ? YaruIcons.hide : YaruIcons.eye,
          color: theme.colorScheme.onSecondaryContainer,
        ),
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

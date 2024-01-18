import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

class KeyboardPage extends ConsumerWidget with ProvisioningPage {
  const KeyboardPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    final model = ref.read(keyboardModelProvider);
    return model
        .init()
        .then((_) => model.updateInputSource())
        .then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(keyboardModelProvider);
    final lang = KeyboardLocalizations.of(context);
    return HorizontalPage(
      name: 'keyboard',
      windowTitle: lang.keyboardTitle,
      title: lang.keyboardHeader,
      trailingTitleWidget: model.canDetectLayout
          ? OutlinedButton(
              child: Text(lang.keyboardDetectButton),
              onPressed: () async {
                final result = await showDetectKeyboardDialog(context);
                if (result != null) {
                  await model.trySelectLayoutVariant(
                      result.layout, result.variant);
                }
              },
            )
          : null,
      expandContent: true,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListWidget.builder(
                    selectedIndex: model.selectedLayoutIndex,
                    itemCount: model.layoutCount,
                    itemBuilder: (context, index) => ListTile(
                      key: ValueKey(index),
                      title: Text(model.layoutName(index)),
                      selected: index == model.selectedLayoutIndex,
                      onTap: () => model.selectLayout(index),
                    ),
                    onKeySearch: (value) {
                      final index = model.searchLayout(value);
                      if (index != -1) {
                        model.selectLayout(index);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: kWizardSpacing),
          Row(
            children: [
              Text(lang.keyboardVariantLabel),
              const SizedBox(width: kWizardSpacing),
              Expanded(
                child: MenuButtonBuilder<int>(
                  selected: model.selectedVariantIndex,
                  values: List.generate(model.variantCount, (index) => index),
                  itemBuilder: (context, index, child) {
                    return index < 0 || index >= model.variantCount
                        ? const SizedBox.shrink()
                        : Text(model.variantName(index));
                  },
                  onSelected: model.selectVariant,
                ),
              ),
            ],
          ),
          const SizedBox(height: kWizardSpacing),
          const Divider(height: 1),
          const SizedBox(height: kWizardSpacing),
          TextField(
            decoration: InputDecoration(
              hintText: lang.keyboardTestHint,
            ),
          ),
        ],
      ),
      onNext: model.save,
      isNextEnabled: model.isValid,
    );
  }
}

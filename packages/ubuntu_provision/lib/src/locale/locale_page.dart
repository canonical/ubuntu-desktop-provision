import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

class LocalePage extends ConsumerWidget with ProvisioningPage {
  const LocalePage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    final model = ref.read(localeModelProvider);
    return model.init().then((_) => model.playWelcomeSound()).then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flavor = ref.watch(flavorProvider);
    final model = ref.watch(localeModelProvider);
    final lang = LocaleLocalizations.of(context);
    final pageImages = ref.watch(pageImagesProvider);

    return HorizontalPage(
      windowTitle: lang.localePageTitle(flavor.name),
      title: lang.localeHeader,
      icon: pageImages.get('locale'),
      onNext: () => model.selectLanguage(model.selectedIndex),
      content: Expanded(
        child: ListWidget.builder(
          selectedIndex: model.selectedIndex,
          itemCount: model.languageCount,
          itemBuilder: (context, index) => ListTile(
            key: ValueKey(index),
            title: Text(model.language(index)),
            selected: index == model.selectedIndex,
          ),
          onKeySearch: (value) {
            final index = model.searchLanguage(value);
            if (index != -1) {
              model.selectLanguage(index);
            }
          },
        ),
      ),
    );
  }
}

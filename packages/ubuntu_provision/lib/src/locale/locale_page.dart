import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';

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

    return HorizontalPage(
      windowTitle: lang.localePageTitle(flavor.displayName),
      title: lang.localeHeader,
      onNext: () async {
        final locale = model.locale(model.selectedIndex);
        await model.applyLocale(locale);
        await tryGetService<TelemetryService>()
            ?.addMetric('Language', locale.languageCode);
      },
      expandContent: true,
      content: ListWidget.builder(
        selectedIndex: model.selectedIndex,
        itemCount: model.languageCount,
        itemBuilder: (context, index) => ListTile(
          key: ValueKey(index),
          title: Text(model.language(index)),
          selected: index == model.selectedIndex,
          onTap: () => model.selectLanguage(index),
        ),
        onKeySearch: (value) {
          final index = model.searchLanguage(value);
          if (index != -1) {
            model.selectLanguage(index);
          }
        },
      ),
    );
  }
}

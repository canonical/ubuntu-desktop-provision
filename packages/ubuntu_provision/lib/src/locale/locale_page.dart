import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

class LocalePage extends ConsumerWidget with ProvisioningPage {
  const LocalePage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async {
    final model = ref.read(localeModelProvider);
    await model.init();
    unawaited(model.playWelcomeSound());
    return true;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flavor = ref.watch(flavorProvider);
    final model = ref.watch(localeModelProvider);
    final lang = LocaleLocalizations.of(context);

    return HorizontalPage(
      windowTitle: lang.localePageTitle(flavor.displayName),
      title: lang.localeHeader,
      managedScrolling: false,
      contentFlex: 4,
      bottomBar: WizardBar(
        trailing: [
          NextWizardButton(
            onNext: () async {
              final locale = model.locale(model.selectedIndex);
              await model.applyLocale(locale);
              await tryGetService<TelemetryService>()
                  ?.addMetric('Language', locale.languageCode);
            },
          )
        ],
      ),
      children: [
        Expanded(
          child: ListWidget.builder(
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
        ),
      ],
    );
  }
}

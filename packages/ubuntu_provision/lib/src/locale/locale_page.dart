import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/src/widgets/themed_list_tile.dart';
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
    final nextFocusNode = ref.watch(_nextFocusNodeProvider);

    return HorizontalPage(
      windowTitle: lang.localePageTitle(flavor.displayName),
      title: lang.localeHeader,
      managedScrolling: false,
      contentFlex: 4,
      nextFocusNode: nextFocusNode,
      bottomBar: WizardBar(
        trailing: [
          NextWizardButton(
            focusNode: nextFocusNode,
            onNext: () async {
              final locale = model.locale(model.selectedIndex);
              await model.applyLocale(locale);
              await tryGetService<TelemetryService>()
                  ?.addMetric('Language', locale.languageCode);
            },
          ),
        ],
      ),
      children: [
        Expanded(
          child: ListWidget.builder(
            selectedIndex: model.selectedIndex,
            itemCount: model.languageCount,
            itemBuilder: (context, index) => ThemedListTile(
              key: ValueKey(index),
              selected: index == model.selectedIndex,
              onTap: () => model.selectLanguage(index),
              title: Text(
                model.language(index),
                locale: model.locale(index),
              ),
            ),
            tabFocusNode: nextFocusNode,
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

final _nextFocusNodeProvider = ProvisioningPage.createNextFocusNodeProvider();

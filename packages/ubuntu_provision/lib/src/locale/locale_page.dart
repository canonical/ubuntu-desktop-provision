import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision/src/accessibility/accessibility_widgets.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:flutter/semantics.dart';

class LocalePage extends ConsumerWidget with ProvisioningPage {
  const LocalePage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async {
    final model = ref.read(localeModelProvider);
    await model.init();
    unawaited(model.playWelcomeSound());

    // Announce page load using shared utility
    final flavor = ref.read(flavorProvider);
    final lang = LocaleLocalizations.of(context);
    PageAnnouncer.announcePageLoad(
      title: lang.localePageTitle(flavor.displayName),
    );

    return true;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flavor = ref.watch(flavorProvider);
    final model = ref.watch(localeModelProvider);
    final lang = LocaleLocalizations.of(context);
    final nextFocusNode = ref.watch(_nextFocusNodeProvider);

    // Create a controller to manage the scroll position
    final ScrollController scrollController = ScrollController();

    // Create focus nodes for proper tab ordering
    final listFocusNode = FocusNode();

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
          child: FocusTraversalGroup(
            child: Semantics(
              // Semantic label for screen readers
              label:
                  "Language selection - Use arrow keys to navigate on this list. "
                  "Press Home to go to the first item, End to go to the last item. on this",
              excludeSemantics: false,
              child: Focus(
                focusNode: listFocusNode,
                autofocus: true,
                onKeyEvent: (node, event) {
                  // Handle Home key to go to first item
                  if (event is KeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.home) {
                    model.selectLanguage(0);
                    return KeyEventResult.handled;
                  }
                  // Handle End key to go to last item
                  if (event is KeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.end) {
                    model.selectLanguage(model.languageCount - 1);
                    return KeyEventResult.handled;
                  }
                  if (event is KeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.end) {
                    model.selectLanguage(model.languageCount - 1);
                    return KeyEventResult.handled;
                  }
                  // Let tab navigation work naturally
                  if (event is KeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.tab) {
                    // Check if shift key is pressed using the correct property
                    if (HardwareKeyboard.instance.isShiftPressed) {
                      // Shift+Tab - focus should move to previous field
                      return KeyEventResult.skipRemainingHandlers;
                    } else {
                      // Tab - move focus to next button
                      nextFocusNode.requestFocus();
                      return KeyEventResult.handled;
                    }
                  }
                  return KeyEventResult.ignored;
                },
                // Preserve original list widget with enhanced accessibility
                child: ListWidget.builder(
                  selectedIndex: model.selectedIndex,
                  itemCount: model.languageCount,
                  itemBuilder: (context, index) => MergeSemantics(
                    child: Semantics(
                      selected: index == model.selectedIndex,
                      // Add position information for screen readers
                      value:
                          '${model.language(index)}, item ${index + 1} of ${model.languageCount}',
                      increasedValue:
                          index == model.selectedIndex ? 'Selected' : null,
                      child: ListTile(
                        key: ValueKey(index),
                        title: Text(model.language(index)),
                        selected: index == model.selectedIndex,
                        onTap: () => model.selectLanguage(index),
                      ),
                    ),
                  ),
                  // Connect to the nextFocusNode to enable proper tab navigation
                  tabFocusNode: nextFocusNode,
                  onKeySearch: (value) {
                    final index = model.searchLanguage(value);
                    if (index != -1) {
                      model.selectLanguage(index);
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

final _nextFocusNodeProvider = ProvisioningPage.createNextFocusNodeProvider();

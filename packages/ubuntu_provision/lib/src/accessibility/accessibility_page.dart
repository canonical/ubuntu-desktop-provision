import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/src/accessibility/accessibility_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/widgets.dart';

class AccessibilityPage extends ConsumerWidget with ProvisioningPage {
  AccessibilityPage({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async => true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(accessibilityModelProvider);
    final lang = UbuntuProvisionLocalizations.of(context);
    final scrollBarPadding =
        (ScrollbarTheme.of(context).thickness?.resolve({}) ?? 6) * 4;

    return HorizontalPage(
      windowTitle: lang.accessibilityPageTitle(model.distroName),
      title: lang.accessibilityPageTitle(model.distroName),
      expandContent: true,
      content: Center(
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: EdgeInsets.only(right: scrollBarPadding),
              child: Column(
                children: [
                  Text(lang.accessibilityPageBody),
                  const SizedBox(height: kWizardSpacing),
                  YaruExpansionPanel(
                    headers: [
                      YaruTile(
                        leading: const Icon(YaruIcons.eye),
                        title: Text(lang.accessibilitySeeingLabel),
                      ),
                      YaruTile(
                        leading: const Icon(YaruIcons.headphones),
                        title: Text(lang.accessibilityHearingLabel),
                      ),
                      YaruTile(
                        leading: const Icon(YaruIcons.keyboard),
                        title: Text(lang.accessibilityTypingLabel),
                      ),
                      YaruTile(
                        leading: const Icon(YaruIcons.mouse),
                        title: Text(lang.accessibilityPointingLabel),
                      ),
                      YaruTile(
                        leading: const Icon(YaruIcons.magnifying_glass),
                        title: Text(lang.accessibilityZoomLabel),
                      ),
                    ],
                    children: [
                      Column(
                        children: [
                          _AccessibilityListTile(
                            id: AccessibilityOption.highContrast,
                            title: lang.accessibilityHighContrastLabel,
                          ),
                          _AccessibilityListTile(
                            id: AccessibilityOption.largeText,
                            title: lang.accessibilityLargeTextLabel,
                          ),
                          _AccessibilityListTile(
                            id: AccessibilityOption.reduceAnimation,
                            title: lang.accessibilityReduceAnimationLabel,
                          ),
                          _AccessibilityListTile(
                            id: AccessibilityOption.screenReader,
                            title: lang.accessibilityScreenReaderLabel,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          _AccessibilityListTile(
                            id: AccessibilityOption.visualAlerts,
                            title: lang.accessibilityVisualAlertsLabel,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          _AccessibilityListTile(
                            id: AccessibilityOption.visualAlerts,
                            title: lang.accessibilityVisualAlertsLabel,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          _AccessibilityListTile(
                            id: AccessibilityOption.visualAlerts,
                            title: lang.accessibilityVisualAlertsLabel,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          _AccessibilityListTile(
                            id: AccessibilityOption.visualAlerts,
                            title: lang.accessibilityVisualAlertsLabel,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomBar: const WizardBar(
        leading: PreviousWizardButton(),
        trailing: [NextWizardButton()],
      ),
    );
  }
}

class _AccessibilityListTile extends ConsumerWidget {
  const _AccessibilityListTile({
    required this.id,
    required this.title,
  });

  final AccessibilityOption id;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(accessibilityModelProvider);
    return Column(
      children: [
        const Divider(),
        YaruSwitchListTile(
          title: Padding(
            padding: kWizardIndentation
                .add(const EdgeInsets.symmetric(vertical: 8.0)),
            child: Text(title),
          ),
          value: model.activeOptions.contains(id),
          onChanged: (_) => model.toggleOption(id),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class AccessibilityPage extends ConsumerWidget with ProvisioningPage {
  AccessibilityPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    final model = ref.read(accessibilityModelProvider);
    // This will return false when it is not Gnome, since the model wont be able
    // to initialize with GSettings.
    return model.init().then((isSupported) => isSupported);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flavor = ref.watch(flavorProvider);
    final lang = UbuntuProvisionLocalizations.of(context);

    return HorizontalPage(
      windowTitle: lang.accessibilityPageTitle,
      title: lang.accessibilityPageHeader(flavor.displayName),
      bottomBar: const WizardBar(
        leading: BackWizardButton(),
        trailing: [NextWizardButton()],
      ),
      children: [
        Text(lang.accessibilityPageBody(flavor.displayName)),
        const SizedBox(height: kWizardSpacing),
        YaruExpansionPanel(
          shrinkWrap: true,
          expandIconBuilder: (isExpanded) => Icon(
            YaruIcons.pan_end,
            semanticLabel: isExpanded
                ? lang.collapseIconSemanticLabel
                : lang.expandIconSemanticLabel,
          ),
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
                  id: AccessibilityOption.stickyKeys,
                  title: lang.accessibilityStickKeysLabel,
                ),
                _AccessibilityListTile(
                  id: AccessibilityOption.slowKeys,
                  title: lang.accessibilitySlowKeysLabel,
                ),
              ],
            ),
            Column(
              children: [
                _AccessibilityListTile(
                  id: AccessibilityOption.mouseKeys,
                  title: lang.accessibilityMouseKeysLabel,
                ),
              ],
            ),
            Column(
              children: [
                _AccessibilityListTile(
                  id: AccessibilityOption.desktopZoom,
                  title: lang.accessibilityDesktopZoomLabel,
                ),
              ],
            ),
          ],
        ),
      ],
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

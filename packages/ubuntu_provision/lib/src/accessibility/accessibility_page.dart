import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/src/accessibility/accessibility_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/widgets.dart';

class AccessibilityPage extends ConsumerWidget with ProvisioningPage {
  AccessibilityPage({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async {
    return true;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(accessibilityModelProvider);
    final lang = UbuntuProvisionLocalizations.of(context);
    final scrollBarPadding =
        (ScrollbarTheme.of(context).thickness?.resolve({}) ?? 6) * 2;

    return HorizontalPage(
      name: 'accessibility',
      windowTitle: lang.accessibilityPageTitle(model.distroName),
      title: lang.accessibilityPageTitle(model.distroName),
      expandContent: true,
      content: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: EdgeInsets.only(right: scrollBarPadding),
            child: YaruExpansionPanelList(
              children: [
                ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Text('Seeing $isExpanded');
                  },
                  body: Text('Heeeiii'),
                ),
              ],
              expansionCallback: (_, __) {},
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

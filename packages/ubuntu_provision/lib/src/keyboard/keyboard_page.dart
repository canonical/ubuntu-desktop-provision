import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision/src/accessibility/accessibility_widgets.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

final _nextFocusNodeProvider = ProvisioningPage.createNextFocusNodeProvider();

class KeyboardPage extends ConsumerStatefulWidget with ProvisioningPage {
  const KeyboardPage({super.key});

  @override
  ConsumerState<KeyboardPage> createState() => _KeyboardPageState();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    final model = ref.read(keyboardModelProvider);
    return model
        .init()
        .then((_) => model.updateInputSource())
        .then((_) => true);
  }
}

class _KeyboardPageState extends ConsumerState<KeyboardPage> {
  // Focus nodes for each navigable section
  final FocusNode _layoutListFocusNode = FocusNode();
  final FocusNode _variantDropdownFocusNode = FocusNode();
  final FocusNode _testFieldFocusNode = FocusNode();
  final FocusNode _detectButtonFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    
    // Announce page load using shared utility
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final lang = KeyboardLocalizations.of(context);
      PageAnnouncer.announcePageLoad(
        title: lang.keyboardTitle,
        subtitle: lang.keyboardHeader,
      );
      
      // Set initial focus
      AccessibleFocusManager.requestFocusWithDelay(_layoutListFocusNode);
    });
  }
  
  @override
  void dispose() {
    _layoutListFocusNode.dispose();
    _variantDropdownFocusNode.dispose();
    _testFieldFocusNode.dispose();
    _detectButtonFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(keyboardModelProvider);
    final lang = KeyboardLocalizations.of(context);
    final nextFocusNode = ref.watch(_nextFocusNodeProvider);
    
    return HorizontalPage(
      windowTitle: lang.keyboardTitle,
      title: lang.keyboardHeader,
      
      // Detect Button with accessibility improvements
      trailingTitleWidget: model.canDetectLayout
          ? Semantics(
              button: true,
              label: lang.keyboardDetectButton,
              hint: lang.keyboardDetectButtonHint,
              child: Focus(
                focusNode: _detectButtonFocusNode,
                child: OutlinedButton(
                  onPressed: () async {
                    // Announce the action
                    SemanticsService.announce(
                      lang.keyboardDetectingMessage,
                      TextDirection.ltr,
                    );
                    
                    final result = await showDetectKeyboardDialog(context);
                    if (result != null) {
                      await model.trySelectLayoutVariant(
                        result.layout,
                        result.variant,
                      );
                      
                      // Announce the selection
                      if (model.selectedLayoutIndex >= 0) {
                        SemanticsService.announce(
                          lang.keyboardLayoutSelectedMessage(model.layoutName(model.selectedLayoutIndex)),
                          TextDirection.ltr,
                        );
                      }
                    }
                  },
                  child: Text(lang.keyboardDetectButton),
                ),
              ),
            )
          : null,
      
      managedScrolling: false,
      contentFlex: 8,
      onNext: model.save,
      isNextEnabled: model.isValid,
      nextFocusNode: nextFocusNode,
      
      children: <Widget>[
        // 1. Layout List with enhanced accessibility
        Expanded(
          child: Semantics(
            container: true,
            label: lang.keyboardLayoutListLabel,
            child: Focus(
              focusNode: _layoutListFocusNode,
              child: AccessibleListWidget(
                selectedIndex: model.selectedLayoutIndex,
                itemCount: model.layoutCount,
                nextFocusNode: _variantDropdownFocusNode,
                onSelectionChanged: (index) {
                  model.selectLayout(index);
                  // Announce selection change
                  SemanticsService.announce(
                    lang.keyboardLayoutSelectedMessage(model.layoutName(index)),
                    TextDirection.ltr,
                  );
                },
                itemBuilder: (context, index) => Semantics(
                  label: lang.keyboardLayoutItemLabel(
                    model.layoutName(index),
                    index == model.selectedLayoutIndex ? lang.keyboardLayoutSelected : lang.keyboardLayoutNotSelected
                  ),
                  selected: index == model.selectedLayoutIndex,
                  child: ListTile(
                    key: ValueKey(index),
                    title: Text(model.layoutName(index)),
                    selected: index == model.selectedLayoutIndex,
                    onTap: () => model.selectLayout(index),
                  ),
                ),
                onSearch: (value) {
                  final index = model.searchLayout(value);
                  if (index != -1) {
                    model.selectLayout(index);
                  }
                },
              ),
            ),
          ),
        ),
        
        const SizedBox(height: kWizardSpacing),
        
        // 2. Variant Selection - Orca Compatible
        Semantics(
          label: lang.keyboardVariantSectionLabel,
          child: Row(
            children: [
              Text(lang.keyboardVariantLabel),
              const SizedBox(width: kWizardSpacing),
              Expanded(
                child: Focus(
                  focusNode: _variantDropdownFocusNode,
                  child: AccessibleDropdown<int>(
                    value: model.selectedVariantIndex,
                    items: List.generate(model.variantCount, (index) => index),
                    itemBuilder: (index) => model.variantName(index),
                    label: lang.keyboardVariantDropdownLabel,
                    onChanged: (index) {
                      if (index != null) {
                        model.selectVariant(index);
                        DebouncedAnnouncer.announce(
                          lang.keyboardVariantSelectedMessage(model.variantName(index))
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        
        const SizedBox(height: kWizardSpacing),
        const Divider(height: 1),
        const SizedBox(height: kWizardSpacing),
        
        // 3. Test Field with accessibility
        Semantics(
          textField: true,
          label: lang.keyboardTestFieldLabel(lang.keyboardTestHint),
          child: Focus(
            focusNode: _testFieldFocusNode,
            child: TextField(
              decoration: InputDecoration(
                hintText: lang.keyboardTestHint,
              ),
            ),
          ),
        ),
      ],
    );
  }
}



// Simplified accessible list widget
class AccessibleListWidget extends StatelessWidget {
  final int selectedIndex;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final Function(int) onSelectionChanged;
  final FocusNode nextFocusNode;
  final Function(String)? onSearch;

  const AccessibleListWidget({
    Key? key,
    required this.selectedIndex,
    required this.itemCount,
    required this.itemBuilder,
    required this.onSelectionChanged,
    required this.nextFocusNode,
    this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: FocusNode(),
      onKeyEvent: (KeyEvent event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
            final newIndex = (selectedIndex + 1) % itemCount;
            onSelectionChanged(newIndex);
          } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
            final newIndex = (selectedIndex - 1 + itemCount) % itemCount;
            onSelectionChanged(newIndex);
          } else if (event.logicalKey == LogicalKeyboardKey.tab && !HardwareKeyboard.instance.isShiftPressed) {
            nextFocusNode.requestFocus();
          }
        }
      },
      child: ListWidget.builder(
        selectedIndex: selectedIndex,
        itemCount: itemCount,
        tabFocusNode: nextFocusNode,
        itemBuilder: itemBuilder,
        onKeySearch: onSearch,
      ),
    );
  }
}
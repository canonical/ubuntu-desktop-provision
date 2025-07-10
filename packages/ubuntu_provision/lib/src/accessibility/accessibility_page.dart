import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class AccessibilityPage extends ConsumerStatefulWidget with ProvisioningPage {
  AccessibilityPage({super.key});

  @override
  ConsumerState<AccessibilityPage> createState() => _AccessibilityPageState();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    final model = ref.read(accessibilityModelProvider);
    return model.init().then((isSupported) => isSupported);
  }
}

class _AccessibilityPageState extends ConsumerState<AccessibilityPage> {
  // Track expansion state ourselves to announce changes
  final List<bool> _expandedSections = List.generate(5, (index) => false);
  
  // Create a focus node for the back button
  final FocusNode _backButtonFocusNode = FocusNode();
  
  // Focus nodes for each expand arrow
  final List<FocusNode> _arrowFocusNodes = List.generate(5, (_) => FocusNode());

  @override
  void initState() {
    super.initState();
    
    // Announce page title when loaded with a slight delay to ensure Orca picks it up
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final flavor = ref.read(flavorProvider);
      final lang = UbuntuProvisionLocalizations.of(context);
      
      // Initial announcement
      SemanticsService.announce(
        '${lang.accessibilityPageTitle} - ${lang.accessibilityPageHeader(flavor.displayName)}.',
        TextDirection.ltr,
      );
      
      // Delayed instructions announcement to ensure it's picked up by Orca
      Future.delayed(const Duration(milliseconds: 300), () {
        SemanticsService.announce(
          'Accessibility options page. Tab to arrows beside each section to expand or collapse them.',
          TextDirection.ltr,
        );
      });
      
      // Focus the back button after the page loads
      Future.delayed(const Duration(milliseconds: 500), () {
        _backButtonFocusNode.requestFocus();
      });
    });
  }
  
  @override
  void dispose() {
    _backButtonFocusNode.dispose();
    for (final node in _arrowFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _handleExpansion(int index, bool isExpanded) {
    final lang = UbuntuProvisionLocalizations.of(context);
    String sectionName = '';
    
    switch (index) {
      case 0: sectionName = lang.accessibilitySeeingLabel; break;
      case 1: sectionName = lang.accessibilityHearingLabel; break;
      case 2: sectionName = lang.accessibilityTypingLabel; break;
      case 3: sectionName = lang.accessibilityPointingLabel; break;
      case 4: sectionName = lang.accessibilityZoomLabel; break;
    }
    
    // Update expansion state
    setState(() {
      _expandedSections[index] = isExpanded;
    });
    
    // Multiple announcement approaches to ensure screen readers catch it
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // First immediate announcement
      SemanticsService.announce(
        '$sectionName section ${isExpanded ? 'expanded' : 'collapsed'}',
        TextDirection.ltr,
      );
      
      // Second delayed announcement for redundancy
      Future.delayed(const Duration(milliseconds: 300), () {
        SemanticsService.announce(
          '$sectionName section ${isExpanded ? 'expanded' : 'collapsed'}',
          TextDirection.ltr,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final flavor = ref.watch(flavorProvider);
    final lang = UbuntuProvisionLocalizations.of(context);
    final theme = Theme.of(context);

    // Create custom YaruExpandable widgets for better accessibility control
    final List<Widget> accessibilitySections = [
      _buildAccessibleExpandable(
        context, 
        0, 
        YaruIcons.eye, 
        lang.accessibilitySeeingLabel,
        'Vision accessibility options',
        [
          _AccessibilityListTile(
            id: AccessibilityOption.highContrast,
            title: lang.accessibilityHighContrastLabel,
            description: 'Increases color contrast for better visibility',
          ),
          _AccessibilityListTile(
            id: AccessibilityOption.largeText,
            title: lang.accessibilityLargeTextLabel,
            description: 'Makes text larger and easier to read',
          ),
          _AccessibilityListTile(
            id: AccessibilityOption.reduceAnimation,
            title: lang.accessibilityReduceAnimationLabel,
            description: 'Reduces or eliminates animation effects',
          ),
          _AccessibilityListTile(
            id: AccessibilityOption.screenReader,
            title: lang.accessibilityScreenReaderLabel,
            description: 'Reads screen content aloud',
          ),
        ],
      ),
      _buildAccessibleExpandable(
        context, 
        1, 
        YaruIcons.headphones, 
        lang.accessibilityHearingLabel,
        'Hearing accessibility options',
        [
          _AccessibilityListTile(
            id: AccessibilityOption.visualAlerts,
            title: lang.accessibilityVisualAlertsLabel,
            description: 'Shows visual notifications for audio alerts',
          ),
        ],
      ),
      _buildAccessibleExpandable(
        context, 
        2, 
        YaruIcons.keyboard, 
        lang.accessibilityTypingLabel,
        'Typing accessibility options',
        [
          _AccessibilityListTile(
            id: AccessibilityOption.stickyKeys,
            title: lang.accessibilityStickKeysLabel,
            description: 'Allows pressing key combinations one key at a time',
          ),
          _AccessibilityListTile(
            id: AccessibilityOption.slowKeys,
            title: lang.accessibilitySlowKeysLabel,
            description: 'Adds a delay between key press and acceptance',
          ),
        ],
      ),
      _buildAccessibleExpandable(
        context, 
        3, 
        YaruIcons.mouse, 
        lang.accessibilityPointingLabel,
        'Mouse accessibility options',
        [
          _AccessibilityListTile(
            id: AccessibilityOption.mouseKeys,
            title: lang.accessibilityMouseKeysLabel,
            description: 'Control the mouse pointer with the keyboard',
          ),
        ],
      ),
      _buildAccessibleExpandable(
        context, 
        4, 
        YaruIcons.magnifying_glass, 
        lang.accessibilityZoomLabel,
        'Screen magnification options',
        [
          _AccessibilityListTile(
            id: AccessibilityOption.desktopZoom,
            title: lang.accessibilityDesktopZoomLabel,
            description: 'Magnifies portions of the screen',
          ),
        ],
      ),
    ];

    return HorizontalPage(
      windowTitle: lang.accessibilityPageTitle,
      title: lang.accessibilityPageHeader(flavor.displayName),
      bottomBar: WizardBar(
        leading: Focus(
          focusNode: _backButtonFocusNode,
          autofocus: true,
          child: const BackWizardButton(),
        ),
        trailing: const [NextWizardButton()],
      ),
      children: [
        // Add semantic label to the page description
        Semantics(
          label: lang.accessibilityPageTitle,
          child: Text(lang.accessibilityPageBody(flavor.displayName)),
        ),
        const SizedBox(height: kWizardSpacing),
        
        // Use a Column instead of YaruExpansionPanel for better accessibility control
        Semantics(
          container: true,
          explicitChildNodes: true,
          label: 'Accessibility categories',
          child: YaruBorderContainer(
            color: theme.colorScheme.surface,
            child: Column(
              children: accessibilitySections,
            ),
          ),
        ),
      ],
    );
  }
  
  // Helper to build an accessible expandable section
  Widget _buildAccessibleExpandable(
    BuildContext context,
    int index,
    IconData icon,
    String title,
    String semanticHint,
    List<Widget> children,
  ) {
    final theme = Theme.of(context);
    
    return Column(
      children: [
        // Live region to ensure announcements are made
        Semantics(
          liveRegion: true, // Force screen reader to read this content when it changes
          child: Container(
            height: 0,
            width: 0,
          ),
        ),
        
        // Custom YaruExpandable with enhanced accessibility for Orca
        YaruExpandable(
          isExpanded: _expandedSections[index],
          onChange: (isExpanded) {
            _handleExpansion(index, isExpanded);
          },
          // Make the expand arrow separately focusable for screen readers
          expandIcon: Focus(
            focusNode: _arrowFocusNodes[index],
            canRequestFocus: true,
            autofocus: index == 0, // Autofocus the first arrow
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                // Announce when the arrow receives focus
                SemanticsService.announce(
                  'Arrow for $title section. Press Enter to ${_expandedSections[index] ? 'collapse' : 'expand'}.',
                  TextDirection.ltr,
                );
              }
            },
            onKey: (node, event) {
              // Detect Enter key press to toggle expansion
              if (event.logicalKey == LogicalKeyboardKey.enter && event is KeyEvent) {
                setState(() {
                  _expandedSections[index] = !_expandedSections[index];
                });
                _handleExpansion(index, _expandedSections[index]);
                return KeyEventResult.handled;
              }
              return KeyEventResult.ignored;
            },
            child: MouseRegion(
              onEnter: (_) {
                // Announce when mouse hovers over the arrow
                SemanticsService.announce(
                  'Arrow for $title section',
                  TextDirection.ltr,
                );
              },
              child: Semantics(
                button: true,
                enabled: true,
                focused: true,
                focusable: true,
                label: 'Arrow for $title section',
                hint: 'Press Enter to ${_expandedSections[index] ? 'collapse' : 'expand'}',
                onTap: () {
                  setState(() {
                    _expandedSections[index] = !_expandedSections[index];
                  });
                  _handleExpansion(index, _expandedSections[index]);
                },
                // Use a custom decoration to make it obvious this is focusable
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: _arrowFocusNodes[index].hasFocus 
                        ? Border.all(color: theme.colorScheme.primary, width: 2)
                        : null,
                  ),
                  padding: const EdgeInsets.all(2),
                  child: Icon(
                    Icons.expand_more,
                    color: theme.colorScheme.primary,
                    semanticLabel: '', // Empty to prevent double announcement
                  ),
                ),
              ),
            ),
          ),
          header: Semantics(
            header: true,
            label: title,
            excludeSemantics: false,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: YaruTile(
                leading: Icon(icon, semanticLabel: ''),
                title: Text(title),
              ),
            ),
          ),
          child: Semantics(
            container: true,
            explicitChildNodes: true,
            label: '$title options',
            onDidGainAccessibilityFocus: () {
              if (_expandedSections[index]) {
                SemanticsService.announce(
                  '$title section options. Use Tab to navigate through options.',
                  TextDirection.ltr,
                );
              }
            },
            child: Column(children: children),
          ),
        ),
        // Add divider except after the last section
        if (index < 4) const Divider(),
      ],
    );
  }
}

class _AccessibilityListTile extends ConsumerWidget {
  const _AccessibilityListTile({
    required this.id,
    required this.title,
    this.description = '',
  });

  final AccessibilityOption id;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(accessibilityModelProvider);
    final isEnabled = model.activeOptions.contains(id);
    final theme = Theme.of(context);

    return Column(
      children: [
        const Divider(),
        // Enhanced accessible switch list tile optimized for Orca
        MouseRegion(
          onEnter: (_) {
            // Announce on hover
            SemanticsService.announce(
              '$title option, ${isEnabled ? 'enabled' : 'disabled'}',
              TextDirection.ltr,
            );
          },
          child: FocusableActionDetector(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                // Announce when focus arrives on option
                SemanticsService.announce(
                  '$title option, currently ${isEnabled ? 'enabled' : 'disabled'}. ${description}. Press Space to toggle.',
                  TextDirection.ltr,
                );
              }
            },
            child: Semantics(
              // Set focused to ensure it's read by screen readers
              focused: true,
              toggled: isEnabled,
              label: '$title, ${isEnabled ? 'enabled' : 'disabled'}',
              hint: description.isNotEmpty ? description : null,
              // Use button and toggled together
              button: true,
              // Add live region to ensure changes are announced
              liveRegion: true,
              // Explicitly include onTap to make it interactive for screen readers
              onTap: () {
                model.toggleOption(id);
              },
              child: YaruSwitchListTile(
                title: Padding(
                  padding: kWizardIndentation
                      .add(const EdgeInsets.symmetric(vertical: 8.0)),
                  child: Text(
                    title,
                    style: TextStyle(
                      // Increase contrast for better readability
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                subtitle: description.isNotEmpty 
                  ? Text(
                      description,
                      style: theme.textTheme.bodySmall,
                    )
                  : null,
                value: isEnabled,
                onChanged: (_) {
                  model.toggleOption(id);
                  
                  // Multiple announcements to ensure screen readers catch it
                  final newState = !isEnabled ? 'enabled' : 'disabled';
                  
                  // First immediate announcement
                  SemanticsService.announce(
                    '$title $newState',
                    TextDirection.ltr,
                  );
                  
                  // Second delayed announcement for redundancy
                  Future.delayed(const Duration(milliseconds: 200), () {
                    SemanticsService.announce(
                      '$title $newState',
                      TextDirection.ltr,
                    );
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
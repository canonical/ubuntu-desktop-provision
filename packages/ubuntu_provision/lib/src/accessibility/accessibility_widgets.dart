import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

/// Constants for accessibility features
class AccessibilityConstants {
  static const Duration announcementDelay = Duration(milliseconds: 300);
  static const Duration focusDelay = Duration(milliseconds: 500);
  static const Duration shortDelay = Duration(milliseconds: 100);
  static const Duration debounceDelay = Duration(milliseconds: 200);
}

/// Debounced announcer to prevent announcement spam
class DebouncedAnnouncer {
  static final Map<String, Timer?> _timers = {};
  
  static void announce(String message, {String? key}) {
    final timerKey = key ?? message;
    
    // Cancel existing timer for this key
    _timers[timerKey]?.cancel();
    
    // Create new timer
    _timers[timerKey] = Timer(AccessibilityConstants.debounceDelay, () {
      _safeAnnounce(message);
      _timers.remove(timerKey);
    });
  }
  
  static void _safeAnnounce(String message) {
    try {
      // Only announce if message is not empty and semantics are enabled
      if (message.trim().isNotEmpty && WidgetsBinding.instance.semanticsEnabled) {
        SemanticsService.announce(message, TextDirection.ltr);
      }
    } catch (e) {
      // Silently fail if semantics service is not available
      debugPrint('Accessibility announcement failed: $e');
    }
  }
  
  static void dispose() {
    for (final timer in _timers.values) {
      timer?.cancel();
    }
    _timers.clear();
  }
}

/// Enhanced dropdown that works well with Orca screen reader
class AccessibleDropdown<T> extends StatefulWidget {
  final T? value;
  final List<T> items;
  final String Function(T) itemBuilder;
  final Function(T?) onChanged;
  final String? label;
  final String? hint;
  final bool enabled;

  const AccessibleDropdown({
    Key? key,
    required this.value,
    required this.items,
    required this.itemBuilder,
    required this.onChanged,
    this.label,
    this.hint,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<AccessibleDropdown<T>> createState() => _AccessibleDropdownState<T>();
}

class _AccessibleDropdownState<T> extends State<AccessibleDropdown<T>> {
  late int _currentIndex;
  bool _isOpen = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.value != null ? widget.items.indexOf(widget.value as T) : 0;
    if (_currentIndex < 0) _currentIndex = 0;
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(AccessibleDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      _currentIndex = widget.value != null ? widget.items.indexOf(widget.value as T) : 0;
      if (_currentIndex < 0) _currentIndex = 0;
    }
  }

  void _handleKeyEvent(KeyEvent event) {
    if (!widget.enabled || !_isOpen) return;
    
    if (event is KeyDownEvent) {
      switch (event.logicalKey) {
        case LogicalKeyboardKey.arrowDown:
          setState(() {
            _currentIndex = (_currentIndex + 1) % widget.items.length;
          });
          DebouncedAnnouncer.announce(
            widget.itemBuilder(widget.items[_currentIndex]),
            key: 'dropdown_navigation',
          );
          break;
        case LogicalKeyboardKey.arrowUp:
          setState(() {
            _currentIndex = (_currentIndex - 1 + widget.items.length) % widget.items.length;
          });
          DebouncedAnnouncer.announce(
            widget.itemBuilder(widget.items[_currentIndex]),
            key: 'dropdown_navigation',
          );
          break;
        case LogicalKeyboardKey.enter:
          widget.onChanged(widget.items[_currentIndex]);
          Navigator.of(context).pop();
          setState(() => _isOpen = false);
          break;
        case LogicalKeyboardKey.escape:
          Navigator.of(context).pop();
          setState(() => _isOpen = false);
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentValue = widget.value != null 
        ? widget.itemBuilder(widget.value as T)
        : (widget.items.isNotEmpty ? widget.itemBuilder(widget.items[0]) : '');
    final lang = UbuntuProvisionLocalizations.of(context);

    return KeyboardListener(
      focusNode: _focusNode,
      onKeyEvent: _handleKeyEvent,
      child: Semantics(
        button: true,
        enabled: widget.enabled,
        label: '${widget.label ?? 'Dropdown'} button. Current selection $currentValue. ${widget.hint ?? 'Press space or enter to open'}',
        child: InkWell(
          onTap: widget.enabled ? _showMenu : null,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(
                color: widget.enabled 
                    ? Theme.of(context).dividerColor 
                    : Theme.of(context).disabledColor,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    currentValue,
                    overflow: TextOverflow.ellipsis,
                    style: widget.enabled 
                        ? null 
                        : TextStyle(color: Theme.of(context).disabledColor),
                  ),
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.arrow_drop_down,
                  color: widget.enabled 
                      ? null 
                      : Theme.of(context).disabledColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showMenu() async {
    setState(() {
      _isOpen = true;
      _currentIndex = widget.value != null ? widget.items.indexOf(widget.value as T) : 0;
      if (_currentIndex < 0) _currentIndex = 0;
    });
    
    final lang = UbuntuProvisionLocalizations.of(context);
    DebouncedAnnouncer.announce(
      lang.accessibilityDropdownOpened,
    );

    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay = Navigator.of(context).overlay!.context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    final selected = await showMenu<T>(
      context: context,
      position: position,
      items: widget.items.map((item) {
        final index = widget.items.indexOf(item);
        return PopupMenuItem<T>(
          value: item,
          child: Semantics(
            label: '${widget.itemBuilder(item)} ${item == widget.value ? "currently selected" : ""}',
            selected: item == widget.value,
            child: Container(
              color: index == _currentIndex ? Theme.of(context).focusColor.withOpacity(0.1) : null,
              child: ListTile(
                title: Text(widget.itemBuilder(item)),
                selected: item == widget.value,
              ),
            ),
          ),
        );
      }).toList(),
    );

    setState(() => _isOpen = false);

    if (selected != null) {
      widget.onChanged(selected);
      final lang = UbuntuProvisionLocalizations.of(context);
      DebouncedAnnouncer.announce(
        lang.accessibilityDropdownSelected(widget.itemBuilder(selected)),
      );
    }
  }
}

/// Enhanced option button with accessibility support
class AccessibleOptionButton extends StatelessWidget {
  final Widget title;
  final Widget? subtitle;
  final bool value;
  final bool groupValue;
  final ValueChanged<bool?>? onChanged;
  final String? semanticLabel;
  final String? description;

  const AccessibleOptionButton({
    Key? key,
    required this.title,
    this.subtitle,
    required this.value,
    required this.groupValue,
    this.onChanged,
    this.semanticLabel,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    final lang = UbuntuProvisionLocalizations.of(context);
    
    return MouseRegion(
      onEnter: (_) {
        if (semanticLabel != null) {
          DebouncedAnnouncer.announce(
            '$semanticLabel ${isSelected ? "selected" : "not selected"}',
          );
        }
      },
      child: Semantics(
        button: true,
        checked: isSelected,
        label: semanticLabel ?? '',
        hint: description ?? lang.accessibilityRadioButtonHint,
        onTap: onChanged != null ? () => onChanged!(value) : null,
        child: InkWell(
          onTap: onChanged != null ? () => onChanged!(value) : null,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected 
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).dividerColor,
                width: isSelected ? 2 : 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Radio<bool>(
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DefaultTextStyle(
                        style: Theme.of(context).textTheme.titleMedium!,
                        child: title,
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 4),
                        DefaultTextStyle(
                          style: Theme.of(context).textTheme.bodyMedium!,
                          child: subtitle!,
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Accessible expandable section
class AccessibleExpandable extends StatefulWidget {
  final Widget header;
  final Widget child;
  final bool initiallyExpanded;
  final String? sectionName;
  final Function(bool)? onExpansionChanged;

  const AccessibleExpandable({
    Key? key,
    required this.header,
    required this.child,
    this.initiallyExpanded = false,
    this.sectionName,
    this.onExpansionChanged,
  }) : super(key: key);

  @override
  State<AccessibleExpandable> createState() => _AccessibleExpandableState();
}

class _AccessibleExpandableState extends State<AccessibleExpandable> {
  late bool _isExpanded;
  final FocusNode _arrowFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;
  }

  @override
  void dispose() {
    _arrowFocusNode.dispose();
    super.dispose();
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
    
    widget.onExpansionChanged?.call(_isExpanded);
    
    if (widget.sectionName != null) {
      final lang = UbuntuProvisionLocalizations.of(context);
      final status = _isExpanded ? lang.accessibilityExpandAction : lang.accessibilityCollapseAction;
      DebouncedAnnouncer.announce(
        lang.accessibilitySectionStatus(widget.sectionName!, status),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuProvisionLocalizations.of(context);
    final expandAction = _isExpanded ? lang.accessibilityCollapseAction : lang.accessibilityExpandAction;
    
    return Column(
      children: [
        Semantics(
          button: true,
          expanded: _isExpanded,
          label: widget.sectionName != null 
              ? '${widget.sectionName} section header'
              : lang.accessibilityExpandableSectionHeader,
          hint: lang.accessibilityExpandableHint(expandAction),
          onTap: _toggleExpansion,
          child: InkWell(
            onTap: _toggleExpansion,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  Expanded(child: widget.header),
                  Focus(
                    focusNode: _arrowFocusNode,
                    onFocusChange: (hasFocus) {
                      if (hasFocus && widget.sectionName != null) {
                        DebouncedAnnouncer.announce(
                          lang.accessibilityArrowHint(widget.sectionName!, expandAction),
                        );
                      }
                    },
                    onKeyEvent: (node, event) {
                      if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.enter) {
                        _toggleExpansion();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Semantics(
                      button: true,
                      label: lang.accessibilityExpandCollapseArrow,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: _arrowFocusNode.hasFocus 
                              ? Border.all(color: Theme.of(context).colorScheme.primary, width: 2)
                              : null,
                        ),
                        child: AnimatedRotation(
                          turns: _isExpanded ? 0.5 : 0,
                          duration: const Duration(milliseconds: 200),
                          child: const Icon(Icons.expand_more),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: _isExpanded 
              ? Semantics(
                  container: true,
                  label: widget.sectionName != null 
                      ? lang.accessibilitySectionOptions(widget.sectionName!)
                      : lang.accessibilityExpandedContent,
                  child: widget.child,
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}

/// Page announcer utility for consistent page loading announcements
class PageAnnouncer {
  static void announcePageLoad({
    required String title,
    String? subtitle,
    String? instructions,
  }) {
    final message = [
      title,
      if (subtitle != null) subtitle,
      if (instructions != null) instructions,
    ].join('. ');
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Ensure semantics are enabled
      WidgetsBinding.instance.ensureSemantics();
      
      // Initial announcement
      DebouncedAnnouncer.announce(message);
      
      // Delayed instructions if provided
      if (instructions != null) {
        Timer(AccessibilityConstants.announcementDelay, () {
          DebouncedAnnouncer.announce(instructions);
        });
      }
    });
  }
}

/// Focus management utilities
class AccessibleFocusManager {
  static void requestFocusWithDelay(FocusNode focusNode, {Duration? delay}) {
    Timer(delay ?? AccessibilityConstants.focusDelay, () {
      // Additional checks to ensure safe focus requests
      if (focusNode.canRequestFocus && 
          focusNode.context != null && 
          focusNode.context!.mounted) {
        try {
          focusNode.requestFocus();
        } catch (e) {
          debugPrint('Focus request failed: $e');
        }
      }
    });
  }
  
  static void announceOnFocus(FocusNode focusNode, String message) {
    void listener() {
      if (focusNode.hasFocus && message.trim().isNotEmpty) {
        DebouncedAnnouncer.announce(message);
      }
    }
    
    focusNode.addListener(listener);
    
    // Store listener for cleanup if needed
    _focusListeners[focusNode] = listener;
  }
  
  static final Map<FocusNode, VoidCallback> _focusListeners = {};
  
  static void cleanupFocusListener(FocusNode focusNode) {
    final listener = _focusListeners.remove(focusNode);
    if (listener != null) {
      focusNode.removeListener(listener);
    }
  }
  
  static void disposeAll() {
    for (final entry in _focusListeners.entries) {
      entry.key.removeListener(entry.value);
    }
    _focusListeners.clear();
  }
} 
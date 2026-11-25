import 'dart:async';

import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

/// Storage size entry with a spinbox and a data size unit dropdown.
class StorageSizeBox extends StatelessWidget {
  const StorageSizeBox({
    required this.size,
    required this.unit,
    required this.maximum,
    required this.onSizeChanged,
    required this.onUnitSelected,
    super.key,
    this.minimum = 0,
    this.autofocus = false,
    this.spacing = kWizardBarSpacing,
  }) : assert(minimum <= maximum);

  /// The current value in bytes.
  final int size;

  /// The unit for visualization.
  final DataUnit unit;

  /// The minimum value in bytes.
  final int minimum;

  /// The maximum value in bytes.
  final int maximum;

  /// The callback called whenever the size changes.
  final ValueChanged<int> onSizeChanged;

  /// The callback called whenever the user selects a size unit.
  final ValueChanged<DataUnit> onUnitSelected;

  /// Whether the widget should automatically gain focus if nothing else is
  /// already focused.
  final bool autofocus;

  /// The spacing between the value spinbox and the unit dropdown. Defaults to
  /// `kButtonBarSpacing`.
  final double spacing;

  @override
  Widget build(BuildContext context) {
    final minBytes = fromBytes(minimum, unit);
    final maxBytes = fromBytes(maximum, unit);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 3,
          child: SizedBox(
            width: 240,
            child: _StorageSizeSpinBox(
              value: fromBytes(size, unit),
              minimum: minBytes,
              maximum: maxBytes,
              onChanged: (value) =>
                  onSizeChanged(toBytes(value.clamp(minBytes, maxBytes), unit)),
              autofocus: autofocus,
            ),
          ),
        ),
        SizedBox(width: spacing),
        IntrinsicWidth(
          child: MenuButtonBuilder<DataUnit>(
            values: DataUnit.values,
            selected: unit,
            onSelected: onUnitSelected,
            itemBuilder: (context, unit, _) {
              return Text(unit.l10n(context), key: ValueKey(unit));
            },
            child: IndexedStack(
              index: unit.index,
              children: DataUnit.values
                  .map((unit) => Text(unit.l10n(context)))
                  .toList(),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

class _StorageSizeSpinBox extends StatefulWidget {
  const _StorageSizeSpinBox({
    required this.value,
    required this.minimum,
    required this.maximum,
    required this.onChanged,
    required this.autofocus,
  });

  final double value;
  final double minimum;
  final double maximum;
  final ValueChanged<double> onChanged;
  final bool autofocus;

  @override
  State<_StorageSizeSpinBox> createState() => _StorageSizeSpinBoxState();
}

class _StorageSizeSpinBoxState extends State<_StorageSizeSpinBox> {
  static final _numericInputPattern = RegExp(r'^\d*$');

  late final FocusNode _focusNode;
  late final TextEditingController _controller;
  late double _value;
  late double _lastValidValue;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
    _lastValidValue = _value;
    _controller = TextEditingController(text: _formatValue(_value));
    _focusNode = FocusNode()..addListener(_onFocusChanged);
  }

  @override
  void didUpdateWidget(_StorageSizeSpinBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      _value = widget.value;
      _lastValidValue = _value;
      if (!_focusNode.hasFocus) _updateText();
    }
  }

  @override
  void dispose() {
    _focusNode
      ..removeListener(_onFocusChanged)
      ..dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    if (_focusNode.hasFocus) {
      _controller.selection = TextSelection(
        baseOffset: 0,
        extentOffset: _controller.text.length,
      );
    } else {
      _commit();
    }
  }

  void _onChanged(String text) {
    final value = double.tryParse(text);
    if (!_isEditableValue(value)) return;
    setState(() {
      _value = value!;
    });
    widget.onChanged(value!);
  }

  void _commit() {
    final value = double.tryParse(_controller.text);
    if (!_isEditableValue(value) || value! < widget.minimum) {
      _value = _lastValidValue;
      _updateText();
    } else {
      _value = value;
      _lastValidValue = value;
    }
  }

  bool _isEditableValue(double? value) =>
      value != null && value.isFinite && value >= 0 && value <= widget.maximum;

  void _setValue(double value) {
    if (widget.minimum >= widget.maximum) return;
    final nextValue = value.clamp(widget.minimum, widget.maximum);
    if (_value == nextValue) return;
    setState(() {
      _value = nextValue;
      _lastValidValue = nextValue;
      _updateText();
    });
    widget.onChanged(nextValue);
  }

  void _stepBy(double amount) => _setValue(_value + amount);

  String _formatValue(double value) => value.toStringAsFixed(0);

  void _updateText() {
    final text = _formatValue(_value);
    _controller.value = TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    final enabled = widget.minimum < widget.maximum;
    return FocusTraversalGroup(
      policy: WidgetOrderTraversalPolicy(),
      child: CallbackShortcuts(
        bindings: {
          const SingleActivator(LogicalKeyboardKey.arrowUp): () => _stepBy(1),
          const SingleActivator(LogicalKeyboardKey.arrowDown): () =>
              _stepBy(-1),
        },
        child: Stack(
          children: [
            FocusTraversalOrder(
              order: const NumericFocusOrder(0),
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                autofocus: widget.autofocus,
                enabled: enabled,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  TextInputFormatter.withFunction((oldValue, newValue) {
                    if (newValue.text.isEmpty) return newValue;
                    if (!_numericInputPattern.hasMatch(newValue.text)) {
                      return oldValue;
                    }
                    final value = double.tryParse(newValue.text);
                    if (value == null) return newValue;
                    if (!_isEditableValue(value)) return oldValue;
                    return newValue;
                  }),
                ],
                onChanged: _onChanged,
                onSubmitted: (_) => _commit(),
                decoration: const InputDecoration(
                  prefix: SizedBox(width: 40),
                  suffix: SizedBox(width: 40),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerLeft,
                child: FocusTraversalOrder(
                  order: const NumericFocusOrder(1),
                  child: _RepeatableIconButton(
                    icon: Icons.remove,
                    enabled: enabled && _value > widget.minimum,
                    onPressed: () => _stepBy(-1),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerRight,
                child: FocusTraversalOrder(
                  order: const NumericFocusOrder(2),
                  child: _RepeatableIconButton(
                    icon: Icons.add,
                    enabled: enabled && _value < widget.maximum,
                    onPressed: () => _stepBy(1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RepeatableIconButton extends StatefulWidget {
  const _RepeatableIconButton({
    required this.icon,
    required this.enabled,
    required this.onPressed,
  });

  final IconData icon;
  final bool enabled;
  final VoidCallback onPressed;

  @override
  State<_RepeatableIconButton> createState() => _RepeatableIconButtonState();
}

class _RepeatableIconButtonState extends State<_RepeatableIconButton> {
  Timer? _repeatTimer;

  @override
  void didUpdateWidget(_RepeatableIconButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.enabled && !widget.enabled) {
      _stopRepeating();
    }
  }

  @override
  void dispose() {
    _stopRepeating();
    super.dispose();
  }

  void _startRepeating() {
    _repeatTimer?.cancel();
    _repeatTimer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      if (!widget.enabled) {
        _stopRepeating();
      } else {
        widget.onPressed();
      }
    });
  }

  void _stopRepeating() {
    _repeatTimer?.cancel();
    _repeatTimer = null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: widget.enabled ? (_) => _startRepeating() : null,
      onLongPressEnd: widget.enabled ? (_) => _stopRepeating() : null,
      onLongPressCancel: _stopRepeating,
      child: IconButton(
        constraints: const BoxConstraints.tightFor(width: 40, height: 40),
        padding: EdgeInsets.zero,
        icon: Icon(widget.icon),
        onPressed: widget.enabled ? widget.onPressed : null,
      ),
    );
  }
}

class StorageTextBox extends StatelessWidget {
  const StorageTextBox({
    required this.size,
    required this.unit,
    required this.minimum,
    required this.maximum,
    required this.onSizeChanged,
    required this.onUnitSelected,
    super.key,
  });

  /// The current value in bytes.
  final int size;

  /// The unit for visualization.
  final DataUnit unit;

  /// The minimum value in bytes.
  final int minimum;

  /// The maximum value in bytes.
  final int maximum;

  /// The callback called whenever the size changes.
  final ValueChanged<int> onSizeChanged;

  /// The callback called whenever the user selects a size unit.
  final ValueChanged<DataUnit> onUnitSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 85,
          child: TextFormField(
            initialValue: fromBytes(size, unit).toStringAsFixed(1),
            onFieldSubmitted: (value) =>
                onSizeChanged(toBytes(double.parse(value), unit)),
          ),
        ),
        const SizedBox(width: kWizardBarSpacing),
        IntrinsicWidth(
          child: MenuButtonBuilder<DataUnit>(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            ),
            values: const [DataUnit.megabytes, DataUnit.gigabytes],
            selected: unit,
            onSelected: onUnitSelected,
            itemBuilder: (context, unit, _) {
              return Text(unit.l10n(context), key: ValueKey(unit));
            },
            child: IndexedStack(
              index: unit.index,
              children: DataUnit.values
                  .map((unit) => Text(unit.l10n(context)))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

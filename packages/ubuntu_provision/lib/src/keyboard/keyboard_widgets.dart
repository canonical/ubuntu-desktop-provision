import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ubuntu_provision/src/keyboard/keyboard_l10n.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

/// Asks the user to press one of keys.
class PressKeyView extends StatelessWidget {
  /// Creates a view.
  const PressKeyView(this._pressKey, {super.key});

  final List<String> _pressKey;

  @override
  Widget build(BuildContext context) {
    final lang = KeyboardLocalizations.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(lang.keyboardPressKeyLabel),
        const SizedBox(height: kWizardSpacing),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.headlineSmall!,
          child: Wrap(
            spacing: 24,
            alignment: WrapAlignment.spaceEvenly,
            children: _pressKey.map(Text.new).toList(),
          ),
        ),
      ],
    );
  }
}

/// Asks the user to confirm whether a key is present.
class KeyPresentView extends StatelessWidget {
  /// Creates a view.
  const KeyPresentView(this._keyPresent, {super.key});

  final String _keyPresent;

  @override
  Widget build(BuildContext context) {
    final lang = KeyboardLocalizations.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(lang.keyboardKeyPresentLabel),
        const SizedBox(height: kWizardSpacing),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.headlineSmall!,
          child: Align(
            child: Text(_keyPresent),
          ),
        ),
      ],
    );
  }
}

/// Detects the keyboard layout by asking the user to press and confirm keys.
class DetectKeyboardView extends StatefulWidget {
  /// Creates a keyboard layout detection view.
  const DetectKeyboardView({
    super.key,
    String? keyPresent,
    List<String>? pressKey,
    ValueChanged<int>? onKeyPress,
  })  : _keyPresent = keyPresent,
        _pressKey = pressKey,
        _onKeyPress = onKeyPress;

  final String? _keyPresent;
  final List<String>? _pressKey;
  final ValueChanged<int>? _onKeyPress;

  @override
  State<DetectKeyboardView> createState() => _DetectKeyboardViewState();
}

class _DetectKeyboardViewState extends State<DetectKeyboardView> {
  @override
  void initState() {
    super.initState();
    HardwareKeyboard.instance.addHandler(_handleKey);
  }

  @override
  void dispose() {
    HardwareKeyboard.instance.removeHandler(_handleKey);
    super.dispose();
  }

  bool _handleKey(KeyEvent event) {
    if (event is! KeyDownEvent) return false;
    final hidCode = event.physicalKey.usbHidUsage & 0xFFFF;
    final scanCode = _usbHidToScanCode[hidCode] ?? -1;
    widget._onKeyPress?.call(scanCode);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (widget._pressKey != null) PressKeyView(widget._pressKey!),
          if (widget._keyPresent != null) KeyPresentView(widget._keyPresent!),
        ],
      ),
    );
  }
}

final _usbHidToScanCode = {
  0x01: 0x00FF, // Overrun Error
  0x02: 0x00FC, // POST Fail
  0x04: 0x001E, // a A
  0x05: 0x0030, // b B
  0x06: 0x002E, // c C
  0x07: 0x0020, // d D
  0x08: 0x0012, // e E
  0x09: 0x0021, // f F
  0x0A: 0x0022, // g G
  0x0B: 0x0023, // h H
  0x0C: 0x0017, // i I
  0x0D: 0x0024, // j J
  0x0E: 0x0025, // k K
  0x0F: 0x0026, // l L
  0x10: 0x0032, // m M
  0x11: 0x0031, // n N
  0x12: 0x0018, // o O
  0x13: 0x0019, // p P
  0x14: 0x0010, // q Q
  0x15: 0x0013, // r R
  0x16: 0x001F, // s S
  0x17: 0x0014, // t T
  0x18: 0x0016, // u U
  0x19: 0x002F, // v V
  0x1A: 0x0011, // w W
  0x1B: 0x002D, // x X
  0x1C: 0x0015, // y Y
  0x1D: 0x002C, // z Z
  0x1E: 0x0002, // 1 !
  0x1F: 0x0003, // 2 @
  0x20: 0x0004, // 3 #
  0x21: 0x0005, // 4 $
  0x22: 0x0006, // 5 %
  0x23: 0x0007, // 6 ^
  0x24: 0x0008, // 7 &
  0x25: 0x0009, // 8 *
  0x26: 0x000A, // 9 (
  0x27: 0x000B, // 0 )
  0x28: 0x001C, // Return
  0x29: 0x0001, // Escape
  0x2A: 0x000E, // Backspace
  0x2B: 0x000F, // Tab
  0x2C: 0x0039, // Space
  0x2D: 0x000C, // - _
  0x2E: 0x000D, // = +
  0x2F: 0x001A, // [ {
  0x30: 0x001B, // ] }
  0x31: 0x002B, // \ |
  0x33: 0x0027, // ; :
  0x34: 0x0028, // ' "
  0x35: 0x0029, // ` ~
  0x36: 0x0033, // , <
  0x37: 0x0034, // . >
  0x38: 0x0035, // / ?
  0x39: 0x003A, // Caps Lock
  0x3A: 0x003B, // F1
  0x3B: 0x003C, // F2
  0x3C: 0x003D, // F3
  0x3D: 0x003E, // F4
  0x3E: 0x003F, // F5
  0x3F: 0x0040, // F6
  0x40: 0x0041, // F7
  0x41: 0x0042, // F8
  0x42: 0x0043, // F9
  0x43: 0x0044, // F10
  0x44: 0x0057, // F11
  0x45: 0x0058, // F12
  0x46: 0xE037, // Print Screen (Note 1)
  0x47: 0x0046, // Scroll Lock
  0x49: 0xE052, // Insert (Note 1)
  0x4A: 0xE047, // Home (Note 1)
  0x4B: 0xE049, // Page Up (Note 1)
  0x4C: 0xE053, // Delete (Note 1)
  0x4D: 0xE04F, // End (Note 1)
  0x4E: 0xE051, // Page Down (Note 1)
  0x4F: 0xE04D, // Right Arrow (Note 1)
  0x50: 0xE04B, // Left Arrow (Note 1)
  0x51: 0xE050, // Down Arrow (Note 1)
  0x52: 0xE048, // Up Arrow (Note 1)
  0x53: 0x0045, // Num Lock
  0x54: 0xE035, // Keypad / (Note 1)
  0x55: 0x0037, // Keypad *
  0x56: 0x004A, // Keypad -
  0x57: 0x004E, // Keypad +
  0x58: 0xE01C, // Keypad Enter
  0x59: 0x004F, // Keypad 1 End
  0x5A: 0x0050, // Keypad 2 Down
  0x5B: 0x0051, // Keypad 3 PageDn
  0x5C: 0x004B, // Keypad 4 Left
  0x5D: 0x004C, // Keypad 5
  0x5E: 0x004D, // Keypad 6 Right
  0x5F: 0x0047, // Keypad 7 Home
  0x60: 0x0048, // Keypad 8 Up
  0x61: 0x0049, // Keypad 9 PageUp
  0x62: 0x0052, // Keypad 0 Insert
  0x63: 0x0053, // Keypad . Delete
  0x64: 0x0056, // Europe 2 (Note 2)
  0x65: 0xE05D, // App
  0x67: 0x0059, // Keypad =
  0x68: 0x005D, // F13
  0x69: 0x005E, // F14
  0x6A: 0x005F, // F15
  0x85: 0x007E, // Keypad , (Brazilian Keypad .)
  0x87: 0x0073, // Keyboard Int'l 1 ろ (Ro)
  0x88: 0x0070, // Keyboard Int'l 2 かたかな ひらがな ローマ字 (Katakana/Hiragana)
  0x89: 0x007D, // Keyboard Int'l 3 ￥ (Yen)
  0x8A: 0x0079, // Keyboard Int'l 4 前候補 変換 (次候補) 全候補 (Henkan)
  0x8B: 0x007B, // Keyboard Int'l 5 無変換 (Muhenkan)
  0x8C: 0x005C, // Keyboard Int'l 6 (PC9800 Keypad , )
  0x90: 0x00F2, // Keyboard Lang 1 한/영 (Hanguel/English)
  0x91: 0x00F1, // Keyboard Lang 2 한자 (Hanja)
  0x92: 0x0078, // Keyboard Lang 3 かたかな (Katakana)
  0x93: 0x0077, // Keyboard Lang 4 ひらがな (Hiragana)
  0x94: 0x0076, // Keyboard Lang 5 半角/全角 (Zenkaku/Hankaku)
  0xE0: 0x001D, // Left Control
  0xE1: 0x002A, // Left Shift
  0xE2: 0x0038, // Left Alt
  0xE3: 0xE05B, // Left GUI
  0xE4: 0xE01D, // Right Control
  0xE5: 0x0036, // Right Shift
  0xE6: 0xE038, // Right Alt
  0xE7: 0xE05C, // Right GUI
};

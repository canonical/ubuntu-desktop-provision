import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'dart:async';
import 'package:collection/collection.dart';
import 'package:diacritic/diacritic.dart';
import 'package:meta/meta.dart';
import 'package:platform/platform.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

// KeyboardModel (unchanged from original)
final _log = Logger('keyboard');

final keyboardModelProvider =
    ChangeNotifierProvider((_) => KeyboardModel(getService<KeyboardService>()));

class KeyboardModel extends SafeChangeNotifier {
  KeyboardModel(this._service, {@visibleForTesting Platform? platform})
      : _platform = platform ?? const LocalPlatform();

  final KeyboardService _service;
  final Platform _platform;
  List<KeyboardLayout> _layouts = [];

  int get layoutCount => _layouts.length;
  bool get canDetectLayout => _service.canDetectLayout;

  String layoutName(int index) {
    assert(index >= 0 && index < layoutCount);
    return _layouts[index].name;
  }

  int get selectedLayoutIndex => _selectedLayoutIndex;
  int _selectedLayoutIndex = -1;

  KeyboardLayout? get _selectedLayout =>
      (_selectedLayoutIndex > -1) ? _layouts[_selectedLayoutIndex] : null;

  Future<void> selectLayout(int index, [int variant = 0]) async {
    assert(index > -1 && index < layoutCount);
    if (_selectedLayoutIndex == index) return;
    _selectedLayoutIndex = index;
    _selectedVariantIndex = _selectedLayout!.variants.isNotEmpty ? variant : -1;
    _log.info(
      'Selected ${_selectedLayout?.code} (${_selectedVariant?.code}) keyboard layout',
    );
    notifyListeners();
    await updateInputSource();
  }

  Future<void> trySelectLayoutVariant(String? layout, String? variant) async {
    final layoutIndex = _layouts.indexWhere((l) => l.code == layout);
    if (layoutIndex != -1) {
      final variantIndex =
          _layouts[layoutIndex].variants.indexWhere((v) => v.code == variant);
      await selectLayout(layoutIndex, variantIndex);
    }
  }

  int searchLayout(String query) {
    return _layouts
        .map((l) => l.name)
        .toList()
        .keySearch(query, _selectedLayoutIndex + 1);
  }

  int get variantCount => _selectedLayout?.variants.length ?? 0;

  String variantName(int index) {
    assert(index >= 0 && index < variantCount);
    return _selectedLayout!.variants[index].name;
  }

  int get selectedVariantIndex => _selectedVariantIndex;
  int _selectedVariantIndex = -1;

  KeyboardVariant? get _selectedVariant => _selectedVariantIndex >= 0
      ? _selectedLayout?.variants.elementAtOrNull(_selectedVariantIndex)
      : null;

  Future<void> selectVariant(int index) async {
    assert(index > -1 && index < variantCount);
    if (_selectedVariantIndex == index) return;
    _selectedVariantIndex = index;
    _log.info(
      'Selected ${_selectedLayout?.code} (${_selectedVariant?.code}) keyboard layout',
    );
    notifyListeners();
    await updateInputSource();
  }

  bool get isValid => _selectedLayoutIndex > -1 && _selectedVariantIndex > -1;

  Future<void> init() async {
    _layouts = await _service.getKeyboard().then((keyboard) {
      return keyboard.layouts.sortedBy((a) => removeDiacritics(a.name));
    });
    _log.info('Loaded ${_layouts.length} keyboard layouts');
    final keyboard = await _service.getKeyboard();
    _selectedLayoutIndex = _layouts.indexWhere((layout) {
      return layout.code == keyboard.setting.layout;
    });
    if (_selectedLayoutIndex > -1) {
      _selectedVariantIndex = _selectedLayout!.variants.indexWhere((variant) {
        return (variant.code) == (keyboard.setting.variant);
      });
    }
    _log.info(
      'Initialized ${_selectedLayout?.code} (${_selectedVariant?.code}) keyboard layout',
    );
    notifyListeners();
  }

  Future<void> updateInputSource() async {
    if (_selectedLayout == null) return;
    final layout = _selectedLayout!.code;
    final variant = _selectedVariant?.code;
    final keyboard = KeyboardSetting(layout: layout, variant: variant ?? '');
    _log.info('Updated $layout ($variant) input source');
    return _service.setInputSource(
      keyboard,
      user: _platform.environment['USERNAME'] ?? _platform.environment['USER'],
    );
  }

  Future<void> save() {
    final layout = _selectedLayout!.code;
    final variant = _selectedVariant?.code;
    final keyboard = KeyboardSetting(layout: layout, variant: variant ?? '');
    _log.info('Saved $layout ($variant) keyboard layout');
    return _service.setKeyboard(keyboard);
  }
}
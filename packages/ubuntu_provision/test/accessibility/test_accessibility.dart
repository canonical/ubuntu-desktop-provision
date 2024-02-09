import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import 'test_accessibility.mocks.dart';

export 'package:ubuntu_provision/src/accessibility/accessibility_model.dart'
    show AccessibilityOption;

export '../test_utils.dart';
export 'test_accessibility.mocks.dart';

@GenerateMocks([AccessibilityModel])
AccessibilityModel buildAccessibilityModel({
  List<AccessibilityOption>? activeOptions,
}) {
  final model = MockAccessibilityModel();
  when(model.activeOptions)
      .thenReturn(UnmodifiableListView(activeOptions ?? []));
  when(model.init()).thenAnswer((_) async => true);
  return model;
}

Widget buildAccessibilityPage(AccessibilityModel model) {
  return ProviderScope(
    overrides: [accessibilityModelProvider.overrideWith((_) => model)],
    child: AccessibilityPage(),
  );
}

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/src/accessibility/accessibility_model.dart';

import 'test_accessibility.dart';

void main() {
  test('load accessibility settings', () async {
    final service = MockAccessibilityService();
    when(service.isSupported()).thenAnswer((_) async => true);
    when(service.getHighContrast()).thenAnswer((_) async => true);
    when(service.getLargeText()).thenAnswer((_) async => false);
    when(service.getReduceAnimation()).thenAnswer((_) async => true);
    when(service.getScreenReader()).thenAnswer((_) async => false);
    when(service.getVisualAlerts()).thenAnswer((_) async => true);

    final model = AccessibilityModel(service);

    await model.init();

    verify(service.getHighContrast()).called(1);
    verify(service.getLargeText()).called(1);
    verify(service.getReduceAnimation()).called(1);
    verify(service.getScreenReader()).called(1);
    verify(service.getVisualAlerts()).called(1);

    expect(model.activeOptions, [
      AccessibilityOption.highContrast,
      AccessibilityOption.reduceAnimation,
      AccessibilityOption.visualAlerts,
    ]);
  });

  test('toggle option', () async {
    final service = MockAccessibilityService();
    when(service.isSupported()).thenAnswer((_) async => true);
    when(service.getHighContrast()).thenAnswer((_) async => false);
    when(service.getLargeText()).thenAnswer((_) async => false);
    when(service.getReduceAnimation()).thenAnswer((_) async => true);
    when(service.getScreenReader()).thenAnswer((_) async => true);
    when(service.getVisualAlerts()).thenAnswer((_) async => true);

    final model = AccessibilityModel(service);

    await model.init();

    model.toggleOption(AccessibilityOption.highContrast);
    expect(model.activeOptions, [
      AccessibilityOption.reduceAnimation,
      AccessibilityOption.screenReader,
      AccessibilityOption.visualAlerts,
      AccessibilityOption.highContrast,
    ]);

    model.toggleOption(AccessibilityOption.reduceAnimation);
    expect(model.activeOptions, [
      AccessibilityOption.screenReader,
      AccessibilityOption.visualAlerts,
      AccessibilityOption.highContrast,
    ]);
  });
}

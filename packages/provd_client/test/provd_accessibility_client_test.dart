import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/src/generated/accessibility.pbgrpc.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/google/protobuf/wrappers.pb.dart';
import 'package:provd_client/src/provd_accessibility_client.dart';
import 'package:test/test.dart';

import 'provd_accessibility_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([AccessibilityServiceClient])
void main() {
  final mockAccessibilityServiceClient = MockAccessibilityServiceClient();
  final accessibilityClient =
      ProvdAccessibilityClient.withClient(mockAccessibilityServiceClient);

  test('get high contrast', () async {
    when(mockAccessibilityServiceClient.getHighContrast(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await accessibilityClient.getHighContrast(), isTrue);
  });

  test('enable high contrast', () async {
    when(mockAccessibilityServiceClient.enableHighContrast(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.enableHighContrast();

    verify(mockAccessibilityServiceClient.enableHighContrast(any)).called(1);
  });

  test('disable high contrast', () async {
    when(mockAccessibilityServiceClient.disableHighContrast(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.disableHighContrast();

    verify(mockAccessibilityServiceClient.disableHighContrast(any)).called(1);
  });

  test('get reduced motion', () async {
    when(mockAccessibilityServiceClient.getReducedMotion(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await accessibilityClient.getReducedMotion(), isTrue);
  });

  test('enable reduced motion', () async {
    when(mockAccessibilityServiceClient.enableReducedMotion(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.enableReducedMotion();

    verify(mockAccessibilityServiceClient.enableReducedMotion(any)).called(1);
  });

  test('disable reduced motion', () async {
    when(mockAccessibilityServiceClient.disableReducedMotion(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.disableReducedMotion();

    verify(mockAccessibilityServiceClient.disableReducedMotion(any)).called(1);
  });

  test('get large text', () async {
    when(mockAccessibilityServiceClient.getLargeText(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await accessibilityClient.getLargeText(), isTrue);
  });

  test('enable large text', () async {
    when(mockAccessibilityServiceClient.enableLargeText(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.enableLargeText();

    verify(mockAccessibilityServiceClient.enableLargeText(any)).called(1);
  });

  test('disable large text', () async {
    when(mockAccessibilityServiceClient.disableLargeText(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.disableLargeText();

    verify(mockAccessibilityServiceClient.disableLargeText(any)).called(1);
  });

  test('get screen reader', () async {
    when(mockAccessibilityServiceClient.getScreenReader(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await accessibilityClient.getScreenReader(), isTrue);
  });

  test('enable screen reader', () async {
    when(mockAccessibilityServiceClient.enableScreenReader(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.enableScreenReader();

    verify(mockAccessibilityServiceClient.enableScreenReader(any)).called(1);
  });

  test('disable screen reader', () async {
    when(mockAccessibilityServiceClient.disableScreenReader(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.disableScreenReader();

    verify(mockAccessibilityServiceClient.disableScreenReader(any)).called(1);
  });

  test('get visual alerts', () async {
    when(mockAccessibilityServiceClient.getVisualAlerts(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await accessibilityClient.getVisualAlerts(), isTrue);
  });

  test('enable visual alerts', () async {
    when(mockAccessibilityServiceClient.enableVisualAlerts(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.enableVisualAlerts();

    verify(mockAccessibilityServiceClient.enableVisualAlerts(any)).called(1);
  });

  test('disable visual alerts', () async {
    when(mockAccessibilityServiceClient.disableVisualAlerts(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.disableVisualAlerts();

    verify(mockAccessibilityServiceClient.disableVisualAlerts(any)).called(1);
  });

  test('get screen keyboard', () async {
    when(mockAccessibilityServiceClient.getScreenKeyboard(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await accessibilityClient.getScreenKeyboard(), isTrue);
  });

  test('enable screen keyboard', () async {
    when(mockAccessibilityServiceClient.enableScreenKeyboard(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.enableScreenKeyboard();

    verify(mockAccessibilityServiceClient.enableScreenKeyboard(any)).called(1);
  });

  test('disable screen keyboard', () async {
    when(mockAccessibilityServiceClient.disableScreenKeyboard(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.disableScreenKeyboard();

    verify(mockAccessibilityServiceClient.disableScreenKeyboard(any)).called(1);
  });

  test('get sticky keys', () async {
    when(mockAccessibilityServiceClient.getStickyKeys(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await accessibilityClient.getStickyKeys(), isTrue);
  });

  test('enable sticky keys', () async {
    when(mockAccessibilityServiceClient.enableStickyKeys(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.enableStickyKeys();

    verify(mockAccessibilityServiceClient.enableStickyKeys(any)).called(1);
  });

  test('disable sticky keys', () async {
    when(mockAccessibilityServiceClient.disableStickyKeys(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.disableStickyKeys();

    verify(mockAccessibilityServiceClient.disableStickyKeys(any)).called(1);
  });

  test('get slow keys', () async {
    when(mockAccessibilityServiceClient.getSlowKeys(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await accessibilityClient.getSlowKeys(), isTrue);
  });

  test('enable slow keys', () async {
    when(mockAccessibilityServiceClient.enableSlowKeys(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.enableSlowKeys();

    verify(mockAccessibilityServiceClient.enableSlowKeys(any)).called(1);
  });

  test('disable slow keys', () async {
    when(mockAccessibilityServiceClient.disableSlowKeys(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.disableSlowKeys();

    verify(mockAccessibilityServiceClient.disableSlowKeys(any)).called(1);
  });

  test('get mouse keys', () async {
    when(mockAccessibilityServiceClient.getMouseKeys(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await accessibilityClient.getMouseKeys(), isTrue);
  });

  test('enable mouse keys', () async {
    when(mockAccessibilityServiceClient.enableMouseKeys(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.enableMouseKeys();

    verify(mockAccessibilityServiceClient.enableMouseKeys(any)).called(1);
  });

  test('disable mouse keys', () async {
    when(mockAccessibilityServiceClient.disableMouseKeys(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.disableMouseKeys();

    verify(mockAccessibilityServiceClient.disableMouseKeys(any)).called(1);
  });

  test('get desktop zoom', () async {
    when(mockAccessibilityServiceClient.getDesktopZoom(any)).thenAnswer((_) {
      return MockResponseFuture<BoolValue>(BoolValue(value: true));
    });

    expect(await accessibilityClient.getDesktopZoom(), isTrue);
  });

  test('enable desktop zoom', () async {
    when(mockAccessibilityServiceClient.enableDesktopZoom(any)).thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.enableDesktopZoom();

    verify(mockAccessibilityServiceClient.enableDesktopZoom(any)).called(1);
  });

  test('disable desktop zoom', () async {
    when(mockAccessibilityServiceClient.disableDesktopZoom(any))
        .thenAnswer((_) {
      return MockResponseFuture<Empty>(Empty());
    });

    await accessibilityClient.disableDesktopZoom();

    verify(mockAccessibilityServiceClient.disableDesktopZoom(any)).called(1);
  });
}

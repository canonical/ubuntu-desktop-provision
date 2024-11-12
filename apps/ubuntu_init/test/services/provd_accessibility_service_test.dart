import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/src/services/provd_accessibility_service.dart';

import 'provd_accessibility_service_test.mocks.dart';

@GenerateMocks([ProvdAccessibilityClient])
void main() {
  late MockProvdAccessibilityClient client;
  late ProvdAccessibilityService service;

  setUp(() {
    client = MockProvdAccessibilityClient();
    service = ProvdAccessibilityService(client: client);
  });
  group('change settings', () {
    test('setHighContrast', () async {
      await service.setHighContrast(true);
      verify(client.enableHighContrast()).called(1);
    });

    test('setLargeText', () async {
      await service.setLargeText(true);
      verify(client.enableLargeText()).called(1);
    });

    test('setScreenReader', () async {
      await service.setScreenReader(true);
      verify(client.enableScreenReader()).called(1);
    });

    test('setVisualAlerts', () async {
      await service.setVisualAlerts(true);
      verify(client.enableVisualAlerts()).called(1);
    });

    test('setReduceAnimation', () async {
      await service.setReduceAnimation(true);
      verify(client.enableReducedMotion()).called(1);
    });

    test('setStickyKeys', () async {
      await service.setStickyKeys(true);
      verify(client.enableStickyKeys()).called(1);
    });

    test('setSlowKeys', () async {
      await service.setSlowKeys(true);
      verify(client.enableSlowKeys()).called(1);
    });

    test('setMouseKeys', () async {
      await service.setMouseKeys(true);
      verify(client.enableMouseKeys()).called(1);
    });

    test('setDesktopZoom', () async {
      await service.setDesktopZoom(true);
      verify(client.enableDesktopZoom()).called(1);
    });
  });

  group('read settings', () {
    test('getHighContrast', () async {
      when(client.getHighContrast()).thenAnswer((_) async => true);
      expect(await service.getHighContrast(), isTrue);
    });

    test('getLargeText', () async {
      when(client.getLargeText()).thenAnswer((_) async => true);
      expect(await service.getLargeText(), isTrue);
    });

    test('getScreenReader', () async {
      when(client.getScreenReader()).thenAnswer((_) async => true);
      expect(await service.getScreenReader(), isTrue);
    });

    test('getVisualAlerts', () async {
      when(client.getVisualAlerts()).thenAnswer((_) async => true);
      expect(await service.getVisualAlerts(), isTrue);
    });

    test('getReduceAnimation', () async {
      when(client.getReducedMotion()).thenAnswer((_) async => true);
      expect(await service.getReduceAnimation(), isTrue);
    });

    test('getStickyKeys', () async {
      when(client.getStickyKeys()).thenAnswer((_) async => true);
      expect(await service.getStickyKeys(), isTrue);
    });

    test('getSlowKeys', () async {
      when(client.getSlowKeys()).thenAnswer((_) async => true);
      expect(await service.getSlowKeys(), isTrue);
    });

    test('getMouseKeys', () async {
      when(client.getMouseKeys()).thenAnswer((_) async => true);
      expect(await service.getMouseKeys(), isTrue);
    });

    test('getDesktopZoom', () async {
      when(client.getDesktopZoom()).thenAnswer((_) async => true);
      expect(await service.getDesktopZoom(), isTrue);
    });
  });
}

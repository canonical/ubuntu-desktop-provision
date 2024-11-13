import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/services/provd_address.dart';
import 'package:ubuntu_provision/services.dart';

class ProvdAccessibilityService
    with ProvdAddress
    implements AccessibilityService {
  ProvdAccessibilityService({ProvdAccessibilityClient? client})
      : _client = client ??
            ProvdAccessibilityClient(
              ProvdAddress.socketAddress,
              ProvdAddress.port,
            );

  final ProvdAccessibilityClient _client;

  @override
  Future<bool> getHighContrast() => _client.getHighContrast();

  @override
  Future<void> setHighContrast(bool value) =>
      value ? _client.enableHighContrast() : _client.disableHighContrast();

  @override
  Future<bool> getLargeText() => _client.getLargeText();

  @override
  Future<void> setLargeText(bool value) =>
      value ? _client.enableLargeText() : _client.disableLargeText();

  @override
  Future<bool> getScreenReader() => _client.getScreenReader();

  @override
  Future<void> setScreenReader(bool value) =>
      value ? _client.enableScreenReader() : _client.disableScreenReader();

  @override
  Future<bool> getVisualAlerts() => _client.getVisualAlerts();

  @override
  Future<void> setVisualAlerts(bool value) =>
      value ? _client.enableVisualAlerts() : _client.disableVisualAlerts();

  @override
  Future<bool> getReduceAnimation() => _client.getReducedMotion();

  @override
  Future<void> setReduceAnimation(bool value) =>
      value ? _client.enableReducedMotion() : _client.disableReducedMotion();

  @override
  Future<bool> getStickyKeys() => _client.getStickyKeys();

  @override
  Future<void> setStickyKeys(bool value) =>
      value ? _client.enableStickyKeys() : _client.disableStickyKeys();

  @override
  Future<bool> getSlowKeys() => _client.getSlowKeys();

  @override
  Future<void> setSlowKeys(bool value) =>
      value ? _client.enableSlowKeys() : _client.disableSlowKeys();

  @override
  Future<bool> getMouseKeys() => _client.getMouseKeys();

  @override
  Future<void> setMouseKeys(bool value) =>
      value ? _client.enableMouseKeys() : _client.disableMouseKeys();

  @override
  Future<bool> getDesktopZoom() => _client.getDesktopZoom();

  @override
  Future<void> setDesktopZoom(bool value) =>
      value ? _client.enableDesktopZoom() : _client.disableDesktopZoom();

  @override
  Future<bool> isSupported() async => true;
}

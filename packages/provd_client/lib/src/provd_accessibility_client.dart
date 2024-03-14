import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/accessibility.pbgrpc.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';

class ProvdAccessibilityClient {
  ProvdAccessibilityClient(Object host, int port)
      : _accessibilityClient = AccessibilityServiceClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdAccessibilityClient.withClient(this._accessibilityClient);

  final AccessibilityServiceClient _accessibilityClient;

  Future<bool> getHighContrast() async {
    final response = await _accessibilityClient.getHighContrast(Empty());
    return response.value;
  }

  Future<void> enableHighContrast() async =>
      await _accessibilityClient.enableHighContrast(Empty());

  Future<void> disableHighContrast() async =>
      await _accessibilityClient.disableHighContrast(Empty());

  Future<bool> getReducedMotion() async {
    final response = await _accessibilityClient.getReducedMotion(Empty());
    return response.value;
  }

  Future<void> enableReducedMotion() async =>
      await _accessibilityClient.enableReducedMotion(Empty());

  Future<void> disableReducedMotion() async =>
      await _accessibilityClient.disableReducedMotion(Empty());

  Future<bool> getLargeText() async {
    final response = await _accessibilityClient.getLargeText(Empty());
    return response.value;
  }

  Future<void> enableLargeText() async =>
      await _accessibilityClient.enableLargeText(Empty());

  Future<void> disableLargeText() async =>
      await _accessibilityClient.disableLargeText(Empty());

  Future<bool> getScreenReader() async {
    final response = await _accessibilityClient.getScreenReader(Empty());
    return response.value;
  }

  Future<void> enableScreenReader() async =>
      await _accessibilityClient.enableScreenReader(Empty());

  Future<void> disableScreenReader() async =>
      await _accessibilityClient.disableScreenReader(Empty());

  Future<bool> getVisualAlerts() async {
    final response = await _accessibilityClient.getVisualAlerts(Empty());
    return response.value;
  }

  Future<void> enableVisualAlerts() async =>
      await _accessibilityClient.enableVisualAlerts(Empty());

  Future<void> disableVisualAlerts() async =>
      await _accessibilityClient.disableVisualAlerts(Empty());

  Future<bool> getScreenKeyboard() async {
    final response = await _accessibilityClient.getScreenKeyboard(Empty());
    return response.value;
  }

  Future<void> enableScreenKeyboard() async =>
      await _accessibilityClient.enableScreenKeyboard(Empty());

  Future<void> disableScreenKeyboard() async =>
      await _accessibilityClient.disableScreenKeyboard(Empty());

  Future<bool> getStickyKeys() async {
    final response = await _accessibilityClient.getStickyKeys(Empty());
    return response.value;
  }

  Future<void> enableStickyKeys() async =>
      await _accessibilityClient.enableStickyKeys(Empty());

  Future<void> disableStickyKeys() async =>
      await _accessibilityClient.disableStickyKeys(Empty());

  Future<bool> getSlowKeys() async {
    final response = await _accessibilityClient.getSlowKeys(Empty());
    return response.value;
  }

  Future<void> enableSlowKeys() async =>
      await _accessibilityClient.enableSlowKeys(Empty());

  Future<void> disableSlowKeys() async =>
      await _accessibilityClient.disableSlowKeys(Empty());

  Future<bool> getMouseKeys() async {
    final response = await _accessibilityClient.getMouseKeys(Empty());
    return response.value;
  }

  Future<void> enableMouseKeys() async =>
      await _accessibilityClient.enableMouseKeys(Empty());

  Future<void> disableMouseKeys() async =>
      await _accessibilityClient.disableMouseKeys(Empty());

  Future<bool> getDesktopZoom() async {
    final response = await _accessibilityClient.getDesktopZoom(Empty());
    return response.value;
  }

  Future<void> enableDesktopZoom() async =>
      await _accessibilityClient.enableDesktopZoom(Empty());

  Future<void> disableDesktopZoom() async =>
      await _accessibilityClient.disableDesktopZoom(Empty());
}

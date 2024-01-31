abstract class AccessibilityService {
  Future<bool> getHighContrast();
  Future<void> setHighContrast(bool value);

  Future<bool> getLargeText();
  Future<void> setLargeText(bool value);

  Future<bool> getReduceAnimation();
  Future<void> setReduceAnimation(bool value);

  Future<bool> getScreenReader();
  Future<void> setScreenReader(bool value);

  Future<bool> getVisualAlerts();
  Future<void> setVisualAlerts(bool value);
}

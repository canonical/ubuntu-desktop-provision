import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_bootstrap/services.dart';

void main() {
  test('default values', () {
    final environmentVariableService = EnvironmentVariableService();
    environmentVariableService.load();
    expect(environmentVariableService.landscapeClientUseTls, isTrue);
  });

  test('custom values', () {
    final environmentVariableService = EnvironmentVariableService(
      env: {
        'LANDSCAPE_CLIENT_USE_TLS': 'false',
      },
    );
    environmentVariableService.load();
    expect(environmentVariableService.landscapeClientUseTls, isFalse);
  });
}

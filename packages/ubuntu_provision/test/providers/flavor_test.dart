import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

import '../test_utils.mocks.dart';

void main() {
  group('load flavor', () {
    final testCases = [
      (
        name: 'valid config',
        configFlavorName: 'studio',
        expectedFlavor: UbuntuFlavor.studio,
      ),
      (
        name: 'unknown flavor in config',
        configFlavorName: 'kubuntux',
        expectedFlavor: UbuntuFlavor.ubuntu,
      ),
      (
        name: 'empty config and unknown flavor from detection',
        configFlavorName: null,
        expectedFlavor: UbuntuFlavor.ubuntu,
      ),
    ];

    tearDown(resetAllServices);

    for (final testCase in testCases) {
      test(testCase.name, () async {
        final configService = MockConfigService();
        when(configService.get<String>('flavor'))
            .thenAnswer((_) async => testCase.configFlavorName);
        registerMockService<ConfigService>(configService);

        final flavor = await loadFlavor();
        expect(flavor, equals(testCase.expectedFlavor));
      });
    }
  });
}

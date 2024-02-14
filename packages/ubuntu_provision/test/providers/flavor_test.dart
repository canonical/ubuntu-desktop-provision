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
        detectedFlavor: UbuntuFlavor.unknown,
        expectedFlavor: UbuntuFlavor.studio,
      ),
      (
        name: 'unknown flavor in config and from detection',
        configFlavorName: 'kubuntux',
        detectedFlavor: UbuntuFlavor.unknown,
        expectedFlavor: UbuntuFlavor.ubuntu,
      ),
      (
        name: 'unknown flavor in config and valid detection',
        configFlavorName: 'kubuntux',
        detectedFlavor: UbuntuFlavor.kubuntu,
        expectedFlavor: UbuntuFlavor.kubuntu,
      ),
      (
        name: 'empty config and unknown flavor from detection',
        configFlavorName: null,
        detectedFlavor: UbuntuFlavor.unknown,
        expectedFlavor: UbuntuFlavor.ubuntu,
      ),
      (
        name: 'empty config and valid flavor from detection',
        configFlavorName: null,
        detectedFlavor: UbuntuFlavor.mate,
        expectedFlavor: UbuntuFlavor.mate,
      ),
    ];

    tearDown(resetAllServices);

    for (final testCase in testCases) {
      test(testCase.name, () async {
        final configService = MockConfigService();
        when(configService.get<String>('flavor'))
            .thenAnswer((_) async => testCase.configFlavorName);
        registerMockService<ConfigService>(configService);

        final flavor =
            await loadFlavor(detectedFlavor: testCase.detectedFlavor);
        expect(flavor, equals(testCase.expectedFlavor));
      });
    }
  });
}

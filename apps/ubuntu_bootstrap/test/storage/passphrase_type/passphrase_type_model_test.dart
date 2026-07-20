import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase_type/passphrase_type_model.dart';
import 'package:ubuntu_bootstrap/services/storage_service.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'test_passphrase_type.dart';

void main() {
  Logger.setup();
  for (final testCase in <({
    String name,
    List<CoreBootEncryptionFeatures> features,
    bool pageShown,
    List<CoreBootEncryptionRequirement> requirements,
    Set<PassphraseType> supportedTypes
  })>[
    (
      name: 'no features or requirements',
      features: [],
      requirements: [],
      pageShown: false,
      supportedTypes: {PassphraseType.none},
    ),
    (
      name: 'passphrase supported, no requirements',
      features: [CoreBootEncryptionFeatures.PASSPHRASE_AUTH],
      requirements: [],
      pageShown: true,
      supportedTypes: {PassphraseType.none, PassphraseType.passphrase},
    ),
    (
      name: 'pin/pass supported and required',
      features: [
        CoreBootEncryptionFeatures.PIN_AUTH,
        CoreBootEncryptionFeatures.PASSPHRASE_AUTH,
      ],
      requirements: [CoreBootEncryptionRequirement.VOLUMES_AUTH],
      pageShown: true,
      supportedTypes: {PassphraseType.pin, PassphraseType.passphrase},
    ),
  ]) {
    test(testCase.name, () async {
      final service = MockStorageService();
      when(service.passphraseType).thenReturn(PassphraseType.passphrase);
      when(service.guidedCapability)
          .thenReturn(GuidedCapability.CORE_BOOT_ENCRYPTED);
      when(service.getCoreBootEncryptionFeatures())
          .thenAnswer((_) async => testCase.features);
      when(service.getCoreBootEncryptionRequirements())
          .thenAnswer((_) async => testCase.requirements);
      final model = PassphraseTypeModel(service);

      expect(await model.init(), equals(testCase.pageShown));
      expect(model.supportedTypes, equals(testCase.supportedTypes));
    });
  }
}

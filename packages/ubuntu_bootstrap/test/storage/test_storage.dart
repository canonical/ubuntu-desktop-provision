import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_provision/services.dart';

import 'test_storage.mocks.dart';

export '../test_utils.dart';
export 'bitlocker/test_bitlocker.dart';
export 'guided_reformat/test_guided_reformat.dart';
export 'guided_resize/test_guided_resize.dart';
export 'manual/test_manual_storage.dart';
export 'passphrase/test_passphrase.dart';
export 'recovery_key/test_recovery_key.dart';
export 'test_storage.mocks.dart';

@GenerateMocks([StorageModel])
StorageModel buildStorageModel({
  StorageType? type = StorageType.erase,
  GuidedCapability? guidedCapability = GuidedCapability.DIRECT,
  ProductInfo productInfo = const ProductInfo(name: ''),
  String tpmInfoUrl = '',
  List<OsProber>? existingOS,
  SecureBootScenarios? scenario,
  bool canInstallAlongside = true,
  bool canEraseDisk = true,
  bool canManualPartition = true,
  bool hasAdvancedFeatures = true,
  bool hasBitLocker = false,
  bool hasDirect = true,
  bool hasLvm = true,
  bool hasZfs = true,
  bool hasTpm = false,
  bool hasDd = false,
}) {
  final model = MockStorageModel();
  when(model.type).thenReturn(type);
  when(model.guidedCapability).thenReturn(guidedCapability);
  when(model.productInfo).thenReturn(productInfo);
  when(model.tpmInfoUrl).thenReturn(tpmInfoUrl);
  when(model.existingOS).thenReturn(existingOS);
  when(model.canInstallAlongside).thenReturn(canInstallAlongside);
  when(model.canEraseDisk).thenReturn(canEraseDisk);
  when(model.canManualPartition).thenReturn(canManualPartition);
  when(model.hasAdvancedFeatures).thenReturn(hasAdvancedFeatures);
  when(model.hasBitLocker).thenReturn(hasBitLocker);
  when(model.hasDirect).thenReturn(hasDirect);
  when(model.hasLvm).thenReturn(hasLvm);
  when(model.hasZfs).thenReturn(hasZfs);
  when(model.hasTpm).thenReturn(hasTpm);
  when(model.hasDd).thenReturn(hasDd);
  when(model.getAllTargets()).thenAnswer((_) => switch (scenario) {
        SecureBootScenarios.supported => [supported],
        SecureBootScenarios.noTpm => [noTpm],
        SecureBootScenarios.bios => [bios],
        SecureBootScenarios.thirdPartyDrivers => [thirdPartyDrivers],
        _ => [],
      });
  return model;
}

/// I could not find a documented list of valid permutations over GuidedCapability
/// and GuidedDisallowedCapabilityReason. Thus, this is a best-guess at permutations
/// we care about whilst allowing for easy addition.
enum SecureBootScenarios {
  supported,
  noTpm,
  bios,
  thirdPartyDrivers,
}

const supported = GuidedStorageTargetReformat(
  diskId: 'disk-vda',
  allowed: [GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED],
);

const noTpm = GuidedStorageTargetReformat(
  diskId: 'disk-vda',
  disallowed: [
    GuidedDisallowedCapability(
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        reason:
            GuidedDisallowedCapabilityReason.CORE_BOOT_ENCRYPTION_UNAVAILABLE,
        message: 'tpm required')
  ],
);

const bios = GuidedStorageTargetReformat(
  diskId: 'disk-vda',
  disallowed: [
    GuidedDisallowedCapability(
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        reason: GuidedDisallowedCapabilityReason.NOT_UEFI,
        message: 'uefi & secure boot required')
  ],
);

const thirdPartyDrivers = GuidedStorageTargetReformat(
  diskId: 'disk-vda',
  disallowed: [
    GuidedDisallowedCapability(
        capability: GuidedCapability.CORE_BOOT_UNENCRYPTED,
        reason: GuidedDisallowedCapabilityReason.THIRD_PARTY_DRIVERS,
        message: 'third party drivers incompatible')
  ],
);

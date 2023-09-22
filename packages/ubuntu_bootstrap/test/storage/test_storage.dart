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
export 'recovery_key/test_recovery_key.dart';
export 'security_key/test_security_key.dart';
export 'test_storage.mocks.dart';

@GenerateMocks([StorageModel])
StorageModel buildStorageModel({
  StorageType? type = StorageType.erase,
  GuidedCapability? guidedCapability = GuidedCapability.DIRECT,
  ProductInfo? productInfo,
  String? releaseNotesURL,
  List<OsProber>? existingOS,
  SecureBootScenarios? scenario,
  bool? canInstallAlongside,
  bool? canEraseDisk,
  bool? canManualPartition,
  bool? hasAdvancedFeatures,
  bool? hasBitLocker,
  bool? hasDirect,
  bool? hasLvm,
  bool? hasZfs,
  bool? hasTpm,
  bool? hasDd,
}) {
  final model = MockStorageModel();
  when(model.type).thenReturn(type);
  when(model.guidedCapability).thenReturn(guidedCapability);
  when(model.productInfo).thenReturn(productInfo ?? ProductInfo(name: ''));
  when(model.getReleaseNotesURL(any)).thenReturn(releaseNotesURL ?? '');
  when(model.existingOS).thenReturn(existingOS);
  when(model.canInstallAlongside).thenReturn(canInstallAlongside ?? false);
  when(model.canEraseDisk).thenReturn(canEraseDisk ?? true);
  when(model.canManualPartition).thenReturn(canManualPartition ?? true);
  when(model.hasAdvancedFeatures).thenReturn(hasAdvancedFeatures ?? true);
  when(model.hasBitLocker).thenReturn(hasBitLocker ?? false);
  when(model.hasDirect).thenReturn(hasDirect ?? true);
  when(model.hasLvm).thenReturn(hasLvm ?? true);
  when(model.hasZfs).thenReturn(hasZfs ?? true);
  when(model.hasTpm).thenReturn(hasTpm ?? false);
  when(model.hasDd).thenReturn(hasDd ?? false);
  when(model.getAllTargets()).thenAnswer((_) => switch (scenario) {
        SecureBootScenarios.supported => [Supported],
        SecureBootScenarios.noTpm => [NoTpm],
        SecureBootScenarios.bios => [Bios],
        SecureBootScenarios.thirdPartyDrivers => [ThirdPartyDrivers],
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

const Supported = GuidedStorageTargetReformat(
  diskId: 'disk-vda',
  allowed: [GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED],
  disallowed: [],
);

const NoTpm = GuidedStorageTargetReformat(
  diskId: 'disk-vda',
  allowed: [],
  disallowed: [
    GuidedDisallowedCapability(
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        reason:
            GuidedDisallowedCapabilityReason.CORE_BOOT_ENCRYPTION_UNAVAILABLE,
        message: 'tpm required')
  ],
);

const Bios = GuidedStorageTargetReformat(
  diskId: 'disk-vda',
  allowed: [],
  disallowed: [
    GuidedDisallowedCapability(
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        reason: GuidedDisallowedCapabilityReason.NOT_UEFI,
        message: 'uefi & secure boot required')
  ],
);

const ThirdPartyDrivers = GuidedStorageTargetReformat(
  diskId: 'disk-vda',
  allowed: [],
  disallowed: [
    GuidedDisallowedCapability(
        capability: GuidedCapability.CORE_BOOT_UNENCRYPTED,
        reason: GuidedDisallowedCapabilityReason.THIRD_PARTY_DRIVERS,
        message: 'third party drivers incompatible')
  ],
);

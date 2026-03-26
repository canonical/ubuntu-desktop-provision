import 'package:collection/collection.dart';
import 'package:subiquity_client/subiquity_client.dart';

extension GuidedCapabilityX on GuidedCapability {
  GuidedCapability clean() => switch (this) {
// We shouldn't send CORE_BOOT_PREFER_ENCRYPTED to the server
// See https://github.com/canonical/subiquity/blob/f759d19336c5cc33545755095fcc2aced3ef6a9f/subiquity/common/types.py#L354-L356
        GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED =>
          GuidedCapability.CORE_BOOT_ENCRYPTED,
        _ => this,
      };
}

extension GuidedStorageTargetX on GuidedStorageTarget {
  String? get tpmDisallowedReason => disallowed
      .firstWhereOrNull(
        (e) =>
            e.capability == GuidedCapability.CORE_BOOT_ENCRYPTED ||
            e.capability == GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
      )
      ?.message;
}

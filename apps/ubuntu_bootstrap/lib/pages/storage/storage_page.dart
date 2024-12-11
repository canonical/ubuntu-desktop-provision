import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_dialogs.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

export 'storage_model.dart'
    show
        StorageType,
        StorageTypeAlongside,
        StorageTypeErase,
        StorageTypeEraseInstall,
        StorageTypeManual;

/// Select between guided and manual partitioning.
class StoragePage extends ConsumerWidget with ProvisioningPage {
  StoragePage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(storageModelProvider.notifier).init().then((_) => true);
  }

  static String formatAlongside(
    UbuntuBootstrapLocalizations lang,
    String product,
    List<OsProber> os,
  ) {
    switch (os.length) {
      case 0:
        return lang.installationTypeAlongsideUnknown(product);
      case 1:
        return lang.installationTypeAlongside(product, os.single.long);
      case 2:
        return os.hasDuplicates
            ? lang.installationTypeAlongsideMulti(product)
            : lang.installationTypeAlongsideDual(
                product,
                os.first.long,
                os.last.long,
              );
      default:
        return lang.installationTypeAlongsideMulti(product);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(storageModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final flavor = ref.watch(flavorProvider);
    final theme = Theme.of(context);

    return HorizontalPage(
      windowTitle: lang.installationTypeTitle,
      title: lang.installationTypeHeader(flavor.displayName),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            onNext: model.save,
            enabled: model.canEraseDisk ||
                model.canInstallAlongside ||
                model.canManualPartition,
            // If the user returns back to select another installation type, the
            // previously configured storage must be reset to make all guided
            // partitioning targets available.
            onReturn: model.resetStorage,
          ),
        ],
      ),
      children: [
        if (model.canInstallAlongside || model.hasBitLocker)
          _InstallationTypeTile(
            storageType: StorageType.alongside,
            title: Text(
              formatAlongside(
                lang,
                flavor.displayName,
                model.existingOS ?? [],
              ),
            ),
            subtitle: Text(
              lang.installationTypeAlongsideInfo(flavor.displayName),
              style: theme.textTheme.bodySmall,
            ),
          ),
        if (model.canEraseAndInstall)
          ...model.getEraseInstallTargets().map(
                (target) => _InstallationTypeTile(
                  storageType: StorageTypeEraseInstall(target),
                  title: Text(
                    lang.installationTypeEraseAndInstall(
                      model.getEraseInstallOsName(target) ?? 'unknown',
                      flavor.displayName,
                    ),
                  ),
                  subtitle: Text(
                    lang.installationTypeEraseAndInstallInfo(
                      model.getEraseInstallOsName(target) ?? 'unknown',
                    ),
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
        if (model.canEraseDisk) ...[
          _InstallationTypeTile(
            storageType: StorageType.erase,
            title: Text(lang.installationTypeErase(flavor.displayName)),
            subtitle: Text(
              lang.installationTypeEraseInfo,
              style: theme.textTheme.bodySmall,
            ),
            trailing: model.hasAdvancedFeatures
                ? Padding(
                    padding: const EdgeInsets.only(top: kWizardSpacing),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: model.type == StorageType.erase
                              ? () => showAdvancedFeaturesDialog(context, model)
                              : null,
                          child: Text(lang.installationTypeAdvancedLabel),
                        ),
                        const SizedBox(width: kWizardSpacing),
                        Flexible(
                          child: Text(
                            model.guidedCapability?.localize(lang) ?? '',
                          ),
                        ),
                      ],
                    ),
                  )
                : null,
          ),
        ],
        if (model.canManualPartition)
          _InstallationTypeTile(
            storageType: StorageType.manual,
            title: Text(lang.installationTypeManual),
            subtitle: Text(
              lang.installationTypeManualInfo(flavor.displayName),
              style: theme.textTheme.bodySmall,
            ),
          ),
      ],
    );
  }
}

extension _GuidedCapabilityL10n on GuidedCapability {
  String localize(UbuntuBootstrapLocalizations lang) {
    switch (this) {
      case GuidedCapability.LVM:
        return lang.installationTypeLVMSelected;
      case GuidedCapability.LVM_LUKS:
        return lang.installationTypeLVMEncryptionSelected;
      case GuidedCapability.ZFS:
        return lang.installationTypeZFSSelected;
      case GuidedCapability.ZFS_LUKS_KEYSTORE:
        return lang.installationTypeZFSEncryptionSelected;
      case GuidedCapability.CORE_BOOT_ENCRYPTED:
      case GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED:
        return lang.installationTypeTPMSelected;
      default:
        return lang.installationTypeNoneSelected;
    }
  }
}

extension _OsProberList on List<OsProber> {
  /// Whether the system has any OS installed multiple times.
  bool get hasDuplicates =>
      length > 1 && length != map((os) => os.long).toSet().length;
}

class _InstallationTypeTile extends ConsumerWidget {
  const _InstallationTypeTile({
    required this.storageType,
    required this.title,
    this.subtitle,
    this.trailing,
  });

  final StorageType storageType;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(storageModelProvider);

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: YaruRadioListTile(
        title: title,
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [subtitle, trailing].whereNotNull().toList(),
        ),
        contentPadding: kWizardTilePadding,
        isThreeLine: true,
        value: storageType,
        groupValue: model.type,
        onChanged: (value) => model.type = value,
      ),
    );
  }
}

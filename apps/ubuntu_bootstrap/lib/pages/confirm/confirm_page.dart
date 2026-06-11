import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/app/installer_model.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_bootstrap/pages/confirm/confirm_model.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';
import 'package:ubuntu_bootstrap/pages/source/source_x.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/storage_icon.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_page.dart';
import 'package:ubuntu_bootstrap/widgets.dart';
import 'package:ubuntu_bootstrap/widgets/info_badge.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class AccessibleSummaryRow extends StatelessWidget {
  const AccessibleSummaryRow({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Focus(
      child: Semantics(
        textField: true,
        readOnly: true,
        child: child,
      ),
    );
  }
}

class ConfirmPage extends ConsumerWidget with ProvisioningPage {
  const ConfirmPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(confirmModelProvider).init().then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(confirmModelProvider);
    final autoinstallNotifier = ref.read(autoinstallModelProvider.notifier);
    final status = ref.watch(installerModelProvider.select((m) => m.status));

    return HorizontalPage(
      windowTitle: lang.confirmPageTitle,
      title: lang.confirmHeader,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            highlighted: true,
            label: lang.confirmInstallButton,
            onNext: () {
              // start installation after the page transition (#1393)
              Future.delayed(kThemeAnimationDuration).then((_) async {
                await model.markNetworkConfigured();
                await model.startInstallation();
              });
            },
          ),
        ],
      ),
      children: [
        if (model.hasBitLocker) ...[
          const BitlockerInfoBox(yaruInfoType: YaruInfoType.warning),
          const SizedBox(height: kWizardSpacing),
        ],
        if (status?.interactive == false &&
            autoinstallNotifier.getType() == AutoinstallType.landscape) ...[
          YaruInfoBox(
            yaruInfoType: YaruInfoType.success,
            title: Text(lang.landscapeConfirmPageSuccessInfoTitle),
            titleTextStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  height: 1.3,
                ),
            child: Text(
              lang.landscapeConfirmPageSuccessInfoContent,
            ),
          ),
          const SizedBox(height: kWizardSpacing),
        ],
        Row(
          children: [
            Expanded(
              child: YaruBorderContainer(
                constraints: const BoxConstraints(minHeight: 300),
                padding: kWizardTilePadding,
                borderRadius: kWizardBorderRadius,
                color: Theme.of(context).colorScheme.primaryContainer,
                child: status?.interactive == false
                    ? FutureBuilder(
                        future: autoinstallNotifier.getFileContent(),
                        builder: (_, fileContentSnapShot) {
                          if (fileContentSnapShot.hasData) {
                            return Text(fileContentSnapShot.data ?? '');
                          } else if (fileContentSnapShot.hasError) {
                            return Text(fileContentSnapShot.error.toString());
                          } else {
                            return const YaruCircularProgressIndicator();
                          }
                        },
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _SummarySection(
                            title: lang.confirmSectionGeneralTitle,
                            entries: {
                              lang.confirmEntryDiskSetup: _DiskSetup(),
                              lang.confirmEntryInstallationDisk:
                                  _InstallationDisk(),
                              lang.confirmEntryApplications: _Applications(),
                            },
                          ),
                          const SizedBox(height: kWizardSpacing),
                          _SummarySection(
                            title: lang.confirmSectionSecurityAndMoreTitle,
                            entries: {
                              lang.confirmEntryDiskEncryption:
                                  _DiskEncryption(),
                              lang.confirmEntryProprietarySoftware: Consumer(
                                builder: (_, ref, __) => _ProprietarySoftware(),
                              ),
                            },
                          ),
                          const SizedBox(height: kWizardSpacing),
                          Focus(
                            child: Semantics(
                              // TODO: Re-enable `header: true` once upstream Flutter Linux AT-SPI bug is fixed. https://github.com/flutter/flutter/issues/184568
                              child: Text(
                                lang.confirmPartitionsTitle,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                          ),
                          const SizedBox(height: kWizardSpacing / 2),
                          const _PartitionTable(),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SummarySection extends StatelessWidget {
  const _SummarySection({required this.title, required this.entries});
  final String title;
  final Map<String, Widget> entries;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Focus(
          child: Semantics(
            // TODO: Re-enable `header: true` once upstream Flutter Linux AT-SPI bug is fixed. https://github.com/flutter/flutter/issues/184568
            child: Text(title, style: Theme.of(context).textTheme.titleMedium),
          ),
        ),
        const SizedBox(height: 8),
        for (final entry in entries.entries)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: AccessibleSummaryRow(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text('${entry.key}: ')),
                  Expanded(child: entry.value),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class _PartitionTable extends ConsumerWidget {
  const _PartitionTable();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(confirmModelProvider);
    final rows = <Widget>[];

    for (final entry in model.partitions.entries) {
      for (final partition in entry.value) {
        final original = model.getOriginalPartition(
          entry.key,
          partition.number ?? -1,
        );
        if (model.guidedTarget is GuidedStorageTargetEraseInstall &&
            !(partition.preserve ?? false) &&
            original != null) {
          rows.add(
            _PartitionRow(
              sysname: entry.key,
              partition: partition,
              original: original,
              productInfo: model.productInfo,
              showOriginal: true,
            ),
          );
          rows.add(Divider(height: 1, color: Theme.of(context).dividerColor));
        }
        rows.add(
          _PartitionRow(
            sysname: entry.key,
            partition: partition,
            original: original,
            productInfo: model.productInfo,
          ),
        );
        rows.add(Divider(height: 1, color: Theme.of(context).dividerColor));
      }
    }

    if (rows.isNotEmpty) rows.removeLast(); // Remove the trailing divider

    return Column(children: rows);
  }
}

class _PartitionRow extends StatelessWidget {
  const _PartitionRow({
    required this.sysname,
    required this.partition,
    required this.productInfo,
    this.original,
    this.showOriginal = false,
  });

  final String sysname;
  final Partition partition;
  final ProductInfo productInfo;
  final Partition? original;
  final bool showOriginal;

  @override
  Widget build(BuildContext context) {
    return AccessibleSummaryRow(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _PartitionLabel(
                sysname,
                partition,
                original,
                productInfo,
                showOriginal,
              ),
            ),
            Expanded(
              child: _PartitionProperties(
                sysname,
                partition,
                original,
                productInfo,
                showOriginal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PartitionProperties extends StatelessWidget {
  const _PartitionProperties(
    this.sysname,
    this.partition,
    this.original,
    this.productInfo,
    this.showOriginal,
  );

  final String sysname;
  final Partition partition;
  final Partition? original;
  final ProductInfo productInfo;
  final bool showOriginal;

  String? properties(BuildContext context) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final mount = partition.mount ?? partition.effectiveMount;
    final format = partition.format ?? partition.effectiveFormat;
    final preserve = partition.preserve ?? false;
    final wipe = partition.wipe != null;

    if (showOriginal && !preserve) {
      return l10n.confirmTableErased;
    }
    if (partition.resize ?? false) {
      return l10n.confirmTableResized(
        context.formatByteSize(original?.size ?? 0),
        context.formatByteSize(partition.size ?? 0),
      );
    } else if (!preserve && (mount?.isNotEmpty ?? false) && format != null) {
      return l10n.confirmTableCreatedFormattedMounted(format, mount!);
    } else if (wipe && (mount?.isNotEmpty ?? false) && format != null) {
      return l10n.confirmTableFormattedMounted(format, mount!);
    } else if (wipe && format != null) {
      return l10n.confirmTableFormatted(format);
    } else if (mount?.isNotEmpty ?? false) {
      return l10n.confirmTableMounted(mount!);
    } else if (preserve) {
      return l10n.confirmTableUnchanged;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Text(properties(context) ?? '');
  }
}

class _PartitionLabel extends StatelessWidget {
  const _PartitionLabel(
    this.sysname,
    this.partition,
    this.original,
    this.productInfo,
    this.showOriginal,
  );

  final String sysname;
  final Partition partition;
  final Partition? original;
  final ProductInfo productInfo;
  final bool showOriginal;

  @override
  Widget build(BuildContext context) {
    final String? name;
    final mount = partition.mount ?? partition.effectiveMount;

    if (showOriginal) {
      name = original?.os?.long ?? original?.name ?? '';
    } else if (!(partition.preserve ?? false) && mount == '/') {
      name = productInfo.toString();
    } else {
      name = partition.os?.long ?? partition.name ?? '';
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2, right: 4),
          child: SizedBox.square(
            dimension: 16,
            child: ExcludeSemantics(child: StorageIcon(name: name)),
          ),
        ),
        Flexible(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: name),
                const WidgetSpan(child: SizedBox(width: 4)),
                WidgetSpan(
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: Baseline(
                    baseline: 15,
                    baselineType: TextBaseline.alphabetic,
                    child: InfoBadge(
                      title: partition.sysname,
                      color: Theme.of(context).colorScheme.surfaceContainerHigh,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}

class _DiskSetup extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final confirmModel = ref.watch(confirmModelProvider);
    final flavor = ref.watch(flavorProvider);

    return Text(
      switch (ref.watch(storageModelProvider.select((s) => s.type))) {
        StorageType.alongside => StoragePage.formatAlongside(
            lang,
            flavor.displayName,
            confirmModel.existingOS ?? [],
          ),
        StorageType.erase => lang.installationTypeErase(flavor.displayName),
        StorageType.manual => lang.installationTypeManual,
        StorageTypeEraseInstall(target: final target) =>
          lang.installationTypeEraseAndInstall(
            confirmModel.getEraseInstallOsName(target) ?? 'unknown',
            flavor.displayName,
          ),
        _ => '',
      },
    );
  }
}

class _InstallationDisk extends ConsumerWidget {
  static String _prettyFormatDisk(Disk disk) {
    final fullName = <String?>[
      disk.model,
      disk.vendor,
    ].where((p) => p?.isNotEmpty ?? false).join(' ');
    return '$fullName ${disk.sysname}';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(confirmModelProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final disk in model.modifiedDisks)
          Text(
            _prettyFormatDisk(disk),
            key: ValueKey(disk),
          ),
      ],
    );
  }
}

class _Applications extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    return Text(
      ref.watch(
        sourceModelProvider.select(
          (model) =>
              model.sources
                  .singleWhereOrNull((source) => source.id == model.sourceId)
                  ?.localizedTitle(lang) ??
              '',
        ),
      ),
    );
  }
}

class _DiskEncryption extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(confirmModelProvider);
    return Text(
      switch (model.guidedCapability) {
        GuidedCapability.LVM_LUKS => lang.confirmDiskEncryptionLVM,
        GuidedCapability.ZFS_LUKS_KEYSTORE => lang.confirmDiskEncryptionZFS,
        GuidedCapability.CORE_BOOT_ENCRYPTED => lang.confirmDiskEncryptionTPM,
        _ => lang.confirmDiskEncryptionNone,
      },
    );
  }
}

class _ProprietarySoftware extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    return Text(
      switch (ref.watch(
        sourceModelProvider.select(
          (model) => (
            codecs: model.installCodecs,
            drivers: model.installDrivers,
          ),
        ),
      )) {
        (codecs: true, drivers: true) =>
          lang.confirmProprietarySoftwareCodecsDrivers,
        (codecs: true, drivers: false) => lang.confirmProprietarySoftwareCodecs,
        (codecs: false, drivers: true) =>
          lang.confirmProprietarySoftwareDrivers,
        _ => 'None',
      },
    );
  }
}

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/app/installer_model.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_bootstrap/pages/confirm/confirm_model.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';
import 'package:ubuntu_bootstrap/pages/source/source_x.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_page.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

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
        YaruBorderContainer(
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
                        lang.confirmEntryInstallationDisk: _InstallationDisk(),
                        lang.confirmEntryApplications: _Applications(),
                      },
                    ),
                    const SizedBox(height: kWizardSpacing),
                    _SummarySection(
                      title: lang.confirmSectionSecurityAndMoreTitle,
                      entries: {
                        lang.confirmEntryDiskEncryption: _DiskEncryption(),
                        lang.confirmEntryProprietarySoftware: Consumer(
                          builder: (_, ref, __) => _ProprietarySoftware(),
                        ),
                      },
                    ),
                    const SizedBox(height: kWizardSpacing),
                    Text(
                      lang.confirmPartitionsTitle,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: kWizardSpacing / 2),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (final entry in model.partitions.entries)
                          for (final partition in entry.value)
                            _PartitionLabel(
                              entry.key,
                              partition,
                              model.getOriginalPartition(
                                entry.key,
                                partition.number ?? -1,
                              ),
                            ),
                      ],
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}

class _PartitionLabel extends StatelessWidget {
  _PartitionLabel(this.sysname, this.partition, this.original)
      : super(key: ValueKey(partition));

  final String sysname;
  final Partition partition;
  final Partition? original;

  String formatPartition(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    if (partition.resize ?? false) {
      return lang.confirmPartitionResize(
        partition.sysname,
        context.formatByteSize(original?.size ?? 0),
        context.formatByteSize(partition.size ?? 0),
      );
    } else if (partition.wipe != null &&
        (partition.mount?.isNotEmpty ?? false)) {
      return lang.confirmPartitionFormatMount(
        partition.sysname,
        partition.format ?? '',
        partition.mount ?? '',
      );
    } else if (partition.wipe != null &&
        (partition.format?.isNotEmpty ?? false)) {
      return lang.confirmPartitionFormat(
        partition.sysname,
        partition.format ?? '',
      );
    } else if (partition.mount?.isNotEmpty ?? false) {
      return lang.confirmPartitionMount(
        partition.sysname,
        partition.mount ?? '',
      );
    } else {
      assert(partition.preserve == false);
      return lang.confirmPartitionCreate(partition.sysname);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Html(
      data: formatPartition(context),
      style: {'body': Style(margin: Margins.zero)},
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
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: kWizardSpacing / 2),
        for (final entry in entries.entries)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(entry.key),
              const Spacer(),
              Flexible(
                flex: 2,
                child: entry.value,
              ),
            ],
          ),
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
      textAlign: TextAlign.end,
    );
  }
}

class _InstallationDisk extends ConsumerWidget {
  static String _prettyFormatDisk(Disk disk) {
    final fullName = <String?>[
      disk.model,
      disk.vendor,
    ].where((p) => p?.isNotEmpty ?? false).join(' ');
    return '$fullName <b>${disk.sysname}</b>';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(confirmModelProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        for (final disk in model.disks)
          Html(
            data: _prettyFormatDisk(disk),
            style: {
              'body': Style(
                margin: Margins.zero,
                textAlign: TextAlign.end,
              ),
            },
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

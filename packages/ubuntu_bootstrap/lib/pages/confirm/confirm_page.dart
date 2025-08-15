// Copyright (C) 2025 Akshay Waghmare under the supervision of Zendalona

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/installer/installer_model.dart';
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

class ConfirmPage extends ConsumerStatefulWidget with ProvisioningPage {
  const ConfirmPage({super.key});

  @override
  ConsumerState<ConfirmPage> createState() => _ConfirmPageState();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(confirmModelProvider).init().then((_) => true);
  }
}

class _ConfirmPageState extends ConsumerState<ConfirmPage> {
  // Focus node for initial focus
  final FocusNode _initialFocusNode = FocusNode();
  final FocusNode _contentFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    
    // Announce the page when it loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      
      final lang = UbuntuBootstrapLocalizations.of(context);
      
      // Use PageAnnouncer for consistent semantics handling
      PageAnnouncer.announcePageLoad(
        title: lang.confirmHeader,
        instructions: lang.confirmReviewChoices,
      );
      
      // Announce summary after a delay
      Future.delayed(const Duration(milliseconds: 800), () {
        if (!mounted) return;
        _announceSummary();
      });
      
      // Set focus on content
      Future.delayed(const Duration(milliseconds: 600), () {
        if (mounted) {
          _contentFocusNode.requestFocus();
        }
      });
    });
  }

  void _announceSummary() {
    if (!mounted) return;
    
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.read(confirmModelProvider);
    final storageModel = ref.read(storageModelProvider);
    final sourceModel = ref.read(sourceModelProvider);
    final flavor = ref.read(flavorProvider);
    
    // Build summary text
    final summary = StringBuffer();
    
    // Disk setup
    summary.write('Installation type: ');
    switch (storageModel.type) {
      case StorageType.alongside:
        summary.write(StoragePage.formatAlongside(
          lang,
          flavor.displayName,
          model.existingOS ?? [],
        ));
        break;
      case StorageType.erase:
        summary.write(lang.installationTypeErase(flavor.displayName));
        break;
      case StorageType.manual:
        summary.write(lang.installationTypeManual);
        break;
      case null:
        summary.write('Not selected');
        break;
    }
    summary.write('. ');
    
    // Installation disk
    if (model.disks.isNotEmpty) {
      summary.write('Installation disk: ');
      for (final disk in model.disks) {
        summary.write('${disk.model ?? ""} ${disk.vendor ?? ""} ${disk.sysname}. ');
      }
    }
    
    // Applications
    final source = sourceModel.sources
        .singleWhereOrNull((source) => source.id == sourceModel.sourceId);
    if (source != null) {
      summary.write('Applications: ${source.localizedTitle(lang)}. ');
    }
    
    // Encryption
    summary.write('Disk encryption: ');
    switch (model.guidedCapability) {
      case GuidedCapability.LVM_LUKS:
        summary.write(lang.confirmDiskEncryptionLVM);
        break;
      case GuidedCapability.ZFS_LUKS_KEYSTORE:
        summary.write(lang.confirmDiskEncryptionZFS);
        break;
      case GuidedCapability.CORE_BOOT_ENCRYPTED:
        summary.write(lang.confirmDiskEncryptionTPM);
        break;
      default:
        summary.write(lang.confirmDiskEncryptionNone);
    }
    summary.write('. ');
    
    // Proprietary software
    summary.write('Proprietary software: ');
    if (sourceModel.installCodecs && sourceModel.installDrivers) {
      summary.write(lang.confirmProprietarySoftwareCodecsDrivers);
    } else if (sourceModel.installCodecs) {
      summary.write(lang.confirmProprietarySoftwareCodecs);
    } else if (sourceModel.installDrivers) {
      summary.write(lang.confirmProprietarySoftwareDrivers);
    } else {
      summary.write(lang.confirmProprietarySoftwareNone);
    }
    
    SemanticsService.announce(
      summary.toString(),
      TextDirection.ltr,
    );
  }

  @override
  void dispose() {
    _initialFocusNode.dispose();
    _contentFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(confirmModelProvider);
    final autoinstallModel = ref.watch(autoinstallModelProvider);
    final status = ref.watch(installerModelProvider.select((m) => m.status));

    return Focus(
      focusNode: _initialFocusNode,
      child: Semantics(
        label: lang.confirmPageAccessibilityLabel,
        container: true,
        child: HorizontalPage(
          windowTitle: lang.confirmPageTitle,
          title: lang.confirmHeader,
          bottomBar: WizardBar(
            leading: Semantics(
              button: true,
              label: lang.backButtonLabel,
              child: const BackWizardButton(),
            ),
            trailing: [
              Semantics(
                button: true,
                label: lang.confirmInstallButtonLabel,
                child: NextWizardButton(
                  highlighted: true,
                  label: lang.confirmInstallButton,
                  onNext: () {
                    SemanticsService.announce(
                      lang.confirmStartingInstallation,
                      TextDirection.ltr,
                    );
                    // start installation after the page transition (#1393)
                    Future.delayed(kThemeAnimationDuration).then((_) async {
                      await model.markNetworkConfigured();
                      await model.startInstallation();
                    });
                  },
                ),
              ),
            ],
          ),
          children: [
            // Hidden live region for announcements
            Semantics(
              liveRegion: true,
              hidden: true,
              child: Container(
                height: 0,
                child: Text(
                  lang.confirmReviewChoices,
                  style: const TextStyle(fontSize: 0),
                ),
              ),
            ),
            Focus(
              focusNode: _contentFocusNode,
              child: Semantics(
                label: lang.confirmSummaryLabel,
                container: true,
                focusable: true,
                child: YaruBorderContainer(
                  padding: kWizardTilePadding,
                  borderRadius: kWizardBorderRadius,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: status?.interactive == false
                      ? FutureBuilder(
                          future: autoinstallModel.getFileContent(),
                          builder: (_, fileContentSnapShot) {
                            if (fileContentSnapShot.hasData) {
                              return Semantics(
                                label: lang.confirmAutoinstallConfig,
                                child: Text(fileContentSnapShot.data ?? ''),
                              );
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
                            _AccessibleSummarySection(
                              title: lang.confirmSectionGeneralTitle,
                              entries: {
                                lang.confirmEntryDiskSetup: _DiskSetup(),
                                lang.confirmEntryInstallationDisk: _InstallationDisk(),
                                lang.confirmEntryApplications: _Applications(),
                              },
                            ),
                            const SizedBox(height: kWizardSpacing),
                            _AccessibleSummarySection(
                              title: lang.confirmSectionSecurityAndMoreTitle,
                              entries: {
                                lang.confirmEntryDiskEncryption: _DiskEncryption(),
                                lang.confirmEntryProprietarySoftware: Consumer(
                                  builder: (_, ref, __) => _ProprietarySoftware(),
                                ),
                              },
                            ),
                            const SizedBox(height: kWizardSpacing),
                            Semantics(
                              header: true,
                              child: Text(
                                lang.confirmPartitionsTitle,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            const SizedBox(height: kWizardSpacing / 2),
                            Semantics(
                              label: lang.confirmPartitionChangesLabel,
                              container: true,
                              child: Column(
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
                            ),
                          ],
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
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

class _AccessibleSummarySection extends StatelessWidget {
  const _AccessibleSummarySection({required this.title, required this.entries});
  final String title;
  final Map<String, Widget> entries;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: title,
      container: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Semantics(
            header: true,
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: kWizardSpacing / 2),
          for (final entry in entries.entries)
            Semantics(
              label: '${entry.key}:',
              child: Row(
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
            ),
        ],
      ),
    );
  }
}

class _AccessibleDiskSetup extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final confirmModel = ref.watch(confirmModelProvider);
    final setupText = switch (ref.watch(storageModelProvider.select((s) => s.type))) {
      StorageType.alongside => StoragePage.formatAlongside(
          lang,
          ref.watch(flavorProvider).displayName,
          confirmModel.existingOS ?? [],
        ),
      StorageType.erase =>
        lang.installationTypeErase(ref.watch(flavorProvider).displayName),
      StorageType.manual => lang.installationTypeManual,
      null || _ => '',
    };
    
    return Semantics(
      label: setupText,
      child: Text(
        setupText,
        textAlign: TextAlign.end,
      ),
    );
  }
}

class _AccessibleInstallationDisk extends ConsumerWidget {
  static String _prettyFormatDisk(Disk disk) {
    final fullName = <String?>[
      disk.model,
      disk.vendor,
    ].where((p) => p?.isNotEmpty ?? false).join(' ');
    return '$fullName <b>${disk.sysname}</b>';
  }

  static String _semanticFormatDisk(Disk disk) {
    final fullName = <String?>[
      disk.model,
      disk.vendor,
    ].where((p) => p?.isNotEmpty ?? false).join(' ');
    return '$fullName ${disk.sysname}';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(confirmModelProvider);
    final diskDescriptions = model.disks.map(_semanticFormatDisk).join(', ');
    
    return Semantics(
      label: diskDescriptions,
      child: Column(
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
      ),
    );
  }
}

class _AccessibleApplications extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final appText = ref.watch(
      sourceModelProvider.select(
        (model) =>
            model.sources
                .singleWhereOrNull((source) => source.id == model.sourceId)
                ?.localizedTitle(lang) ??
            '',
      ),
    );
    
    return Semantics(
      label: appText,
      child: Text(appText),
    );
  }
}

class _AccessibleDiskEncryption extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(confirmModelProvider);
    final encryptionText = switch (model.guidedCapability) {
      GuidedCapability.LVM_LUKS => lang.confirmDiskEncryptionLVM,
      GuidedCapability.ZFS_LUKS_KEYSTORE => lang.confirmDiskEncryptionZFS,
      GuidedCapability.CORE_BOOT_ENCRYPTED => lang.confirmDiskEncryptionTPM,
      _ => lang.confirmDiskEncryptionNone,
    };
    
    return Semantics(
      label: encryptionText,
      child: Text(encryptionText),
    );
  }
}

class _DiskSetup extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final confirmModel = ref.watch(confirmModelProvider);
    return Text(
      switch (ref.watch(storageModelProvider.select((s) => s.type))) {
        StorageType.alongside => StoragePage.formatAlongside(
            lang,
            ref.watch(flavorProvider).displayName,
            confirmModel.existingOS ?? [],
          ),
        StorageType.erase =>
          lang.installationTypeErase(ref.watch(flavorProvider).displayName),
        StorageType.manual => lang.installationTypeManual,
        null || _ => '',
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
        _ => lang.confirmProprietarySoftwareNone,
      },
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_reformat/guided_reformat_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/storage_icon.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

/// Select a storage for guided reformatting.
class GuidedReformatPage extends ConsumerWidget {
  const GuidedReformatPage({super.key});

  static Future<bool> load(WidgetRef ref) {
    return ref.read(guidedReformatModelProvider.notifier).init();
  }

  String prettyFormatPartition(Disk disk, Partition partition) {
    return '${disk.sysname}${partition.number}';
  }

  /// Formats a disk in a pretty way e.g. "sda ATA Maxtor (123 GB)"
  String prettyFormatDisk(BuildContext context, Disk disk) {
    final fullName = <String?>[
      disk.model,
      disk.vendor,
    ].where((p) => p?.isNotEmpty ?? false).join(' ');

    final size = context.formatByteSize(disk.size);
    return '${disk.sysname} - $size $fullName';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(guidedReformatModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final flavor = ref.watch(flavorProvider);
    return HorizontalPage(
      windowTitle: lang.selectGuidedStoragePageTitle(flavor.displayName),
      title:
          lang.guidedStoragePageHeader(ref.watch(flavorProvider).displayName),
      bottomBar: WizardBar(
        // If the user returns back to select another disk or another method,
        // the previously configured guided storage must be reset to avoid
        // multiple disks being configured for guided partitioning.
        leading: BackWizardButton(onBack: model.resetGuidedStorage),
        trailing: [
          NextWizardButton(onNext: model.saveGuidedStorage),
        ],
      ),
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(lang.selectGuidedStorageDriveDropdownLabel),
            const SizedBox(width: kWizardSpacing),
            Expanded(
              child: MenuButtonBuilder<int>(
                values: List.generate(model.storages.length, (i) => i),
                selected: model.selectedIndex,
                onSelected: model.selectStorage,
                itemBuilder: (context, index, child) {
                  final disk = model.getDisk(index);
                  return disk != null
                      ? Text(prettyFormatDisk(context, disk),
                          key: ValueKey(index))
                      : const SizedBox.shrink();
                },
              ),
            )
          ],
        ),
        const SizedBox(height: kWizardSpacing * 2),
        if (model.selectedDisk != null)
          YaruBorderContainer(
            padding: kWizardTilePadding,
            borderRadius: kWizardBorderRadius,
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox.square(
                      dimension: 32,
                      child: StorageIcon(
                        name: flavor.displayName,
                        useCustomIcon: true,
                      ),
                    ),
                    const SizedBox(width: kWizardBarSpacing),
                    Text(
                      flavor.displayName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(width: kWizardSpacing),
                    Chip(
                      label: Text(model.selectedDisk!.sysname),
                      shape: const StadiumBorder(),
                    ),
                    const Spacer(),
                    Text(
                      context.formatByteSize(
                        model.selectedDisk?.size ?? 0,
                        precision: 1,
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

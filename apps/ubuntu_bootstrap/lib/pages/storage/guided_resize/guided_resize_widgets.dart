import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/guided_resize_model.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class StorageSelector extends ConsumerWidget {
  const StorageSelector({
    required this.count,
    super.key,
    this.selectedIndex,
    this.onSelected,
  });

  final int count;
  final int? selectedIndex;
  final ValueChanged<int?>? onSelected;

  static String formatPartition(
    BuildContext context,
    Partition? partition,
  ) {
    // "sda1 - Ubuntu 22.04 LTS - 123 GB"
    final parts = [
      partition?.sysname,
      partition?.os?.long ?? partition?.format,
      if (partition?.size != null) context.formatByteSize(partition!.size!),
    ];
    return parts.whereNotNull().join(' - ');
  }

  static String formatStorage(BuildContext context, WidgetRef ref, int index) {
    final model = ref.read(guidedResizeModelProvider);
    final partition = model.getPartition(index);

    return formatPartition(context, partition);
  }

  static List<MenuButtonEntry<int>> bitLockerEntries(
    BuildContext context,
    WidgetRef ref,
  ) {
    final model = ref.read(guidedResizeModelProvider);
    return model.bitLockerPartitions
        .map(
          (partition) => MenuButtonEntry(
            value: -1,
            enabled: false,
            child: Text(formatPartition(context, partition)),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    return Row(
      children: <Widget>[
        Text(lang.selectGuidedStoragePartitionDropdownLabel),
        const SizedBox(width: kWizardSpacing),
        Expanded(
          child: MenuButtonBuilder<int>(
            entries: [
              ...List.generate(count, (index) => index)
                  .map((i) => MenuButtonEntry(value: i)),
              ...bitLockerEntries(context, ref),
            ],
            selected: selectedIndex != null &&
                    selectedIndex! >= 0 &&
                    selectedIndex! < count
                ? selectedIndex
                : null,
            onSelected: onSelected,
            itemBuilder: (context, index, child) => Text(
              formatStorage(context, ref, index),
              key: ValueKey(index),
            ),
          ),
        ),
      ],
    );
  }
}

class HiddenPartitionLabel extends StatelessWidget {
  const HiddenPartitionLabel({
    required this.partitions,
    required this.onTap,
    super.key,
  });

  final List<Partition> partitions;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final hidden = partitions.length - 1;
    if (hidden <= 1) {
      return const SizedBox.shrink();
    }

    final lang = UbuntuBootstrapLocalizations.of(context);
    return Html(
      data: lang.installAlongsideHiddenPartitions(hidden, ''),
      style: {
        'body': Style(
          margin: Margins.zero,
          fontSize: FontSize(
            Theme.of(context).textTheme.bodySmall!.fontSize!,
          ),
        ),
        'a': Style(color: Theme.of(context).colorScheme.link),
      },
      onLinkTap: (url, _, __) => onTap(),
    );
  }
}

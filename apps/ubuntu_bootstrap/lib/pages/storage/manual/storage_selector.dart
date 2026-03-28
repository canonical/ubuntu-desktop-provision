import 'package:flutter/material.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';

class StorageSelector extends StatelessWidget {
  const StorageSelector({
    required this.storages,
    required this.onSelected,
    super.key,
    this.title,
    this.selected,
    this.enabled,
  });

  final String? title;
  final int? selected;
  final List<Disk> storages;
  final ValueChanged<int?> onSelected;
  final bool Function(Disk disk)? enabled;

  @override
  Widget build(BuildContext context) {
    final selectedValue =
        selected != null && selected! >= 0 && selected! < storages.length
            ? _prettyFormatStorage(storages[selected!], context)
            : '';
    Widget selector = MenuButtonBuilder<int>(
      entries: List.generate(
        storages.length,
        (index) => MenuButtonEntry(
          value: index,
          enabled: enabled?.call(storages[index]) ?? true,
        ),
      ),
      selected: selected,
      onSelected: onSelected,
      itemBuilder: (context, index, _) {
        return Text(
          _prettyFormatStorage(storages[index], context),
          key: ValueKey(index),
        );
      },
      decoration: InputDecoration(labelText: title),
    );
    if (title != null) {
      selector = Semantics(
        label: title,
        value: selectedValue,
        button: true,
        child: selector,
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        selector,
      ],
    );
  }

  String _prettyFormatStorage(Disk storage, BuildContext context) {
    final fullName = [
      storage.model,
      storage.vendor,
    ].where((p) => p?.isNotEmpty ?? false).join(' ');
    return '${storage.sysname} $fullName (${context.formatByteSize(storage.size)})';
  }
}

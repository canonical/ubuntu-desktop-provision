import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/storage_columns.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/storage_types.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:yaru/yaru.dart';

typedef CanSelectStorage = bool Function(int disk, [int object]);
typedef IsStorageSelected = bool Function(int disk, [int object]);
typedef OnStorageSelected = void Function(int disk, [int object]);

class StorageTable extends StatefulWidget {
  const StorageTable({
    required this.storages,
    required this.columns,
    super.key,
    this.controller,
    this.canSelect,
    this.isSelected,
    this.onSelected,
  });

  final List<Disk> storages;
  final List<StorageColumn> columns;
  final AutoScrollController? controller;

  /// Called to determine whether the user is allowed to interactively select
  /// the storage device.
  final CanSelectStorage? canSelect;

  /// Called to determine whether the storage device is selected.
  final IsStorageSelected? isSelected;

  /// Called when the user selects a storage device.
  final OnStorageSelected? onSelected;

  @override
  State<StorageTable> createState() => _StorageTableState();
}

class _StorageTableState extends State<StorageTable> {
  final _horizontalController = ScrollController();

  Widget _autoScrollTag({
    required Widget child,
    required int disk,
    int object = -1,
  }) {
    if (widget.controller == null) {
      return child;
    }

    final index = Object.hashAll([disk, object]);
    return AutoScrollTag(
      key: ValueKey(index),
      index: index,
      controller: widget.controller!,
      child: child,
    );
  }

  List<DataRow> _buildDataRows(BuildContext context, {required int diskIndex}) {
    final disk = widget.storages[diskIndex];
    return <DataRow>[
      DataRow.byIndex(
        index: diskIndex,
        selected: widget.isSelected?.call(diskIndex) ?? false,
        onSelectChanged: widget.canSelect?.call(diskIndex) ?? false
            ? (selected) {
                if (selected ?? false) {
                  widget.onSelected?.call(diskIndex);
                }
              }
            : null,
        cells: <DataCell>[
          DataCell(
            SizedBox(
              height: kMinInteractiveDimension,
              child: _autoScrollTag(
                disk: diskIndex,
                child: widget.columns.first.diskBuilder(context, disk),
              ),
            ),
          ),
          for (final column in widget.columns.skip(1))
            DataCell(column.diskBuilder(context, disk)),
        ],
      ),
      for (var objectIndex = 0;
          objectIndex < disk.partitions.length;
          ++objectIndex)
        DataRow(
          key: ValueKey(Object.hashAll([diskIndex, objectIndex])),
          selected: widget.isSelected?.call(diskIndex, objectIndex) ?? false,
          onSelectChanged:
              (widget.canSelect?.call(diskIndex, objectIndex) ?? false)
                  ? (selected) {
                      if (selected ?? false) {
                        widget.onSelected?.call(diskIndex, objectIndex);
                      }
                    }
                  : null,
          cells: <DataCell>[
            DataCell(
              SizedBox(
                height: kMinInteractiveDimension,
                child: _autoScrollTag(
                  disk: diskIndex,
                  object: objectIndex,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: disk.partitions[objectIndex] is Partition
                        ? widget.columns.first.partitionBuilder(
                            context,
                            disk,
                            disk.partitions[objectIndex] as Partition,
                          )
                        : widget.columns.first.gapBuilder(
                            context,
                            disk,
                            disk.partitions[objectIndex] as Gap,
                          ),
                  ),
                ),
              ),
            ),
            for (final column in widget.columns.skip(1))
              DataCell(
                disk.partitions[objectIndex] is Partition
                    ? column.partitionBuilder(
                        context,
                        disk,
                        disk.partitions[objectIndex] as Partition,
                      )
                    : column.gapBuilder(
                        context,
                        disk,
                        disk.partitions[objectIndex] as Gap,
                      ),
              ),
          ],
        ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return YaruBorderContainer(
      clipBehavior: Clip.antiAlias,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final theme = Theme.of(context);
          final rowHeight = kMinInteractiveDimension +
              theme.visualDensity.baseSizeAdjustment.dy;
          return OverrideMouseCursor(
            cursor: SystemMouseCursors.basic,
            // Fill the box; OverrideMouseCursor's Stack loosens constraints.
            child: SizedBox.fromSize(
              size: constraints.biggest,
              child: Scrollbar(
                controller: _horizontalController,
                thumbVisibility: true,
                child: SingleChildScrollView(
                  controller: _horizontalController,
                  scrollDirection: Axis.horizontal,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: constraints.minWidth),
                    child: SingleChildScrollView(
                      controller: widget.controller,
                      child: DataTable(
                        dataRowMinHeight: rowHeight,
                        dataRowMaxHeight: rowHeight,
                        headingRowHeight: rowHeight,
                        showCheckboxColumn: false,
                        headingTextStyle: theme.textTheme.titleSmall,
                        dataTextStyle: theme.textTheme.bodyMedium,
                        columns: widget.columns
                            .map(
                              (column) => DataColumn(
                                label: column.titleBuilder(context),
                              ),
                            )
                            .toList(),
                        rows: List.generate(widget.storages.length, (index) {
                          return _buildDataRows(context, diskIndex: index);
                        }).fold<List<DataRow>>([], (allRows, diskRows) {
                          allRows.addAll(diskRows);
                          return allRows;
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _horizontalController.dispose();
    super.dispose();
  }
}

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

  /// The height of a row, including the column headings.
  static double headingHeight(BuildContext context) =>
      kMinInteractiveDimension +
      Theme.of(context).visualDensity.baseSizeAdjustment.dy;

  @override
  State<StorageTable> createState() => _StorageTableState();
}

class _StorageTableState extends State<StorageTable> {
  final _horizontalController = ScrollController();
  final _defaultVerticalController = ScrollController();
  final _columnWidths = <int, double>{};
  var _widthUpdateScheduled = false;

  ScrollController get _verticalController =>
      widget.controller ?? _defaultVerticalController;

  @override
  void didUpdateWidget(covariant StorageTable oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.columns.length != widget.columns.length) {
      _columnWidths.clear();
    }
  }

  void _recordColumnWidth(int index, double width) {
    if (_columnWidths[index] == width) return;
    _columnWidths[index] = width;
    if (_widthUpdateScheduled) return;
    _widthUpdateScheduled = true;
    // Apply column measurements after the data table completes its layout.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _widthUpdateScheduled = false;
      if (mounted) setState(() {});
    });
  }

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

  Widget _buildTable(BuildContext context, double rowHeight) {
    final theme = Theme.of(context);
    return DataTable(
      dataRowMinHeight: rowHeight,
      dataRowMaxHeight: rowHeight,
      headingRowHeight: rowHeight,
      showCheckboxColumn: false,
      headingTextStyle: theme.textTheme.titleSmall,
      dataTextStyle: theme.textTheme.bodyMedium,
      columns: [
        for (var index = 0; index < widget.columns.length; index++)
          DataColumn(
            label: widget.columns[index].titleBuilder(context),
            columnWidth: _MeasuredColumnWidth(
              onWidth: (width) => _recordColumnWidth(index, width),
              flex: widget.columns.length == 1 ? 1 : null,
            ),
          ),
      ],
      rows: [
        for (var index = 0; index < widget.storages.length; index++)
          ..._buildDataRows(context, diskIndex: index),
      ],
    );
  }

  Widget _buildPinnedHeadings(BuildContext context, double rowHeight) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: _verticalController,
      // Keep one accessible table with native column headings and data rows.
      child: ExcludeSemantics(
        child: AbsorbPointer(
          child: ColoredBox(
            color: theme.scaffoldBackgroundColor,
            child: DataTable(
              headingRowHeight: rowHeight,
              showCheckboxColumn: false,
              headingTextStyle: theme.textTheme.titleSmall,
              columns: [
                for (var index = 0; index < widget.columns.length; index++)
                  DataColumn(
                    label: widget.columns[index].titleBuilder(context),
                    columnWidth: FixedColumnWidth(_columnWidths[index] ?? 0),
                  ),
              ],
              rows: const [],
            ),
          ),
        ),
      ),
      builder: (context, child) {
        final controller = _verticalController;
        final offset = controller.hasClients ? controller.offset : 0.0;
        if (offset <= 0 || _columnWidths.length != widget.columns.length) {
          return const SizedBox.shrink();
        }
        return Positioned(top: offset, left: 0, right: 0, child: child!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return YaruBorderContainer(
      clipBehavior: Clip.antiAlias,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final rowHeight = StorageTable.headingHeight(context);
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
                      controller: _verticalController,
                      child: Stack(
                        children: [
                          _buildTable(context, rowHeight),
                          _buildPinnedHeadings(context, rowHeight),
                        ],
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
    _defaultVerticalController.dispose();
    super.dispose();
  }
}

class _MeasuredColumnWidth extends IntrinsicColumnWidth {
  const _MeasuredColumnWidth({required this.onWidth, super.flex});

  final ValueChanged<double> onWidth;

  @override
  double maxIntrinsicWidth(Iterable<RenderBox> cells, double containerWidth) {
    final width = super.maxIntrinsicWidth(cells, containerWidth);
    onWidth(width);
    return width;
  }
}

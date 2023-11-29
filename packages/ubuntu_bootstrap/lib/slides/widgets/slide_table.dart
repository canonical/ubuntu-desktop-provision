import 'package:flutter/material.dart';

class SlideTable extends StatelessWidget {
  const SlideTable({super.key, required this.rows});

  final List<List<Widget>> rows;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder(
        horizontalInside: Divider.createBorderSide(context),
      ),
      columnWidths: const {
        0: IntrinsicColumnWidth(),
        1: FixedColumnWidth(40),
        2: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        for (var i = 0; i < rows.length; ++i)
          TableRow(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: i > 0 ? 16 : 0,
                  bottom: 16,
                ),
                child: rows[i].first,
              ),
              const SizedBox.shrink(),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: i > 0 ? 16 : 0,
                  bottom: 16,
                ),
                child: Wrap(
                  spacing: 24,
                  runSpacing: 24,
                  children: rows[i].skip(1).toList(),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

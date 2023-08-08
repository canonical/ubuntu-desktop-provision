import 'package:flutter/material.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'telemetry_l10n.dart';
import 'telemetry_widgets.dart';

Future<void> showTelemetryDialog(
  BuildContext context,
  Future<String?> Function() collect,
) async {
  return showDialog(
    context: context,
    builder: (_) => TelemetryDialog(collect: collect),
  );
}

class TelemetryDialog extends StatelessWidget {
  const TelemetryDialog({super.key, required this.collect});

  final Future<String?> Function() collect;

  @override
  Widget build(BuildContext context) {
    final l10n = TelemetryLocalizations.of(context);
    return Dialog(
      clipBehavior: Clip.antiAlias,
      insetPadding: const EdgeInsets.all(20),
      child: SizedBox.fromSize(
        size: MediaQuery.of(context).size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            YaruDialogTitleBar(
              title: Text(l10n.telemetryReportTitle),
            ),
            Expanded(
              child: TelemetryView(
                // TODO: report error
                data: collect().then((value) => value ?? '').asStream(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

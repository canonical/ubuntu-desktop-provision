import 'package:flutter/material.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'telemetry_l10n.dart';
import 'telemetry_widgets.dart';

Future<void> showTelemetryDialog(
  BuildContext context,
  Stream<String> data,
) async {
  return showDialog(
    context: context,
    builder: (_) => TelemetryDialog(data: data),
  );
}

class TelemetryDialog extends StatelessWidget {
  const TelemetryDialog({super.key, required this.data});

  final Stream<String> data;

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
              child: TelemetryView(data: data),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_dialogs.dart';

import 'test_telemetry.dart';

void main() {
  testWidgets('telemetry data', (tester) async {
    await tester.pumpApp((_) => TelemetryDialog(data: Stream.value('foo')));
    await tester.pumpAndSettle();

    expect(find.byType(SelectableText), findsOneWidget);
    expect(find.text('foo'), findsOneWidget);
  });
}

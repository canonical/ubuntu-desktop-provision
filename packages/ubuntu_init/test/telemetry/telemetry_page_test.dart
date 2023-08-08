import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_dialogs.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_l10n.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_model.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_page.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_telemetry.dart';

void main() {
  Widget buildPage(TelemetryModel model) {
    return ProviderScope(
      overrides: [
        telemetryModelProvider.overrideWith((_) => model),
      ],
      child: const TelemetryPage(),
    );
  }

  testWidgets('telemetry enabled', (tester) async {
    final model = buildTelemetryModel(enabled: true);
    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    expect(find.radio(true), isChecked);

    await tester.tapRadio(false);
    verify(model.enabled = false).called(1);
  });

  testWidgets('telemetry disabled', (tester) async {
    final model = buildTelemetryModel(enabled: false);
    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    expect(find.radio(false), isChecked);

    await tester.tapRadio(true);
    verify(model.enabled = true).called(1);
  });

  testWidgets('show report', (tester) async {
    final model = buildTelemetryModel();

    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    final context = tester.element(find.byType(TelemetryPage));
    final l10n = TelemetryLocalizations.of(context);

    await tester.tapLink(l10n.telemetryReportLabel);
    await tester.pump();

    expect(find.byType(TelemetryDialog), findsOneWidget);
  });

  testWidgets('legal link', (tester) async {
    final model = buildTelemetryModel();

    final urlLauncher = MockUrlLauncher();
    when(urlLauncher.launchUrl(kTelemetryLegalUrl))
        .thenAnswer((_) async => true);
    registerMockService<UrlLauncher>(urlLauncher);

    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    final context = tester.element(find.byType(TelemetryPage));
    final l10n = TelemetryLocalizations.of(context);

    await tester.tapLink(l10n.telemetryLegalLabel);

    verify(urlLauncher.launchUrl(kTelemetryLegalUrl)).called(1);
  });
}

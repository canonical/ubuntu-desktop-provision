import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_model.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_page.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

import 'refresh_state_test.dart';
import 'test_refresh.dart';

void main() {
  Widget buildPage(RefreshModel model) {
    return ProviderScope(
      overrides: [
        refreshModelProvider.overrideWith((_) => model),
      ],
      child: const RefreshPage(),
    );
  }

  testWidgets('checking', (tester) async {
    final model = buildRefreshModel(state: const RefreshState.checking());
    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    final indicator = find.byType(CircularProgressIndicator);
    expect(indicator, findsOneWidget);
    final progress = tester.widget<CircularProgressIndicator>(indicator);
    expect(progress, isNotNull);
    expect(progress.value, isNull); // indeterminate

    expect(
      find.button(find.ul10n((l10n) => l10n.previousLabel)),
      findsOneWidget,
    );
    expect(
      find.button(find.ul10n((l10n) => l10n.skipLabel)),
      findsOneWidget,
    );
  });

  testWidgets('available', (tester) async {
    final model = buildRefreshModel(state: available);
    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    final indicator = find.byType(CircularProgressIndicator);
    expect(indicator, findsOneWidget);
    final progress = tester.widget<CircularProgressIndicator>(indicator);
    expect(progress, isNotNull);
    expect(progress.value, isZero);

    final context = tester.element(find.byType(RefreshPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);
    expect(find.textContaining('1.2.3'), findsOneWidget);
    expect(
      find.button(l10n.refreshInstall('1.2.4')),
      findsOneWidget,
    );

    expect(
      find.button(find.ul10n((l10n) => l10n.previousLabel)),
      findsOneWidget,
    );
    expect(
      find.button(find.ul10n((l10n) => l10n.skipLabel)),
      findsOneWidget,
    );
  });

  testWidgets('unavailable', (tester) async {
    final model = buildRefreshModel(state: unavailable);
    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    final indicator = find.byType(CircularProgressIndicator);
    expect(indicator, findsOneWidget);
    final progress = tester.widget<CircularProgressIndicator>(indicator);
    expect(progress, isNotNull);
    expect(progress.value, isZero);

    final context = tester.element(find.byType(RefreshPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);
    expect(find.text(l10n.refreshUpToDate('1.2.3')), findsOneWidget);
    expect(
      find.button(l10n.refreshInstall('1.2.4')),
      findsNothing,
    );

    expect(
      find.button(find.ul10n((l10n) => l10n.previousLabel)),
      findsOneWidget,
    );
    expect(
      find.button(find.ul10n((l10n) => l10n.skipLabel)),
      findsOneWidget,
    );
  });

  testWidgets('progress', (tester) async {
    final model = buildRefreshModel(state: notReady);
    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    final indicator = find.byType(CircularProgressIndicator);
    expect(indicator, findsOneWidget);
    final progress = tester.widget<CircularProgressIndicator>(indicator);
    expect(progress, isNotNull);
    expect(progress.value, 0.25);

    expect(find.byType(OutlinedButton), findsNothing);
  });

  testWidgets('done', (tester) async {
    final model = buildRefreshModel(state: done);
    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    final indicator = find.byType(CircularProgressIndicator);
    expect(indicator, findsOneWidget);
    final progress = tester.widget<CircularProgressIndicator>(indicator);
    expect(progress, isNotNull);
    expect(progress.value, isZero);

    expect(
      find.button(find.ul10n((l10n) => l10n.restartLabel)),
      findsOneWidget,
    );
  });

  testWidgets('error', (tester) async {
    final model = buildRefreshModel(state: error);
    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    final indicator = find.byType(CircularProgressIndicator);
    expect(indicator, findsOneWidget);
    final progress = tester.widget<CircularProgressIndicator>(indicator);
    expect(progress, isNotNull);
    expect(progress.value, isZero);

    expect(
      find.button(find.ul10n((l10n) => l10n.restartLabel)),
      findsOneWidget,
    );
  });
}

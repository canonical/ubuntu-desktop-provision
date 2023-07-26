import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

void main() {
  testWidgets('replace', (tester) async {
    var wasReplaced = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: WizardBuilder(
          routes: {
            '/loading': WizardRoute(
              builder: (_) => const Text('loading'),
              onReplace: (_) async {
                await Future.delayed(const Duration(seconds: 1));
                wasReplaced = true;
                return null;
              },
            ),
            '/replaced': WizardRoute(
              builder: (_) => const Text('replaced'),
            ),
          },
        ),
      ),
    ));
    expect(find.text('loading'), findsOneWidget);
    expect(find.text('replaced'), findsNothing);
    expect(wasReplaced, isFalse);

    await tester.pumpAndSettle(const Duration(seconds: 1));

    expect(find.text('loading'), findsNothing);
    expect(find.text('replaced'), findsOneWidget);
    expect(wasReplaced, isTrue);
  });

  testWidgets('predicate', (tester) async {
    final guarded = <String?>[];

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: WizardBuilder(
          routes: {
            '/loading': WizardRoute(
              builder: (_) => const Text('loading'),
              onLoad: (settings) {
                guarded.add(settings.name);
                return true;
              },
            ),
            '/skipped': WizardRoute(
              builder: (_) => const Text('skipped'),
              onLoad: (settings) {
                guarded.add(settings.name);
                return true;
              },
            ),
            '/not-loaded': WizardRoute(
              builder: (_) => const Text('not-loaded'),
              onLoad: (settings) {
                guarded.add(settings.name);
                return false;
              },
            ),
            '/replaced': WizardRoute(
              builder: (_) => const Text('replaced'),
              onLoad: (settings) {
                guarded.add(settings.name);
                return true;
              },
            ),
          },
          predicate: (route) => route != '/skipped',
        ),
      ),
    ));
    await tester.pumpAndSettle();

    expect(find.text('loading'), findsNothing);
    expect(find.text('skipped'), findsNothing);
    expect(find.text('not-loaded'), findsNothing);
    expect(find.text('replaced'), findsOneWidget);
    expect(guarded, ['/not-loaded', '/replaced']);
  });
}

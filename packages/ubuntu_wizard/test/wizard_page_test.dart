import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_test/yaru_test.dart';

void main() {
  testWidgets('activation', (tester) async {
    var activated = false;

    await tester.pumpWidget(
      MaterialApp(
        home: WizardPage(
          bottomBar: WizardBar(
            leading: WizardButton(
              label: 'action',
              onActivated: () => activated = true,
            ),
          ),
        ),
      ),
    );

    await tester.tap(
      find.descendant(
        of: find.bySubtype<FilledButton>(),
        matching: find.text('action'),
      ),
    );
    expect(activated, isTrue);
  });

  testWidgets('layout', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: WizardPage(
          title: AppBar(title: const Text('title')),
          header: const Text('header'),
          content: const Text('content'),
          snackBar: const SnackBar(content: Text('snackbar')),
          bottomBar: const WizardBar(
            leading: WizardButton(label: 'back'),
            trailing: [
              WizardButton(label: 'next'),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    final title = find.descendant(
      of: find.byType(AppBar),
      matching: find.text('title'),
    );
    expect(title, findsOneWidget);

    final header = find.text('header');
    expect(header, findsOneWidget);

    final content = find.text('content');
    expect(content, findsOneWidget);

    final snackBar = find.text('snackbar');
    expect(snackBar, findsOneWidget);

    final back = find.text('back');
    expect(back, findsOneWidget);

    final next = find.text('next');
    expect(next, findsOneWidget);

    expect(tester.getCenter(title).dy, lessThan(tester.getCenter(header).dy));
    expect(tester.getCenter(header).dy, lessThan(tester.getCenter(content).dy));
    expect(tester.getCenter(back).dx, lessThan(tester.getCenter(content).dx));
    expect(
      tester.getCenter(next).dx,
      greaterThan(tester.getCenter(content).dx),
    );
  });

  testWidgets('normal/flat/highlighted action', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: WizardPage(
          bottomBar: WizardBar(
            trailing: [
              WizardButton(label: 'normal'),
              WizardButton(label: 'flat', flat: true),
              WizardButton(label: 'highlighted', highlighted: true),
            ],
          ),
        ),
      ),
    );
    expect(find.button('normal'), findsOneWidget);
    expect(find.button('flat'), findsOneWidget);
    expect(find.button('highlighted'), findsOneWidget);
  });

  testWidgets('disabled action', (tester) async {
    var activated = false;

    await tester.pumpWidget(
      MaterialApp(
        home: WizardPage(
          bottomBar: WizardBar(
            trailing: [
              WizardButton(
                label: 'action',
                enabled: false,
                onActivated: () => activated = true,
              ),
            ],
          ),
        ),
      ),
    );

    await tester.tap(
      find.descendant(
        of: find.bySubtype<FilledButton>(),
        matching: find.text('action'),
      ),
    );
    expect(activated, isFalse);
  });

  testWidgets('hidden action', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: WizardPage(
          bottomBar: WizardBar(
            trailing: [
              WizardButton(label: 'action', visible: false),
            ],
          ),
        ),
      ),
    );

    expect(
      find.descendant(
        of: find.byType(OutlinedButton),
        matching: find.text('action'),
      ),
      findsNothing,
    );
  });

  testWidgets('common actions', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: UbuntuLocalizations.localizationsDelegates,
        home: Wizard(
          routes: {
            '/': WizardRoute(
              builder: (_) {
                return Builder(
                  builder: (context) {
                    return const WizardPage(
                      bottomBar: WizardBar(
                        leading: BackWizardButton(),
                        trailing: [
                          NextWizardButton(),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            '/last': WizardRoute(
              builder: (_) {
                return Builder(
                  builder: (context) {
                    return const WizardPage(
                      bottomBar: WizardBar(
                        leading: BackWizardButton(),
                        trailing: [
                          NextWizardButton(),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          },
        ),
      ),
    );

    final context = tester.element(find.byType(WizardPage));
    final lang = UbuntuLocalizations.of(context);

    expect(
      find.descendant(
        of: find.bySubtype<OutlinedButton>(),
        matching: find.text(lang.backLabel),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.bySubtype<FilledButton>(),
        matching: find.text(lang.nextLabel),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.bySubtype<FilledButton>(),
        matching: find.text(lang.doneLabel),
      ),
      findsNothing,
    );

    // ignore: unawaited_futures
    Wizard.of(context).next();
    await tester.pumpAndSettle();

    expect(
      find.descendant(
        of: find.bySubtype<OutlinedButton>(),
        matching: find.text(lang.backLabel),
      ),
      findsOneWidget,
    );

    expect(
      find.descendant(
        of: find.bySubtype<FilledButton>(),
        matching: find.text(lang.nextLabel),
      ),
      findsNothing,
    );

    expect(
      find.descendant(
        of: find.bySubtype<FilledButton>(),
        matching: find.text(lang.doneLabel),
      ),
      findsOneWidget,
    );
  });

  testWidgets('override hasPrevious and hasNext', (tester) async {
    var wentBack = false;

    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: UbuntuLocalizations.localizationsDelegates,
        home: Wizard(
          routes: {
            '/first': WizardRoute(
              builder: (_) {
                return Builder(
                  builder: (context) {
                    return const WizardPage(
                      content: Text('first'),
                      bottomBar: WizardBar(
                        leading: BackWizardButton(),
                        trailing: [NextWizardButton()],
                      ),
                    );
                  },
                );
              },
            ),
            '/second': WizardRoute(
              builder: (_) {
                return Builder(
                  builder: (context) {
                    return WizardPage(
                      content: const Text('second'),
                      bottomBar: WizardBar(
                        leading:
                            BackWizardButton(onBack: () => wentBack = true),
                        trailing: const [NextWizardButton()],
                      ),
                    );
                  },
                );
              },
              userData: const WizardRouteData(hasPrevious: false),
            ),
            '/last': WizardRoute(
              builder: (_) {
                return Builder(
                  builder: (context) {
                    return WizardPage(
                      content: const Text('last'),
                      bottomBar: WizardBar(
                        leading:
                            BackWizardButton(onBack: () => wentBack = true),
                        trailing: const [NextWizardButton()],
                      ),
                    );
                  },
                );
              },
              userData: const WizardRouteData(hasNext: false),
            ),
            '/unreachable': WizardRoute(
              builder: (_) {
                return Builder(
                  builder: (context) {
                    return const WizardPage(
                      bottomBar: WizardBar(
                        leading: BackWizardButton(),
                        trailing: [NextWizardButton()],
                      ),
                    );
                  },
                );
              },
            ),
          },
        ),
      ),
    );

    final context = tester.element(find.byType(WizardPage));
    final lang = UbuntuLocalizations.of(context);

    await tester.tap(
      find.descendant(
        of: find.bySubtype<FilledButton>(),
        matching: find.text(lang.nextLabel),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('second'), findsOneWidget);

    await tester.tap(
      find.descendant(
        of: find.bySubtype<OutlinedButton>(),
        matching: find.text(lang.backLabel),
      ),
    );
    await tester.pumpAndSettle();

    expect(wentBack, isFalse);

    await tester.tap(
      find.descendant(
        of: find.bySubtype<FilledButton>(),
        matching: find.text(lang.nextLabel),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('last'), findsOneWidget);

    await tester.tap(
      find.descendant(
        of: find.bySubtype<OutlinedButton>(),
        matching: find.text(lang.backLabel),
      ),
    );
    await tester.pumpAndSettle();

    expect(wentBack, isTrue);

    await tester.tap(
      find.descendant(
        of: find.bySubtype<FilledButton>(),
        matching: find.text(lang.nextLabel),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(
      find.descendant(
        of: find.bySubtype<FilledButton>(),
        matching: find.text(lang.doneLabel),
      ),
    );

    expect(find.text('unreachable'), findsNothing);
  });

  testWidgets('page indicator', (tester) async {
    final routes = <String, WizardRoute>{
      '/foo': WizardRoute(
        builder: (context) => const WizardPage(
          content: Text('Page 4 of 7'),
          bottomBar: WizardBar(),
        ),
        userData: const WizardRouteData(step: 3),
      ),
    };
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: UbuntuLocalizations.localizationsDelegates,
        home: Wizard(
          userData: const WizardData(totalSteps: 7),
          routes: routes,
          initialRoute: '/foo',
        ),
      ),
    );

    final indicatorFinder = find.byType(YaruPageIndicator);
    expect(indicatorFinder, findsOneWidget);
    expect(find.text('Page 4 of 7'), findsOneWidget);
    expect(
      (indicatorFinder.evaluate().first.widget as YaruPageIndicator).page,
      equals(3),
    );
  });

  testWidgets('step semantics label - per-widget builder (1-based)',
      (tester) async {
    final handle = tester.ensureSemantics();

    await tester.pumpWidget(
      MaterialApp(
        home: Wizard(
          userData: const WizardData(totalSteps: 5),
          routes: {
            '/foo': WizardRoute(
              builder: (_) => WizardPage(
                bottomBar: WizardBar(
                  stepSemanticsLabel: (step, total) => 'Step $step of $total',
                ),
              ),
              userData: const WizardRouteData(step: 0),
            ),
          },
          initialRoute: '/foo',
        ),
      ),
    );
    await tester.pumpAndSettle();

    // 0-indexed step 0 should be announced as step 1.
    expect(find.bySemanticsLabel('Step 1 of 5'), findsOneWidget);

    handle.dispose();
  });

  testWidgets('step semantics label - WizardBarTheme fallback', (tester) async {
    final handle = tester.ensureSemantics();

    await tester.pumpWidget(
      MaterialApp(
        home: WizardBarTheme(
          stepSemanticsLabel: (step, total) => 'Inherited $step/$total',
          child: Wizard(
            userData: const WizardData(totalSteps: 3),
            routes: {
              '/bar': WizardRoute(
                builder: (_) => const WizardPage(bottomBar: WizardBar()),
                userData: const WizardRouteData(step: 1),
              ),
            },
            initialRoute: '/bar',
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Step 1 (0-indexed) should be announced as step 2.
    expect(find.bySemanticsLabel('Inherited 2/3'), findsOneWidget);

    handle.dispose();
  });

  testWidgets('step semantics label - child dot semantics excluded',
      (tester) async {
    final handle = tester.ensureSemantics();

    await tester.pumpWidget(
      MaterialApp(
        home: WizardBarTheme(
          stepSemanticsLabel: (step, total) => 'Step $step of $total',
          child: Wizard(
            userData: const WizardData(totalSteps: 3),
            routes: {
              '/baz': WizardRoute(
                builder: (_) => const WizardPage(bottomBar: WizardBar()),
                userData: const WizardRouteData(step: 0),
              ),
            },
            initialRoute: '/baz',
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // The page indicator is wrapped in ExcludeSemantics so individual dots
    // are hidden from assistive technology.
    final semanticsWidget = find.byKey(const ValueKey('wizard-step-indicator'));
    expect(
      find.descendant(
        of: semanticsWidget,
        matching: find.byType(ExcludeSemantics),
      ),
      findsOneWidget,
    );

    // The immediate parent of ExcludeSemantics must be Semantics.
    final excludeElement = tester.element(
      find.descendant(
        of: semanticsWidget,
        matching: find.byType(ExcludeSemantics),
      ),
    );
    Widget? immediateParentWidget;
    excludeElement.visitAncestorElements((element) {
      immediateParentWidget = element.widget;
      return false;
    });
    expect(immediateParentWidget, isA<Semantics>());

    // The label is accessible via the semantics tree.
    expect(find.bySemanticsLabel('Step 1 of 3'), findsOneWidget);

    handle.dispose();
  });

  testWidgets('step semantics label - per-widget null suppresses theme',
      (tester) async {
    final handle = tester.ensureSemantics();

    await tester.pumpWidget(
      MaterialApp(
        home: WizardBarTheme(
          stepSemanticsLabel: (step, total) => 'Should not appear',
          child: Wizard(
            userData: const WizardData(totalSteps: 4),
            routes: {
              '/qux': WizardRoute(
                builder: (_) => WizardPage(
                  bottomBar: WizardBar(
                    // Returning null opts this bar out of any semantics label.
                    stepSemanticsLabel: (step, total) => null,
                  ),
                ),
                userData: const WizardRouteData(step: 0),
              ),
            },
            initialRoute: '/qux',
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // No semantics label should be present.
    expect(
      find.bySemanticsLabel(RegExp('Should not appear')),
      findsNothing,
    );
    // ExcludeSemantics is not added when there is no label.
    expect(
      find.byKey(const ValueKey('wizard-step-indicator')),
      findsNothing,
    );

    handle.dispose();
  });

  testWidgets('step semantics label - per-widget overrides WizardBarTheme',
      (tester) async {
    final handle = tester.ensureSemantics();

    await tester.pumpWidget(
      MaterialApp(
        home: WizardBarTheme(
          stepSemanticsLabel: (step, total) => 'Inherited $step/$total',
          child: Wizard(
            userData: const WizardData(totalSteps: 5),
            routes: {
              '/quux': WizardRoute(
                builder: (_) => WizardPage(
                  bottomBar: WizardBar(
                    stepSemanticsLabel: (step, total) =>
                        'Override $step/$total',
                  ),
                ),
                userData: const WizardRouteData(step: 2),
              ),
            },
            initialRoute: '/quux',
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.bySemanticsLabel('Override 3/5'), findsOneWidget);
    expect(
      find.bySemanticsLabel(RegExp('Inherited')),
      findsNothing,
    );

    handle.dispose();
  });

  testWidgets('loading indicator', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: WizardButton(
          label: 'button',
          loading: true,
        ),
      ),
    );

    expect(find.text('button'), findsOneWidget);
    expect(find.byType(YaruCircularProgressIndicator), findsNothing);

    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('button'), findsNothing);
    expect(find.byType(YaruCircularProgressIndicator), findsOneWidget);

    await tester.pumpWidget(
      const MaterialApp(
        home: WizardButton(
          label: 'button',
        ),
      ),
    );

    expect(find.text('button'), findsOneWidget);
    expect(find.byType(YaruCircularProgressIndicator), findsNothing);
  });
}

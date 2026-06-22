import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/providers/slide_html.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

import '../test_utils.dart';

void main() {
  testWidgets('can open links', (tester) async {
    final urlLauncher = MockUrlLauncher();
    registerMockService<UrlLauncher>(urlLauncher);
    when(urlLauncher.launchUrl(any)).thenAnswer((_) async => true);

    await tester.pumpApp(
      (context) => const ProviderScope(
        child: Scaffold(
          body: SlideHtml('<a href="https://help.ubuntu.com">link</a>'),
        ),
      ),
    );

    await tester.tap(find.text('link'));
    await tester.pump();

    verify(urlLauncher.launchUrl('https://help.ubuntu.com')).called(1);
  });

  testWidgets('links are exposed to screen readers', (tester) async {
    final urlLauncher = MockUrlLauncher();
    registerMockService<UrlLauncher>(urlLauncher);

    final handle = tester.ensureSemantics();

    await tester.pumpApp(
      (context) => const ProviderScope(
        child: Scaffold(
          body: SlideHtml('<a href="https://help.ubuntu.com">link</a>'),
        ),
      ),
    );

    expect(
      tester.getSemantics(find.bySemanticsLabel('link')),
      matchesSemantics(
        label: 'link',
        isLink: true,
        isFocusable: true,
        hasTapAction: true,
        hasFocusAction: true,
      ),
    );

    handle.dispose();
  });

  testWidgets(
      'tabbing to a link in a bulleted list reads only the link text '
      '(no bullet or image)', (tester) async {
    final urlLauncher = MockUrlLauncher();
    registerMockService<UrlLauncher>(urlLauncher);

    final handle = tester.ensureSemantics();

    // Mirrors slide 9's link column: a decorative image followed by several
    // "<bullet> <link>" rows.
    await tester.pumpApp(
      (context) => const ProviderScope(
        child: Scaffold(
          body: SlideHtml(
            '<img src="discourse.svg" />'
            '\u2022 <a href="https://help.ubuntu.com">Official documentation</a>'
            '\u2022 <a href="https://discourse.ubuntu.com">Ubuntu Discourse</a>'
            '\u2022 <a href="https://askubuntu.com">Ask Ubuntu</a>',
          ),
        ),
      ),
    );

    // Each link is exposed as its own semantics node, labelled with exactly the
    // link text - no "bullet" character and no "image" leaking in.
    for (final label in const [
      'Official documentation',
      'Ubuntu Discourse',
      'Ask Ubuntu',
    ]) {
      final node = tester.getSemantics(find.bySemanticsLabel(label));
      expect(node.label, label);
      expect(node.label, isNot(contains('\u2022')));
      expect(node.hasFlag(SemanticsFlag.isImage), isFalse);
    }

    // Nothing in the tree is announced as a bullet.
    expect(find.bySemanticsLabel(RegExp('\u2022')), findsNothing);

    handle.dispose();
  });

  test('semanticText strips decorative bullets', () {
    const slide = SlideHtml(
      '<p>\u2022 first</p><p>\u2022 second</p>',
    );
    expect(slide.semanticText, isNot(contains('\u2022')));
    expect(slide.semanticText, contains('first'));
    expect(slide.semanticText, contains('second'));
  });
}

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

  testWidgets(
      'decorative spacing does not leak a blank label into the semantics tree',
      (tester) async {
    final urlLauncher = MockUrlLauncher();
    registerMockService<UrlLauncher>(urlLauncher);

    final handle = tester.ensureSemantics();

    // Mirrors slide 9's link column: an image, <br> line breaks and empty
    // <p></p> spacers around the "<bullet> <link>" rows. Previously this
    // whitespace bubbled up into an ancestor node's label, which a screen
    // reader announced as an empty item (a "blank" tab stop).
    await tester.pumpApp(
      (context) => const ProviderScope(
        child: Scaffold(
          body: SlideHtml(
            '<html><body><table><tr>'
            '<td class="long-text"><p>Help and support</p></td>'
            '<td>'
            '<img src="discourse.svg" />'
            '<br />'
            '<p></p>'
            '\u2022 <a href="https://help.ubuntu.com">Official documentation</a>'
            '<br />'
            '<p></p>'
            '\u2022 <a href="https://askubuntu.com">Ask Ubuntu</a>'
            '<br />'
            '</td>'
            '</tr></table></body></html>',
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // No semantics node may carry a whitespace-only label (an empty label is
    // fine; a non-empty but blank one is what a screen reader reads as "blank").
    void expectNoBlankLabel(SemanticsNode node) {
      final label = node.getSemanticsData().label;
      expect(
        label.isNotEmpty && label.trim().isEmpty,
        isFalse,
        reason: 'a node exposes a blank (whitespace-only) label: "$label"',
      );
      node.visitChildren((child) {
        expectNoBlankLabel(child);
        return true;
      });
    }

    expectNoBlankLabel(
      // ignore: deprecated_member_use
      tester.binding.pipelineOwner.semanticsOwner!.rootSemanticsNode!,
    );

    handle.dispose();
  });

  testWidgets(
      'links in a slide without a body-text cell stay separate focusable nodes',
      (tester) async {
    final urlLauncher = MockUrlLauncher();
    registerMockService<UrlLauncher>(urlLauncher);

    final handle = tester.ensureSemantics();

    // A slide that has links but no dedicated "long-text" body cell must not be
    // wrapped in a single <slidetext> node, or the links would become
    // descendants of the body node and a screen reader would re-read the whole
    // slide when tabbing to a link. This exercises the defensive branch in
    // _wrapBodyText that leaves such markup untouched.
    await tester.pumpApp(
      (context) => const ProviderScope(
        child: Scaffold(
          body: SlideHtml(
            '<html><body>'
            '<p>Help and support</p>'
            '\u2022 <a href="https://help.ubuntu.com">Official documentation</a>'
            '\u2022 <a href="https://askubuntu.com">Ask Ubuntu</a>'
            '</body></html>',
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Each link is its own node, labelled with exactly the link text...
    for (final label in const ['Official documentation', 'Ask Ubuntu']) {
      final linkNode = tester.getSemantics(find.bySemanticsLabel(label));
      expect(linkNode.label, label);
      expect(linkNode.hasFlag(SemanticsFlag.isLink), isTrue);

      // ...and no ancestor merges the body text together with the link, so the
      // slide is not re-read when focus reaches the link.
      var node = linkNode.parent;
      while (node != null) {
        expect(
          node.getSemanticsData().label,
          isNot(contains('Help and support')),
          reason: 'an ancestor merges the body text with the "$label" link',
        );
        node = node.parent;
      }
    }

    handle.dispose();
  });
}

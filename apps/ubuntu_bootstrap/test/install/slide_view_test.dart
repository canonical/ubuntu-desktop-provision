import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_bootstrap/pages/install/slide_view.dart';
import 'package:ubuntu_bootstrap/providers/slide_html.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

import '../test_utils.dart';

void main() {
  testWidgets(
      'slide body is one focusable node and links are separate siblings',
      (tester) async {
    final urlLauncher = MockUrlLauncher();
    registerMockService<UrlLauncher>(urlLauncher);

    final handle = tester.ensureSemantics();
    final controller = ValueNotifier(0);
    addTearDown(controller.dispose);

    // Mirrors slide 9: the body text lives in its own table cell and the links
    // live in a separate cell, so the body text node is never an ancestor of
    // the links.
    const slideHtml = '<html><body><table><tr>'
        '<td class="long-text">'
        '<p class="h1">Help and support</p>'
        '<p>The official Ubuntu documentation is available online.</p>'
        '</td>'
        '<td>'
        '\u2022 <a href="https://help.ubuntu.com">Official documentation</a>'
        '\u2022 <a href="https://askubuntu.com">Ask Ubuntu</a>'
        '</td>'
        '</tr></table></body></html>';
    const slide = SlideHtml(slideHtml);

    await tester.pumpApp(
      (context) => ProviderScope(
        child: Scaffold(
          body: SlideView(
            controller: controller,
            slides: const [slide],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // The whole slide body is exposed as a single focusable node, so a screen
    // reader reads it in one stop instead of one stop per paragraph...
    final bodyNode = tester.getSemantics(
      find.bySemanticsLabel(RegExp('Help and support')),
    );
    expect(bodyNode.label, contains('Help and support'));
    expect(bodyNode.label, contains('available online'));
    expect(bodyNode.hasFlag(SemanticsFlag.isFocusable), isTrue);

    // ...and the body node does not contain any link text, so the links are
    // not part of it.
    expect(bodyNode.label, isNot(contains('Official documentation')));
    expect(bodyNode.label, isNot(contains('Ask Ubuntu')));

    // The slideshow does not steal focus (see WCAG 3.2.1/2.4.3): tabbing into
    // it lands on the body text first...
    await tester.sendKeyEvent(LogicalKeyboardKey.tab);
    await tester.pumpAndSettle();
    expect(
      tester
          .getSemantics(find.bySemanticsLabel(RegExp('Help and support')))
          .hasFlag(SemanticsFlag.isFocused),
      isTrue,
      reason: 'the slide body should be the first tab stop',
    );

    // ...and tabbing again lands on the first link.
    await tester.sendKeyEvent(LogicalKeyboardKey.tab);
    await tester.pumpAndSettle();

    final linkFinder = find.bySemanticsLabel('Official documentation');
    expect(linkFinder, findsOneWidget);

    // The link announces only its own text...
    final linkNode = tester.getSemantics(linkFinder);
    expect(linkNode.label, 'Official documentation');
    expect(linkNode.hasFlag(SemanticsFlag.isFocused), isTrue);

    // ...and none of its ancestors expose the slide body text, so the screen
    // reader does not re-read the whole slide when tabbing to a link.
    var node = linkNode.parent;
    while (node != null) {
      expect(
        node.getSemanticsData().label,
        isNot(contains('Help and support')),
        reason: 'an ancestor still exposes the slide text',
      );
      node = node.parent;
    }

    handle.dispose();
  });
}

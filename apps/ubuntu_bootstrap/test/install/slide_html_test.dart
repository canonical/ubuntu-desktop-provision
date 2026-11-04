import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html/parser.dart' show parse;
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/install/bottom_bar.dart';
import 'package:ubuntu_bootstrap/pages/install/slide_view.dart';
import 'package:ubuntu_bootstrap/providers/slide_html.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

import '../test_utils.dart';

String _loadSlideHtml(int index) {
  final document = parse(
    File('assets/slides/$index/slide_en_US.html').readAsStringSync(),
  );
  for (final image in document.getElementsByTagName('img')) {
    final src = image.attributes['src'];
    if (src == null) continue;

    final imagePath = src.startsWith('../icons/')
        ? 'assets/slides/icons/${src.substring('../icons/'.length)}'
        : 'assets/slides/$index/$src';
    final bytes = File(imagePath).readAsBytesSync();
    final extension = src.split('.').last;
    final mimeType = extension == 'svg' ? 'svg+xml' : extension;
    image.attributes['src'] =
        'data:image/$mimeType;base64,${base64Encode(bytes)}';
  }
  return document.outerHtml.replaceAll('{{ DISTRO }}', 'Ubuntu');
}

Widget _installerPage(String html, ValueNotifier<int> controller) {
  return WizardPage(
    headerPadding: EdgeInsets.zero,
    contentPadding: EdgeInsets.zero,
    title: const YaruWindowTitleBar(
      title: Text('Ubuntu 26.10'),
    ),
    content: SlideView(
      controller: controller,
      interval: Duration.zero,
      slides: [SlideHtml(html)],
    ),
    bottomBar: const BottomBar(
      title: Text('Copying files'),
      subtitle: LinearProgressIndicator(value: 0),
      leading: Row(
        children: [
          IconButton(onPressed: null, icon: Icon(Icons.chevron_left)),
          SizedBox(width: 10),
          IconButton(onPressed: null, icon: Icon(Icons.pause)),
          SizedBox(width: 10),
          IconButton(onPressed: null, icon: Icon(Icons.chevron_right)),
        ],
      ),
      trailing: IconButton(onPressed: null, icon: Icon(Icons.terminal)),
    ),
  );
}

Future<Rect> _pumpInstallerSlide(
  WidgetTester tester,
  int index,
  Size windowSize,
) async {
  final controller = ValueNotifier(0);
  addTearDown(controller.dispose);
  await tester
      .pumpApp((_) => _installerPage(_loadSlideHtml(index), controller));

  tester.view.physicalSize = windowSize;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpAndSettle();

  final images = tester.widgetList<Image>(
    find.descendant(
      of: find.byType(SlideView),
      matching: find.byType(Image),
    ),
  );
  await tester.runAsync(() async {
    for (final image in images) {
      await precacheImage(image.image, tester.element(find.byWidget(image)));
    }
  });
  await tester.pumpAndSettle();

  expect(tester.view.physicalSize, windowSize);
  return tester.getRect(find.byType(SlideView));
}

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

  testWidgets('links keep the default hyperlink appearance', (tester) async {
    final urlLauncher = MockUrlLauncher();
    registerMockService<UrlLauncher>(urlLauncher);

    await tester.pumpApp(
      (context) => const ProviderScope(
        child: Scaffold(
          body: SlideHtml('<a href="https://help.ubuntu.com">link</a>'),
        ),
      ),
    );

    // The custom <a> builder must preserve the coloured, underlined link
    // styling; otherwise links render as plain body text.
    final text = tester.widget<Text>(find.text('link'));
    expect(text.style?.color, Colors.blue);
    expect(text.style?.decoration, TextDecoration.underline);
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
      expect(node, isSemantics(isImage: false));
    }

    // Nothing in the tree is announced as a bullet.
    expect(find.bySemanticsLabel(RegExp('\u2022')), findsNothing);

    handle.dispose();
  });

  const layoutSlides = <({int index, String title, String body})>[
    (
      index: 1,
      title: 'Fast, free and full of new features',
      body: 'The latest version makes computing easier than ever.',
    ),
    (
      index: 2,
      title: 'All the applications you need',
      body: 'Install, manage and update all your apps',
    ),
    (
      index: 3,
      title: 'Develop with the best of open source',
      body: 'Ubuntu is the ideal workstation for app or web development',
    ),
    (
      index: 4,
      title: 'Enhance your creativity',
      body: "If you're an animator, designer",
    ),
    (
      index: 5,
      title: 'Great for gaming',
      body: 'Ubuntu supports the latest NVIDIA and Mesa drivers',
    ),
    (
      index: 6,
      title: 'Private and secure',
      body: 'Ubuntu provides all of the tools you need to stay private',
    ),
    (
      index: 7,
      title: 'Power up your productivity',
      body: 'Ubuntu Desktop includes LibreOffice',
    ),
    (
      index: 8,
      title: 'Access for everyone',
      body: 'At the heart of the Ubuntu philosophy is the belief',
    ),
    (
      index: 9,
      title: 'Help and support',
      body: 'The official Ubuntu documentation is available',
    ),
  ];

  for (final slide in layoutSlides) {
    testWidgets('slide ${slide.index} fits the installer at 1280x720',
        (tester) async {
      final viewport = await _pumpInstallerSlide(
        tester,
        slide.index,
        const Size(1280, 720),
      );
      expect(tester.takeException(), isNull);

      final contentFinder = find.descendant(
        of: find.byType(SlideView),
        matching: find.byType(Text),
      );
      final content = tester.widgetList<Text>(contentFinder);
      expect(content, isNotEmpty, reason: 'slide ${slide.index} has no text');
      for (final text in content) {
        final label = text.data ?? text.textSpan?.toPlainText() ?? '';
        if (label.replaceAll('\uFFFC', '').trim().isEmpty) continue;
        final rect = tester.getRect(find.byWidget(text));
        expect(
          rect.left,
          greaterThanOrEqualTo(viewport.left - 2),
          reason: '"$label" starts left of the slide viewport',
        );
        expect(
          rect.right,
          lessThanOrEqualTo(viewport.right + 2),
          reason: '"$label" extends right of the slide viewport',
        );
        expect(
          rect.top,
          greaterThanOrEqualTo(viewport.top - 2),
          reason: '"$label" starts above the slide viewport',
        );
        expect(
          rect.bottom,
          lessThanOrEqualTo(viewport.bottom + 2),
          reason: '"$label" extends below the slide viewport',
        );
      }

      for (final image in [
        ...find
            .descendant(
              of: find.byType(SlideView),
              matching: find.byType(SvgPicture),
            )
            .evaluate(),
        ...find
            .descendant(
              of: find.byType(SlideView),
              matching: find.byType(Image),
            )
            .evaluate(),
      ]) {
        final rect = tester.getRect(find.byWidget(image.widget));
        expect(
          rect.left,
          greaterThanOrEqualTo(viewport.left - 2),
          reason: 'slide ${slide.index} image extends left of the viewport',
        );
        expect(
          rect.right,
          lessThanOrEqualTo(viewport.right + 2),
          reason: 'slide ${slide.index} image extends right of the viewport',
        );
        expect(
          rect.top,
          greaterThanOrEqualTo(viewport.top - 2),
          reason: 'slide ${slide.index} image extends above the viewport',
        );
        expect(
          rect.bottom,
          lessThanOrEqualTo(viewport.bottom + 2),
          reason: 'slide ${slide.index} image extends below the viewport',
        );
      }

      final title = tester.getRect(find.text(slide.title));
      final body = tester.getRect(find.textContaining(slide.body));
      expect(title.overlaps(body), isFalse);
      if (const [3, 4, 6, 8, 9].contains(slide.index)) {
        expect(
          title.top - viewport.top,
          lessThanOrEqualTo(slide.index == 9 ? 80 : 50),
          reason: 'slide ${slide.index} has excessive blank space above title',
        );
      }
      if (slide.index == 8) {
        expect(find.text('LibreOffice Writer'), findsOneWidget);
        expect(
          tester.getRect(find.text('LibreOffice Writer')).bottom,
          lessThanOrEqualTo(viewport.bottom),
        );
      }
      if (slide.index == 9) {
        expect(find.text('Ask Ubuntu'), findsOneWidget);
        expect(
          tester.getRect(find.text('Ask Ubuntu')).bottom,
          lessThanOrEqualTo(viewport.bottom),
        );
        expect(
          body.right,
          lessThanOrEqualTo(
            tester.getRect(find.text('Official documentation')).left,
          ),
          reason: 'slide 9 body text overlaps the links column',
        );
      }
    });
  }

  for (final slide in const [
    (index: 1, title: 'Fast, free and full of new features'),
    (index: 9, title: 'Help and support'),
  ]) {
    testWidgets('slide ${slide.index} fits the installer at 1280x720',
        (tester) async {
      final viewport = await _pumpInstallerSlide(
        tester,
        slide.index,
        const Size(1280, 720),
      );
      expect(tester.takeException(), isNull);

      for (final text in tester.widgetList<Text>(
        find.descendant(
          of: find.byType(SlideView),
          matching: find.byType(Text),
        ),
      )) {
        final label = text.data ?? text.textSpan?.toPlainText() ?? '';
        if (label.replaceAll('\uFFFC', '').trim().isEmpty) continue;
        expect(
          tester.getRect(find.byWidget(text)).bottom,
          lessThanOrEqualTo(viewport.bottom),
          reason: '"$label" extends below the slide viewport',
        );
      }

      expect(find.text(slide.title), findsOneWidget);
    });
  }

  testWidgets('bulleted links each render on their own line, left-aligned',
      (tester) async {
    final urlLauncher = MockUrlLauncher();
    registerMockService<UrlLauncher>(urlLauncher);

    tester.view.physicalSize = const Size(4000, 4000);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpApp(
      (context) => ProviderScope(
        child: Scaffold(body: SlideHtml(_loadSlideHtml(9))),
      ),
    );
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);

    const labels = [
      'Official documentation',
      'Ubuntu Discourse',
      'Enterprise-grade 24/7 support with Ubuntu Pro',
      'Ask Ubuntu',
    ];
    final offsets = [
      for (final label in labels) tester.getTopLeft(find.text(label)),
    ];

    // Every link starts at the same x (bullets left-aligned in a column)...
    for (final o in offsets) {
      expect(o.dx, moreOrLessEquals(offsets.first.dx, epsilon: 1));
    }
    // ...and each link is on its own line, strictly below the previous one.
    for (var i = 1; i < offsets.length; i++) {
      expect(
        offsets[i].dy,
        greaterThan(offsets[i - 1].dy),
        reason: '"${labels[i]}" should be below "${labels[i - 1]}"',
      );
    }
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
      expect(linkNode, isSemantics(isLink: true));

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

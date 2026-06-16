import 'package:flutter/material.dart';
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
}

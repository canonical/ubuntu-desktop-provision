import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_bootstrap/slides/slide_html.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

import '../test_utils.dart';

void main() {
  testWidgets('can open links', (tester) async {
    final urlLauncher = MockUrlLauncher();
    registerMockService<UrlLauncher>(urlLauncher);

    await tester.pumpApp(
      (context) => const ProviderScope(
        child: Scaffold(
          body: SlideHtml('<a href="https://help.ubuntu.com">link</a>'),
        ),
      ),
    );

    Future<void> expectLaunchUrl(String label, String url) async {
      when(urlLauncher.launchUrl(url)).thenAnswer((_) async => true);
      await tester.tapLink(label);
      verify(urlLauncher.launchUrl(url)).called(1);
    }

    await expectLaunchUrl('link', 'https://help.ubuntu.com');
  });
}

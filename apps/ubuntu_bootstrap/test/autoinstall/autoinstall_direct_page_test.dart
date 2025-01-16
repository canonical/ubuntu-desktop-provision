import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:xdg_desktop_portal/xdg_desktop_portal.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_test/yaru_test.dart';

import '../test_utils.dart';
import 'test_autoinstall.dart';

void main() {
  group('enter url', () {
    for (final testCase in [
      (
        name: 'valid url',
        url: 'https://example.com/autoinstall.yaml',
        hasError: false,
        parsedUri: Uri.https('example.com', '/autoinstall.yaml'),
      ),
      (
        name: 'invalidurl ',
        url: '::invalid url::',
        hasError: true,
        parsedUri: null,
      ),
    ]) {
      testWidgets(testCase.name, (tester) async {
        final mockService = registerMockAutoinstallService();
        await tester.pumpApp((_) => buildAutoinstallDirectPage());

        final importButton =
            find.button(tester.lang.autoinstallDirectImportButtonLabel);
        expect(importButton, findsOneWidget);
        expect(importButton, isDisabled);

        await tester.enterText(
          find.byType(TextFormField),
          testCase.url,
        );
        await tester.pump();
        expect(importButton, isEnabled);

        await tester.tap(importButton);
        await tester.pump();

        if (testCase.hasError) {
          await tester.pumpAndSettle();
          expect(find.byType(YaruInfoBox), findsOneWidget);
          verifyNever(mockService.fetchAndWriteFileFromUri(any));
        } else {
          verify(mockService.fetchAndWriteFileFromUri(testCase.parsedUri))
              .called(1);
          verify(mockService.restartSubiquity()).called(1);
        }
      });
    }
  });

  group('select local file', () {
    for (final testCase in [
      (
        name: 'valid file',
        fileName: 'file:///home/user/dir/autoinstall.yaml',
        parsedUri: Uri.file('/home/user/dir/autoinstall.yaml'),
      ),
      (
        name: 'no file',
        fileName: null,
        parsedUri: null,
      ),
    ]) {
      testWidgets(testCase.name, (tester) async {
        registerMockXdgDesktopPortalClient(
          result: testCase.fileName != null
              ? XdgFileChooserPortalOpenFileResult(
                  uris: [testCase.fileName!],
                  currentFilter: null,
                )
              : null,
          exception: testCase.fileName == null
              ? XdgPortalRequestCancelledException()
              : null,
        );
        final mockService = registerMockAutoinstallService();
        await tester.pumpApp((_) => buildAutoinstallDirectPage());

        final importButton =
            find.button(tester.lang.autoinstallDirectImportButtonLabel);
        expect(importButton, findsOneWidget);
        expect(importButton, isDisabled);

        await tester
            .tap(find.button(tester.lang.autoinstallDirectFileButtonLabel));
        await tester.pumpAndSettle();

        if (testCase.fileName != null) {
          expect(importButton, isEnabled);
          expect(
            find.text(testCase.parsedUri!.pathSegments.last),
            findsOneWidget,
          );
          expect(find.byType(TextFormField), isDisabled);

          await tester.tap(importButton);
          await tester.pump();

          verify(mockService.fetchAndWriteFileFromUri(testCase.parsedUri))
              .called(1);
          verify(mockService.restartSubiquity()).called(1);
        } else {
          expect(importButton, isDisabled);
          expect(find.byType(TextFormField), isEnabled);

          verifyNever(mockService.fetchAndWriteFileFromUri(any));
          verifyNever(mockService.restartSubiquity());
        }
      });
    }
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';
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
        expectedError: null,
        parsedUri: Uri.https('example.com', '/autoinstall.yaml'),
      ),
      (
        name: 'invalidurl ',
        url: '::invalid url::',
        expectedError: (UbuntuBootstrapLocalizations l10n) => (
              l10n.autoinstallDirectErrorInvalidUrlTitle,
              l10n.autoinstallDirectErrorInvalidUrlBody,
            ),
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

        if (testCase.expectedError != null) {
          await tester.pumpAndSettle();
          final errorBox = find.byType(YaruInfoBox);
          final (title, message) = testCase.expectedError!(tester.lang);
          expect(errorBox, findsOneWidget);
          expect(
            find.descendant(of: errorBox, matching: find.text(title)),
            findsOneWidget,
          );
          expect(
            find.descendant(of: errorBox, matching: find.text(message)),
            findsOneWidget,
          );
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

  testWidgets('clear local file', (tester) async {
    registerMockXdgDesktopPortalClient(
      result: XdgFileChooserPortalOpenFileResult(
        uris: ['file:///foo/autoinstall.yaml'],
        currentFilter: null,
      ),
    );
    registerMockAutoinstallService();
    await tester.pumpApp((_) => buildAutoinstallDirectPage());

    await tester.tap(find.button(tester.lang.autoinstallDirectFileButtonLabel));
    await tester.pumpAndSettle();

    expect(find.text('autoinstall.yaml'), findsOneWidget);
    expect(find.byType(TextFormField), isDisabled);

    await tester.tap(find.iconButton(YaruIcons.window_close));
    await tester.pump();

    expect(find.text('autoinstall.yaml'), findsNothing);
    expect(find.byType(TextFormField), isEnabled);
  });
}

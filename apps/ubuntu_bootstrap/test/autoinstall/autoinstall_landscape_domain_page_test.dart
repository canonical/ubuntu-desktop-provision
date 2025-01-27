import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/network.dart';
import 'package:yaru_test/yaru_test.dart';

import '../test_utils.dart';
import 'test_autoinstall.dart';

void main() {
  group('attach to landscape FQDN', () {
    for (final testCase in [
      (
        name: 'valid FQDN',
        fqdn: 'success',
        expectError: false,
        networkWarning: false,
      ),
      (
        name: 'Error returned from gRPC',
        fqdn: 'error',
        expectError: true,
        networkWarning: false,
      ),
      (
        name: 'Error when gRPC call fails',
        fqdn: 'failure',
        expectError: true,
        networkWarning: false,
      ),
      (
        name: 'Error when no active connection',
        fqdn: '',
        expectError: false,
        networkWarning: true,
      ),
    ]) {
      testWidgets(testCase.name, (tester) async {
        final mockService = registerMockLandscapeService();

        final fakeNetworkModel = NetworkModel(MockNetworkService());
        final fakeConnection = FakeConnectModel(hasActiveConnection: !testCase.networkWarning);
        fakeNetworkModel.addConnectMode(
            fakeConnection,
        );

        await tester.pumpApp(
          (_) => buildLandscaepDomainPage(
            overrides: [
              networkModelProvider.overrideWith((ref) => fakeNetworkModel),
            ],
          ),
        );

        final nextButton = find.button(tester.lang.next);
        expect(nextButton, findsOneWidget);
        expect(nextButton, isDisabled);

        if (testCase.networkWarning) {
          expect(find.text(tester.lang.landscapeDomainNoInternetTitleWarning), findsOneWidget);
          expect(find.text(tester.lang.landscapeDomainNoInternetDescriptionWarning), findsOneWidget);
          verifyNever(mockService.attach(testCase.fqdn));
          expect(nextButton, isDisabled);
          return;
        }

        await tester.enterText(
          find.byType(TextFormField),
          testCase.fqdn,
        );
        await tester.pump();

        expect(find.text(tester.lang.landscapeDomainInvalidDomainWarning), findsNothing);
        expect(nextButton, isEnabled);

        await tester.tap(nextButton);
        await tester.pump();

        verify(mockService.attach(testCase.fqdn)).called(1);
        if (testCase.expectError) {
          expect(find.text(tester.lang.landscapeDomainInvalidDomainWarning), findsOneWidget);
          expect(nextButton, isDisabled);
        } 

      });
    }
  });
}

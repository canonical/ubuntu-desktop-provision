import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:landscape_client/landscape_client.dart' as landscape;
import 'package:landscape_client/landscape_client.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/services/landscape_service.dart' as service;
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';

import 'landscape_service_test.mocks.dart';

@GenerateMocks([
  LandscapeClient,
])
void main() {
  group('watch landscape', () {
    for (final testCase in [
      (
        name: 'Success when stream is returned',
        nullClient: false,
        expectedError: false,
      ),
      (
        name: 'Error when gRPC client is null',
        nullClient: true,
        expectedError: true,
      ),
      (
        name: 'Error when gRPC server returns an error',
        nullClient: false,
        expectedError: true,
      ),
    ]) {
      test(testCase.name, () async {
        // Setup mock grpc client
        LandscapeBackendService landscapeService;
        MockLandscapeClient? mockClient;
        if (testCase.nullClient) {
          landscapeService = LandscapeBackendService(port: 8080, useTls: false);
        } else {
          mockClient = MockLandscapeClient();
          landscapeService =
              LandscapeBackendService.withClient(mockClient, false, 8080);
        }

        // Set up mock responses
        if (!testCase.nullClient) {
          if (testCase.expectedError) {
            when(mockClient!.watch(any))
                .thenThrow(Exception('Mocked gRPC failure'));
          } else {
            // Return a proper Stream directly rather than a MockResponseStream
            when(mockClient!.watch(any)).thenAnswer(
              (_) => Stream.fromIterable([
                landscape.WatchAuthenticationResponse(
                  status: landscape.AuthenticationStatus.AUTHENTICATION_PENDING,
                ),
                landscape.WatchAuthenticationResponse(
                  status: landscape.AuthenticationStatus.AUTHENTICATION_SUCCESS,
                  autoinstall: 'foo',
                ),
              ]),
            );
          }

          // Call method under test
          Stream<service.WatchAuthenticationResponse>? response;
          Object? caughtError;
          try {
            response = landscapeService.watch('bar');
          } on Exception catch (e) {
            caughtError = e;
          }

          // Run assertions
          // Run the assertions
          if (testCase.expectedError) {
            expect(caughtError, isA<Exception>());
            expect(response, isNull);
          } else {
            expect(caughtError, isNull);
            expect(response, isNotNull);
            expect(
              response,
              emitsInOrder(
                [
                  // Make sure you map to your own service-layer types or compare directly if they match
                  predicate<service.WatchAuthenticationResponse>(
                    (resp) =>
                        resp.status ==
                        service.AuthenticationStatus.authenticationPending,
                  ),
                  predicate<service.WatchAuthenticationResponse>(
                    (resp) =>
                        resp.status ==
                            service
                                .AuthenticationStatus.authenticationSuccess &&
                        resp.autoinstall == 'foo',
                  ),
                ],
              ),
            );
          }
        }
      });
    }
  });

  group('attach to landscape', () {
    // Setup mock grpc client
    final mockClient = MockLandscapeClient();
    final mockGrpcResponse = landscape.AttachResponse()
      ..status = landscape.AttachStatus.ATTACH_SUCCESS
      ..userCode = 'testUserCode'
      ..validUntil =
          Timestamp.fromDateTime(DateTime.now().add(Duration(hours: 1)));

    // Setup landscape service to test
    final landscapeService =
        LandscapeBackendService.withClient(mockClient, false, 808080);

    for (final testCase in [
      (
        name: 'Success when gRPC returns a response',
        expectedError: false,
      ),
      (
        name: 'Error when gRPC server returns an error',
        expectedError: true,
      ),
    ]) {
      // Mock responses
      test(testCase.name, () async {
        if (testCase.expectedError) {
          when(mockClient.attach()).thenThrow(Exception('Mocked gRPC failure'));
        } else {
          when(mockClient.attach()).thenAnswer((_) async => mockGrpcResponse);
        }

        // Call method under test
        service.AttachResponse? response;
        Object? caughtError;
        try {
          response =
              await landscapeService.attach('foo.bar', mockClient: mockClient);
        } on Exception catch (e) {
          caughtError = e;
        }

        // Run assertions
        if (testCase.expectedError) {
          expect(caughtError, isA<Exception>());
          expect(response, isNull);
        } else {
          expect(caughtError, isNull);
          expect(response!.status, service.AttachStatus.attachSuccess);
          expect(response.userCode, 'testUserCode');
          expect(response.validUntil, mockGrpcResponse.validUntil.toDateTime());
        }
      });
    }
  });
}

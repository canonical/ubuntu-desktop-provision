import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart';
import 'package:provd_client/src/generated/user.pbgrpc.dart';
import 'package:test/test.dart';

import 'provd_client_test.mocks.dart';

@GenerateMocks([UserServiceClient])
void main() {
  final mockUserServiceClient = MockUserServiceClient();
  final userClient = ProvdUserClient.withClient(mockUserServiceClient);

  test('validate username', () async {
    final request = ValidateUsernameRequest(username: 'foo');
    when(mockUserServiceClient.validateUsername(request)).thenAnswer((_) {
      return MockResponseFuture<ValidateUsernameResponse>(
        ValidateUsernameResponse(valid: true),
      );
    }); // 1

    expect(await userClient.validateUsername('foo'), isTrue);
  });
}

class MockResponseFuture<T> extends Mock implements ResponseFuture<T> {
  MockResponseFuture(this.value);

  final T value;

  @override
  Future<S> then<S>(FutureOr<S> Function(T) onValue, {Function? onError}) =>
      Future.value(value).then(
        onValue,
        onError: onError,
      );
}

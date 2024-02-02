import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/src/generated/user.pbgrpc.dart';
import 'package:provd_client/src/provd_user_client.dart';
import 'package:test/test.dart';

import 'provd_user_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([UserServiceClient])
void main() {
  final mockUserServiceClient = MockUserServiceClient();
  final userClient = ProvdUserClient.withClient(mockUserServiceClient);

  test('validate username', () async {
    final request = ValidateUsernameRequest(username: 'foo');
    when(mockUserServiceClient.validateUsername(request)).thenAnswer((_) {
      return MockResponseFuture<ValidateUsernameResponse>(
        ValidateUsernameResponse(usernameValidation: UsernameValidation.OK),
      );
    }); // 1

    expect(await userClient.validateUsername('foo'),
        equals(UsernameValidation.OK));
  });
}

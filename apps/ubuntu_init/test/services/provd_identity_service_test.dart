import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_init/src/services/provd_identity_service.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import 'provd_identity_service_test.mocks.dart';

@GenerateMocks([ProvdUserClient])
void main() {
  test('set/get identity', () async {
    final client = MockProvdUserClient();
    final service = ProvdIdentityService(client: client);

    await service.setIdentity(
      const Identity(
        realname: 'Test User',
        username: 'testuser',
        password: 'testpassword',
        hostname: 'testhostname',
        autoLogin: true,
      ),
    );
    verify(
      client.createUser(
        User(
          realName: 'Test User',
          username: 'testuser',
          password: 'testpassword',
          hostname: 'testhostname',
          autoLogin: true,
        ),
      ),
    ).called(1);

    final identity = await service.getIdentity();
    expect(
      identity,
      equals(
        const Identity(
          realname: 'Test User',
          username: 'testuser',
          password: 'testpassword',
          hostname: 'testhostname',
          autoLogin: true,
        ),
      ),
    );
  });
}

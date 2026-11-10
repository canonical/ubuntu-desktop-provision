import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/services/identity_service.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import '../test_utils.dart';

void main() {
  const testIdentity = IdentityData(
    realname: 'Arthur Dent',
    username: 'adent',
    hostname: 'heart-of-gold',
  );

  test('get identity', () async {
    final client = MockSubiquityClient();
    when(client.getIdentity()).thenAnswer((_) async => testIdentity);
    final postInstall = MockPostInstallService();
    when(postInstall.get(SubiquityIdentityService.kAutoLoginUser))
        .thenAnswer((_) async => testIdentity.username);
    final service = SubiquityIdentityService(client, postInstall);
    expect(
      await service.getIdentity(),
      equals(
        Identity(
          realname: testIdentity.realname,
          username: testIdentity.username,
          hostname: testIdentity.hostname,
          autoLogin: true,
        ),
      ),
    );

    verify(client.getIdentity()).called(1);
    verify(postInstall.get(SubiquityIdentityService.kAutoLoginUser)).called(1);
  });

  test('set identity', () async {
    final client = MockSubiquityClient();
    final postInstall = MockPostInstallService();
    final service =
        SubiquityIdentityService(client, postInstall, testSalt: '12345678');
    await service.setIdentity(
      Identity(
        realname: testIdentity.realname,
        username: testIdentity.username,
        hostname: testIdentity.hostname,
        password: 'pásswörd',
        autoLogin: true,
      ),
    );

    verify(
      client.setIdentity(
        argThat(
          isA<IdentityData>()
              .having((i) => i.realname, 'realname', testIdentity.realname)
              .having((i) => i.username, 'username', testIdentity.username)
              .having((i) => i.hostname, 'hostname', testIdentity.hostname)
              .having(
                (i) => i.cryptedPassword,
                'cryptedPassword',
                // output of: mkpasswd -m sha512crypt pásswörd 12345678
                '\$6\$12345678\$FQ329IePwMuA9R82gLYtPid4lWfSeq0zCFrg2C8u3J3pv/Js./ZObNOMFT1xLwGV6MnMJGTYAzyFqgDB/zr.d0',
              ),
        ),
      ),
    ).called(1);
    verify(
      postInstall.set(
        SubiquityIdentityService.kAutoLoginUser,
        testIdentity.username,
      ),
    ).called(1);
  });
}

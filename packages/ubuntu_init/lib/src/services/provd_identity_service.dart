import 'dart:io';

import 'package:meta/meta.dart';
import 'package:provd_client/provd_client.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

class ProvdIdentityService implements IdentityService {
  ProvdIdentityService({@visibleForTesting ProvdUserClient? userClient})
      : _userClient = userClient ?? ProvdUserClient(_socketAddress, 443);

  static final _socketAddress = InternetAddress(
    '/run/provd/provd.sock',
    type: InternetAddressType.unix,
  );

  final ProvdUserClient _userClient;

  @override
  Future<Identity> getIdentity() async => const Identity();

  @override
  Future<void> setIdentity(Identity identity) => _userClient.createUser(
        User(
          realName: identity.realname,
          username: identity.username,
          password: identity.password,
          hostname: identity.hostname,
          autoLogin: identity.autoLogin,
        ),
      );

  @override
  Future<bool> validateUsername(String username) =>
      _userClient.validateUsername(username);
}

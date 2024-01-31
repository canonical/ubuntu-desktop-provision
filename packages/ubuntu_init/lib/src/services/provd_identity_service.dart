import 'dart:io';

import 'package:meta/meta.dart';
import 'package:provd_client/provd_client.dart' as provd;
import 'package:ubuntu_provision/ubuntu_provision.dart';

class ProvdIdentityService implements IdentityService {
  ProvdIdentityService({@visibleForTesting provd.ProvdUserClient? userClient})
      : _userClient = userClient ?? provd.ProvdUserClient(_socketAddress, 443);

  static final _socketAddress = InternetAddress(
    '/run/provd/provd.sock',
    type: InternetAddressType.unix,
  );

  final provd.ProvdUserClient _userClient;
  Identity _identity = const Identity();

  @override
  Future<Identity> getIdentity() async => _identity;

  @override
  Future<void> setIdentity(Identity identity) async {
    if (_identity == identity) return;
    _identity = identity;
    return _userClient.createUser(identity.toProvdUser());
  }

  @override
  Future<UsernameValidation> validateUsername(String username) =>
      _userClient.validateUsername(username).then(
            (value) => value.fromProvd(),
          );
}

extension on Identity {
  provd.User toProvdUser() => provd.User(
        realName: realname,
        username: username,
        password: password,
        hostname: hostname,
        autoLogin: autoLogin,
      );
}

extension on provd.UsernameValidation {
  UsernameValidation fromProvd() => switch (this) {
        provd.UsernameValidation.ALREADY_IN_USE =>
          UsernameValidation.ALREADY_IN_USE,
        provd.UsernameValidation.SYSTEM_RESERVED =>
          UsernameValidation.SYSTEM_RESERVED,
        provd.UsernameValidation.INVALID_CHARS =>
          UsernameValidation.INVALID_CHARS,
        provd.UsernameValidation.TOO_LONG => UsernameValidation.TOO_LONG,
        provd.UsernameValidation.OK => UsernameValidation.OK,

        // also catches provd.UsernameValidation.EMPTY for which there is no
        // equivalent in subiquity
        _ => UsernameValidation.SYSTEM_RESERVED
      };
}

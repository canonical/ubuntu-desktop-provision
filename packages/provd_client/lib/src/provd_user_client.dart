import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/user.pbgrpc.dart';

export 'package:provd_client/src/generated/user.pb.dart'
    show User, UsernameValidation;

/// Handles the communication with provd regarding user actions.
class ProvdUserClient {
  ProvdUserClient(Object host, int port)
      : _userClient = UserServiceClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdUserClient.withClient(this._userClient);

  final UserServiceClient _userClient;

  /// Creates a new user from [user].
  Future<void> createUser(User user) async {
    final request = CreateUserRequest(user: user);
    await _userClient.createUser(request);
  }

  /// Validates the [username] and returns true if it is valid.
  Future<UsernameValidation> validateUsername(String username) async {
    final request = ValidateUsernameRequest(username: username);
    final response = await _userClient.validateUsername(request);
    return response.usernameValidation;
  }
}

import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'generated/user.pbgrpc.dart';

/// Handles the communication with provd regarding user actions.
class ProvdUserClient {
  ProvdUserClient(String serverUrl, int port)
      : _userClient = UserServiceClient(
          ClientChannel(
            serverUrl,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdUserClient.withClient(this._userClient);

  final UserServiceClient _userClient;

  /// Gets the user with [userId].
  Future<User> getUser(String userId) async {
    final request = GetUserRequest(userId: userId);
    final grpcResponse = await _userClient.getUser(request);
    return grpcResponse.user;
  }

  /// Creates a new user from [user].
  Future<void> createUser(User user) async {
    final request = CreateUserRequest(identity: user);
    await _userClient.createUser(request);
  }

  /// Validates the [username] and returns true if it is valid.
  Future<bool> validateUsername(String username) async {
    final request = ValidateUsernameRequest(username: username);
    final response = await _userClient.validateUsername(request);
    return response.valid;
  }
}

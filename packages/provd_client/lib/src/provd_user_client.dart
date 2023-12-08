import 'dart:async';

import 'package:grpc/grpc.dart';

import 'generated/user.pbgrpc.dart';

class ProvdUserClient {
  final UserServiceClient _userClient;

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

  Future<User> getUser(String userId) async {
    final request = GetUserRequest(userId: userId);
    final grpcResponse = await _userClient.getUser(request);
    return grpcResponse.user;
  }

  Future<void> createUser(User user) async {
    final request = CreateUserRequest(identity: user);
    await _userClient.createUser(request);
  }

  Future<bool> validateUsername(String username) async {
    final request = ValidateUsernameRequest(username: username);
    final response = await _userClient.validateUsername(request);
    return response.valid;
  }
}

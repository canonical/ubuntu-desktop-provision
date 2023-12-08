import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'generated/identity.pbgrpc.dart';

class ProvdClient {
  final UserServiceClient _userClient;

  ProvdClient(String serverUrl, int port)
      : _userClient = UserServiceClient(
          ClientChannel(
            serverUrl,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  /// Additional constructor for testing.
  @visibleForTesting
  ProvdClient.withClients(this._userClient);

  //$grpc.ResponseFuture<$2.GetUserResponse> getUser($2.Empty request, {$grpc.CallOptions? options}) {
  //  return $createUnaryCall(_$getUser, request, options: options);
  //}

  //$grpc.ResponseFuture<$2.Empty> setIdentity($2.CreateUserRequest request, {$grpc.CallOptions? options}) {
  //  return $createUnaryCall(_$setIdentity, request, options: options);
  //}

  //$grpc.ResponseFuture<$2.ValidateUsernameResponse> validateUsername($2.ValidateUsernameRequest request, {$grpc.CallOptions? options}) {
  //  return $createUnaryCall(_$validateUsername, request, options: options);
  //}
  Future<User> getUser(String id) async {
    final grpcResponse = await _userClient.getUser(Empty());
    return grpcResponse.user;
  }

  Future<void> setIdentity(User user) async {
    final request = CreateUserRequest(identity: user);
    await _userClient.setIdentity(request);
  }

  Future<bool> validateUsername(String username) async {
    final request = ValidateUsernameRequest(username: username);
    final response = await _userClient.validateUsername(request);
    return response.valid;
  }
}

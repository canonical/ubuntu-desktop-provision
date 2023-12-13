//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $8;

export 'user.pb.dart';

@$pb.GrpcServiceName('user.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$8.GetUserRequest, $8.GetUserResponse>(
      '/user.UserService/GetUser',
      ($8.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetUserResponse.fromBuffer(value));
  static final _$createUser = $grpc.ClientMethod<$8.CreateUserRequest, $8.Empty>(
      '/user.UserService/CreateUser',
      ($8.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.Empty.fromBuffer(value));
  static final _$validateUsername = $grpc.ClientMethod<$8.ValidateUsernameRequest, $8.ValidateUsernameResponse>(
      '/user.UserService/ValidateUsername',
      ($8.ValidateUsernameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ValidateUsernameResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.GetUserResponse> getUser($8.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.Empty> createUser($8.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.ValidateUsernameResponse> validateUsername($8.ValidateUsernameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateUsername, request, options: options);
  }
}

@$pb.GrpcServiceName('user.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.GetUserRequest, $8.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetUserRequest.fromBuffer(value),
        ($8.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.CreateUserRequest, $8.Empty>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateUserRequest.fromBuffer(value),
        ($8.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ValidateUsernameRequest, $8.ValidateUsernameResponse>(
        'ValidateUsername',
        validateUsername_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.ValidateUsernameRequest.fromBuffer(value),
        ($8.ValidateUsernameResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$8.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$8.Empty> createUser_Pre($grpc.ServiceCall call, $async.Future<$8.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$8.ValidateUsernameResponse> validateUsername_Pre($grpc.ServiceCall call, $async.Future<$8.ValidateUsernameRequest> request) async {
    return validateUsername(call, await request);
  }

  $async.Future<$8.GetUserResponse> getUser($grpc.ServiceCall call, $8.GetUserRequest request);
  $async.Future<$8.Empty> createUser($grpc.ServiceCall call, $8.CreateUserRequest request);
  $async.Future<$8.ValidateUsernameResponse> validateUsername($grpc.ServiceCall call, $8.ValidateUsernameRequest request);
}

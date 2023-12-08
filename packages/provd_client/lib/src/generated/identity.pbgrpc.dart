//
//  Generated code. Do not modify.
//  source: identity.proto
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

import 'identity.pb.dart' as $2;

export 'identity.pb.dart';

@$pb.GrpcServiceName('identity.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$2.Empty, $2.GetUserResponse>(
      '/identity.UserService/GetUser',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetUserResponse.fromBuffer(value));
  static final _$setIdentity = $grpc.ClientMethod<$2.CreateUserRequest, $2.Empty>(
      '/identity.UserService/SetIdentity',
      ($2.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$validateUsername = $grpc.ClientMethod<$2.ValidateUsernameRequest, $2.ValidateUsernameResponse>(
      '/identity.UserService/ValidateUsername',
      ($2.ValidateUsernameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ValidateUsernameResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.GetUserResponse> getUser($2.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> setIdentity($2.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$2.ValidateUsernameResponse> validateUsername($2.ValidateUsernameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateUsername, request, options: options);
  }
}

@$pb.GrpcServiceName('identity.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'identity.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Empty, $2.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($2.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateUserRequest, $2.Empty>(
        'SetIdentity',
        setIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateUserRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ValidateUsernameRequest, $2.ValidateUsernameResponse>(
        'ValidateUsername',
        validateUsername_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ValidateUsernameRequest.fromBuffer(value),
        ($2.ValidateUsernameResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getUser(call, await request);
  }

  $async.Future<$2.Empty> setIdentity_Pre($grpc.ServiceCall call, $async.Future<$2.CreateUserRequest> request) async {
    return setIdentity(call, await request);
  }

  $async.Future<$2.ValidateUsernameResponse> validateUsername_Pre($grpc.ServiceCall call, $async.Future<$2.ValidateUsernameRequest> request) async {
    return validateUsername(call, await request);
  }

  $async.Future<$2.GetUserResponse> getUser($grpc.ServiceCall call, $2.Empty request);
  $async.Future<$2.Empty> setIdentity($grpc.ServiceCall call, $2.CreateUserRequest request);
  $async.Future<$2.ValidateUsernameResponse> validateUsername($grpc.ServiceCall call, $2.ValidateUsernameRequest request);
}

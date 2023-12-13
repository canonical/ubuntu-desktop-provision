//
//  Generated code. Do not modify.
//  source: ad.proto
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

import 'ad.pb.dart' as $1;

export 'ad.pb.dart';

@$pb.GrpcServiceName('active_directory.ActiveDirectoryService')
class ActiveDirectoryServiceClient extends $grpc.Client {
  static final _$hasSupport = $grpc.ClientMethod<$1.Empty, $1.HasSupportResponse>(
      '/active_directory.ActiveDirectoryService/HasSupport',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.HasSupportResponse.fromBuffer(value));
  static final _$isUsed = $grpc.ClientMethod<$1.Empty, $1.IsUsedResponse>(
      '/active_directory.ActiveDirectoryService/IsUsed',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.IsUsedResponse.fromBuffer(value));
  static final _$setUsed = $grpc.ClientMethod<$1.SetUsedRequest, $1.Empty>(
      '/active_directory.ActiveDirectoryService/SetUsed',
      ($1.SetUsedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getConnectionInfo = $grpc.ClientMethod<$1.Empty, $1.GetConnectionInfoResponse>(
      '/active_directory.ActiveDirectoryService/GetConnectionInfo',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetConnectionInfoResponse.fromBuffer(value));
  static final _$setConnectionInfo = $grpc.ClientMethod<$1.SetConnectionInfoRequest, $1.Empty>(
      '/active_directory.ActiveDirectoryService/SetConnectionInfo',
      ($1.SetConnectionInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$checkDomainName = $grpc.ClientMethod<$1.CheckDomainNameRequest, $1.CheckDomainNameResponse>(
      '/active_directory.ActiveDirectoryService/CheckDomainName',
      ($1.CheckDomainNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CheckDomainNameResponse.fromBuffer(value));
  static final _$checkAdminName = $grpc.ClientMethod<$1.CheckAdminNameRequest, $1.CheckAdminNameResponse>(
      '/active_directory.ActiveDirectoryService/CheckAdminName',
      ($1.CheckAdminNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CheckAdminNameResponse.fromBuffer(value));
  static final _$checkPassword = $grpc.ClientMethod<$1.CheckPasswordRequest, $1.CheckPasswordResponse>(
      '/active_directory.ActiveDirectoryService/CheckPassword',
      ($1.CheckPasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CheckPasswordResponse.fromBuffer(value));
  static final _$pingDomainController = $grpc.ClientMethod<$1.PingDomainControllerRequest, $1.PingDomainControllerResponse>(
      '/active_directory.ActiveDirectoryService/PingDomainController',
      ($1.PingDomainControllerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PingDomainControllerResponse.fromBuffer(value));
  static final _$getJoinResult = $grpc.ClientMethod<$1.GetJoinResultRequest, $1.GetJoinResultResponse>(
      '/active_directory.ActiveDirectoryService/GetJoinResult',
      ($1.GetJoinResultRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetJoinResultResponse.fromBuffer(value));

  ActiveDirectoryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.HasSupportResponse> hasSupport($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$hasSupport, request, options: options);
  }

  $grpc.ResponseFuture<$1.IsUsedResponse> isUsed($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isUsed, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> setUsed($1.SetUsedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setUsed, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetConnectionInfoResponse> getConnectionInfo($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getConnectionInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> setConnectionInfo($1.SetConnectionInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setConnectionInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.CheckDomainNameResponse> checkDomainName($1.CheckDomainNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkDomainName, request, options: options);
  }

  $grpc.ResponseFuture<$1.CheckAdminNameResponse> checkAdminName($1.CheckAdminNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkAdminName, request, options: options);
  }

  $grpc.ResponseFuture<$1.CheckPasswordResponse> checkPassword($1.CheckPasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkPassword, request, options: options);
  }

  $grpc.ResponseFuture<$1.PingDomainControllerResponse> pingDomainController($1.PingDomainControllerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pingDomainController, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetJoinResultResponse> getJoinResult($1.GetJoinResultRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getJoinResult, request, options: options);
  }
}

@$pb.GrpcServiceName('active_directory.ActiveDirectoryService')
abstract class ActiveDirectoryServiceBase extends $grpc.Service {
  $core.String get $name => 'active_directory.ActiveDirectoryService';

  ActiveDirectoryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.HasSupportResponse>(
        'HasSupport',
        hasSupport_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.HasSupportResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.IsUsedResponse>(
        'IsUsed',
        isUsed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.IsUsedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SetUsedRequest, $1.Empty>(
        'SetUsed',
        setUsed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SetUsedRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.GetConnectionInfoResponse>(
        'GetConnectionInfo',
        getConnectionInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.GetConnectionInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SetConnectionInfoRequest, $1.Empty>(
        'SetConnectionInfo',
        setConnectionInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SetConnectionInfoRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CheckDomainNameRequest, $1.CheckDomainNameResponse>(
        'CheckDomainName',
        checkDomainName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CheckDomainNameRequest.fromBuffer(value),
        ($1.CheckDomainNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CheckAdminNameRequest, $1.CheckAdminNameResponse>(
        'CheckAdminName',
        checkAdminName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CheckAdminNameRequest.fromBuffer(value),
        ($1.CheckAdminNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CheckPasswordRequest, $1.CheckPasswordResponse>(
        'CheckPassword',
        checkPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CheckPasswordRequest.fromBuffer(value),
        ($1.CheckPasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PingDomainControllerRequest, $1.PingDomainControllerResponse>(
        'PingDomainController',
        pingDomainController_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PingDomainControllerRequest.fromBuffer(value),
        ($1.PingDomainControllerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetJoinResultRequest, $1.GetJoinResultResponse>(
        'GetJoinResult',
        getJoinResult_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetJoinResultRequest.fromBuffer(value),
        ($1.GetJoinResultResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.HasSupportResponse> hasSupport_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return hasSupport(call, await request);
  }

  $async.Future<$1.IsUsedResponse> isUsed_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return isUsed(call, await request);
  }

  $async.Future<$1.Empty> setUsed_Pre($grpc.ServiceCall call, $async.Future<$1.SetUsedRequest> request) async {
    return setUsed(call, await request);
  }

  $async.Future<$1.GetConnectionInfoResponse> getConnectionInfo_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getConnectionInfo(call, await request);
  }

  $async.Future<$1.Empty> setConnectionInfo_Pre($grpc.ServiceCall call, $async.Future<$1.SetConnectionInfoRequest> request) async {
    return setConnectionInfo(call, await request);
  }

  $async.Future<$1.CheckDomainNameResponse> checkDomainName_Pre($grpc.ServiceCall call, $async.Future<$1.CheckDomainNameRequest> request) async {
    return checkDomainName(call, await request);
  }

  $async.Future<$1.CheckAdminNameResponse> checkAdminName_Pre($grpc.ServiceCall call, $async.Future<$1.CheckAdminNameRequest> request) async {
    return checkAdminName(call, await request);
  }

  $async.Future<$1.CheckPasswordResponse> checkPassword_Pre($grpc.ServiceCall call, $async.Future<$1.CheckPasswordRequest> request) async {
    return checkPassword(call, await request);
  }

  $async.Future<$1.PingDomainControllerResponse> pingDomainController_Pre($grpc.ServiceCall call, $async.Future<$1.PingDomainControllerRequest> request) async {
    return pingDomainController(call, await request);
  }

  $async.Future<$1.GetJoinResultResponse> getJoinResult_Pre($grpc.ServiceCall call, $async.Future<$1.GetJoinResultRequest> request) async {
    return getJoinResult(call, await request);
  }

  $async.Future<$1.HasSupportResponse> hasSupport($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.IsUsedResponse> isUsed($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.Empty> setUsed($grpc.ServiceCall call, $1.SetUsedRequest request);
  $async.Future<$1.GetConnectionInfoResponse> getConnectionInfo($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.Empty> setConnectionInfo($grpc.ServiceCall call, $1.SetConnectionInfoRequest request);
  $async.Future<$1.CheckDomainNameResponse> checkDomainName($grpc.ServiceCall call, $1.CheckDomainNameRequest request);
  $async.Future<$1.CheckAdminNameResponse> checkAdminName($grpc.ServiceCall call, $1.CheckAdminNameRequest request);
  $async.Future<$1.CheckPasswordResponse> checkPassword($grpc.ServiceCall call, $1.CheckPasswordRequest request);
  $async.Future<$1.PingDomainControllerResponse> pingDomainController($grpc.ServiceCall call, $1.PingDomainControllerRequest request);
  $async.Future<$1.GetJoinResultResponse> getJoinResult($grpc.ServiceCall call, $1.GetJoinResultRequest request);
}

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

import 'ad.pb.dart' as $2;
import 'google/protobuf/empty.pb.dart' as $0;

export 'ad.pb.dart';

@$pb.GrpcServiceName('active_directory.ActiveDirectoryService')
class ActiveDirectoryServiceClient extends $grpc.Client {
  static final _$hasSupport = $grpc.ClientMethod<$0.Empty, $2.HasSupportResponse>(
      '/active_directory.ActiveDirectoryService/HasSupport',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.HasSupportResponse.fromBuffer(value));
  static final _$isUsed = $grpc.ClientMethod<$0.Empty, $2.IsUsedResponse>(
      '/active_directory.ActiveDirectoryService/IsUsed',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.IsUsedResponse.fromBuffer(value));
  static final _$setUsed = $grpc.ClientMethod<$2.SetUsedRequest, $0.Empty>(
      '/active_directory.ActiveDirectoryService/SetUsed',
      ($2.SetUsedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getConnectionInfo = $grpc.ClientMethod<$0.Empty, $2.GetConnectionInfoResponse>(
      '/active_directory.ActiveDirectoryService/GetConnectionInfo',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetConnectionInfoResponse.fromBuffer(value));
  static final _$setConnectionInfo = $grpc.ClientMethod<$2.SetConnectionInfoRequest, $0.Empty>(
      '/active_directory.ActiveDirectoryService/SetConnectionInfo',
      ($2.SetConnectionInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$checkDomainName = $grpc.ClientMethod<$2.CheckDomainNameRequest, $2.CheckDomainNameResponse>(
      '/active_directory.ActiveDirectoryService/CheckDomainName',
      ($2.CheckDomainNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CheckDomainNameResponse.fromBuffer(value));
  static final _$checkAdminName = $grpc.ClientMethod<$2.CheckAdminNameRequest, $2.CheckAdminNameResponse>(
      '/active_directory.ActiveDirectoryService/CheckAdminName',
      ($2.CheckAdminNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CheckAdminNameResponse.fromBuffer(value));
  static final _$checkPassword = $grpc.ClientMethod<$2.CheckPasswordRequest, $2.CheckPasswordResponse>(
      '/active_directory.ActiveDirectoryService/CheckPassword',
      ($2.CheckPasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CheckPasswordResponse.fromBuffer(value));
  static final _$pingDomainController = $grpc.ClientMethod<$2.PingDomainControllerRequest, $2.PingDomainControllerResponse>(
      '/active_directory.ActiveDirectoryService/PingDomainController',
      ($2.PingDomainControllerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PingDomainControllerResponse.fromBuffer(value));
  static final _$getJoinResult = $grpc.ClientMethod<$2.GetJoinResultRequest, $2.GetJoinResultResponse>(
      '/active_directory.ActiveDirectoryService/GetJoinResult',
      ($2.GetJoinResultRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetJoinResultResponse.fromBuffer(value));

  ActiveDirectoryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.HasSupportResponse> hasSupport($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$hasSupport, request, options: options);
  }

  $grpc.ResponseFuture<$2.IsUsedResponse> isUsed($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isUsed, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setUsed($2.SetUsedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setUsed, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetConnectionInfoResponse> getConnectionInfo($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getConnectionInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setConnectionInfo($2.SetConnectionInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setConnectionInfo, request, options: options);
  }

  $grpc.ResponseFuture<$2.CheckDomainNameResponse> checkDomainName($2.CheckDomainNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkDomainName, request, options: options);
  }

  $grpc.ResponseFuture<$2.CheckAdminNameResponse> checkAdminName($2.CheckAdminNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkAdminName, request, options: options);
  }

  $grpc.ResponseFuture<$2.CheckPasswordResponse> checkPassword($2.CheckPasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkPassword, request, options: options);
  }

  $grpc.ResponseFuture<$2.PingDomainControllerResponse> pingDomainController($2.PingDomainControllerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pingDomainController, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetJoinResultResponse> getJoinResult($2.GetJoinResultRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getJoinResult, request, options: options);
  }
}

@$pb.GrpcServiceName('active_directory.ActiveDirectoryService')
abstract class ActiveDirectoryServiceBase extends $grpc.Service {
  $core.String get $name => 'active_directory.ActiveDirectoryService';

  ActiveDirectoryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.HasSupportResponse>(
        'HasSupport',
        hasSupport_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.HasSupportResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.IsUsedResponse>(
        'IsUsed',
        isUsed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.IsUsedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SetUsedRequest, $0.Empty>(
        'SetUsed',
        setUsed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SetUsedRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.GetConnectionInfoResponse>(
        'GetConnectionInfo',
        getConnectionInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.GetConnectionInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SetConnectionInfoRequest, $0.Empty>(
        'SetConnectionInfo',
        setConnectionInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SetConnectionInfoRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CheckDomainNameRequest, $2.CheckDomainNameResponse>(
        'CheckDomainName',
        checkDomainName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CheckDomainNameRequest.fromBuffer(value),
        ($2.CheckDomainNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CheckAdminNameRequest, $2.CheckAdminNameResponse>(
        'CheckAdminName',
        checkAdminName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CheckAdminNameRequest.fromBuffer(value),
        ($2.CheckAdminNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CheckPasswordRequest, $2.CheckPasswordResponse>(
        'CheckPassword',
        checkPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CheckPasswordRequest.fromBuffer(value),
        ($2.CheckPasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PingDomainControllerRequest, $2.PingDomainControllerResponse>(
        'PingDomainController',
        pingDomainController_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PingDomainControllerRequest.fromBuffer(value),
        ($2.PingDomainControllerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetJoinResultRequest, $2.GetJoinResultResponse>(
        'GetJoinResult',
        getJoinResult_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetJoinResultRequest.fromBuffer(value),
        ($2.GetJoinResultResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.HasSupportResponse> hasSupport_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return hasSupport(call, await request);
  }

  $async.Future<$2.IsUsedResponse> isUsed_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return isUsed(call, await request);
  }

  $async.Future<$0.Empty> setUsed_Pre($grpc.ServiceCall call, $async.Future<$2.SetUsedRequest> request) async {
    return setUsed(call, await request);
  }

  $async.Future<$2.GetConnectionInfoResponse> getConnectionInfo_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getConnectionInfo(call, await request);
  }

  $async.Future<$0.Empty> setConnectionInfo_Pre($grpc.ServiceCall call, $async.Future<$2.SetConnectionInfoRequest> request) async {
    return setConnectionInfo(call, await request);
  }

  $async.Future<$2.CheckDomainNameResponse> checkDomainName_Pre($grpc.ServiceCall call, $async.Future<$2.CheckDomainNameRequest> request) async {
    return checkDomainName(call, await request);
  }

  $async.Future<$2.CheckAdminNameResponse> checkAdminName_Pre($grpc.ServiceCall call, $async.Future<$2.CheckAdminNameRequest> request) async {
    return checkAdminName(call, await request);
  }

  $async.Future<$2.CheckPasswordResponse> checkPassword_Pre($grpc.ServiceCall call, $async.Future<$2.CheckPasswordRequest> request) async {
    return checkPassword(call, await request);
  }

  $async.Future<$2.PingDomainControllerResponse> pingDomainController_Pre($grpc.ServiceCall call, $async.Future<$2.PingDomainControllerRequest> request) async {
    return pingDomainController(call, await request);
  }

  $async.Future<$2.GetJoinResultResponse> getJoinResult_Pre($grpc.ServiceCall call, $async.Future<$2.GetJoinResultRequest> request) async {
    return getJoinResult(call, await request);
  }

  $async.Future<$2.HasSupportResponse> hasSupport($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$2.IsUsedResponse> isUsed($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> setUsed($grpc.ServiceCall call, $2.SetUsedRequest request);
  $async.Future<$2.GetConnectionInfoResponse> getConnectionInfo($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> setConnectionInfo($grpc.ServiceCall call, $2.SetConnectionInfoRequest request);
  $async.Future<$2.CheckDomainNameResponse> checkDomainName($grpc.ServiceCall call, $2.CheckDomainNameRequest request);
  $async.Future<$2.CheckAdminNameResponse> checkAdminName($grpc.ServiceCall call, $2.CheckAdminNameRequest request);
  $async.Future<$2.CheckPasswordResponse> checkPassword($grpc.ServiceCall call, $2.CheckPasswordRequest request);
  $async.Future<$2.PingDomainControllerResponse> pingDomainController($grpc.ServiceCall call, $2.PingDomainControllerRequest request);
  $async.Future<$2.GetJoinResultResponse> getJoinResult($grpc.ServiceCall call, $2.GetJoinResultRequest request);
}

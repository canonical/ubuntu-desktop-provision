//
//  Generated code. Do not modify.
//  source: pro_enrolment.proto
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

import 'pro_enrolment.pb.dart' as $6;

export 'pro_enrolment.pb.dart';

@$pb.GrpcServiceName('pro_enrollment.ProEnrolmentService')
class ProEnrolmentServiceClient extends $grpc.Client {
  static final _$generateEnrolmentCode = $grpc.ClientMethod<$6.GenerateEnrolmentCodeRequest, $6.GenerateEnrolmentCodeResponse>(
      '/pro_enrollment.ProEnrolmentService/GenerateEnrolmentCode',
      ($6.GenerateEnrolmentCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GenerateEnrolmentCodeResponse.fromBuffer(value));
  static final _$setTokenManually = $grpc.ClientMethod<$6.SetTokenManuallyRequest, $6.Empty>(
      '/pro_enrollment.ProEnrolmentService/SetTokenManually',
      ($6.SetTokenManuallyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.Empty.fromBuffer(value));

  ProEnrolmentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.GenerateEnrolmentCodeResponse> generateEnrolmentCode($6.GenerateEnrolmentCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateEnrolmentCode, request, options: options);
  }

  $grpc.ResponseFuture<$6.Empty> setTokenManually($6.SetTokenManuallyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setTokenManually, request, options: options);
  }
}

@$pb.GrpcServiceName('pro_enrollment.ProEnrolmentService')
abstract class ProEnrolmentServiceBase extends $grpc.Service {
  $core.String get $name => 'pro_enrollment.ProEnrolmentService';

  ProEnrolmentServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.GenerateEnrolmentCodeRequest, $6.GenerateEnrolmentCodeResponse>(
        'GenerateEnrolmentCode',
        generateEnrolmentCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GenerateEnrolmentCodeRequest.fromBuffer(value),
        ($6.GenerateEnrolmentCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SetTokenManuallyRequest, $6.Empty>(
        'SetTokenManually',
        setTokenManually_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SetTokenManuallyRequest.fromBuffer(value),
        ($6.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$6.GenerateEnrolmentCodeResponse> generateEnrolmentCode_Pre($grpc.ServiceCall call, $async.Future<$6.GenerateEnrolmentCodeRequest> request) async {
    return generateEnrolmentCode(call, await request);
  }

  $async.Future<$6.Empty> setTokenManually_Pre($grpc.ServiceCall call, $async.Future<$6.SetTokenManuallyRequest> request) async {
    return setTokenManually(call, await request);
  }

  $async.Future<$6.GenerateEnrolmentCodeResponse> generateEnrolmentCode($grpc.ServiceCall call, $6.GenerateEnrolmentCodeRequest request);
  $async.Future<$6.Empty> setTokenManually($grpc.ServiceCall call, $6.SetTokenManuallyRequest request);
}

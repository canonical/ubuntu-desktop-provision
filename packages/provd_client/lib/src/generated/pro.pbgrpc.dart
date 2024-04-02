//
//  Generated code. Do not modify.
//  source: pro.proto
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

import 'google/protobuf/empty.pb.dart' as $0;
import 'google/protobuf/wrappers.pb.dart' as $1;
import 'pro.pb.dart' as $6;

export 'pro.pb.dart';

@$pb.GrpcServiceName('pro.ProService')
class ProServiceClient extends $grpc.Client {
  static final _$proMagicAttach = $grpc.ClientMethod<$0.Empty, $6.ProMagicAttachResponse>(
      '/pro.ProService/ProMagicAttach',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ProMagicAttachResponse.fromBuffer(value));
  static final _$proAttach = $grpc.ClientMethod<$6.ProAttachRequest, $6.ProAttachResponse>(
      '/pro.ProService/ProAttach',
      ($6.ProAttachRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ProAttachResponse.fromBuffer(value));
  static final _$proStatus = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/pro.ProService/ProStatus',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));

  ProServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$6.ProMagicAttachResponse> proMagicAttach($0.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$proMagicAttach, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$6.ProAttachResponse> proAttach($6.ProAttachRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$proAttach, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> proStatus($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$proStatus, request, options: options);
  }
}

@$pb.GrpcServiceName('pro.ProService')
abstract class ProServiceBase extends $grpc.Service {
  $core.String get $name => 'pro.ProService';

  ProServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $6.ProMagicAttachResponse>(
        'ProMagicAttach',
        proMagicAttach_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($6.ProMagicAttachResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ProAttachRequest, $6.ProAttachResponse>(
        'ProAttach',
        proAttach_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ProAttachRequest.fromBuffer(value),
        ($6.ProAttachResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'ProStatus',
        proStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
  }

  $async.Stream<$6.ProMagicAttachResponse> proMagicAttach_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* proMagicAttach(call, await request);
  }

  $async.Future<$6.ProAttachResponse> proAttach_Pre($grpc.ServiceCall call, $async.Future<$6.ProAttachRequest> request) async {
    return proAttach(call, await request);
  }

  $async.Future<$1.BoolValue> proStatus_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return proStatus(call, await request);
  }

  $async.Stream<$6.ProMagicAttachResponse> proMagicAttach($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$6.ProAttachResponse> proAttach($grpc.ServiceCall call, $6.ProAttachRequest request);
  $async.Future<$1.BoolValue> proStatus($grpc.ServiceCall call, $0.Empty request);
}

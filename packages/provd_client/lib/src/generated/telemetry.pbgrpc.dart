//
//  Generated code. Do not modify.
//  source: telemetry.proto
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
import 'telemetry.pb.dart' as $8;

export 'telemetry.pb.dart';

@$pb.GrpcServiceName('telemetry.TelemetryService')
class TelemetryServiceClient extends $grpc.Client {
  static final _$collect = $grpc.ClientMethod<$0.Empty, $8.CollectResponse>(
      '/telemetry.TelemetryService/Collect',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CollectResponse.fromBuffer(value));
  static final _$collectAndSend = $grpc.ClientMethod<$0.Empty, $8.SendResponse>(
      '/telemetry.TelemetryService/CollectAndSend',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.SendResponse.fromBuffer(value));
  static final _$sendDecline = $grpc.ClientMethod<$0.Empty, $8.SendResponse>(
      '/telemetry.TelemetryService/SendDecline',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.SendResponse.fromBuffer(value));

  TelemetryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CollectResponse> collect($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$collect, request, options: options);
  }

  $grpc.ResponseFuture<$8.SendResponse> collectAndSend($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$collectAndSend, request, options: options);
  }

  $grpc.ResponseFuture<$8.SendResponse> sendDecline($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendDecline, request, options: options);
  }
}

@$pb.GrpcServiceName('telemetry.TelemetryService')
abstract class TelemetryServiceBase extends $grpc.Service {
  $core.String get $name => 'telemetry.TelemetryService';

  TelemetryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $8.CollectResponse>(
        'Collect',
        collect_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($8.CollectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $8.SendResponse>(
        'CollectAndSend',
        collectAndSend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($8.SendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $8.SendResponse>(
        'SendDecline',
        sendDecline_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($8.SendResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CollectResponse> collect_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return collect(call, await request);
  }

  $async.Future<$8.SendResponse> collectAndSend_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return collectAndSend(call, await request);
  }

  $async.Future<$8.SendResponse> sendDecline_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return sendDecline(call, await request);
  }

  $async.Future<$8.CollectResponse> collect($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$8.SendResponse> collectAndSend($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$8.SendResponse> sendDecline($grpc.ServiceCall call, $0.Empty request);
}

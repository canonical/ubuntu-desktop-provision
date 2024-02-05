//
//  Generated code. Do not modify.
//  source: timezone.proto
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
import 'timezone.pb.dart' as $8;

export 'timezone.pb.dart';

@$pb.GrpcServiceName('timezone.TimezoneService')
class TimezoneServiceClient extends $grpc.Client {
  static final _$setTimezone = $grpc.ClientMethod<$8.SetTimezoneRequest, $0.Empty>(
      '/timezone.TimezoneService/SetTimezone',
      ($8.SetTimezoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getTimezone = $grpc.ClientMethod<$0.Empty, $8.GetTimezoneResponse>(
      '/timezone.TimezoneService/GetTimezone',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetTimezoneResponse.fromBuffer(value));

  TimezoneServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> setTimezone($8.SetTimezoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setTimezone, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetTimezoneResponse> getTimezone($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimezone, request, options: options);
  }
}

@$pb.GrpcServiceName('timezone.TimezoneService')
abstract class TimezoneServiceBase extends $grpc.Service {
  $core.String get $name => 'timezone.TimezoneService';

  TimezoneServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.SetTimezoneRequest, $0.Empty>(
        'SetTimezone',
        setTimezone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.SetTimezoneRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $8.GetTimezoneResponse>(
        'GetTimezone',
        getTimezone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($8.GetTimezoneResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> setTimezone_Pre($grpc.ServiceCall call, $async.Future<$8.SetTimezoneRequest> request) async {
    return setTimezone(call, await request);
  }

  $async.Future<$8.GetTimezoneResponse> getTimezone_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getTimezone(call, await request);
  }

  $async.Future<$0.Empty> setTimezone($grpc.ServiceCall call, $8.SetTimezoneRequest request);
  $async.Future<$8.GetTimezoneResponse> getTimezone($grpc.ServiceCall call, $0.Empty request);
}

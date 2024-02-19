//
//  Generated code. Do not modify.
//  source: privacy.proto
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
import 'google/protobuf/wrappers.pb.dart' as $5;

export 'privacy.pb.dart';

@$pb.GrpcServiceName('privacy.PrivacyService')
class PrivacyServiceClient extends $grpc.Client {
  static final _$getLocationServices = $grpc.ClientMethod<$0.Empty, $5.BoolValue>(
      '/privacy.PrivacyService/GetLocationServices',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.BoolValue.fromBuffer(value));
  static final _$enableLocationServices = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/privacy.PrivacyService/EnableLocationServices',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableLocationServices = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/privacy.PrivacyService/DisableLocationServices',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  PrivacyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.BoolValue> getLocationServices($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLocationServices, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableLocationServices($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableLocationServices, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableLocationServices($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableLocationServices, request, options: options);
  }
}

@$pb.GrpcServiceName('privacy.PrivacyService')
abstract class PrivacyServiceBase extends $grpc.Service {
  $core.String get $name => 'privacy.PrivacyService';

  PrivacyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.BoolValue>(
        'GetLocationServices',
        getLocationServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.BoolValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableLocationServices',
        enableLocationServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableLocationServices',
        disableLocationServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$5.BoolValue> getLocationServices_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getLocationServices(call, await request);
  }

  $async.Future<$0.Empty> enableLocationServices_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableLocationServices(call, await request);
  }

  $async.Future<$0.Empty> disableLocationServices_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableLocationServices(call, await request);
  }

  $async.Future<$5.BoolValue> getLocationServices($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableLocationServices($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableLocationServices($grpc.ServiceCall call, $0.Empty request);
}

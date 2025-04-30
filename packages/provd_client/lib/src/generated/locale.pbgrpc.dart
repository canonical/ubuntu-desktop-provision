//
//  Generated code. Do not modify.
//  source: locale.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/empty.pb.dart' as $0;
import 'locale.pb.dart' as $6;

export 'locale.pb.dart';

@$pb.GrpcServiceName('locale.LocaleService')
class LocaleServiceClient extends $grpc.Client {
  static final _$setLocale = $grpc.ClientMethod<$6.SetLocaleRequest, $0.Empty>(
      '/locale.LocaleService/SetLocale',
      ($6.SetLocaleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getLocale = $grpc.ClientMethod<$0.Empty, $6.GetLocaleResponse>(
      '/locale.LocaleService/GetLocale',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetLocaleResponse.fromBuffer(value));

  LocaleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> setLocale($6.SetLocaleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setLocale, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetLocaleResponse> getLocale($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLocale, request, options: options);
  }
}

@$pb.GrpcServiceName('locale.LocaleService')
abstract class LocaleServiceBase extends $grpc.Service {
  $core.String get $name => 'locale.LocaleService';

  LocaleServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.SetLocaleRequest, $0.Empty>(
        'SetLocale',
        setLocale_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SetLocaleRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $6.GetLocaleResponse>(
        'GetLocale',
        getLocale_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($6.GetLocaleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> setLocale_Pre($grpc.ServiceCall $call, $async.Future<$6.SetLocaleRequest> $request) async {
    return setLocale($call, await $request);
  }

  $async.Future<$6.GetLocaleResponse> getLocale_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getLocale($call, await $request);
  }

  $async.Future<$0.Empty> setLocale($grpc.ServiceCall call, $6.SetLocaleRequest request);
  $async.Future<$6.GetLocaleResponse> getLocale($grpc.ServiceCall call, $0.Empty request);
}

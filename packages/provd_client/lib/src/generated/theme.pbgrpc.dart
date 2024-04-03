//
//  Generated code. Do not modify.
//  source: theme.proto
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
import 'theme.pb.dart' as $8;

export 'theme.pb.dart';

@$pb.GrpcServiceName('theme.ThemeService')
class ThemeServiceClient extends $grpc.Client {
  static final _$setTheme = $grpc.ClientMethod<$8.SetThemeRequest, $0.Empty>(
      '/theme.ThemeService/SetTheme',
      ($8.SetThemeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getTheme = $grpc.ClientMethod<$0.Empty, $8.GetThemeResponse>(
      '/theme.ThemeService/GetTheme',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetThemeResponse.fromBuffer(value));
  static final _$setAccent = $grpc.ClientMethod<$8.SetAccentRequest, $0.Empty>(
      '/theme.ThemeService/SetAccent',
      ($8.SetAccentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getAccent = $grpc.ClientMethod<$0.Empty, $8.GetAccentResponse>(
      '/theme.ThemeService/GetAccent',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetAccentResponse.fromBuffer(value));

  ThemeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> setTheme($8.SetThemeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setTheme, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetThemeResponse> getTheme($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTheme, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setAccent($8.SetAccentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAccent, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetAccentResponse> getAccent($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccent, request, options: options);
  }
}

@$pb.GrpcServiceName('theme.ThemeService')
abstract class ThemeServiceBase extends $grpc.Service {
  $core.String get $name => 'theme.ThemeService';

  ThemeServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.SetThemeRequest, $0.Empty>(
        'SetTheme',
        setTheme_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.SetThemeRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $8.GetThemeResponse>(
        'GetTheme',
        getTheme_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($8.GetThemeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.SetAccentRequest, $0.Empty>(
        'SetAccent',
        setAccent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.SetAccentRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $8.GetAccentResponse>(
        'GetAccent',
        getAccent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($8.GetAccentResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> setTheme_Pre($grpc.ServiceCall call, $async.Future<$8.SetThemeRequest> request) async {
    return setTheme(call, await request);
  }

  $async.Future<$8.GetThemeResponse> getTheme_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getTheme(call, await request);
  }

  $async.Future<$0.Empty> setAccent_Pre($grpc.ServiceCall call, $async.Future<$8.SetAccentRequest> request) async {
    return setAccent(call, await request);
  }

  $async.Future<$8.GetAccentResponse> getAccent_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAccent(call, await request);
  }

  $async.Future<$0.Empty> setTheme($grpc.ServiceCall call, $8.SetThemeRequest request);
  $async.Future<$8.GetThemeResponse> getTheme($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> setAccent($grpc.ServiceCall call, $8.SetAccentRequest request);
  $async.Future<$8.GetAccentResponse> getAccent($grpc.ServiceCall call, $0.Empty request);
}

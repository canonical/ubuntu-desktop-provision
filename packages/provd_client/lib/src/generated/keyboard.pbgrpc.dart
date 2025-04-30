//
//  Generated code. Do not modify.
//  source: keyboard.proto
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
import 'keyboard.pb.dart' as $5;

export 'keyboard.pb.dart';

@$pb.GrpcServiceName('keyboard.KeyboardService')
class KeyboardServiceClient extends $grpc.Client {
  static final _$setKeyboard = $grpc.ClientMethod<$5.SetKeyboardRequest, $0.Empty>(
      '/keyboard.KeyboardService/SetKeyboard',
      ($5.SetKeyboardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setInputSource = $grpc.ClientMethod<$5.SetInputSourceRequest, $0.Empty>(
      '/keyboard.KeyboardService/SetInputSource',
      ($5.SetInputSourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getKeyboard = $grpc.ClientMethod<$0.Empty, $5.GetKeyboardResponse>(
      '/keyboard.KeyboardService/GetKeyboard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetKeyboardResponse.fromBuffer(value));

  KeyboardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> setKeyboard($5.SetKeyboardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setInputSource($5.SetInputSourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setInputSource, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetKeyboardResponse> getKeyboard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getKeyboard, request, options: options);
  }
}

@$pb.GrpcServiceName('keyboard.KeyboardService')
abstract class KeyboardServiceBase extends $grpc.Service {
  $core.String get $name => 'keyboard.KeyboardService';

  KeyboardServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.SetKeyboardRequest, $0.Empty>(
        'SetKeyboard',
        setKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SetKeyboardRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SetInputSourceRequest, $0.Empty>(
        'SetInputSource',
        setInputSource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SetInputSourceRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.GetKeyboardResponse>(
        'GetKeyboard',
        getKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.GetKeyboardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> setKeyboard_Pre($grpc.ServiceCall $call, $async.Future<$5.SetKeyboardRequest> $request) async {
    return setKeyboard($call, await $request);
  }

  $async.Future<$0.Empty> setInputSource_Pre($grpc.ServiceCall $call, $async.Future<$5.SetInputSourceRequest> $request) async {
    return setInputSource($call, await $request);
  }

  $async.Future<$5.GetKeyboardResponse> getKeyboard_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getKeyboard($call, await $request);
  }

  $async.Future<$0.Empty> setKeyboard($grpc.ServiceCall call, $5.SetKeyboardRequest request);
  $async.Future<$0.Empty> setInputSource($grpc.ServiceCall call, $5.SetInputSourceRequest request);
  $async.Future<$5.GetKeyboardResponse> getKeyboard($grpc.ServiceCall call, $0.Empty request);
}

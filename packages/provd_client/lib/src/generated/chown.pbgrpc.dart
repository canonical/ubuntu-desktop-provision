//
//  Generated code. Do not modify.
//  source: chown.proto
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

import 'chown.pb.dart' as $3;

export 'chown.pb.dart';

@$pb.GrpcServiceName('chown.ChownService')
class ChownServiceClient extends $grpc.Client {
  static final _$chownSettings = $grpc.ClientMethod<$3.ChownRequest, $3.ChownResponse>(
      '/chown.ChownService/ChownSettings',
      ($3.ChownRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ChownResponse.fromBuffer(value));

  ChownServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.ChownResponse> chownSettings($3.ChownRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chownSettings, request, options: options);
  }
}

@$pb.GrpcServiceName('chown.ChownService')
abstract class ChownServiceBase extends $grpc.Service {
  $core.String get $name => 'chown.ChownService';

  ChownServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ChownRequest, $3.ChownResponse>(
        'ChownSettings',
        chownSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ChownRequest.fromBuffer(value),
        ($3.ChownResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.ChownResponse> chownSettings_Pre($grpc.ServiceCall $call, $async.Future<$3.ChownRequest> $request) async {
    return chownSettings($call, await $request);
  }

  $async.Future<$3.ChownResponse> chownSettings($grpc.ServiceCall call, $3.ChownRequest request);
}

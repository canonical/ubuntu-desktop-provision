//
//  Generated code. Do not modify.
//  source: gdm.proto
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

import 'gdm.pb.dart' as $4;
import 'google/protobuf/empty.pb.dart' as $0;

export 'gdm.pb.dart';

@$pb.GrpcServiceName('gdm.GdmService')
class GdmServiceClient extends $grpc.Client {
  static final _$launchDesktopSession = $grpc.ClientMethod<$4.GdmServiceRequest, $0.Empty>(
      '/gdm.GdmService/LaunchDesktopSession',
      ($4.GdmServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  GdmServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> launchDesktopSession($4.GdmServiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$launchDesktopSession, request, options: options);
  }
}

@$pb.GrpcServiceName('gdm.GdmService')
abstract class GdmServiceBase extends $grpc.Service {
  $core.String get $name => 'gdm.GdmService';

  GdmServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.GdmServiceRequest, $0.Empty>(
        'LaunchDesktopSession',
        launchDesktopSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GdmServiceRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> launchDesktopSession_Pre($grpc.ServiceCall $call, $async.Future<$4.GdmServiceRequest> $request) async {
    return launchDesktopSession($call, await $request);
  }

  $async.Future<$0.Empty> launchDesktopSession($grpc.ServiceCall call, $4.GdmServiceRequest request);
}

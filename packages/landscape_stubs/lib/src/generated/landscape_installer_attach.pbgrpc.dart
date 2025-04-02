//
//  Generated code. Do not modify.
//  source: landscape_installer_attach.proto
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
import 'landscape_installer_attach.pb.dart' as $1;

export 'landscape_installer_attach.pb.dart';

@$pb.GrpcServiceName('landscape_installer_attach.LandscapeInstallerAttach')
class LandscapeInstallerAttachClient extends $grpc.Client {
  static final _$attach = $grpc.ClientMethod<$0.Empty, $1.AttachResponse>(
      '/landscape_installer_attach.LandscapeInstallerAttach/Attach',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AttachResponse.fromBuffer(value));
  static final _$watchAuthentication = $grpc.ClientMethod<$1.WatchAuthenticationRequest, $1.WatchAuthenticationResponse>(
      '/landscape_installer_attach.LandscapeInstallerAttach/WatchAuthentication',
      ($1.WatchAuthenticationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.WatchAuthenticationResponse.fromBuffer(value));

  LandscapeInstallerAttachClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.AttachResponse> attach($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$attach, request, options: options);
  }

  $grpc.ResponseStream<$1.WatchAuthenticationResponse> watchAuthentication($1.WatchAuthenticationRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$watchAuthentication, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('landscape_installer_attach.LandscapeInstallerAttach')
abstract class LandscapeInstallerAttachServiceBase extends $grpc.Service {
  $core.String get $name => 'landscape_installer_attach.LandscapeInstallerAttach';

  LandscapeInstallerAttachServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.AttachResponse>(
        'Attach',
        attach_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.AttachResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WatchAuthenticationRequest, $1.WatchAuthenticationResponse>(
        'WatchAuthentication',
        watchAuthentication_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.WatchAuthenticationRequest.fromBuffer(value),
        ($1.WatchAuthenticationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.AttachResponse> attach_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return attach(call, await request);
  }

  $async.Stream<$1.WatchAuthenticationResponse> watchAuthentication_Pre($grpc.ServiceCall call, $async.Future<$1.WatchAuthenticationRequest> request) async* {
    yield* watchAuthentication(call, await request);
  }

  $async.Future<$1.AttachResponse> attach($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$1.WatchAuthenticationResponse> watchAuthentication($grpc.ServiceCall call, $1.WatchAuthenticationRequest request);
}

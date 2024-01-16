//
//  Generated code. Do not modify.
//  source: eula.proto
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

export 'eula.pb.dart';

@$pb.GrpcServiceName('eula.EulaService')
class EulaServiceClient extends $grpc.Client {
  static final _$acceptEula = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/eula.EulaService/AcceptEula',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  EulaServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> acceptEula($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptEula, request, options: options);
  }
}

@$pb.GrpcServiceName('eula.EulaService')
abstract class EulaServiceBase extends $grpc.Service {
  $core.String get $name => 'eula.EulaService';

  EulaServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'AcceptEula',
        acceptEula_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> acceptEula_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return acceptEula(call, await request);
  }

  $async.Future<$0.Empty> acceptEula($grpc.ServiceCall call, $0.Empty request);
}

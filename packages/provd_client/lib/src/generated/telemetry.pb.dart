//
//  Generated code. Do not modify.
//  source: telemetry.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'telemetry.pbenum.dart';

export 'telemetry.pbenum.dart';

class CollectResponse extends $pb.GeneratedMessage {
  factory CollectResponse({
    $core.String? metrics,
  }) {
    final $result = create();
    if (metrics != null) {
      $result.metrics = metrics;
    }
    return $result;
  }
  CollectResponse._() : super();
  factory CollectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'telemetry'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'metrics')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectResponse clone() => CollectResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectResponse copyWith(void Function(CollectResponse) updates) => super.copyWith((message) => updates(message as CollectResponse)) as CollectResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectResponse create() => CollectResponse._();
  CollectResponse createEmptyInstance() => create();
  static $pb.PbList<CollectResponse> createRepeated() => $pb.PbList<CollectResponse>();
  @$core.pragma('dart2js:noInline')
  static CollectResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectResponse>(create);
  static CollectResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get metrics => $_getSZ(0);
  @$pb.TagNumber(1)
  set metrics($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetrics() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetrics() => clearField(1);
}

class SendResponse extends $pb.GeneratedMessage {
  factory SendResponse({
    SendResponse_SendResponseType? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  SendResponse._() : super();
  factory SendResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'telemetry'), createEmptyInstance: create)
    ..e<SendResponse_SendResponseType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SendResponse_SendResponseType.SUCCESS, valueOf: SendResponse_SendResponseType.valueOf, enumValues: SendResponse_SendResponseType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendResponse clone() => SendResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendResponse copyWith(void Function(SendResponse) updates) => super.copyWith((message) => updates(message as SendResponse)) as SendResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendResponse create() => SendResponse._();
  SendResponse createEmptyInstance() => create();
  static $pb.PbList<SendResponse> createRepeated() => $pb.PbList<SendResponse>();
  @$core.pragma('dart2js:noInline')
  static SendResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendResponse>(create);
  static SendResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SendResponse_SendResponseType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SendResponse_SendResponseType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

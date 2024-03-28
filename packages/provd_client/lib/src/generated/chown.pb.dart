//
//  Generated code. Do not modify.
//  source: chown.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'chown.pbenum.dart';

export 'chown.pbenum.dart';

class ChownRequest extends $pb.GeneratedMessage {
  factory ChownRequest({
    $core.String? username,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    return $result;
  }
  ChownRequest._() : super();
  factory ChownRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChownRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChownRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'chown'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChownRequest clone() => ChownRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChownRequest copyWith(void Function(ChownRequest) updates) => super.copyWith((message) => updates(message as ChownRequest)) as ChownRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChownRequest create() => ChownRequest._();
  ChownRequest createEmptyInstance() => create();
  static $pb.PbList<ChownRequest> createRepeated() => $pb.PbList<ChownRequest>();
  @$core.pragma('dart2js:noInline')
  static ChownRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChownRequest>(create);
  static ChownRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);
}

class ChownResponse extends $pb.GeneratedMessage {
  factory ChownResponse({
    ChownResponse_ChownResponseCode? code,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  ChownResponse._() : super();
  factory ChownResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChownResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChownResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'chown'), createEmptyInstance: create)
    ..e<ChownResponse_ChownResponseCode>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OE, defaultOrMaker: ChownResponse_ChownResponseCode.SUCCESS, valueOf: ChownResponse_ChownResponseCode.valueOf, enumValues: ChownResponse_ChownResponseCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChownResponse clone() => ChownResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChownResponse copyWith(void Function(ChownResponse) updates) => super.copyWith((message) => updates(message as ChownResponse)) as ChownResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChownResponse create() => ChownResponse._();
  ChownResponse createEmptyInstance() => create();
  static $pb.PbList<ChownResponse> createRepeated() => $pb.PbList<ChownResponse>();
  @$core.pragma('dart2js:noInline')
  static ChownResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChownResponse>(create);
  static ChownResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ChownResponse_ChownResponseCode get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(ChownResponse_ChownResponseCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

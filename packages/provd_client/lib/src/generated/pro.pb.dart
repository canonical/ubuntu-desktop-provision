//
//  Generated code. Do not modify.
//  source: pro.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'pro.pbenum.dart';

export 'pro.pbenum.dart';

class ProMagicAttachResponse extends $pb.GeneratedMessage {
  factory ProMagicAttachResponse({
    ProMagicAttachResponseType? type,
    $core.String? userCode,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (userCode != null) {
      $result.userCode = userCode;
    }
    return $result;
  }
  ProMagicAttachResponse._() : super();
  factory ProMagicAttachResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProMagicAttachResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProMagicAttachResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'pro'), createEmptyInstance: create)
    ..e<ProMagicAttachResponseType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ProMagicAttachResponseType.USER_CODE, valueOf: ProMagicAttachResponseType.valueOf, enumValues: ProMagicAttachResponseType.values)
    ..aOS(2, _omitFieldNames ? '' : 'userCode', protoName: 'userCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProMagicAttachResponse clone() => ProMagicAttachResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProMagicAttachResponse copyWith(void Function(ProMagicAttachResponse) updates) => super.copyWith((message) => updates(message as ProMagicAttachResponse)) as ProMagicAttachResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProMagicAttachResponse create() => ProMagicAttachResponse._();
  ProMagicAttachResponse createEmptyInstance() => create();
  static $pb.PbList<ProMagicAttachResponse> createRepeated() => $pb.PbList<ProMagicAttachResponse>();
  @$core.pragma('dart2js:noInline')
  static ProMagicAttachResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProMagicAttachResponse>(create);
  static ProMagicAttachResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ProMagicAttachResponseType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ProMagicAttachResponseType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set userCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserCode() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

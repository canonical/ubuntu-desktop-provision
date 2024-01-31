//
//  Generated code. Do not modify.
//  source: pro_enrolment.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GenerateEnrolmentCodeRequest extends $pb.GeneratedMessage {
  factory GenerateEnrolmentCodeRequest({
    $core.String? token,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  GenerateEnrolmentCodeRequest._() : super();
  factory GenerateEnrolmentCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateEnrolmentCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenerateEnrolmentCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pro_enrollment'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateEnrolmentCodeRequest clone() => GenerateEnrolmentCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateEnrolmentCodeRequest copyWith(void Function(GenerateEnrolmentCodeRequest) updates) => super.copyWith((message) => updates(message as GenerateEnrolmentCodeRequest)) as GenerateEnrolmentCodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateEnrolmentCodeRequest create() => GenerateEnrolmentCodeRequest._();
  GenerateEnrolmentCodeRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateEnrolmentCodeRequest> createRepeated() => $pb.PbList<GenerateEnrolmentCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateEnrolmentCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateEnrolmentCodeRequest>(create);
  static GenerateEnrolmentCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class GenerateEnrolmentCodeResponse extends $pb.GeneratedMessage {
  factory GenerateEnrolmentCodeResponse({
    $core.String? code,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  GenerateEnrolmentCodeResponse._() : super();
  factory GenerateEnrolmentCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateEnrolmentCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenerateEnrolmentCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'pro_enrollment'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateEnrolmentCodeResponse clone() => GenerateEnrolmentCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateEnrolmentCodeResponse copyWith(void Function(GenerateEnrolmentCodeResponse) updates) => super.copyWith((message) => updates(message as GenerateEnrolmentCodeResponse)) as GenerateEnrolmentCodeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateEnrolmentCodeResponse create() => GenerateEnrolmentCodeResponse._();
  GenerateEnrolmentCodeResponse createEmptyInstance() => create();
  static $pb.PbList<GenerateEnrolmentCodeResponse> createRepeated() => $pb.PbList<GenerateEnrolmentCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static GenerateEnrolmentCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateEnrolmentCodeResponse>(create);
  static GenerateEnrolmentCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);
}

class SetTokenManuallyRequest extends $pb.GeneratedMessage {
  factory SetTokenManuallyRequest({
    $core.String? token,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  SetTokenManuallyRequest._() : super();
  factory SetTokenManuallyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetTokenManuallyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetTokenManuallyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pro_enrollment'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetTokenManuallyRequest clone() => SetTokenManuallyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetTokenManuallyRequest copyWith(void Function(SetTokenManuallyRequest) updates) => super.copyWith((message) => updates(message as SetTokenManuallyRequest)) as SetTokenManuallyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetTokenManuallyRequest create() => SetTokenManuallyRequest._();
  SetTokenManuallyRequest createEmptyInstance() => create();
  static $pb.PbList<SetTokenManuallyRequest> createRepeated() => $pb.PbList<SetTokenManuallyRequest>();
  @$core.pragma('dart2js:noInline')
  static SetTokenManuallyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetTokenManuallyRequest>(create);
  static SetTokenManuallyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

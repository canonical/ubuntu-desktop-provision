//
//  Generated code. Do not modify.
//  source: timezone.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SetTimezoneRequest extends $pb.GeneratedMessage {
  factory SetTimezoneRequest({
    $core.String? timezone,
  }) {
    final $result = create();
    if (timezone != null) {
      $result.timezone = timezone;
    }
    return $result;
  }
  SetTimezoneRequest._() : super();
  factory SetTimezoneRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetTimezoneRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetTimezoneRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'timezone'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'timezone')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetTimezoneRequest clone() => SetTimezoneRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetTimezoneRequest copyWith(void Function(SetTimezoneRequest) updates) => super.copyWith((message) => updates(message as SetTimezoneRequest)) as SetTimezoneRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetTimezoneRequest create() => SetTimezoneRequest._();
  SetTimezoneRequest createEmptyInstance() => create();
  static $pb.PbList<SetTimezoneRequest> createRepeated() => $pb.PbList<SetTimezoneRequest>();
  @$core.pragma('dart2js:noInline')
  static SetTimezoneRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetTimezoneRequest>(create);
  static SetTimezoneRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get timezone => $_getSZ(0);
  @$pb.TagNumber(1)
  set timezone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimezone() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimezone() => clearField(1);
}

class GetTimezoneResponse extends $pb.GeneratedMessage {
  factory GetTimezoneResponse({
    $core.String? timezone,
  }) {
    final $result = create();
    if (timezone != null) {
      $result.timezone = timezone;
    }
    return $result;
  }
  GetTimezoneResponse._() : super();
  factory GetTimezoneResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTimezoneResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTimezoneResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'timezone'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'timezone')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTimezoneResponse clone() => GetTimezoneResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTimezoneResponse copyWith(void Function(GetTimezoneResponse) updates) => super.copyWith((message) => updates(message as GetTimezoneResponse)) as GetTimezoneResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTimezoneResponse create() => GetTimezoneResponse._();
  GetTimezoneResponse createEmptyInstance() => create();
  static $pb.PbList<GetTimezoneResponse> createRepeated() => $pb.PbList<GetTimezoneResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTimezoneResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTimezoneResponse>(create);
  static GetTimezoneResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get timezone => $_getSZ(0);
  @$pb.TagNumber(1)
  set timezone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimezone() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimezone() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

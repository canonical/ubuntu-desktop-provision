//
//  Generated code. Do not modify.
//  source: landscape_installer_attach.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $2;
import 'landscape_installer_attach.pbenum.dart';

export 'landscape_installer_attach.pbenum.dart';

class AttachResponse extends $pb.GeneratedMessage {
  factory AttachResponse({
    AttachStatus? status,
    $core.String? userCode,
    $2.Timestamp? validUntil,
    $core.String? token,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (userCode != null) {
      $result.userCode = userCode;
    }
    if (validUntil != null) {
      $result.validUntil = validUntil;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  AttachResponse._() : super();
  factory AttachResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttachResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'landscape_installer_attach'), createEmptyInstance: create)
    ..e<AttachStatus>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: AttachStatus.ATTACH_SUCCESS, valueOf: AttachStatus.valueOf, enumValues: AttachStatus.values)
    ..aOS(2, _omitFieldNames ? '' : 'userCode')
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'validUntil', subBuilder: $2.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AttachResponse clone() => AttachResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AttachResponse copyWith(void Function(AttachResponse) updates) => super.copyWith((message) => updates(message as AttachResponse)) as AttachResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttachResponse create() => AttachResponse._();
  AttachResponse createEmptyInstance() => create();
  static $pb.PbList<AttachResponse> createRepeated() => $pb.PbList<AttachResponse>();
  @$core.pragma('dart2js:noInline')
  static AttachResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttachResponse>(create);
  static AttachResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AttachStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(AttachStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set userCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserCode() => clearField(2);

  @$pb.TagNumber(3)
  $2.Timestamp get validUntil => $_getN(2);
  @$pb.TagNumber(3)
  set validUntil($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValidUntil() => $_has(2);
  @$pb.TagNumber(3)
  void clearValidUntil() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureValidUntil() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);
}

class WatchAuthenticationRequest extends $pb.GeneratedMessage {
  factory WatchAuthenticationRequest({
    $core.String? userCode,
    $core.String? token,
  }) {
    final $result = create();
    if (userCode != null) {
      $result.userCode = userCode;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  WatchAuthenticationRequest._() : super();
  factory WatchAuthenticationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchAuthenticationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WatchAuthenticationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'landscape_installer_attach'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userCode')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchAuthenticationRequest clone() => WatchAuthenticationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchAuthenticationRequest copyWith(void Function(WatchAuthenticationRequest) updates) => super.copyWith((message) => updates(message as WatchAuthenticationRequest)) as WatchAuthenticationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchAuthenticationRequest create() => WatchAuthenticationRequest._();
  WatchAuthenticationRequest createEmptyInstance() => create();
  static $pb.PbList<WatchAuthenticationRequest> createRepeated() => $pb.PbList<WatchAuthenticationRequest>();
  @$core.pragma('dart2js:noInline')
  static WatchAuthenticationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchAuthenticationRequest>(create);
  static WatchAuthenticationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set userCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class WatchAuthenticationResponse extends $pb.GeneratedMessage {
  factory WatchAuthenticationResponse({
    AuthenticationStatus? status,
    $core.String? autoinstall,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (autoinstall != null) {
      $result.autoinstall = autoinstall;
    }
    return $result;
  }
  WatchAuthenticationResponse._() : super();
  factory WatchAuthenticationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchAuthenticationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WatchAuthenticationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'landscape_installer_attach'), createEmptyInstance: create)
    ..e<AuthenticationStatus>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: AuthenticationStatus.AUTHENTICATION_PENDING, valueOf: AuthenticationStatus.valueOf, enumValues: AuthenticationStatus.values)
    ..aOS(2, _omitFieldNames ? '' : 'autoinstall')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchAuthenticationResponse clone() => WatchAuthenticationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchAuthenticationResponse copyWith(void Function(WatchAuthenticationResponse) updates) => super.copyWith((message) => updates(message as WatchAuthenticationResponse)) as WatchAuthenticationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchAuthenticationResponse create() => WatchAuthenticationResponse._();
  WatchAuthenticationResponse createEmptyInstance() => create();
  static $pb.PbList<WatchAuthenticationResponse> createRepeated() => $pb.PbList<WatchAuthenticationResponse>();
  @$core.pragma('dart2js:noInline')
  static WatchAuthenticationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchAuthenticationResponse>(create);
  static WatchAuthenticationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AuthenticationStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(AuthenticationStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get autoinstall => $_getSZ(1);
  @$pb.TagNumber(2)
  set autoinstall($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAutoinstall() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutoinstall() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

//
//  Generated code. Do not modify.
//  source: ad.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ad.pbenum.dart';

export 'ad.pbenum.dart';

class HasSupportResponse extends $pb.GeneratedMessage {
  factory HasSupportResponse({
    $core.bool? hasSupport,
  }) {
    final $result = create();
    if (hasSupport != null) {
      $result.hasSupport = hasSupport;
    }
    return $result;
  }
  HasSupportResponse._() : super();
  factory HasSupportResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HasSupportResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HasSupportResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'hasSupport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HasSupportResponse clone() => HasSupportResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HasSupportResponse copyWith(void Function(HasSupportResponse) updates) => super.copyWith((message) => updates(message as HasSupportResponse)) as HasSupportResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HasSupportResponse create() => HasSupportResponse._();
  HasSupportResponse createEmptyInstance() => create();
  static $pb.PbList<HasSupportResponse> createRepeated() => $pb.PbList<HasSupportResponse>();
  @$core.pragma('dart2js:noInline')
  static HasSupportResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HasSupportResponse>(create);
  static HasSupportResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasSupport => $_getBF(0);
  @$pb.TagNumber(1)
  set hasSupport($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasSupport() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasSupport() => clearField(1);
}

class IsUsedResponse extends $pb.GeneratedMessage {
  factory IsUsedResponse({
    $core.bool? isUsed,
  }) {
    final $result = create();
    if (isUsed != null) {
      $result.isUsed = isUsed;
    }
    return $result;
  }
  IsUsedResponse._() : super();
  factory IsUsedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsUsedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsUsedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isUsed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsUsedResponse clone() => IsUsedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsUsedResponse copyWith(void Function(IsUsedResponse) updates) => super.copyWith((message) => updates(message as IsUsedResponse)) as IsUsedResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsUsedResponse create() => IsUsedResponse._();
  IsUsedResponse createEmptyInstance() => create();
  static $pb.PbList<IsUsedResponse> createRepeated() => $pb.PbList<IsUsedResponse>();
  @$core.pragma('dart2js:noInline')
  static IsUsedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsUsedResponse>(create);
  static IsUsedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isUsed => $_getBF(0);
  @$pb.TagNumber(1)
  set isUsed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsUsed() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsUsed() => clearField(1);
}

class SetUsedRequest extends $pb.GeneratedMessage {
  factory SetUsedRequest({
    $core.bool? isUsed,
  }) {
    final $result = create();
    if (isUsed != null) {
      $result.isUsed = isUsed;
    }
    return $result;
  }
  SetUsedRequest._() : super();
  factory SetUsedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetUsedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetUsedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isUsed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetUsedRequest clone() => SetUsedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetUsedRequest copyWith(void Function(SetUsedRequest) updates) => super.copyWith((message) => updates(message as SetUsedRequest)) as SetUsedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetUsedRequest create() => SetUsedRequest._();
  SetUsedRequest createEmptyInstance() => create();
  static $pb.PbList<SetUsedRequest> createRepeated() => $pb.PbList<SetUsedRequest>();
  @$core.pragma('dart2js:noInline')
  static SetUsedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetUsedRequest>(create);
  static SetUsedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isUsed => $_getBF(0);
  @$pb.TagNumber(1)
  set isUsed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsUsed() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsUsed() => clearField(1);
}

class GetConnectionInfoResponse extends $pb.GeneratedMessage {
  factory GetConnectionInfoResponse({
    AdConnectionInfo? adConnectionInfo,
  }) {
    final $result = create();
    if (adConnectionInfo != null) {
      $result.adConnectionInfo = adConnectionInfo;
    }
    return $result;
  }
  GetConnectionInfoResponse._() : super();
  factory GetConnectionInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConnectionInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOM<AdConnectionInfo>(1, _omitFieldNames ? '' : 'adConnectionInfo', subBuilder: AdConnectionInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionInfoResponse clone() => GetConnectionInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionInfoResponse copyWith(void Function(GetConnectionInfoResponse) updates) => super.copyWith((message) => updates(message as GetConnectionInfoResponse)) as GetConnectionInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConnectionInfoResponse create() => GetConnectionInfoResponse._();
  GetConnectionInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetConnectionInfoResponse> createRepeated() => $pb.PbList<GetConnectionInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetConnectionInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectionInfoResponse>(create);
  static GetConnectionInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AdConnectionInfo get adConnectionInfo => $_getN(0);
  @$pb.TagNumber(1)
  set adConnectionInfo(AdConnectionInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdConnectionInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdConnectionInfo() => clearField(1);
  @$pb.TagNumber(1)
  AdConnectionInfo ensureAdConnectionInfo() => $_ensure(0);
}

class SetConnectionInfoRequest extends $pb.GeneratedMessage {
  factory SetConnectionInfoRequest({
    AdConnectionInfo? adConnectionInfo,
  }) {
    final $result = create();
    if (adConnectionInfo != null) {
      $result.adConnectionInfo = adConnectionInfo;
    }
    return $result;
  }
  SetConnectionInfoRequest._() : super();
  factory SetConnectionInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetConnectionInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetConnectionInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOM<AdConnectionInfo>(1, _omitFieldNames ? '' : 'adConnectionInfo', subBuilder: AdConnectionInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetConnectionInfoRequest clone() => SetConnectionInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetConnectionInfoRequest copyWith(void Function(SetConnectionInfoRequest) updates) => super.copyWith((message) => updates(message as SetConnectionInfoRequest)) as SetConnectionInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetConnectionInfoRequest create() => SetConnectionInfoRequest._();
  SetConnectionInfoRequest createEmptyInstance() => create();
  static $pb.PbList<SetConnectionInfoRequest> createRepeated() => $pb.PbList<SetConnectionInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static SetConnectionInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetConnectionInfoRequest>(create);
  static SetConnectionInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AdConnectionInfo get adConnectionInfo => $_getN(0);
  @$pb.TagNumber(1)
  set adConnectionInfo(AdConnectionInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdConnectionInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdConnectionInfo() => clearField(1);
  @$pb.TagNumber(1)
  AdConnectionInfo ensureAdConnectionInfo() => $_ensure(0);
}

class CheckAdminNameRequest extends $pb.GeneratedMessage {
  factory CheckAdminNameRequest({
    $core.String? adminName,
  }) {
    final $result = create();
    if (adminName != null) {
      $result.adminName = adminName;
    }
    return $result;
  }
  CheckAdminNameRequest._() : super();
  factory CheckAdminNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckAdminNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckAdminNameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'adminName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckAdminNameRequest clone() => CheckAdminNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckAdminNameRequest copyWith(void Function(CheckAdminNameRequest) updates) => super.copyWith((message) => updates(message as CheckAdminNameRequest)) as CheckAdminNameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckAdminNameRequest create() => CheckAdminNameRequest._();
  CheckAdminNameRequest createEmptyInstance() => create();
  static $pb.PbList<CheckAdminNameRequest> createRepeated() => $pb.PbList<CheckAdminNameRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckAdminNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckAdminNameRequest>(create);
  static CheckAdminNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get adminName => $_getSZ(0);
  @$pb.TagNumber(1)
  set adminName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdminName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdminName() => clearField(1);
}

class CheckAdminNameResponse extends $pb.GeneratedMessage {
  factory CheckAdminNameResponse({
    CheckAdminNameResponse_AdAdminNameValidation? validation,
  }) {
    final $result = create();
    if (validation != null) {
      $result.validation = validation;
    }
    return $result;
  }
  CheckAdminNameResponse._() : super();
  factory CheckAdminNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckAdminNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckAdminNameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..e<CheckAdminNameResponse_AdAdminNameValidation>(1, _omitFieldNames ? '' : 'validation', $pb.PbFieldType.OE, defaultOrMaker: CheckAdminNameResponse_AdAdminNameValidation.OK, valueOf: CheckAdminNameResponse_AdAdminNameValidation.valueOf, enumValues: CheckAdminNameResponse_AdAdminNameValidation.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckAdminNameResponse clone() => CheckAdminNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckAdminNameResponse copyWith(void Function(CheckAdminNameResponse) updates) => super.copyWith((message) => updates(message as CheckAdminNameResponse)) as CheckAdminNameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckAdminNameResponse create() => CheckAdminNameResponse._();
  CheckAdminNameResponse createEmptyInstance() => create();
  static $pb.PbList<CheckAdminNameResponse> createRepeated() => $pb.PbList<CheckAdminNameResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckAdminNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckAdminNameResponse>(create);
  static CheckAdminNameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CheckAdminNameResponse_AdAdminNameValidation get validation => $_getN(0);
  @$pb.TagNumber(1)
  set validation(CheckAdminNameResponse_AdAdminNameValidation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValidation() => $_has(0);
  @$pb.TagNumber(1)
  void clearValidation() => clearField(1);
}

class CheckPasswordRequest extends $pb.GeneratedMessage {
  factory CheckPasswordRequest({
    $core.String? password,
  }) {
    final $result = create();
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  CheckPasswordRequest._() : super();
  factory CheckPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckPasswordRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckPasswordRequest clone() => CheckPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckPasswordRequest copyWith(void Function(CheckPasswordRequest) updates) => super.copyWith((message) => updates(message as CheckPasswordRequest)) as CheckPasswordRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckPasswordRequest create() => CheckPasswordRequest._();
  CheckPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<CheckPasswordRequest> createRepeated() => $pb.PbList<CheckPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckPasswordRequest>(create);
  static CheckPasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);
}

class CheckPasswordResponse extends $pb.GeneratedMessage {
  factory CheckPasswordResponse({
    CheckPasswordResponse_AdPasswordValidation? validation,
  }) {
    final $result = create();
    if (validation != null) {
      $result.validation = validation;
    }
    return $result;
  }
  CheckPasswordResponse._() : super();
  factory CheckPasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckPasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckPasswordResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..e<CheckPasswordResponse_AdPasswordValidation>(1, _omitFieldNames ? '' : 'validation', $pb.PbFieldType.OE, defaultOrMaker: CheckPasswordResponse_AdPasswordValidation.OK, valueOf: CheckPasswordResponse_AdPasswordValidation.valueOf, enumValues: CheckPasswordResponse_AdPasswordValidation.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckPasswordResponse clone() => CheckPasswordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckPasswordResponse copyWith(void Function(CheckPasswordResponse) updates) => super.copyWith((message) => updates(message as CheckPasswordResponse)) as CheckPasswordResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckPasswordResponse create() => CheckPasswordResponse._();
  CheckPasswordResponse createEmptyInstance() => create();
  static $pb.PbList<CheckPasswordResponse> createRepeated() => $pb.PbList<CheckPasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckPasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckPasswordResponse>(create);
  static CheckPasswordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CheckPasswordResponse_AdPasswordValidation get validation => $_getN(0);
  @$pb.TagNumber(1)
  set validation(CheckPasswordResponse_AdPasswordValidation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValidation() => $_has(0);
  @$pb.TagNumber(1)
  void clearValidation() => clearField(1);
}

class CheckDomainNameRequest extends $pb.GeneratedMessage {
  factory CheckDomainNameRequest({
    $core.String? domainName,
  }) {
    final $result = create();
    if (domainName != null) {
      $result.domainName = domainName;
    }
    return $result;
  }
  CheckDomainNameRequest._() : super();
  factory CheckDomainNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckDomainNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckDomainNameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'domainName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckDomainNameRequest clone() => CheckDomainNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckDomainNameRequest copyWith(void Function(CheckDomainNameRequest) updates) => super.copyWith((message) => updates(message as CheckDomainNameRequest)) as CheckDomainNameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckDomainNameRequest create() => CheckDomainNameRequest._();
  CheckDomainNameRequest createEmptyInstance() => create();
  static $pb.PbList<CheckDomainNameRequest> createRepeated() => $pb.PbList<CheckDomainNameRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckDomainNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckDomainNameRequest>(create);
  static CheckDomainNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domainName => $_getSZ(0);
  @$pb.TagNumber(1)
  set domainName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDomainName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomainName() => clearField(1);
}

class CheckDomainNameResponse extends $pb.GeneratedMessage {
  factory CheckDomainNameResponse({
    $core.Iterable<AdDomainNameValidation>? validation,
  }) {
    final $result = create();
    if (validation != null) {
      $result.validation.addAll(validation);
    }
    return $result;
  }
  CheckDomainNameResponse._() : super();
  factory CheckDomainNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckDomainNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckDomainNameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..pc<AdDomainNameValidation>(1, _omitFieldNames ? '' : 'validation', $pb.PbFieldType.KE, valueOf: AdDomainNameValidation.valueOf, enumValues: AdDomainNameValidation.values, defaultEnumValue: AdDomainNameValidation.OK)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckDomainNameResponse clone() => CheckDomainNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckDomainNameResponse copyWith(void Function(CheckDomainNameResponse) updates) => super.copyWith((message) => updates(message as CheckDomainNameResponse)) as CheckDomainNameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckDomainNameResponse create() => CheckDomainNameResponse._();
  CheckDomainNameResponse createEmptyInstance() => create();
  static $pb.PbList<CheckDomainNameResponse> createRepeated() => $pb.PbList<CheckDomainNameResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckDomainNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckDomainNameResponse>(create);
  static CheckDomainNameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AdDomainNameValidation> get validation => $_getList(0);
}

class PingDomainControllerRequest extends $pb.GeneratedMessage {
  factory PingDomainControllerRequest({
    $core.String? domain,
  }) {
    final $result = create();
    if (domain != null) {
      $result.domain = domain;
    }
    return $result;
  }
  PingDomainControllerRequest._() : super();
  factory PingDomainControllerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingDomainControllerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingDomainControllerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'domain')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingDomainControllerRequest clone() => PingDomainControllerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingDomainControllerRequest copyWith(void Function(PingDomainControllerRequest) updates) => super.copyWith((message) => updates(message as PingDomainControllerRequest)) as PingDomainControllerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingDomainControllerRequest create() => PingDomainControllerRequest._();
  PingDomainControllerRequest createEmptyInstance() => create();
  static $pb.PbList<PingDomainControllerRequest> createRepeated() => $pb.PbList<PingDomainControllerRequest>();
  @$core.pragma('dart2js:noInline')
  static PingDomainControllerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingDomainControllerRequest>(create);
  static PingDomainControllerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domain => $_getSZ(0);
  @$pb.TagNumber(1)
  set domain($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDomain() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomain() => clearField(1);
}

class PingDomainControllerResponse extends $pb.GeneratedMessage {
  factory PingDomainControllerResponse({
    AdDomainNameValidation? validation,
  }) {
    final $result = create();
    if (validation != null) {
      $result.validation = validation;
    }
    return $result;
  }
  PingDomainControllerResponse._() : super();
  factory PingDomainControllerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingDomainControllerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingDomainControllerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..e<AdDomainNameValidation>(1, _omitFieldNames ? '' : 'validation', $pb.PbFieldType.OE, defaultOrMaker: AdDomainNameValidation.OK, valueOf: AdDomainNameValidation.valueOf, enumValues: AdDomainNameValidation.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingDomainControllerResponse clone() => PingDomainControllerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingDomainControllerResponse copyWith(void Function(PingDomainControllerResponse) updates) => super.copyWith((message) => updates(message as PingDomainControllerResponse)) as PingDomainControllerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingDomainControllerResponse create() => PingDomainControllerResponse._();
  PingDomainControllerResponse createEmptyInstance() => create();
  static $pb.PbList<PingDomainControllerResponse> createRepeated() => $pb.PbList<PingDomainControllerResponse>();
  @$core.pragma('dart2js:noInline')
  static PingDomainControllerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingDomainControllerResponse>(create);
  static PingDomainControllerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AdDomainNameValidation get validation => $_getN(0);
  @$pb.TagNumber(1)
  set validation(AdDomainNameValidation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValidation() => $_has(0);
  @$pb.TagNumber(1)
  void clearValidation() => clearField(1);
}

class GetJoinResultRequest extends $pb.GeneratedMessage {
  factory GetJoinResultRequest({
    AdConnectionInfo? adConnectionInfo,
  }) {
    final $result = create();
    if (adConnectionInfo != null) {
      $result.adConnectionInfo = adConnectionInfo;
    }
    return $result;
  }
  GetJoinResultRequest._() : super();
  factory GetJoinResultRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetJoinResultRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetJoinResultRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOM<AdConnectionInfo>(1, _omitFieldNames ? '' : 'adConnectionInfo', subBuilder: AdConnectionInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetJoinResultRequest clone() => GetJoinResultRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetJoinResultRequest copyWith(void Function(GetJoinResultRequest) updates) => super.copyWith((message) => updates(message as GetJoinResultRequest)) as GetJoinResultRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetJoinResultRequest create() => GetJoinResultRequest._();
  GetJoinResultRequest createEmptyInstance() => create();
  static $pb.PbList<GetJoinResultRequest> createRepeated() => $pb.PbList<GetJoinResultRequest>();
  @$core.pragma('dart2js:noInline')
  static GetJoinResultRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetJoinResultRequest>(create);
  static GetJoinResultRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AdConnectionInfo get adConnectionInfo => $_getN(0);
  @$pb.TagNumber(1)
  set adConnectionInfo(AdConnectionInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdConnectionInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdConnectionInfo() => clearField(1);
  @$pb.TagNumber(1)
  AdConnectionInfo ensureAdConnectionInfo() => $_ensure(0);
}

class GetJoinResultResponse extends $pb.GeneratedMessage {
  factory GetJoinResultResponse({
    GetJoinResultResponse_AdJoinResult? joinResult,
  }) {
    final $result = create();
    if (joinResult != null) {
      $result.joinResult = joinResult;
    }
    return $result;
  }
  GetJoinResultResponse._() : super();
  factory GetJoinResultResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetJoinResultResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetJoinResultResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..e<GetJoinResultResponse_AdJoinResult>(1, _omitFieldNames ? '' : 'joinResult', $pb.PbFieldType.OE, defaultOrMaker: GetJoinResultResponse_AdJoinResult.OK, valueOf: GetJoinResultResponse_AdJoinResult.valueOf, enumValues: GetJoinResultResponse_AdJoinResult.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetJoinResultResponse clone() => GetJoinResultResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetJoinResultResponse copyWith(void Function(GetJoinResultResponse) updates) => super.copyWith((message) => updates(message as GetJoinResultResponse)) as GetJoinResultResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetJoinResultResponse create() => GetJoinResultResponse._();
  GetJoinResultResponse createEmptyInstance() => create();
  static $pb.PbList<GetJoinResultResponse> createRepeated() => $pb.PbList<GetJoinResultResponse>();
  @$core.pragma('dart2js:noInline')
  static GetJoinResultResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetJoinResultResponse>(create);
  static GetJoinResultResponse? _defaultInstance;

  @$pb.TagNumber(1)
  GetJoinResultResponse_AdJoinResult get joinResult => $_getN(0);
  @$pb.TagNumber(1)
  set joinResult(GetJoinResultResponse_AdJoinResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJoinResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearJoinResult() => clearField(1);
}

class AdConnectionInfo extends $pb.GeneratedMessage {
  factory AdConnectionInfo({
    $core.String? domainName,
    $core.String? adminName,
    $core.String? password,
  }) {
    final $result = create();
    if (domainName != null) {
      $result.domainName = domainName;
    }
    if (adminName != null) {
      $result.adminName = adminName;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  AdConnectionInfo._() : super();
  factory AdConnectionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdConnectionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AdConnectionInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'active_directory'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'domainName')
    ..aOS(2, _omitFieldNames ? '' : 'adminName')
    ..aOS(3, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdConnectionInfo clone() => AdConnectionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdConnectionInfo copyWith(void Function(AdConnectionInfo) updates) => super.copyWith((message) => updates(message as AdConnectionInfo)) as AdConnectionInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdConnectionInfo create() => AdConnectionInfo._();
  AdConnectionInfo createEmptyInstance() => create();
  static $pb.PbList<AdConnectionInfo> createRepeated() => $pb.PbList<AdConnectionInfo>();
  @$core.pragma('dart2js:noInline')
  static AdConnectionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdConnectionInfo>(create);
  static AdConnectionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domainName => $_getSZ(0);
  @$pb.TagNumber(1)
  set domainName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDomainName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomainName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get adminName => $_getSZ(1);
  @$pb.TagNumber(2)
  set adminName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAdminName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdminName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

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

class AdDomainNameValidation extends $pb.ProtobufEnum {
  static const AdDomainNameValidation OK = AdDomainNameValidation._(0, _omitEnumNames ? '' : 'OK');
  static const AdDomainNameValidation EMPTY = AdDomainNameValidation._(1, _omitEnumNames ? '' : 'EMPTY');
  static const AdDomainNameValidation TOO_LONG = AdDomainNameValidation._(2, _omitEnumNames ? '' : 'TOO_LONG');
  static const AdDomainNameValidation INVALID_CHARS = AdDomainNameValidation._(3, _omitEnumNames ? '' : 'INVALID_CHARS');
  static const AdDomainNameValidation START_DOT = AdDomainNameValidation._(4, _omitEnumNames ? '' : 'START_DOT');
  static const AdDomainNameValidation END_DOT = AdDomainNameValidation._(5, _omitEnumNames ? '' : 'END_DOT');
  static const AdDomainNameValidation START_HYPHEN = AdDomainNameValidation._(6, _omitEnumNames ? '' : 'START_HYPHEN');
  static const AdDomainNameValidation END_HYPHEN = AdDomainNameValidation._(7, _omitEnumNames ? '' : 'END_HYPHEN');
  static const AdDomainNameValidation MULTIPLE_DOTS = AdDomainNameValidation._(8, _omitEnumNames ? '' : 'MULTIPLE_DOTS');
  static const AdDomainNameValidation REALM_NOT_FOUND = AdDomainNameValidation._(9, _omitEnumNames ? '' : 'REALM_NOT_FOUND');

  static const $core.List<AdDomainNameValidation> values = <AdDomainNameValidation> [
    OK,
    EMPTY,
    TOO_LONG,
    INVALID_CHARS,
    START_DOT,
    END_DOT,
    START_HYPHEN,
    END_HYPHEN,
    MULTIPLE_DOTS,
    REALM_NOT_FOUND,
  ];

  static final $core.Map<$core.int, AdDomainNameValidation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AdDomainNameValidation? valueOf($core.int value) => _byValue[value];

  const AdDomainNameValidation._($core.int v, $core.String n) : super(v, n);
}

class CheckAdminNameResponse_AdAdminNameValidation extends $pb.ProtobufEnum {
  static const CheckAdminNameResponse_AdAdminNameValidation OK = CheckAdminNameResponse_AdAdminNameValidation._(0, _omitEnumNames ? '' : 'OK');
  static const CheckAdminNameResponse_AdAdminNameValidation EMPTY = CheckAdminNameResponse_AdAdminNameValidation._(1, _omitEnumNames ? '' : 'EMPTY');
  static const CheckAdminNameResponse_AdAdminNameValidation INVALID_CHARS = CheckAdminNameResponse_AdAdminNameValidation._(2, _omitEnumNames ? '' : 'INVALID_CHARS');

  static const $core.List<CheckAdminNameResponse_AdAdminNameValidation> values = <CheckAdminNameResponse_AdAdminNameValidation> [
    OK,
    EMPTY,
    INVALID_CHARS,
  ];

  static final $core.Map<$core.int, CheckAdminNameResponse_AdAdminNameValidation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CheckAdminNameResponse_AdAdminNameValidation? valueOf($core.int value) => _byValue[value];

  const CheckAdminNameResponse_AdAdminNameValidation._($core.int v, $core.String n) : super(v, n);
}

class CheckPasswordResponse_AdPasswordValidation extends $pb.ProtobufEnum {
  static const CheckPasswordResponse_AdPasswordValidation OK = CheckPasswordResponse_AdPasswordValidation._(0, _omitEnumNames ? '' : 'OK');
  static const CheckPasswordResponse_AdPasswordValidation EMPTY = CheckPasswordResponse_AdPasswordValidation._(1, _omitEnumNames ? '' : 'EMPTY');

  static const $core.List<CheckPasswordResponse_AdPasswordValidation> values = <CheckPasswordResponse_AdPasswordValidation> [
    OK,
    EMPTY,
  ];

  static final $core.Map<$core.int, CheckPasswordResponse_AdPasswordValidation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CheckPasswordResponse_AdPasswordValidation? valueOf($core.int value) => _byValue[value];

  const CheckPasswordResponse_AdPasswordValidation._($core.int v, $core.String n) : super(v, n);
}

class GetJoinResultResponse_AdJoinResult extends $pb.ProtobufEnum {
  static const GetJoinResultResponse_AdJoinResult OK = GetJoinResultResponse_AdJoinResult._(0, _omitEnumNames ? '' : 'OK');
  static const GetJoinResultResponse_AdJoinResult JOIN_ERROR = GetJoinResultResponse_AdJoinResult._(1, _omitEnumNames ? '' : 'JOIN_ERROR');
  static const GetJoinResultResponse_AdJoinResult EMPTY_HOSTNAME = GetJoinResultResponse_AdJoinResult._(2, _omitEnumNames ? '' : 'EMPTY_HOSTNAME');
  static const GetJoinResultResponse_AdJoinResult PAM_ERROR = GetJoinResultResponse_AdJoinResult._(3, _omitEnumNames ? '' : 'PAM_ERROR');
  static const GetJoinResultResponse_AdJoinResult UNKNOWN = GetJoinResultResponse_AdJoinResult._(4, _omitEnumNames ? '' : 'UNKNOWN');

  static const $core.List<GetJoinResultResponse_AdJoinResult> values = <GetJoinResultResponse_AdJoinResult> [
    OK,
    JOIN_ERROR,
    EMPTY_HOSTNAME,
    PAM_ERROR,
    UNKNOWN,
  ];

  static final $core.Map<$core.int, GetJoinResultResponse_AdJoinResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetJoinResultResponse_AdJoinResult? valueOf($core.int value) => _byValue[value];

  const GetJoinResultResponse_AdJoinResult._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

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

class AttachStatus extends $pb.ProtobufEnum {
  static const AttachStatus ATTACH_SUCCESS = AttachStatus._(0, _omitEnumNames ? '' : 'ATTACH_SUCCESS');
  static const AttachStatus ERROR_NOT_ENABLED = AttachStatus._(1, _omitEnumNames ? '' : 'ERROR_NOT_ENABLED');

  static const $core.List<AttachStatus> values = <AttachStatus> [
    ATTACH_SUCCESS,
    ERROR_NOT_ENABLED,
  ];

  static final $core.Map<$core.int, AttachStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AttachStatus? valueOf($core.int value) => _byValue[value];

  const AttachStatus._($core.int v, $core.String n) : super(v, n);
}

class AuthenticationStatus extends $pb.ProtobufEnum {
  static const AuthenticationStatus AUTHENTICATION_PENDING = AuthenticationStatus._(0, _omitEnumNames ? '' : 'AUTHENTICATION_PENDING');
  static const AuthenticationStatus AUTHENTICATION_SUCCESS = AuthenticationStatus._(1, _omitEnumNames ? '' : 'AUTHENTICATION_SUCCESS');
  static const AuthenticationStatus ERROR_CODE_NOT_FOUND = AuthenticationStatus._(2, _omitEnumNames ? '' : 'ERROR_CODE_NOT_FOUND');
  static const AuthenticationStatus ERROR_CANCELED_BY_USER = AuthenticationStatus._(3, _omitEnumNames ? '' : 'ERROR_CANCELED_BY_USER');
  static const AuthenticationStatus ERROR_CODE_EXPIRED = AuthenticationStatus._(4, _omitEnumNames ? '' : 'ERROR_CODE_EXPIRED');
  static const AuthenticationStatus ERROR_EMPLOYEE_LIMIT_EXCEEDED = AuthenticationStatus._(5, _omitEnumNames ? '' : 'ERROR_EMPLOYEE_LIMIT_EXCEEDED');
  static const AuthenticationStatus ERROR_EMPLOYEE_DEACTIVATED = AuthenticationStatus._(6, _omitEnumNames ? '' : 'ERROR_EMPLOYEE_DEACTIVATED');
  static const AuthenticationStatus ERROR_EMPLOYEE_COMPUTER_LIMIT_EXCEEDED = AuthenticationStatus._(7, _omitEnumNames ? '' : 'ERROR_EMPLOYEE_COMPUTER_LIMIT_EXCEEDED');
  static const AuthenticationStatus ERROR_MISSING_AUTOINSTALL_FILE = AuthenticationStatus._(8, _omitEnumNames ? '' : 'ERROR_MISSING_AUTOINSTALL_FILE');

  static const $core.List<AuthenticationStatus> values = <AuthenticationStatus> [
    AUTHENTICATION_PENDING,
    AUTHENTICATION_SUCCESS,
    ERROR_CODE_NOT_FOUND,
    ERROR_CANCELED_BY_USER,
    ERROR_CODE_EXPIRED,
    ERROR_EMPLOYEE_LIMIT_EXCEEDED,
    ERROR_EMPLOYEE_DEACTIVATED,
    ERROR_EMPLOYEE_COMPUTER_LIMIT_EXCEEDED,
    ERROR_MISSING_AUTOINSTALL_FILE,
  ];

  static final $core.Map<$core.int, AuthenticationStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AuthenticationStatus? valueOf($core.int value) => _byValue[value];

  const AuthenticationStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

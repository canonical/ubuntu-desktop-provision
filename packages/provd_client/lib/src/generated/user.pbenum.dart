//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UsernameValidation extends $pb.ProtobufEnum {
  static const UsernameValidation OK = UsernameValidation._(0, _omitEnumNames ? '' : 'OK');
  static const UsernameValidation ALREADY_IN_USE = UsernameValidation._(1, _omitEnumNames ? '' : 'ALREADY_IN_USE');
  static const UsernameValidation SYSTEM_RESERVED = UsernameValidation._(2, _omitEnumNames ? '' : 'SYSTEM_RESERVED');
  static const UsernameValidation INVALID_CHARS = UsernameValidation._(3, _omitEnumNames ? '' : 'INVALID_CHARS');
  static const UsernameValidation TOO_LONG = UsernameValidation._(4, _omitEnumNames ? '' : 'TOO_LONG');
  static const UsernameValidation EMPTY = UsernameValidation._(5, _omitEnumNames ? '' : 'EMPTY');

  static const $core.List<UsernameValidation> values = <UsernameValidation> [
    OK,
    ALREADY_IN_USE,
    SYSTEM_RESERVED,
    INVALID_CHARS,
    TOO_LONG,
    EMPTY,
  ];

  static final $core.Map<$core.int, UsernameValidation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UsernameValidation? valueOf($core.int value) => _byValue[value];

  const UsernameValidation._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

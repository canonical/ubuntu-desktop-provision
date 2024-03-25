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

class MagicAttachResponseType extends $pb.ProtobufEnum {
  static const MagicAttachResponseType USER_CODE = MagicAttachResponseType._(0, _omitEnumNames ? '' : 'USER_CODE');
  static const MagicAttachResponseType REFRESHED_USER_CODE = MagicAttachResponseType._(1, _omitEnumNames ? '' : 'REFRESHED_USER_CODE');
  static const MagicAttachResponseType SUCCESS = MagicAttachResponseType._(2, _omitEnumNames ? '' : 'SUCCESS');
  static const MagicAttachResponseType NETWORK_ERROR = MagicAttachResponseType._(3, _omitEnumNames ? '' : 'NETWORK_ERROR');
  static const MagicAttachResponseType SUBSCRIPTION_LIMIT_REACHED = MagicAttachResponseType._(4, _omitEnumNames ? '' : 'SUBSCRIPTION_LIMIT_REACHED');
  static const MagicAttachResponseType UNKOWN_ERROR = MagicAttachResponseType._(5, _omitEnumNames ? '' : 'UNKOWN_ERROR');

  static const $core.List<MagicAttachResponseType> values = <MagicAttachResponseType> [
    USER_CODE,
    REFRESHED_USER_CODE,
    SUCCESS,
    NETWORK_ERROR,
    SUBSCRIPTION_LIMIT_REACHED,
    UNKOWN_ERROR,
  ];

  static final $core.Map<$core.int, MagicAttachResponseType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MagicAttachResponseType? valueOf($core.int value) => _byValue[value];

  const MagicAttachResponseType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

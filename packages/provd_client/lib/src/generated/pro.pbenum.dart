//
//  Generated code. Do not modify.
//  source: pro.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ProMagicAttachResponseType extends $pb.ProtobufEnum {
  static const ProMagicAttachResponseType USER_CODE = ProMagicAttachResponseType._(0, _omitEnumNames ? '' : 'USER_CODE');
  static const ProMagicAttachResponseType REFRESHED_USER_CODE = ProMagicAttachResponseType._(1, _omitEnumNames ? '' : 'REFRESHED_USER_CODE');
  static const ProMagicAttachResponseType SUCCESS = ProMagicAttachResponseType._(2, _omitEnumNames ? '' : 'SUCCESS');
  static const ProMagicAttachResponseType NETWORK_ERROR = ProMagicAttachResponseType._(3, _omitEnumNames ? '' : 'NETWORK_ERROR');
  static const ProMagicAttachResponseType SUBSCRIPTION_LIMIT_REACHED = ProMagicAttachResponseType._(4, _omitEnumNames ? '' : 'SUBSCRIPTION_LIMIT_REACHED');
  static const ProMagicAttachResponseType UNKNOWN_ERROR = ProMagicAttachResponseType._(5, _omitEnumNames ? '' : 'UNKNOWN_ERROR');
  static const ProMagicAttachResponseType ALREADY_ATTACHED = ProMagicAttachResponseType._(6, _omitEnumNames ? '' : 'ALREADY_ATTACHED');

  static const $core.List<ProMagicAttachResponseType> values = <ProMagicAttachResponseType> [
    USER_CODE,
    REFRESHED_USER_CODE,
    SUCCESS,
    NETWORK_ERROR,
    SUBSCRIPTION_LIMIT_REACHED,
    UNKNOWN_ERROR,
    ALREADY_ATTACHED,
  ];

  static final $core.Map<$core.int, ProMagicAttachResponseType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProMagicAttachResponseType? valueOf($core.int value) => _byValue[value];

  const ProMagicAttachResponseType._(super.v, super.n);
}

class ProAttachResponse_ProAttachResponseType extends $pb.ProtobufEnum {
  static const ProAttachResponse_ProAttachResponseType SUCCESS = ProAttachResponse_ProAttachResponseType._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const ProAttachResponse_ProAttachResponseType NETWORK_ERROR = ProAttachResponse_ProAttachResponseType._(1, _omitEnumNames ? '' : 'NETWORK_ERROR');
  static const ProAttachResponse_ProAttachResponseType UNKNOWN_ERROR = ProAttachResponse_ProAttachResponseType._(2, _omitEnumNames ? '' : 'UNKNOWN_ERROR');
  static const ProAttachResponse_ProAttachResponseType ALREADY_ATTACHED = ProAttachResponse_ProAttachResponseType._(3, _omitEnumNames ? '' : 'ALREADY_ATTACHED');

  static const $core.List<ProAttachResponse_ProAttachResponseType> values = <ProAttachResponse_ProAttachResponseType> [
    SUCCESS,
    NETWORK_ERROR,
    UNKNOWN_ERROR,
    ALREADY_ATTACHED,
  ];

  static final $core.Map<$core.int, ProAttachResponse_ProAttachResponseType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProAttachResponse_ProAttachResponseType? valueOf($core.int value) => _byValue[value];

  const ProAttachResponse_ProAttachResponseType._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

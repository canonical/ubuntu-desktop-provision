//
//  Generated code. Do not modify.
//  source: telemetry.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SendResponse_SendResponseType extends $pb.ProtobufEnum {
  static const SendResponse_SendResponseType SUCCESS = SendResponse_SendResponseType._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const SendResponse_SendResponseType NETWORK_ERROR = SendResponse_SendResponseType._(1, _omitEnumNames ? '' : 'NETWORK_ERROR');
  static const SendResponse_SendResponseType UNKNOWN_ERROR = SendResponse_SendResponseType._(2, _omitEnumNames ? '' : 'UNKNOWN_ERROR');

  static const $core.List<SendResponse_SendResponseType> values = <SendResponse_SendResponseType> [
    SUCCESS,
    NETWORK_ERROR,
    UNKNOWN_ERROR,
  ];

  static final $core.Map<$core.int, SendResponse_SendResponseType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SendResponse_SendResponseType? valueOf($core.int value) => _byValue[value];

  const SendResponse_SendResponseType._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

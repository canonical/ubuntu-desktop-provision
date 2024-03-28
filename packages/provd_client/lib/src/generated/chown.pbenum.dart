//
//  Generated code. Do not modify.
//  source: chown.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ChownResponse_ChownResponseCode extends $pb.ProtobufEnum {
  static const ChownResponse_ChownResponseCode SUCCESS = ChownResponse_ChownResponseCode._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const ChownResponse_ChownResponseCode UNKNOWN_ERROR = ChownResponse_ChownResponseCode._(1, _omitEnumNames ? '' : 'UNKNOWN_ERROR');

  static const $core.List<ChownResponse_ChownResponseCode> values = <ChownResponse_ChownResponseCode> [
    SUCCESS,
    UNKNOWN_ERROR,
  ];

  static final $core.Map<$core.int, ChownResponse_ChownResponseCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChownResponse_ChownResponseCode? valueOf($core.int value) => _byValue[value];

  const ChownResponse_ChownResponseCode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

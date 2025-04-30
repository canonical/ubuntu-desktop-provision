//
//  Generated code. Do not modify.
//  source: telemetry.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use collectResponseDescriptor instead')
const CollectResponse$json = {
  '1': 'CollectResponse',
  '2': [
    {'1': 'metrics', '3': 1, '4': 1, '5': 9, '10': 'metrics'},
  ],
};

/// Descriptor for `CollectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectResponseDescriptor = $convert.base64Decode(
    'Cg9Db2xsZWN0UmVzcG9uc2USGAoHbWV0cmljcxgBIAEoCVIHbWV0cmljcw==');

@$core.Deprecated('Use sendResponseDescriptor instead')
const SendResponse$json = {
  '1': 'SendResponse',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.telemetry.SendResponse.SendResponseType', '10': 'type'},
  ],
  '4': [SendResponse_SendResponseType$json],
};

@$core.Deprecated('Use sendResponseDescriptor instead')
const SendResponse_SendResponseType$json = {
  '1': 'SendResponseType',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'NETWORK_ERROR', '2': 1},
    {'1': 'UNKNOWN_ERROR', '2': 2},
  ],
};

/// Descriptor for `SendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendResponseDescriptor = $convert.base64Decode(
    'CgxTZW5kUmVzcG9uc2USPAoEdHlwZRgBIAEoDjIoLnRlbGVtZXRyeS5TZW5kUmVzcG9uc2UuU2'
    'VuZFJlc3BvbnNlVHlwZVIEdHlwZSJFChBTZW5kUmVzcG9uc2VUeXBlEgsKB1NVQ0NFU1MQABIR'
    'Cg1ORVRXT1JLX0VSUk9SEAESEQoNVU5LTk9XTl9FUlJPUhAC');


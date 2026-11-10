//
//  Generated code. Do not modify.
//  source: chown.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use chownRequestDescriptor instead')
const ChownRequest$json = {
  '1': 'ChownRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `ChownRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chownRequestDescriptor = $convert.base64Decode(
    'CgxDaG93blJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1l');

@$core.Deprecated('Use chownResponseDescriptor instead')
const ChownResponse$json = {
  '1': 'ChownResponse',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.chown.ChownResponse.ChownResponseCode', '10': 'code'},
  ],
  '4': [ChownResponse_ChownResponseCode$json],
};

@$core.Deprecated('Use chownResponseDescriptor instead')
const ChownResponse_ChownResponseCode$json = {
  '1': 'ChownResponseCode',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'UNKNOWN_ERROR', '2': 1},
  ],
};

/// Descriptor for `ChownResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chownResponseDescriptor = $convert.base64Decode(
    'Cg1DaG93blJlc3BvbnNlEjoKBGNvZGUYASABKA4yJi5jaG93bi5DaG93blJlc3BvbnNlLkNob3'
    'duUmVzcG9uc2VDb2RlUgRjb2RlIjMKEUNob3duUmVzcG9uc2VDb2RlEgsKB1NVQ0NFU1MQABIR'
    'Cg1VTktOT1dOX0VSUk9SEAE=');


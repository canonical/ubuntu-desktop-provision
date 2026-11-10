//
//  Generated code. Do not modify.
//  source: timezone.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use setTimezoneRequestDescriptor instead')
const SetTimezoneRequest$json = {
  '1': 'SetTimezoneRequest',
  '2': [
    {'1': 'timezone', '3': 1, '4': 1, '5': 9, '10': 'timezone'},
  ],
};

/// Descriptor for `SetTimezoneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTimezoneRequestDescriptor = $convert.base64Decode(
    'ChJTZXRUaW1lem9uZVJlcXVlc3QSGgoIdGltZXpvbmUYASABKAlSCHRpbWV6b25l');

@$core.Deprecated('Use getTimezoneResponseDescriptor instead')
const GetTimezoneResponse$json = {
  '1': 'GetTimezoneResponse',
  '2': [
    {'1': 'timezone', '3': 1, '4': 1, '5': 9, '10': 'timezone'},
  ],
};

/// Descriptor for `GetTimezoneResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTimezoneResponseDescriptor = $convert.base64Decode(
    'ChNHZXRUaW1lem9uZVJlc3BvbnNlEhoKCHRpbWV6b25lGAEgASgJUgh0aW1lem9uZQ==');


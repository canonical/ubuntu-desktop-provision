//
//  Generated code. Do not modify.
//  source: pro.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use magicAttachResponseTypeDescriptor instead')
const MagicAttachResponseType$json = {
  '1': 'MagicAttachResponseType',
  '2': [
    {'1': 'USER_CODE', '2': 0},
    {'1': 'REFRESHED_USER_CODE', '2': 1},
    {'1': 'SUCCESS', '2': 2},
    {'1': 'NETWORK_ERROR', '2': 3},
    {'1': 'SUBSCRIPTION_LIMIT_REACHED', '2': 4},
    {'1': 'UNKOWN_ERROR', '2': 5},
  ],
};

/// Descriptor for `MagicAttachResponseType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List magicAttachResponseTypeDescriptor = $convert.base64Decode(
    'ChdNYWdpY0F0dGFjaFJlc3BvbnNlVHlwZRINCglVU0VSX0NPREUQABIXChNSRUZSRVNIRURfVV'
    'NFUl9DT0RFEAESCwoHU1VDQ0VTUxACEhEKDU5FVFdPUktfRVJST1IQAxIeChpTVUJTQ1JJUFRJ'
    'T05fTElNSVRfUkVBQ0hFRBAEEhAKDFVOS09XTl9FUlJPUhAF');

@$core.Deprecated('Use proMagicAttachResponseDescriptor instead')
const ProMagicAttachResponse$json = {
  '1': 'ProMagicAttachResponse',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pro.MagicAttachResponseType', '10': 'type'},
    {'1': 'userCode', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'userCode', '17': true},
  ],
  '8': [
    {'1': '_userCode'},
  ],
};

/// Descriptor for `ProMagicAttachResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proMagicAttachResponseDescriptor = $convert.base64Decode(
    'ChZQcm9NYWdpY0F0dGFjaFJlc3BvbnNlEjAKBHR5cGUYASABKA4yHC5wcm8uTWFnaWNBdHRhY2'
    'hSZXNwb25zZVR5cGVSBHR5cGUSHwoIdXNlckNvZGUYAiABKAlIAFIIdXNlckNvZGWIAQFCCwoJ'
    'X3VzZXJDb2Rl');


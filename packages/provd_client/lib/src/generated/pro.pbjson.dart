//
//  Generated code. Do not modify.
//  source: pro.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use proMagicAttachResponseTypeDescriptor instead')
const ProMagicAttachResponseType$json = {
  '1': 'ProMagicAttachResponseType',
  '2': [
    {'1': 'USER_CODE', '2': 0},
    {'1': 'REFRESHED_USER_CODE', '2': 1},
    {'1': 'SUCCESS', '2': 2},
    {'1': 'NETWORK_ERROR', '2': 3},
    {'1': 'SUBSCRIPTION_LIMIT_REACHED', '2': 4},
    {'1': 'UNKNOWN_ERROR', '2': 5},
    {'1': 'ALREADY_ATTACHED', '2': 6},
  ],
};

/// Descriptor for `ProMagicAttachResponseType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List proMagicAttachResponseTypeDescriptor = $convert.base64Decode(
    'ChpQcm9NYWdpY0F0dGFjaFJlc3BvbnNlVHlwZRINCglVU0VSX0NPREUQABIXChNSRUZSRVNIRU'
    'RfVVNFUl9DT0RFEAESCwoHU1VDQ0VTUxACEhEKDU5FVFdPUktfRVJST1IQAxIeChpTVUJTQ1JJ'
    'UFRJT05fTElNSVRfUkVBQ0hFRBAEEhEKDVVOS05PV05fRVJST1IQBRIUChBBTFJFQURZX0FUVE'
    'FDSEVEEAY=');

@$core.Deprecated('Use proAttachRequestDescriptor instead')
const ProAttachRequest$json = {
  '1': 'ProAttachRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `ProAttachRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proAttachRequestDescriptor = $convert.base64Decode(
    'ChBQcm9BdHRhY2hSZXF1ZXN0EhQKBXRva2VuGAEgASgJUgV0b2tlbg==');

@$core.Deprecated('Use proAttachResponseDescriptor instead')
const ProAttachResponse$json = {
  '1': 'ProAttachResponse',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pro.ProAttachResponse.ProAttachResponseType', '10': 'type'},
  ],
  '4': [ProAttachResponse_ProAttachResponseType$json],
};

@$core.Deprecated('Use proAttachResponseDescriptor instead')
const ProAttachResponse_ProAttachResponseType$json = {
  '1': 'ProAttachResponseType',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'NETWORK_ERROR', '2': 1},
    {'1': 'UNKNOWN_ERROR', '2': 2},
    {'1': 'ALREADY_ATTACHED', '2': 3},
  ],
};

/// Descriptor for `ProAttachResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proAttachResponseDescriptor = $convert.base64Decode(
    'ChFQcm9BdHRhY2hSZXNwb25zZRJACgR0eXBlGAEgASgOMiwucHJvLlByb0F0dGFjaFJlc3Bvbn'
    'NlLlByb0F0dGFjaFJlc3BvbnNlVHlwZVIEdHlwZSJgChVQcm9BdHRhY2hSZXNwb25zZVR5cGUS'
    'CwoHU1VDQ0VTUxAAEhEKDU5FVFdPUktfRVJST1IQARIRCg1VTktOT1dOX0VSUk9SEAISFAoQQU'
    'xSRUFEWV9BVFRBQ0hFRBAD');

@$core.Deprecated('Use proMagicAttachResponseDescriptor instead')
const ProMagicAttachResponse$json = {
  '1': 'ProMagicAttachResponse',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pro.ProMagicAttachResponseType', '10': 'type'},
    {'1': 'userCode', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'userCode', '17': true},
  ],
  '8': [
    {'1': '_userCode'},
  ],
};

/// Descriptor for `ProMagicAttachResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proMagicAttachResponseDescriptor = $convert.base64Decode(
    'ChZQcm9NYWdpY0F0dGFjaFJlc3BvbnNlEjMKBHR5cGUYASABKA4yHy5wcm8uUHJvTWFnaWNBdH'
    'RhY2hSZXNwb25zZVR5cGVSBHR5cGUSHwoIdXNlckNvZGUYAiABKAlIAFIIdXNlckNvZGWIAQFC'
    'CwoJX3VzZXJDb2Rl');


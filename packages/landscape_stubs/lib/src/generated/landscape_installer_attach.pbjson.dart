//
//  Generated code. Do not modify.
//  source: landscape_installer_attach.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use attachStatusDescriptor instead')
const AttachStatus$json = {
  '1': 'AttachStatus',
  '2': [
    {'1': 'ATTACH_SUCCESS', '2': 0},
    {'1': 'ERROR_NOT_ENABLED', '2': 1},
  ],
};

/// Descriptor for `AttachStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List attachStatusDescriptor = $convert.base64Decode(
    'CgxBdHRhY2hTdGF0dXMSEgoOQVRUQUNIX1NVQ0NFU1MQABIVChFFUlJPUl9OT1RfRU5BQkxFRB'
    'AB');

@$core.Deprecated('Use authenticationStatusDescriptor instead')
const AuthenticationStatus$json = {
  '1': 'AuthenticationStatus',
  '2': [
    {'1': 'AUTHENTICATION_PENDING', '2': 0},
    {'1': 'AUTHENTICATION_SUCCESS', '2': 1},
    {'1': 'ERROR_CODE_NOT_FOUND', '2': 2},
    {'1': 'ERROR_CANCELED_BY_USER', '2': 3},
    {'1': 'ERROR_CODE_EXPIRED', '2': 4},
    {'1': 'ERROR_EMPLOYEE_LIMIT_EXCEEDED', '2': 5},
    {'1': 'ERROR_EMPLOYEE_DEACTIVATED', '2': 6},
    {'1': 'ERROR_EMPLOYEE_COMPUTER_LIMIT_EXCEEDED', '2': 7},
    {'1': 'ERROR_MISSING_AUTOINSTALL_FILE', '2': 8},
    {'1': 'ERROR_INVALID_TOKEN', '2': 9},
  ],
};

/// Descriptor for `AuthenticationStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List authenticationStatusDescriptor = $convert.base64Decode(
    'ChRBdXRoZW50aWNhdGlvblN0YXR1cxIaChZBVVRIRU5USUNBVElPTl9QRU5ESU5HEAASGgoWQV'
    'VUSEVOVElDQVRJT05fU1VDQ0VTUxABEhgKFEVSUk9SX0NPREVfTk9UX0ZPVU5EEAISGgoWRVJS'
    'T1JfQ0FOQ0VMRURfQllfVVNFUhADEhYKEkVSUk9SX0NPREVfRVhQSVJFRBAEEiEKHUVSUk9SX0'
    'VNUExPWUVFX0xJTUlUX0VYQ0VFREVEEAUSHgoaRVJST1JfRU1QTE9ZRUVfREVBQ1RJVkFURUQQ'
    'BhIqCiZFUlJPUl9FTVBMT1lFRV9DT01QVVRFUl9MSU1JVF9FWENFRURFRBAHEiIKHkVSUk9SX0'
    '1JU1NJTkdfQVVUT0lOU1RBTExfRklMRRAIEhcKE0VSUk9SX0lOVkFMSURfVE9LRU4QCQ==');

@$core.Deprecated('Use attachResponseDescriptor instead')
const AttachResponse$json = {
  '1': 'AttachResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.landscape_installer_attach.AttachStatus', '10': 'status'},
    {'1': 'user_code', '3': 2, '4': 1, '5': 9, '10': 'userCode'},
    {'1': 'valid_until', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'validUntil'},
    {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `AttachResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachResponseDescriptor = $convert.base64Decode(
    'Cg5BdHRhY2hSZXNwb25zZRJACgZzdGF0dXMYASABKA4yKC5sYW5kc2NhcGVfaW5zdGFsbGVyX2'
    'F0dGFjaC5BdHRhY2hTdGF0dXNSBnN0YXR1cxIbCgl1c2VyX2NvZGUYAiABKAlSCHVzZXJDb2Rl'
    'EjsKC3ZhbGlkX3VudGlsGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKdmFsaW'
    'RVbnRpbBIUCgV0b2tlbhgEIAEoCVIFdG9rZW4=');

@$core.Deprecated('Use watchAuthenticationRequestDescriptor instead')
const WatchAuthenticationRequest$json = {
  '1': 'WatchAuthenticationRequest',
  '2': [
    {'1': 'user_code', '3': 1, '4': 1, '5': 9, '10': 'userCode'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `WatchAuthenticationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchAuthenticationRequestDescriptor = $convert.base64Decode(
    'ChpXYXRjaEF1dGhlbnRpY2F0aW9uUmVxdWVzdBIbCgl1c2VyX2NvZGUYASABKAlSCHVzZXJDb2'
    'RlEhQKBXRva2VuGAIgASgJUgV0b2tlbg==');

@$core.Deprecated('Use watchAuthenticationResponseDescriptor instead')
const WatchAuthenticationResponse$json = {
  '1': 'WatchAuthenticationResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.landscape_installer_attach.AuthenticationStatus', '10': 'status'},
    {'1': 'autoinstall', '3': 2, '4': 1, '5': 9, '10': 'autoinstall'},
  ],
};

/// Descriptor for `WatchAuthenticationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchAuthenticationResponseDescriptor = $convert.base64Decode(
    'ChtXYXRjaEF1dGhlbnRpY2F0aW9uUmVzcG9uc2USSAoGc3RhdHVzGAEgASgOMjAubGFuZHNjYX'
    'BlX2luc3RhbGxlcl9hdHRhY2guQXV0aGVudGljYXRpb25TdGF0dXNSBnN0YXR1cxIgCgthdXRv'
    'aW5zdGFsbBgCIAEoCVILYXV0b2luc3RhbGw=');


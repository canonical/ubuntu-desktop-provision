//
//  Generated code. Do not modify.
//  source: ad.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use adDomainNameValidationDescriptor instead')
const AdDomainNameValidation$json = {
  '1': 'AdDomainNameValidation',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'EMPTY', '2': 1},
    {'1': 'TOO_LONG', '2': 2},
    {'1': 'INVALID_CHARS', '2': 3},
    {'1': 'START_DOT', '2': 4},
    {'1': 'END_DOT', '2': 5},
    {'1': 'START_HYPHEN', '2': 6},
    {'1': 'END_HYPHEN', '2': 7},
    {'1': 'MULTIPLE_DOTS', '2': 8},
    {'1': 'REALM_NOT_FOUND', '2': 9},
  ],
};

/// Descriptor for `AdDomainNameValidation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List adDomainNameValidationDescriptor = $convert.base64Decode(
    'ChZBZERvbWFpbk5hbWVWYWxpZGF0aW9uEgYKAk9LEAASCQoFRU1QVFkQARIMCghUT09fTE9ORx'
    'ACEhEKDUlOVkFMSURfQ0hBUlMQAxINCglTVEFSVF9ET1QQBBILCgdFTkRfRE9UEAUSEAoMU1RB'
    'UlRfSFlQSEVOEAYSDgoKRU5EX0hZUEhFThAHEhEKDU1VTFRJUExFX0RPVFMQCBITCg9SRUFMTV'
    '9OT1RfRk9VTkQQCQ==');

@$core.Deprecated('Use hasSupportResponseDescriptor instead')
const HasSupportResponse$json = {
  '1': 'HasSupportResponse',
  '2': [
    {'1': 'has_support', '3': 1, '4': 1, '5': 8, '10': 'hasSupport'},
  ],
};

/// Descriptor for `HasSupportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hasSupportResponseDescriptor = $convert.base64Decode(
    'ChJIYXNTdXBwb3J0UmVzcG9uc2USHwoLaGFzX3N1cHBvcnQYASABKAhSCmhhc1N1cHBvcnQ=');

@$core.Deprecated('Use isUsedResponseDescriptor instead')
const IsUsedResponse$json = {
  '1': 'IsUsedResponse',
  '2': [
    {'1': 'is_used', '3': 1, '4': 1, '5': 8, '10': 'isUsed'},
  ],
};

/// Descriptor for `IsUsedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isUsedResponseDescriptor = $convert.base64Decode(
    'Cg5Jc1VzZWRSZXNwb25zZRIXCgdpc191c2VkGAEgASgIUgZpc1VzZWQ=');

@$core.Deprecated('Use setUsedRequestDescriptor instead')
const SetUsedRequest$json = {
  '1': 'SetUsedRequest',
  '2': [
    {'1': 'is_used', '3': 1, '4': 1, '5': 8, '10': 'isUsed'},
  ],
};

/// Descriptor for `SetUsedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setUsedRequestDescriptor = $convert.base64Decode(
    'Cg5TZXRVc2VkUmVxdWVzdBIXCgdpc191c2VkGAEgASgIUgZpc1VzZWQ=');

@$core.Deprecated('Use getConnectionInfoResponseDescriptor instead')
const GetConnectionInfoResponse$json = {
  '1': 'GetConnectionInfoResponse',
  '2': [
    {'1': 'ad_connection_info', '3': 1, '4': 1, '5': 11, '6': '.active_directory.AdConnectionInfo', '10': 'adConnectionInfo'},
  ],
};

/// Descriptor for `GetConnectionInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectionInfoResponseDescriptor = $convert.base64Decode(
    'ChlHZXRDb25uZWN0aW9uSW5mb1Jlc3BvbnNlElAKEmFkX2Nvbm5lY3Rpb25faW5mbxgBIAEoCz'
    'IiLmFjdGl2ZV9kaXJlY3RvcnkuQWRDb25uZWN0aW9uSW5mb1IQYWRDb25uZWN0aW9uSW5mbw==');

@$core.Deprecated('Use setConnectionInfoRequestDescriptor instead')
const SetConnectionInfoRequest$json = {
  '1': 'SetConnectionInfoRequest',
  '2': [
    {'1': 'ad_connection_info', '3': 1, '4': 1, '5': 11, '6': '.active_directory.AdConnectionInfo', '10': 'adConnectionInfo'},
  ],
};

/// Descriptor for `SetConnectionInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setConnectionInfoRequestDescriptor = $convert.base64Decode(
    'ChhTZXRDb25uZWN0aW9uSW5mb1JlcXVlc3QSUAoSYWRfY29ubmVjdGlvbl9pbmZvGAEgASgLMi'
    'IuYWN0aXZlX2RpcmVjdG9yeS5BZENvbm5lY3Rpb25JbmZvUhBhZENvbm5lY3Rpb25JbmZv');

@$core.Deprecated('Use checkAdminNameRequestDescriptor instead')
const CheckAdminNameRequest$json = {
  '1': 'CheckAdminNameRequest',
  '2': [
    {'1': 'admin_name', '3': 1, '4': 1, '5': 9, '10': 'adminName'},
  ],
};

/// Descriptor for `CheckAdminNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkAdminNameRequestDescriptor = $convert.base64Decode(
    'ChVDaGVja0FkbWluTmFtZVJlcXVlc3QSHQoKYWRtaW5fbmFtZRgBIAEoCVIJYWRtaW5OYW1l');

@$core.Deprecated('Use checkAdminNameResponseDescriptor instead')
const CheckAdminNameResponse$json = {
  '1': 'CheckAdminNameResponse',
  '2': [
    {'1': 'validation', '3': 1, '4': 1, '5': 14, '6': '.active_directory.CheckAdminNameResponse.AdAdminNameValidation', '10': 'validation'},
  ],
  '4': [CheckAdminNameResponse_AdAdminNameValidation$json],
};

@$core.Deprecated('Use checkAdminNameResponseDescriptor instead')
const CheckAdminNameResponse_AdAdminNameValidation$json = {
  '1': 'AdAdminNameValidation',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'EMPTY', '2': 1},
    {'1': 'INVALID_CHARS', '2': 2},
  ],
};

/// Descriptor for `CheckAdminNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkAdminNameResponseDescriptor = $convert.base64Decode(
    'ChZDaGVja0FkbWluTmFtZVJlc3BvbnNlEl4KCnZhbGlkYXRpb24YASABKA4yPi5hY3RpdmVfZG'
    'lyZWN0b3J5LkNoZWNrQWRtaW5OYW1lUmVzcG9uc2UuQWRBZG1pbk5hbWVWYWxpZGF0aW9uUgp2'
    'YWxpZGF0aW9uIj0KFUFkQWRtaW5OYW1lVmFsaWRhdGlvbhIGCgJPSxAAEgkKBUVNUFRZEAESEQ'
    'oNSU5WQUxJRF9DSEFSUxAC');

@$core.Deprecated('Use checkPasswordRequestDescriptor instead')
const CheckPasswordRequest$json = {
  '1': 'CheckPasswordRequest',
  '2': [
    {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `CheckPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkPasswordRequestDescriptor = $convert.base64Decode(
    'ChRDaGVja1Bhc3N3b3JkUmVxdWVzdBIaCghwYXNzd29yZBgBIAEoCVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use checkPasswordResponseDescriptor instead')
const CheckPasswordResponse$json = {
  '1': 'CheckPasswordResponse',
  '2': [
    {'1': 'validation', '3': 1, '4': 1, '5': 14, '6': '.active_directory.CheckPasswordResponse.AdPasswordValidation', '10': 'validation'},
  ],
  '4': [CheckPasswordResponse_AdPasswordValidation$json],
};

@$core.Deprecated('Use checkPasswordResponseDescriptor instead')
const CheckPasswordResponse_AdPasswordValidation$json = {
  '1': 'AdPasswordValidation',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'EMPTY', '2': 1},
  ],
};

/// Descriptor for `CheckPasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkPasswordResponseDescriptor = $convert.base64Decode(
    'ChVDaGVja1Bhc3N3b3JkUmVzcG9uc2USXAoKdmFsaWRhdGlvbhgBIAEoDjI8LmFjdGl2ZV9kaX'
    'JlY3RvcnkuQ2hlY2tQYXNzd29yZFJlc3BvbnNlLkFkUGFzc3dvcmRWYWxpZGF0aW9uUgp2YWxp'
    'ZGF0aW9uIikKFEFkUGFzc3dvcmRWYWxpZGF0aW9uEgYKAk9LEAASCQoFRU1QVFkQAQ==');

@$core.Deprecated('Use checkDomainNameRequestDescriptor instead')
const CheckDomainNameRequest$json = {
  '1': 'CheckDomainNameRequest',
  '2': [
    {'1': 'domain_name', '3': 1, '4': 1, '5': 9, '10': 'domainName'},
  ],
};

/// Descriptor for `CheckDomainNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkDomainNameRequestDescriptor = $convert.base64Decode(
    'ChZDaGVja0RvbWFpbk5hbWVSZXF1ZXN0Eh8KC2RvbWFpbl9uYW1lGAEgASgJUgpkb21haW5OYW'
    '1l');

@$core.Deprecated('Use checkDomainNameResponseDescriptor instead')
const CheckDomainNameResponse$json = {
  '1': 'CheckDomainNameResponse',
  '2': [
    {'1': 'validation', '3': 1, '4': 3, '5': 14, '6': '.active_directory.AdDomainNameValidation', '10': 'validation'},
  ],
};

/// Descriptor for `CheckDomainNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkDomainNameResponseDescriptor = $convert.base64Decode(
    'ChdDaGVja0RvbWFpbk5hbWVSZXNwb25zZRJICgp2YWxpZGF0aW9uGAEgAygOMiguYWN0aXZlX2'
    'RpcmVjdG9yeS5BZERvbWFpbk5hbWVWYWxpZGF0aW9uUgp2YWxpZGF0aW9u');

@$core.Deprecated('Use pingDomainControllerRequestDescriptor instead')
const PingDomainControllerRequest$json = {
  '1': 'PingDomainControllerRequest',
  '2': [
    {'1': 'domain', '3': 1, '4': 1, '5': 9, '10': 'domain'},
  ],
};

/// Descriptor for `PingDomainControllerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingDomainControllerRequestDescriptor = $convert.base64Decode(
    'ChtQaW5nRG9tYWluQ29udHJvbGxlclJlcXVlc3QSFgoGZG9tYWluGAEgASgJUgZkb21haW4=');

@$core.Deprecated('Use pingDomainControllerResponseDescriptor instead')
const PingDomainControllerResponse$json = {
  '1': 'PingDomainControllerResponse',
  '2': [
    {'1': 'validation', '3': 1, '4': 1, '5': 14, '6': '.active_directory.AdDomainNameValidation', '10': 'validation'},
  ],
};

/// Descriptor for `PingDomainControllerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingDomainControllerResponseDescriptor = $convert.base64Decode(
    'ChxQaW5nRG9tYWluQ29udHJvbGxlclJlc3BvbnNlEkgKCnZhbGlkYXRpb24YASABKA4yKC5hY3'
    'RpdmVfZGlyZWN0b3J5LkFkRG9tYWluTmFtZVZhbGlkYXRpb25SCnZhbGlkYXRpb24=');

@$core.Deprecated('Use getJoinResultRequestDescriptor instead')
const GetJoinResultRequest$json = {
  '1': 'GetJoinResultRequest',
  '2': [
    {'1': 'ad_connection_info', '3': 1, '4': 1, '5': 11, '6': '.active_directory.AdConnectionInfo', '10': 'adConnectionInfo'},
  ],
};

/// Descriptor for `GetJoinResultRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getJoinResultRequestDescriptor = $convert.base64Decode(
    'ChRHZXRKb2luUmVzdWx0UmVxdWVzdBJQChJhZF9jb25uZWN0aW9uX2luZm8YASABKAsyIi5hY3'
    'RpdmVfZGlyZWN0b3J5LkFkQ29ubmVjdGlvbkluZm9SEGFkQ29ubmVjdGlvbkluZm8=');

@$core.Deprecated('Use getJoinResultResponseDescriptor instead')
const GetJoinResultResponse$json = {
  '1': 'GetJoinResultResponse',
  '2': [
    {'1': 'join_result', '3': 1, '4': 1, '5': 14, '6': '.active_directory.GetJoinResultResponse.AdJoinResult', '10': 'joinResult'},
  ],
  '4': [GetJoinResultResponse_AdJoinResult$json],
};

@$core.Deprecated('Use getJoinResultResponseDescriptor instead')
const GetJoinResultResponse_AdJoinResult$json = {
  '1': 'AdJoinResult',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'JOIN_ERROR', '2': 1},
    {'1': 'EMPTY_HOSTNAME', '2': 2},
    {'1': 'PAM_ERROR', '2': 3},
    {'1': 'UNKNOWN', '2': 4},
  ],
};

/// Descriptor for `GetJoinResultResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getJoinResultResponseDescriptor = $convert.base64Decode(
    'ChVHZXRKb2luUmVzdWx0UmVzcG9uc2USVQoLam9pbl9yZXN1bHQYASABKA4yNC5hY3RpdmVfZG'
    'lyZWN0b3J5LkdldEpvaW5SZXN1bHRSZXNwb25zZS5BZEpvaW5SZXN1bHRSCmpvaW5SZXN1bHQi'
    'VgoMQWRKb2luUmVzdWx0EgYKAk9LEAASDgoKSk9JTl9FUlJPUhABEhIKDkVNUFRZX0hPU1ROQU'
    '1FEAISDQoJUEFNX0VSUk9SEAMSCwoHVU5LTk9XThAE');

@$core.Deprecated('Use adConnectionInfoDescriptor instead')
const AdConnectionInfo$json = {
  '1': 'AdConnectionInfo',
  '2': [
    {'1': 'domain_name', '3': 1, '4': 1, '5': 9, '10': 'domainName'},
    {'1': 'admin_name', '3': 2, '4': 1, '5': 9, '10': 'adminName'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AdConnectionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adConnectionInfoDescriptor = $convert.base64Decode(
    'ChBBZENvbm5lY3Rpb25JbmZvEh8KC2RvbWFpbl9uYW1lGAEgASgJUgpkb21haW5OYW1lEh0KCm'
    'FkbWluX25hbWUYAiABKAlSCWFkbWluTmFtZRIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcmQ=');


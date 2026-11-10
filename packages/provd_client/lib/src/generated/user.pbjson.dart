//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use usernameValidationDescriptor instead')
const UsernameValidation$json = {
  '1': 'UsernameValidation',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'ALREADY_IN_USE', '2': 1},
    {'1': 'SYSTEM_RESERVED', '2': 2},
    {'1': 'INVALID_CHARS', '2': 3},
    {'1': 'TOO_LONG', '2': 4},
    {'1': 'EMPTY', '2': 5},
  ],
};

/// Descriptor for `UsernameValidation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List usernameValidationDescriptor = $convert.base64Decode(
    'ChJVc2VybmFtZVZhbGlkYXRpb24SBgoCT0sQABISCg5BTFJFQURZX0lOX1VTRRABEhMKD1NZU1'
    'RFTV9SRVNFUlZFRBACEhEKDUlOVkFMSURfQ0hBUlMQAxIMCghUT09fTE9ORxAEEgkKBUVNUFRZ'
    'EAU=');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'real_name', '3': 1, '4': 1, '5': 9, '10': 'realName'},
    {'1': 'hostname', '3': 2, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    {'1': 'auto_login', '3': 5, '4': 1, '5': 8, '10': 'autoLogin'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhsKCXJlYWxfbmFtZRgBIAEoCVIIcmVhbE5hbWUSGgoIaG9zdG5hbWUYAiABKAlSCG'
    'hvc3RuYW1lEhoKCHVzZXJuYW1lGAMgASgJUgh1c2VybmFtZRIaCghwYXNzd29yZBgEIAEoCVII'
    'cGFzc3dvcmQSHQoKYXV0b19sb2dpbhgFIAEoCFIJYXV0b0xvZ2lu');

@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = {
  '1': 'CreateUserRequest',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.User', '10': 'user'},
    {'1': 'is_admin', '3': 2, '4': 1, '5': 8, '10': 'isAdmin'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBIeCgR1c2VyGAEgASgLMgoudXNlci5Vc2VyUgR1c2VyEhkKCG'
    'lzX2FkbWluGAIgASgIUgdpc0FkbWlu');

@$core.Deprecated('Use validateUsernameRequestDescriptor instead')
const ValidateUsernameRequest$json = {
  '1': 'ValidateUsernameRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `ValidateUsernameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateUsernameRequestDescriptor = $convert.base64Decode(
    'ChdWYWxpZGF0ZVVzZXJuYW1lUmVxdWVzdBIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWU=');

@$core.Deprecated('Use validateUsernameResponseDescriptor instead')
const ValidateUsernameResponse$json = {
  '1': 'ValidateUsernameResponse',
  '2': [
    {'1': 'username_validation', '3': 1, '4': 1, '5': 14, '6': '.user.UsernameValidation', '10': 'usernameValidation'},
  ],
};

/// Descriptor for `ValidateUsernameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateUsernameResponseDescriptor = $convert.base64Decode(
    'ChhWYWxpZGF0ZVVzZXJuYW1lUmVzcG9uc2USSQoTdXNlcm5hbWVfdmFsaWRhdGlvbhgBIAEoDj'
    'IYLnVzZXIuVXNlcm5hbWVWYWxpZGF0aW9uUhJ1c2VybmFtZVZhbGlkYXRpb24=');


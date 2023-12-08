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

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = {
  '1': 'GetUserRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRVc2VyUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQ=');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'realName', '3': 1, '4': 1, '5': 9, '10': 'realName'},
    {'1': 'hostname', '3': 2, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    {'1': 'autoLogin', '3': 5, '4': 1, '5': 8, '10': 'autoLogin'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhoKCHJlYWxOYW1lGAEgASgJUghyZWFsTmFtZRIaCghob3N0bmFtZRgCIAEoCVIIaG'
    '9zdG5hbWUSGgoIdXNlcm5hbWUYAyABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAQgASgJUghw'
    'YXNzd29yZBIcCglhdXRvTG9naW4YBSABKAhSCWF1dG9Mb2dpbg==');

@$core.Deprecated('Use getUserResponseDescriptor instead')
const GetUserResponse$json = {
  '1': 'GetUserResponse',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.User', '10': 'user'},
  ],
};

/// Descriptor for `GetUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRVc2VyUmVzcG9uc2USHgoEdXNlchgBIAEoCzIKLnVzZXIuVXNlclIEdXNlcg==');

@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = {
  '1': 'CreateUserRequest',
  '2': [
    {'1': 'identity', '3': 1, '4': 1, '5': 11, '6': '.user.User', '10': 'identity'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBImCghpZGVudGl0eRgBIAEoCzIKLnVzZXIuVXNlclIIaWRlbn'
    'RpdHk=');

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
    {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
  ],
};

/// Descriptor for `ValidateUsernameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateUsernameResponseDescriptor = $convert.base64Decode(
    'ChhWYWxpZGF0ZVVzZXJuYW1lUmVzcG9uc2USFAoFdmFsaWQYASABKAhSBXZhbGlk');


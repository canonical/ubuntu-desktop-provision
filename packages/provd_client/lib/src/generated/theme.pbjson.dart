//
//  Generated code. Do not modify.
//  source: theme.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use themeDescriptor instead')
const Theme$json = {
  '1': 'Theme',
  '2': [
    {'1': 'LIGHT', '2': 0},
    {'1': 'DARK', '2': 1},
  ],
};

/// Descriptor for `Theme`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List themeDescriptor = $convert.base64Decode(
    'CgVUaGVtZRIJCgVMSUdIVBAAEggKBERBUksQAQ==');

@$core.Deprecated('Use accentColorDescriptor instead')
const AccentColor$json = {
  '1': 'AccentColor',
  '2': [
    {'1': 'ORANGE', '2': 0},
    {'1': 'BARK', '2': 1},
    {'1': 'SAGE', '2': 2},
    {'1': 'OLIVE', '2': 3},
    {'1': 'VIRIDIAN', '2': 4},
    {'1': 'PRUSSIAN_GREEN', '2': 5},
    {'1': 'BLUE', '2': 6},
    {'1': 'PURPLE', '2': 7},
    {'1': 'MAGENTA', '2': 8},
    {'1': 'RED', '2': 9},
  ],
};

/// Descriptor for `AccentColor`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accentColorDescriptor = $convert.base64Decode(
    'CgtBY2NlbnRDb2xvchIKCgZPUkFOR0UQABIICgRCQVJLEAESCAoEU0FHRRACEgkKBU9MSVZFEA'
    'MSDAoIVklSSURJQU4QBBISCg5QUlVTU0lBTl9HUkVFThAFEggKBEJMVUUQBhIKCgZQVVJQTEUQ'
    'BxILCgdNQUdFTlRBEAgSBwoDUkVEEAk=');

@$core.Deprecated('Use setThemeRequestDescriptor instead')
const SetThemeRequest$json = {
  '1': 'SetThemeRequest',
  '2': [
    {'1': 'theme', '3': 1, '4': 1, '5': 14, '6': '.theme.Theme', '10': 'theme'},
  ],
};

/// Descriptor for `SetThemeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setThemeRequestDescriptor = $convert.base64Decode(
    'Cg9TZXRUaGVtZVJlcXVlc3QSIgoFdGhlbWUYASABKA4yDC50aGVtZS5UaGVtZVIFdGhlbWU=');

@$core.Deprecated('Use getThemeResponseDescriptor instead')
const GetThemeResponse$json = {
  '1': 'GetThemeResponse',
  '2': [
    {'1': 'brightness', '3': 1, '4': 1, '5': 14, '6': '.theme.Theme', '10': 'brightness'},
  ],
};

/// Descriptor for `GetThemeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getThemeResponseDescriptor = $convert.base64Decode(
    'ChBHZXRUaGVtZVJlc3BvbnNlEiwKCmJyaWdodG5lc3MYASABKA4yDC50aGVtZS5UaGVtZVIKYn'
    'JpZ2h0bmVzcw==');

@$core.Deprecated('Use setAccentRequestDescriptor instead')
const SetAccentRequest$json = {
  '1': 'SetAccentRequest',
  '2': [
    {'1': 'accent_color', '3': 1, '4': 1, '5': 14, '6': '.theme.AccentColor', '10': 'accentColor'},
  ],
};

/// Descriptor for `SetAccentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setAccentRequestDescriptor = $convert.base64Decode(
    'ChBTZXRBY2NlbnRSZXF1ZXN0EjUKDGFjY2VudF9jb2xvchgBIAEoDjISLnRoZW1lLkFjY2VudE'
    'NvbG9yUgthY2NlbnRDb2xvcg==');

@$core.Deprecated('Use getAccentResponseDescriptor instead')
const GetAccentResponse$json = {
  '1': 'GetAccentResponse',
  '2': [
    {'1': 'accent_color', '3': 1, '4': 1, '5': 14, '6': '.theme.AccentColor', '10': 'accentColor'},
  ],
};

/// Descriptor for `GetAccentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccentResponseDescriptor = $convert.base64Decode(
    'ChFHZXRBY2NlbnRSZXNwb25zZRI1CgxhY2NlbnRfY29sb3IYASABKA4yEi50aGVtZS5BY2Nlbn'
    'RDb2xvclILYWNjZW50Q29sb3I=');


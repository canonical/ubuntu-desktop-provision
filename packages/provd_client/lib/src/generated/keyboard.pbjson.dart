//
//  Generated code. Do not modify.
//  source: keyboard.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use keyboardSettingsDescriptor instead')
const KeyboardSettings$json = {
  '1': 'KeyboardSettings',
  '2': [
    {'1': 'layout', '3': 1, '4': 1, '5': 9, '10': 'layout'},
    {'1': 'variant', '3': 2, '4': 1, '5': 9, '10': 'variant'},
  ],
};

/// Descriptor for `KeyboardSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyboardSettingsDescriptor = $convert.base64Decode(
    'ChBLZXlib2FyZFNldHRpbmdzEhYKBmxheW91dBgBIAEoCVIGbGF5b3V0EhgKB3ZhcmlhbnQYAi'
    'ABKAlSB3ZhcmlhbnQ=');

@$core.Deprecated('Use setKeyboardRequestDescriptor instead')
const SetKeyboardRequest$json = {
  '1': 'SetKeyboardRequest',
  '2': [
    {'1': 'settings', '3': 1, '4': 1, '5': 11, '6': '.keyboard.KeyboardSettings', '10': 'settings'},
  ],
};

/// Descriptor for `SetKeyboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setKeyboardRequestDescriptor = $convert.base64Decode(
    'ChJTZXRLZXlib2FyZFJlcXVlc3QSNgoIc2V0dGluZ3MYASABKAsyGi5rZXlib2FyZC5LZXlib2'
    'FyZFNldHRpbmdzUghzZXR0aW5ncw==');

@$core.Deprecated('Use setInputSourceRequestDescriptor instead')
const SetInputSourceRequest$json = {
  '1': 'SetInputSourceRequest',
  '2': [
    {'1': 'settings', '3': 1, '4': 1, '5': 11, '6': '.keyboard.KeyboardSettings', '10': 'settings'},
  ],
};

/// Descriptor for `SetInputSourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setInputSourceRequestDescriptor = $convert.base64Decode(
    'ChVTZXRJbnB1dFNvdXJjZVJlcXVlc3QSNgoIc2V0dGluZ3MYASABKAsyGi5rZXlib2FyZC5LZX'
    'lib2FyZFNldHRpbmdzUghzZXR0aW5ncw==');

@$core.Deprecated('Use getKeyboardResponseDescriptor instead')
const GetKeyboardResponse$json = {
  '1': 'GetKeyboardResponse',
  '2': [
    {'1': 'setup', '3': 1, '4': 1, '5': 11, '6': '.keyboard.KeyboardSetup', '10': 'setup'},
  ],
};

/// Descriptor for `GetKeyboardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKeyboardResponseDescriptor = $convert.base64Decode(
    'ChNHZXRLZXlib2FyZFJlc3BvbnNlEi0KBXNldHVwGAEgASgLMhcua2V5Ym9hcmQuS2V5Ym9hcm'
    'RTZXR1cFIFc2V0dXA=');

@$core.Deprecated('Use keyboardSetupDescriptor instead')
const KeyboardSetup$json = {
  '1': 'KeyboardSetup',
  '2': [
    {'1': 'settings', '3': 1, '4': 1, '5': 11, '6': '.keyboard.KeyboardSettings', '10': 'settings'},
    {'1': 'layouts', '3': 2, '4': 3, '5': 11, '6': '.keyboard.KeyboardLayout', '10': 'layouts'},
  ],
};

/// Descriptor for `KeyboardSetup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyboardSetupDescriptor = $convert.base64Decode(
    'Cg1LZXlib2FyZFNldHVwEjYKCHNldHRpbmdzGAEgASgLMhoua2V5Ym9hcmQuS2V5Ym9hcmRTZX'
    'R0aW5nc1IIc2V0dGluZ3MSMgoHbGF5b3V0cxgCIAMoCzIYLmtleWJvYXJkLktleWJvYXJkTGF5'
    'b3V0UgdsYXlvdXRz');

@$core.Deprecated('Use keyboardLayoutDescriptor instead')
const KeyboardLayout$json = {
  '1': 'KeyboardLayout',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'variants', '3': 3, '4': 3, '5': 11, '6': '.keyboard.KeyboardVariant', '10': 'variants'},
  ],
};

/// Descriptor for `KeyboardLayout`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyboardLayoutDescriptor = $convert.base64Decode(
    'Cg5LZXlib2FyZExheW91dBISCgRjb2RlGAEgASgJUgRjb2RlEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USNQoIdmFyaWFudHMYAyADKAsyGS5rZXlib2FyZC5LZXlib2FyZFZhcmlhbnRSCHZhcmlhbnRz');

@$core.Deprecated('Use keyboardVariantDescriptor instead')
const KeyboardVariant$json = {
  '1': 'KeyboardVariant',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `KeyboardVariant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyboardVariantDescriptor = $convert.base64Decode(
    'Cg9LZXlib2FyZFZhcmlhbnQSEgoEY29kZRgBIAEoCVIEY29kZRISCgRuYW1lGAIgASgJUgRuYW'
    '1l');


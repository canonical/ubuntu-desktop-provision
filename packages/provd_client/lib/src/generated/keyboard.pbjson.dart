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


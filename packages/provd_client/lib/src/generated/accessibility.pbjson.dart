//
//  Generated code. Do not modify.
//  source: accessibility.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cursorSizeDescriptor instead')
const CursorSize$json = {
  '1': 'CursorSize',
  '2': [
    {'1': 'DEFAULT', '2': 0},
    {'1': 'MEDIUM', '2': 1},
    {'1': 'LARGE', '2': 2},
    {'1': 'LARGER', '2': 3},
    {'1': 'LARGEST', '2': 4},
  ],
};

/// Descriptor for `CursorSize`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cursorSizeDescriptor = $convert.base64Decode(
    'CgpDdXJzb3JTaXplEgsKB0RFRkFVTFQQABIKCgZNRURJVU0QARIJCgVMQVJHRRACEgoKBkxBUk'
    'dFUhADEgsKB0xBUkdFU1QQBA==');

@$core.Deprecated('Use flashAreaDescriptor instead')
const FlashArea$json = {
  '1': 'FlashArea',
  '2': [
    {'1': 'ENTIRE_SCREEN', '2': 0},
    {'1': 'ENTIRE_WINDOW', '2': 1},
  ],
};

/// Descriptor for `FlashArea`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List flashAreaDescriptor = $convert.base64Decode(
    'CglGbGFzaEFyZWESEQoNRU5USVJFX1NDUkVFThAAEhEKDUVOVElSRV9XSU5ET1cQAQ==');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

@$core.Deprecated('Use getDoubleClickDelayResponseDescriptor instead')
const GetDoubleClickDelayResponse$json = {
  '1': 'GetDoubleClickDelayResponse',
  '2': [
    {'1': 'delay', '3': 1, '4': 1, '5': 2, '10': 'delay'},
  ],
};

/// Descriptor for `GetDoubleClickDelayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDoubleClickDelayResponseDescriptor = $convert.base64Decode(
    'ChtHZXREb3VibGVDbGlja0RlbGF5UmVzcG9uc2USFAoFZGVsYXkYASABKAJSBWRlbGF5');

@$core.Deprecated('Use setDoubleClickDelayRequestDescriptor instead')
const SetDoubleClickDelayRequest$json = {
  '1': 'SetDoubleClickDelayRequest',
  '2': [
    {'1': 'delay', '3': 1, '4': 1, '5': 2, '10': 'delay'},
  ],
};

/// Descriptor for `SetDoubleClickDelayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDoubleClickDelayRequestDescriptor = $convert.base64Decode(
    'ChpTZXREb3VibGVDbGlja0RlbGF5UmVxdWVzdBIUCgVkZWxheRgBIAEoAlIFZGVsYXk=');

@$core.Deprecated('Use getCursorSizeResponseDescriptor instead')
const GetCursorSizeResponse$json = {
  '1': 'GetCursorSizeResponse',
  '2': [
    {'1': 'size', '3': 1, '4': 1, '5': 14, '6': '.accessibility.CursorSize', '10': 'size'},
  ],
};

/// Descriptor for `GetCursorSizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCursorSizeResponseDescriptor = $convert.base64Decode(
    'ChVHZXRDdXJzb3JTaXplUmVzcG9uc2USLQoEc2l6ZRgBIAEoDjIZLmFjY2Vzc2liaWxpdHkuQ3'
    'Vyc29yU2l6ZVIEc2l6ZQ==');

@$core.Deprecated('Use setCursorSizeRequestDescriptor instead')
const SetCursorSizeRequest$json = {
  '1': 'SetCursorSizeRequest',
  '2': [
    {'1': 'size', '3': 1, '4': 1, '5': 14, '6': '.accessibility.CursorSize', '10': 'size'},
  ],
};

/// Descriptor for `SetCursorSizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCursorSizeRequestDescriptor = $convert.base64Decode(
    'ChRTZXRDdXJzb3JTaXplUmVxdWVzdBItCgRzaXplGAEgASgOMhkuYWNjZXNzaWJpbGl0eS5DdX'
    'Jzb3JTaXplUgRzaXpl');

@$core.Deprecated('Use enableVisualAlertsRequestDescriptor instead')
const EnableVisualAlertsRequest$json = {
  '1': 'EnableVisualAlertsRequest',
  '2': [
    {'1': 'area', '3': 1, '4': 1, '5': 14, '6': '.accessibility.FlashArea', '10': 'area'},
  ],
};

/// Descriptor for `EnableVisualAlertsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enableVisualAlertsRequestDescriptor = $convert.base64Decode(
    'ChlFbmFibGVWaXN1YWxBbGVydHNSZXF1ZXN0EiwKBGFyZWEYASABKA4yGC5hY2Nlc3NpYmlsaX'
    'R5LkZsYXNoQXJlYVIEYXJlYQ==');

@$core.Deprecated('Use getCursorBlinkingResponseDescriptor instead')
const GetCursorBlinkingResponse$json = {
  '1': 'GetCursorBlinkingResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'blinking_speed', '3': 2, '4': 1, '5': 2, '10': 'blinkingSpeed'},
  ],
};

/// Descriptor for `GetCursorBlinkingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCursorBlinkingResponseDescriptor = $convert.base64Decode(
    'ChlHZXRDdXJzb3JCbGlua2luZ1Jlc3BvbnNlEhgKB2VuYWJsZWQYASABKAhSB2VuYWJsZWQSJQ'
    'oOYmxpbmtpbmdfc3BlZWQYAiABKAJSDWJsaW5raW5nU3BlZWQ=');

@$core.Deprecated('Use enableCursorBlinkingRequestDescriptor instead')
const EnableCursorBlinkingRequest$json = {
  '1': 'EnableCursorBlinkingRequest',
  '2': [
    {'1': 'blinking_speed', '3': 1, '4': 1, '5': 2, '10': 'blinkingSpeed'},
  ],
};

/// Descriptor for `EnableCursorBlinkingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enableCursorBlinkingRequestDescriptor = $convert.base64Decode(
    'ChtFbmFibGVDdXJzb3JCbGlua2luZ1JlcXVlc3QSJQoOYmxpbmtpbmdfc3BlZWQYASABKAJSDW'
    'JsaW5raW5nU3BlZWQ=');

@$core.Deprecated('Use getHighContrastResponseDescriptor instead')
const GetHighContrastResponse$json = {
  '1': 'GetHighContrastResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetHighContrastResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHighContrastResponseDescriptor = $convert.base64Decode(
    'ChdHZXRIaWdoQ29udHJhc3RSZXNwb25zZRIYCgdlbmFibGVkGAEgASgIUgdlbmFibGVk');

@$core.Deprecated('Use getReducedMotionResponseDescriptor instead')
const GetReducedMotionResponse$json = {
  '1': 'GetReducedMotionResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetReducedMotionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReducedMotionResponseDescriptor = $convert.base64Decode(
    'ChhHZXRSZWR1Y2VkTW90aW9uUmVzcG9uc2USGAoHZW5hYmxlZBgBIAEoCFIHZW5hYmxlZA==');

@$core.Deprecated('Use getLargeTextResponseDescriptor instead')
const GetLargeTextResponse$json = {
  '1': 'GetLargeTextResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetLargeTextResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLargeTextResponseDescriptor = $convert.base64Decode(
    'ChRHZXRMYXJnZVRleHRSZXNwb25zZRIYCgdlbmFibGVkGAEgASgIUgdlbmFibGVk');

@$core.Deprecated('Use getSoundKeysResponseDescriptor instead')
const GetSoundKeysResponse$json = {
  '1': 'GetSoundKeysResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetSoundKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSoundKeysResponseDescriptor = $convert.base64Decode(
    'ChRHZXRTb3VuZEtleXNSZXNwb25zZRIYCgdlbmFibGVkGAEgASgIUgdlbmFibGVk');

@$core.Deprecated('Use getOverlayScrollbarsResponseDescriptor instead')
const GetOverlayScrollbarsResponse$json = {
  '1': 'GetOverlayScrollbarsResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetOverlayScrollbarsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOverlayScrollbarsResponseDescriptor = $convert.base64Decode(
    'ChxHZXRPdmVybGF5U2Nyb2xsYmFyc1Jlc3BvbnNlEhgKB2VuYWJsZWQYASABKAhSB2VuYWJsZW'
    'Q=');

@$core.Deprecated('Use getScreenReaderResponseDescriptor instead')
const GetScreenReaderResponse$json = {
  '1': 'GetScreenReaderResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetScreenReaderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScreenReaderResponseDescriptor = $convert.base64Decode(
    'ChdHZXRTY3JlZW5SZWFkZXJSZXNwb25zZRIYCgdlbmFibGVkGAEgASgIUgdlbmFibGVk');

@$core.Deprecated('Use getOveramplificationResponseDescriptor instead')
const GetOveramplificationResponse$json = {
  '1': 'GetOveramplificationResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetOveramplificationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOveramplificationResponseDescriptor = $convert.base64Decode(
    'ChxHZXRPdmVyYW1wbGlmaWNhdGlvblJlc3BvbnNlEhgKB2VuYWJsZWQYASABKAhSB2VuYWJsZW'
    'Q=');

@$core.Deprecated('Use getVisualAlertsResponseDescriptor instead')
const GetVisualAlertsResponse$json = {
  '1': 'GetVisualAlertsResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'area', '3': 2, '4': 1, '5': 14, '6': '.accessibility.FlashArea', '10': 'area'},
  ],
};

/// Descriptor for `GetVisualAlertsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVisualAlertsResponseDescriptor = $convert.base64Decode(
    'ChdHZXRWaXN1YWxBbGVydHNSZXNwb25zZRIYCgdlbmFibGVkGAEgASgIUgdlbmFibGVkEiwKBG'
    'FyZWEYAiABKA4yGC5hY2Nlc3NpYmlsaXR5LkZsYXNoQXJlYVIEYXJlYQ==');

@$core.Deprecated('Use getScreenKeyboardResponseDescriptor instead')
const GetScreenKeyboardResponse$json = {
  '1': 'GetScreenKeyboardResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetScreenKeyboardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScreenKeyboardResponseDescriptor = $convert.base64Decode(
    'ChlHZXRTY3JlZW5LZXlib2FyZFJlc3BvbnNlEhgKB2VuYWJsZWQYASABKAhSB2VuYWJsZWQ=');

@$core.Deprecated('Use getEnableByKeyboardResponseDescriptor instead')
const GetEnableByKeyboardResponse$json = {
  '1': 'GetEnableByKeyboardResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetEnableByKeyboardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEnableByKeyboardResponseDescriptor = $convert.base64Decode(
    'ChtHZXRFbmFibGVCeUtleWJvYXJkUmVzcG9uc2USGAoHZW5hYmxlZBgBIAEoCFIHZW5hYmxlZA'
    '==');

@$core.Deprecated('Use getRepeatedKeysResponseDescriptor instead')
const GetRepeatedKeysResponse$json = {
  '1': 'GetRepeatedKeysResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetRepeatedKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRepeatedKeysResponseDescriptor = $convert.base64Decode(
    'ChdHZXRSZXBlYXRlZEtleXNSZXNwb25zZRIYCgdlbmFibGVkGAEgASgIUgdlbmFibGVk');

@$core.Deprecated('Use getStickyKeysResponseDescriptor instead')
const GetStickyKeysResponse$json = {
  '1': 'GetStickyKeysResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetStickyKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStickyKeysResponseDescriptor = $convert.base64Decode(
    'ChVHZXRTdGlja3lLZXlzUmVzcG9uc2USGAoHZW5hYmxlZBgBIAEoCFIHZW5hYmxlZA==');

@$core.Deprecated('Use getSlowKeysResponseDescriptor instead')
const GetSlowKeysResponse$json = {
  '1': 'GetSlowKeysResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetSlowKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSlowKeysResponseDescriptor = $convert.base64Decode(
    'ChNHZXRTbG93S2V5c1Jlc3BvbnNlEhgKB2VuYWJsZWQYASABKAhSB2VuYWJsZWQ=');

@$core.Deprecated('Use getBounceKeysResponseDescriptor instead')
const GetBounceKeysResponse$json = {
  '1': 'GetBounceKeysResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetBounceKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBounceKeysResponseDescriptor = $convert.base64Decode(
    'ChVHZXRCb3VuY2VLZXlzUmVzcG9uc2USGAoHZW5hYmxlZBgBIAEoCFIHZW5hYmxlZA==');

@$core.Deprecated('Use getMouseKeysResponseDescriptor instead')
const GetMouseKeysResponse$json = {
  '1': 'GetMouseKeysResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetMouseKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMouseKeysResponseDescriptor = $convert.base64Decode(
    'ChRHZXRNb3VzZUtleXNSZXNwb25zZRIYCgdlbmFibGVkGAEgASgIUgdlbmFibGVk');

@$core.Deprecated('Use getLocationPointerResponseDescriptor instead')
const GetLocationPointerResponse$json = {
  '1': 'GetLocationPointerResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetLocationPointerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationPointerResponseDescriptor = $convert.base64Decode(
    'ChpHZXRMb2NhdGlvblBvaW50ZXJSZXNwb25zZRIYCgdlbmFibGVkGAEgASgIUgdlbmFibGVk');

@$core.Deprecated('Use getSimulatedSecondaryClicksResponseDescriptor instead')
const GetSimulatedSecondaryClicksResponse$json = {
  '1': 'GetSimulatedSecondaryClicksResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetSimulatedSecondaryClicksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSimulatedSecondaryClicksResponseDescriptor = $convert.base64Decode(
    'CiNHZXRTaW11bGF0ZWRTZWNvbmRhcnlDbGlja3NSZXNwb25zZRIYCgdlbmFibGVkGAEgASgIUg'
    'dlbmFibGVk');

@$core.Deprecated('Use getHoverClicksResponseDescriptor instead')
const GetHoverClicksResponse$json = {
  '1': 'GetHoverClicksResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `GetHoverClicksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHoverClicksResponseDescriptor = $convert.base64Decode(
    'ChZHZXRIb3ZlckNsaWNrc1Jlc3BvbnNlEhgKB2VuYWJsZWQYASABKAhSB2VuYWJsZWQ=');


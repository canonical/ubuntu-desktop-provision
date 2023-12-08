//
//  Generated code. Do not modify.
//  source: accessibility.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CursorSize extends $pb.ProtobufEnum {
  static const CursorSize DEFAULT = CursorSize._(0, _omitEnumNames ? '' : 'DEFAULT');
  static const CursorSize MEDIUM = CursorSize._(1, _omitEnumNames ? '' : 'MEDIUM');
  static const CursorSize LARGE = CursorSize._(2, _omitEnumNames ? '' : 'LARGE');
  static const CursorSize LARGER = CursorSize._(3, _omitEnumNames ? '' : 'LARGER');
  static const CursorSize LARGEST = CursorSize._(4, _omitEnumNames ? '' : 'LARGEST');

  static const $core.List<CursorSize> values = <CursorSize> [
    DEFAULT,
    MEDIUM,
    LARGE,
    LARGER,
    LARGEST,
  ];

  static final $core.Map<$core.int, CursorSize> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CursorSize? valueOf($core.int value) => _byValue[value];

  const CursorSize._($core.int v, $core.String n) : super(v, n);
}

class FlashArea extends $pb.ProtobufEnum {
  static const FlashArea ENTIRE_SCREEN = FlashArea._(0, _omitEnumNames ? '' : 'ENTIRE_SCREEN');
  static const FlashArea ENTIRE_WINDOW = FlashArea._(1, _omitEnumNames ? '' : 'ENTIRE_WINDOW');

  static const $core.List<FlashArea> values = <FlashArea> [
    ENTIRE_SCREEN,
    ENTIRE_WINDOW,
  ];

  static final $core.Map<$core.int, FlashArea> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FlashArea? valueOf($core.int value) => _byValue[value];

  const FlashArea._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

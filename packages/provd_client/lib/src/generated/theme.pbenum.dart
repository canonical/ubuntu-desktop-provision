//
//  Generated code. Do not modify.
//  source: theme.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Theme extends $pb.ProtobufEnum {
  static const Theme LIGHT = Theme._(0, _omitEnumNames ? '' : 'LIGHT');
  static const Theme DARK = Theme._(1, _omitEnumNames ? '' : 'DARK');

  static const $core.List<Theme> values = <Theme> [
    LIGHT,
    DARK,
  ];

  static final $core.Map<$core.int, Theme> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Theme? valueOf($core.int value) => _byValue[value];

  const Theme._($core.int v, $core.String n) : super(v, n);
}

class AccentColor extends $pb.ProtobufEnum {
  static const AccentColor ORANGE = AccentColor._(0, _omitEnumNames ? '' : 'ORANGE');
  static const AccentColor BARK = AccentColor._(1, _omitEnumNames ? '' : 'BARK');
  static const AccentColor SAGE = AccentColor._(2, _omitEnumNames ? '' : 'SAGE');
  static const AccentColor OLIVE = AccentColor._(3, _omitEnumNames ? '' : 'OLIVE');
  static const AccentColor VIRIDIAN = AccentColor._(4, _omitEnumNames ? '' : 'VIRIDIAN');
  static const AccentColor PRUSSIAN_GREEN = AccentColor._(5, _omitEnumNames ? '' : 'PRUSSIAN_GREEN');
  static const AccentColor BLUE = AccentColor._(6, _omitEnumNames ? '' : 'BLUE');
  static const AccentColor PURPLE = AccentColor._(7, _omitEnumNames ? '' : 'PURPLE');
  static const AccentColor MAGENTA = AccentColor._(8, _omitEnumNames ? '' : 'MAGENTA');
  static const AccentColor RED = AccentColor._(9, _omitEnumNames ? '' : 'RED');

  static const $core.List<AccentColor> values = <AccentColor> [
    ORANGE,
    BARK,
    SAGE,
    OLIVE,
    VIRIDIAN,
    PRUSSIAN_GREEN,
    BLUE,
    PURPLE,
    MAGENTA,
    RED,
  ];

  static final $core.Map<$core.int, AccentColor> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccentColor? valueOf($core.int value) => _byValue[value];

  const AccentColor._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

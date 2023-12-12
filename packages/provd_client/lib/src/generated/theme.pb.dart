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

import 'theme.pbenum.dart';

export 'theme.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();
  Empty._() : super();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'theme'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class SetThemeRequest extends $pb.GeneratedMessage {
  factory SetThemeRequest({
    Theme? theme,
  }) {
    final $result = create();
    if (theme != null) {
      $result.theme = theme;
    }
    return $result;
  }
  SetThemeRequest._() : super();
  factory SetThemeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetThemeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetThemeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'theme'), createEmptyInstance: create)
    ..e<Theme>(1, _omitFieldNames ? '' : 'theme', $pb.PbFieldType.OE, defaultOrMaker: Theme.LIGHT, valueOf: Theme.valueOf, enumValues: Theme.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetThemeRequest clone() => SetThemeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetThemeRequest copyWith(void Function(SetThemeRequest) updates) => super.copyWith((message) => updates(message as SetThemeRequest)) as SetThemeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetThemeRequest create() => SetThemeRequest._();
  SetThemeRequest createEmptyInstance() => create();
  static $pb.PbList<SetThemeRequest> createRepeated() => $pb.PbList<SetThemeRequest>();
  @$core.pragma('dart2js:noInline')
  static SetThemeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetThemeRequest>(create);
  static SetThemeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Theme get theme => $_getN(0);
  @$pb.TagNumber(1)
  set theme(Theme v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTheme() => $_has(0);
  @$pb.TagNumber(1)
  void clearTheme() => clearField(1);
}

class GetThemeResponse extends $pb.GeneratedMessage {
  factory GetThemeResponse({
    Theme? brightness,
  }) {
    final $result = create();
    if (brightness != null) {
      $result.brightness = brightness;
    }
    return $result;
  }
  GetThemeResponse._() : super();
  factory GetThemeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetThemeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetThemeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'theme'), createEmptyInstance: create)
    ..e<Theme>(1, _omitFieldNames ? '' : 'brightness', $pb.PbFieldType.OE, defaultOrMaker: Theme.LIGHT, valueOf: Theme.valueOf, enumValues: Theme.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetThemeResponse clone() => GetThemeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetThemeResponse copyWith(void Function(GetThemeResponse) updates) => super.copyWith((message) => updates(message as GetThemeResponse)) as GetThemeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetThemeResponse create() => GetThemeResponse._();
  GetThemeResponse createEmptyInstance() => create();
  static $pb.PbList<GetThemeResponse> createRepeated() => $pb.PbList<GetThemeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetThemeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetThemeResponse>(create);
  static GetThemeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Theme get brightness => $_getN(0);
  @$pb.TagNumber(1)
  set brightness(Theme v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBrightness() => $_has(0);
  @$pb.TagNumber(1)
  void clearBrightness() => clearField(1);
}

class SetAccentRequest extends $pb.GeneratedMessage {
  factory SetAccentRequest({
    AccentColor? accentColor,
  }) {
    final $result = create();
    if (accentColor != null) {
      $result.accentColor = accentColor;
    }
    return $result;
  }
  SetAccentRequest._() : super();
  factory SetAccentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetAccentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetAccentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'theme'), createEmptyInstance: create)
    ..e<AccentColor>(1, _omitFieldNames ? '' : 'accentColor', $pb.PbFieldType.OE, defaultOrMaker: AccentColor.ORANGE, valueOf: AccentColor.valueOf, enumValues: AccentColor.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetAccentRequest clone() => SetAccentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetAccentRequest copyWith(void Function(SetAccentRequest) updates) => super.copyWith((message) => updates(message as SetAccentRequest)) as SetAccentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetAccentRequest create() => SetAccentRequest._();
  SetAccentRequest createEmptyInstance() => create();
  static $pb.PbList<SetAccentRequest> createRepeated() => $pb.PbList<SetAccentRequest>();
  @$core.pragma('dart2js:noInline')
  static SetAccentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetAccentRequest>(create);
  static SetAccentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AccentColor get accentColor => $_getN(0);
  @$pb.TagNumber(1)
  set accentColor(AccentColor v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccentColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccentColor() => clearField(1);
}

class GetAccentResponse extends $pb.GeneratedMessage {
  factory GetAccentResponse({
    AccentColor? accentColor,
  }) {
    final $result = create();
    if (accentColor != null) {
      $result.accentColor = accentColor;
    }
    return $result;
  }
  GetAccentResponse._() : super();
  factory GetAccentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAccentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'theme'), createEmptyInstance: create)
    ..e<AccentColor>(1, _omitFieldNames ? '' : 'accentColor', $pb.PbFieldType.OE, defaultOrMaker: AccentColor.ORANGE, valueOf: AccentColor.valueOf, enumValues: AccentColor.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccentResponse clone() => GetAccentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccentResponse copyWith(void Function(GetAccentResponse) updates) => super.copyWith((message) => updates(message as GetAccentResponse)) as GetAccentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccentResponse create() => GetAccentResponse._();
  GetAccentResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccentResponse> createRepeated() => $pb.PbList<GetAccentResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccentResponse>(create);
  static GetAccentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccentColor get accentColor => $_getN(0);
  @$pb.TagNumber(1)
  set accentColor(AccentColor v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccentColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccentColor() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

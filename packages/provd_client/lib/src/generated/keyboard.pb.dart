//
//  Generated code. Do not modify.
//  source: keyboard.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class KeyboardSettings extends $pb.GeneratedMessage {
  factory KeyboardSettings({
    $core.String? layout,
    $core.String? variant,
  }) {
    final $result = create();
    if (layout != null) {
      $result.layout = layout;
    }
    if (variant != null) {
      $result.variant = variant;
    }
    return $result;
  }
  KeyboardSettings._() : super();
  factory KeyboardSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyboardSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyboardSettings', package: const $pb.PackageName(_omitMessageNames ? '' : 'keyboard'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'layout')
    ..aOS(2, _omitFieldNames ? '' : 'variant')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyboardSettings clone() => KeyboardSettings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyboardSettings copyWith(void Function(KeyboardSettings) updates) => super.copyWith((message) => updates(message as KeyboardSettings)) as KeyboardSettings;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyboardSettings create() => KeyboardSettings._();
  KeyboardSettings createEmptyInstance() => create();
  static $pb.PbList<KeyboardSettings> createRepeated() => $pb.PbList<KeyboardSettings>();
  @$core.pragma('dart2js:noInline')
  static KeyboardSettings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyboardSettings>(create);
  static KeyboardSettings? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get layout => $_getSZ(0);
  @$pb.TagNumber(1)
  set layout($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLayout() => $_has(0);
  @$pb.TagNumber(1)
  void clearLayout() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get variant => $_getSZ(1);
  @$pb.TagNumber(2)
  set variant($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVariant() => $_has(1);
  @$pb.TagNumber(2)
  void clearVariant() => clearField(2);
}

class SetKeyboardRequest extends $pb.GeneratedMessage {
  factory SetKeyboardRequest({
    KeyboardSettings? settings,
  }) {
    final $result = create();
    if (settings != null) {
      $result.settings = settings;
    }
    return $result;
  }
  SetKeyboardRequest._() : super();
  factory SetKeyboardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetKeyboardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetKeyboardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'keyboard'), createEmptyInstance: create)
    ..aOM<KeyboardSettings>(1, _omitFieldNames ? '' : 'settings', subBuilder: KeyboardSettings.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetKeyboardRequest clone() => SetKeyboardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetKeyboardRequest copyWith(void Function(SetKeyboardRequest) updates) => super.copyWith((message) => updates(message as SetKeyboardRequest)) as SetKeyboardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetKeyboardRequest create() => SetKeyboardRequest._();
  SetKeyboardRequest createEmptyInstance() => create();
  static $pb.PbList<SetKeyboardRequest> createRepeated() => $pb.PbList<SetKeyboardRequest>();
  @$core.pragma('dart2js:noInline')
  static SetKeyboardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetKeyboardRequest>(create);
  static SetKeyboardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  KeyboardSettings get settings => $_getN(0);
  @$pb.TagNumber(1)
  set settings(KeyboardSettings v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSettings() => $_has(0);
  @$pb.TagNumber(1)
  void clearSettings() => clearField(1);
  @$pb.TagNumber(1)
  KeyboardSettings ensureSettings() => $_ensure(0);
}

class SetInputSourceRequest extends $pb.GeneratedMessage {
  factory SetInputSourceRequest({
    KeyboardSettings? settings,
  }) {
    final $result = create();
    if (settings != null) {
      $result.settings = settings;
    }
    return $result;
  }
  SetInputSourceRequest._() : super();
  factory SetInputSourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetInputSourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetInputSourceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'keyboard'), createEmptyInstance: create)
    ..aOM<KeyboardSettings>(1, _omitFieldNames ? '' : 'settings', subBuilder: KeyboardSettings.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetInputSourceRequest clone() => SetInputSourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetInputSourceRequest copyWith(void Function(SetInputSourceRequest) updates) => super.copyWith((message) => updates(message as SetInputSourceRequest)) as SetInputSourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetInputSourceRequest create() => SetInputSourceRequest._();
  SetInputSourceRequest createEmptyInstance() => create();
  static $pb.PbList<SetInputSourceRequest> createRepeated() => $pb.PbList<SetInputSourceRequest>();
  @$core.pragma('dart2js:noInline')
  static SetInputSourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetInputSourceRequest>(create);
  static SetInputSourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  KeyboardSettings get settings => $_getN(0);
  @$pb.TagNumber(1)
  set settings(KeyboardSettings v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSettings() => $_has(0);
  @$pb.TagNumber(1)
  void clearSettings() => clearField(1);
  @$pb.TagNumber(1)
  KeyboardSettings ensureSettings() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

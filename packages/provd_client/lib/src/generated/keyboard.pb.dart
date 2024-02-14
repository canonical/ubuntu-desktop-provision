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

class GetKeyboardResponse extends $pb.GeneratedMessage {
  factory GetKeyboardResponse({
    KeyboardSetup? setup,
  }) {
    final $result = create();
    if (setup != null) {
      $result.setup = setup;
    }
    return $result;
  }
  GetKeyboardResponse._() : super();
  factory GetKeyboardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKeyboardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKeyboardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'keyboard'), createEmptyInstance: create)
    ..aOM<KeyboardSetup>(1, _omitFieldNames ? '' : 'setup', subBuilder: KeyboardSetup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKeyboardResponse clone() => GetKeyboardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKeyboardResponse copyWith(void Function(GetKeyboardResponse) updates) => super.copyWith((message) => updates(message as GetKeyboardResponse)) as GetKeyboardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKeyboardResponse create() => GetKeyboardResponse._();
  GetKeyboardResponse createEmptyInstance() => create();
  static $pb.PbList<GetKeyboardResponse> createRepeated() => $pb.PbList<GetKeyboardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetKeyboardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKeyboardResponse>(create);
  static GetKeyboardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  KeyboardSetup get setup => $_getN(0);
  @$pb.TagNumber(1)
  set setup(KeyboardSetup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetup() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetup() => clearField(1);
  @$pb.TagNumber(1)
  KeyboardSetup ensureSetup() => $_ensure(0);
}

class KeyboardSetup extends $pb.GeneratedMessage {
  factory KeyboardSetup({
    KeyboardSettings? settings,
    $core.Iterable<KeyboardLayout>? layouts,
  }) {
    final $result = create();
    if (settings != null) {
      $result.settings = settings;
    }
    if (layouts != null) {
      $result.layouts.addAll(layouts);
    }
    return $result;
  }
  KeyboardSetup._() : super();
  factory KeyboardSetup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyboardSetup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyboardSetup', package: const $pb.PackageName(_omitMessageNames ? '' : 'keyboard'), createEmptyInstance: create)
    ..aOM<KeyboardSettings>(1, _omitFieldNames ? '' : 'settings', subBuilder: KeyboardSettings.create)
    ..pc<KeyboardLayout>(2, _omitFieldNames ? '' : 'layouts', $pb.PbFieldType.PM, subBuilder: KeyboardLayout.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyboardSetup clone() => KeyboardSetup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyboardSetup copyWith(void Function(KeyboardSetup) updates) => super.copyWith((message) => updates(message as KeyboardSetup)) as KeyboardSetup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyboardSetup create() => KeyboardSetup._();
  KeyboardSetup createEmptyInstance() => create();
  static $pb.PbList<KeyboardSetup> createRepeated() => $pb.PbList<KeyboardSetup>();
  @$core.pragma('dart2js:noInline')
  static KeyboardSetup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyboardSetup>(create);
  static KeyboardSetup? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.List<KeyboardLayout> get layouts => $_getList(1);
}

class KeyboardLayout extends $pb.GeneratedMessage {
  factory KeyboardLayout({
    $core.String? code,
    $core.String? name,
    $core.Iterable<KeyboardVariant>? variants,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (name != null) {
      $result.name = name;
    }
    if (variants != null) {
      $result.variants.addAll(variants);
    }
    return $result;
  }
  KeyboardLayout._() : super();
  factory KeyboardLayout.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyboardLayout.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyboardLayout', package: const $pb.PackageName(_omitMessageNames ? '' : 'keyboard'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<KeyboardVariant>(3, _omitFieldNames ? '' : 'variants', $pb.PbFieldType.PM, subBuilder: KeyboardVariant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyboardLayout clone() => KeyboardLayout()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyboardLayout copyWith(void Function(KeyboardLayout) updates) => super.copyWith((message) => updates(message as KeyboardLayout)) as KeyboardLayout;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyboardLayout create() => KeyboardLayout._();
  KeyboardLayout createEmptyInstance() => create();
  static $pb.PbList<KeyboardLayout> createRepeated() => $pb.PbList<KeyboardLayout>();
  @$core.pragma('dart2js:noInline')
  static KeyboardLayout getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyboardLayout>(create);
  static KeyboardLayout? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<KeyboardVariant> get variants => $_getList(2);
}

class KeyboardVariant extends $pb.GeneratedMessage {
  factory KeyboardVariant({
    $core.String? code,
    $core.String? name,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  KeyboardVariant._() : super();
  factory KeyboardVariant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyboardVariant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyboardVariant', package: const $pb.PackageName(_omitMessageNames ? '' : 'keyboard'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyboardVariant clone() => KeyboardVariant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyboardVariant copyWith(void Function(KeyboardVariant) updates) => super.copyWith((message) => updates(message as KeyboardVariant)) as KeyboardVariant;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyboardVariant create() => KeyboardVariant._();
  KeyboardVariant createEmptyInstance() => create();
  static $pb.PbList<KeyboardVariant> createRepeated() => $pb.PbList<KeyboardVariant>();
  @$core.pragma('dart2js:noInline')
  static KeyboardVariant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyboardVariant>(create);
  static KeyboardVariant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

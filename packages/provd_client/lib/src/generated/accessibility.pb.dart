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

import 'accessibility.pbenum.dart';

export 'accessibility.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();
  Empty._() : super();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
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

class GetDoubleClickDelayResponse extends $pb.GeneratedMessage {
  factory GetDoubleClickDelayResponse({
    $core.double? delay,
  }) {
    final $result = create();
    if (delay != null) {
      $result.delay = delay;
    }
    return $result;
  }
  GetDoubleClickDelayResponse._() : super();
  factory GetDoubleClickDelayResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDoubleClickDelayResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDoubleClickDelayResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'delay', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDoubleClickDelayResponse clone() => GetDoubleClickDelayResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDoubleClickDelayResponse copyWith(void Function(GetDoubleClickDelayResponse) updates) => super.copyWith((message) => updates(message as GetDoubleClickDelayResponse)) as GetDoubleClickDelayResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDoubleClickDelayResponse create() => GetDoubleClickDelayResponse._();
  GetDoubleClickDelayResponse createEmptyInstance() => create();
  static $pb.PbList<GetDoubleClickDelayResponse> createRepeated() => $pb.PbList<GetDoubleClickDelayResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDoubleClickDelayResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDoubleClickDelayResponse>(create);
  static GetDoubleClickDelayResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get delay => $_getN(0);
  @$pb.TagNumber(1)
  set delay($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDelay() => $_has(0);
  @$pb.TagNumber(1)
  void clearDelay() => clearField(1);
}

class SetDoubleClickDelayRequest extends $pb.GeneratedMessage {
  factory SetDoubleClickDelayRequest({
    $core.double? delay,
  }) {
    final $result = create();
    if (delay != null) {
      $result.delay = delay;
    }
    return $result;
  }
  SetDoubleClickDelayRequest._() : super();
  factory SetDoubleClickDelayRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDoubleClickDelayRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetDoubleClickDelayRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'delay', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDoubleClickDelayRequest clone() => SetDoubleClickDelayRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDoubleClickDelayRequest copyWith(void Function(SetDoubleClickDelayRequest) updates) => super.copyWith((message) => updates(message as SetDoubleClickDelayRequest)) as SetDoubleClickDelayRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDoubleClickDelayRequest create() => SetDoubleClickDelayRequest._();
  SetDoubleClickDelayRequest createEmptyInstance() => create();
  static $pb.PbList<SetDoubleClickDelayRequest> createRepeated() => $pb.PbList<SetDoubleClickDelayRequest>();
  @$core.pragma('dart2js:noInline')
  static SetDoubleClickDelayRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDoubleClickDelayRequest>(create);
  static SetDoubleClickDelayRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get delay => $_getN(0);
  @$pb.TagNumber(1)
  set delay($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDelay() => $_has(0);
  @$pb.TagNumber(1)
  void clearDelay() => clearField(1);
}

class GetCursorSizeResponse extends $pb.GeneratedMessage {
  factory GetCursorSizeResponse({
    CursorSize? size,
  }) {
    final $result = create();
    if (size != null) {
      $result.size = size;
    }
    return $result;
  }
  GetCursorSizeResponse._() : super();
  factory GetCursorSizeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCursorSizeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCursorSizeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..e<CursorSize>(1, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OE, defaultOrMaker: CursorSize.DEFAULT, valueOf: CursorSize.valueOf, enumValues: CursorSize.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCursorSizeResponse clone() => GetCursorSizeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCursorSizeResponse copyWith(void Function(GetCursorSizeResponse) updates) => super.copyWith((message) => updates(message as GetCursorSizeResponse)) as GetCursorSizeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCursorSizeResponse create() => GetCursorSizeResponse._();
  GetCursorSizeResponse createEmptyInstance() => create();
  static $pb.PbList<GetCursorSizeResponse> createRepeated() => $pb.PbList<GetCursorSizeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCursorSizeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCursorSizeResponse>(create);
  static GetCursorSizeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CursorSize get size => $_getN(0);
  @$pb.TagNumber(1)
  set size(CursorSize v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => clearField(1);
}

class SetCursorSizeRequest extends $pb.GeneratedMessage {
  factory SetCursorSizeRequest({
    CursorSize? size,
  }) {
    final $result = create();
    if (size != null) {
      $result.size = size;
    }
    return $result;
  }
  SetCursorSizeRequest._() : super();
  factory SetCursorSizeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCursorSizeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCursorSizeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..e<CursorSize>(1, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OE, defaultOrMaker: CursorSize.DEFAULT, valueOf: CursorSize.valueOf, enumValues: CursorSize.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCursorSizeRequest clone() => SetCursorSizeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCursorSizeRequest copyWith(void Function(SetCursorSizeRequest) updates) => super.copyWith((message) => updates(message as SetCursorSizeRequest)) as SetCursorSizeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetCursorSizeRequest create() => SetCursorSizeRequest._();
  SetCursorSizeRequest createEmptyInstance() => create();
  static $pb.PbList<SetCursorSizeRequest> createRepeated() => $pb.PbList<SetCursorSizeRequest>();
  @$core.pragma('dart2js:noInline')
  static SetCursorSizeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCursorSizeRequest>(create);
  static SetCursorSizeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  CursorSize get size => $_getN(0);
  @$pb.TagNumber(1)
  set size(CursorSize v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => clearField(1);
}

class EnableVisualAlertsRequest extends $pb.GeneratedMessage {
  factory EnableVisualAlertsRequest({
    FlashArea? area,
  }) {
    final $result = create();
    if (area != null) {
      $result.area = area;
    }
    return $result;
  }
  EnableVisualAlertsRequest._() : super();
  factory EnableVisualAlertsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnableVisualAlertsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnableVisualAlertsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..e<FlashArea>(1, _omitFieldNames ? '' : 'area', $pb.PbFieldType.OE, defaultOrMaker: FlashArea.ENTIRE_SCREEN, valueOf: FlashArea.valueOf, enumValues: FlashArea.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnableVisualAlertsRequest clone() => EnableVisualAlertsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnableVisualAlertsRequest copyWith(void Function(EnableVisualAlertsRequest) updates) => super.copyWith((message) => updates(message as EnableVisualAlertsRequest)) as EnableVisualAlertsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnableVisualAlertsRequest create() => EnableVisualAlertsRequest._();
  EnableVisualAlertsRequest createEmptyInstance() => create();
  static $pb.PbList<EnableVisualAlertsRequest> createRepeated() => $pb.PbList<EnableVisualAlertsRequest>();
  @$core.pragma('dart2js:noInline')
  static EnableVisualAlertsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnableVisualAlertsRequest>(create);
  static EnableVisualAlertsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  FlashArea get area => $_getN(0);
  @$pb.TagNumber(1)
  set area(FlashArea v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArea() => $_has(0);
  @$pb.TagNumber(1)
  void clearArea() => clearField(1);
}

class GetCursorBlinkingResponse extends $pb.GeneratedMessage {
  factory GetCursorBlinkingResponse({
    $core.bool? enabled,
    $core.double? blinkingSpeed,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    if (blinkingSpeed != null) {
      $result.blinkingSpeed = blinkingSpeed;
    }
    return $result;
  }
  GetCursorBlinkingResponse._() : super();
  factory GetCursorBlinkingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCursorBlinkingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCursorBlinkingResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'blinkingSpeed', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCursorBlinkingResponse clone() => GetCursorBlinkingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCursorBlinkingResponse copyWith(void Function(GetCursorBlinkingResponse) updates) => super.copyWith((message) => updates(message as GetCursorBlinkingResponse)) as GetCursorBlinkingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCursorBlinkingResponse create() => GetCursorBlinkingResponse._();
  GetCursorBlinkingResponse createEmptyInstance() => create();
  static $pb.PbList<GetCursorBlinkingResponse> createRepeated() => $pb.PbList<GetCursorBlinkingResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCursorBlinkingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCursorBlinkingResponse>(create);
  static GetCursorBlinkingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get blinkingSpeed => $_getN(1);
  @$pb.TagNumber(2)
  set blinkingSpeed($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlinkingSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlinkingSpeed() => clearField(2);
}

class EnableCursorBlinkingRequest extends $pb.GeneratedMessage {
  factory EnableCursorBlinkingRequest({
    $core.double? blinkingSpeed,
  }) {
    final $result = create();
    if (blinkingSpeed != null) {
      $result.blinkingSpeed = blinkingSpeed;
    }
    return $result;
  }
  EnableCursorBlinkingRequest._() : super();
  factory EnableCursorBlinkingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnableCursorBlinkingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnableCursorBlinkingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'blinkingSpeed', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnableCursorBlinkingRequest clone() => EnableCursorBlinkingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnableCursorBlinkingRequest copyWith(void Function(EnableCursorBlinkingRequest) updates) => super.copyWith((message) => updates(message as EnableCursorBlinkingRequest)) as EnableCursorBlinkingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnableCursorBlinkingRequest create() => EnableCursorBlinkingRequest._();
  EnableCursorBlinkingRequest createEmptyInstance() => create();
  static $pb.PbList<EnableCursorBlinkingRequest> createRepeated() => $pb.PbList<EnableCursorBlinkingRequest>();
  @$core.pragma('dart2js:noInline')
  static EnableCursorBlinkingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnableCursorBlinkingRequest>(create);
  static EnableCursorBlinkingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get blinkingSpeed => $_getN(0);
  @$pb.TagNumber(1)
  set blinkingSpeed($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlinkingSpeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlinkingSpeed() => clearField(1);
}

class GetHighContrastResponse extends $pb.GeneratedMessage {
  factory GetHighContrastResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetHighContrastResponse._() : super();
  factory GetHighContrastResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHighContrastResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetHighContrastResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHighContrastResponse clone() => GetHighContrastResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHighContrastResponse copyWith(void Function(GetHighContrastResponse) updates) => super.copyWith((message) => updates(message as GetHighContrastResponse)) as GetHighContrastResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHighContrastResponse create() => GetHighContrastResponse._();
  GetHighContrastResponse createEmptyInstance() => create();
  static $pb.PbList<GetHighContrastResponse> createRepeated() => $pb.PbList<GetHighContrastResponse>();
  @$core.pragma('dart2js:noInline')
  static GetHighContrastResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHighContrastResponse>(create);
  static GetHighContrastResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetReducedMotionResponse extends $pb.GeneratedMessage {
  factory GetReducedMotionResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetReducedMotionResponse._() : super();
  factory GetReducedMotionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReducedMotionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReducedMotionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReducedMotionResponse clone() => GetReducedMotionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReducedMotionResponse copyWith(void Function(GetReducedMotionResponse) updates) => super.copyWith((message) => updates(message as GetReducedMotionResponse)) as GetReducedMotionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReducedMotionResponse create() => GetReducedMotionResponse._();
  GetReducedMotionResponse createEmptyInstance() => create();
  static $pb.PbList<GetReducedMotionResponse> createRepeated() => $pb.PbList<GetReducedMotionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetReducedMotionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReducedMotionResponse>(create);
  static GetReducedMotionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetLargeTextResponse extends $pb.GeneratedMessage {
  factory GetLargeTextResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetLargeTextResponse._() : super();
  factory GetLargeTextResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLargeTextResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLargeTextResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLargeTextResponse clone() => GetLargeTextResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLargeTextResponse copyWith(void Function(GetLargeTextResponse) updates) => super.copyWith((message) => updates(message as GetLargeTextResponse)) as GetLargeTextResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLargeTextResponse create() => GetLargeTextResponse._();
  GetLargeTextResponse createEmptyInstance() => create();
  static $pb.PbList<GetLargeTextResponse> createRepeated() => $pb.PbList<GetLargeTextResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLargeTextResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLargeTextResponse>(create);
  static GetLargeTextResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetSoundKeysResponse extends $pb.GeneratedMessage {
  factory GetSoundKeysResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetSoundKeysResponse._() : super();
  factory GetSoundKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSoundKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSoundKeysResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSoundKeysResponse clone() => GetSoundKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSoundKeysResponse copyWith(void Function(GetSoundKeysResponse) updates) => super.copyWith((message) => updates(message as GetSoundKeysResponse)) as GetSoundKeysResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSoundKeysResponse create() => GetSoundKeysResponse._();
  GetSoundKeysResponse createEmptyInstance() => create();
  static $pb.PbList<GetSoundKeysResponse> createRepeated() => $pb.PbList<GetSoundKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSoundKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSoundKeysResponse>(create);
  static GetSoundKeysResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetOverlayScrollbarsResponse extends $pb.GeneratedMessage {
  factory GetOverlayScrollbarsResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetOverlayScrollbarsResponse._() : super();
  factory GetOverlayScrollbarsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOverlayScrollbarsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOverlayScrollbarsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOverlayScrollbarsResponse clone() => GetOverlayScrollbarsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOverlayScrollbarsResponse copyWith(void Function(GetOverlayScrollbarsResponse) updates) => super.copyWith((message) => updates(message as GetOverlayScrollbarsResponse)) as GetOverlayScrollbarsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOverlayScrollbarsResponse create() => GetOverlayScrollbarsResponse._();
  GetOverlayScrollbarsResponse createEmptyInstance() => create();
  static $pb.PbList<GetOverlayScrollbarsResponse> createRepeated() => $pb.PbList<GetOverlayScrollbarsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetOverlayScrollbarsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOverlayScrollbarsResponse>(create);
  static GetOverlayScrollbarsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetScreenReaderResponse extends $pb.GeneratedMessage {
  factory GetScreenReaderResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetScreenReaderResponse._() : super();
  factory GetScreenReaderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScreenReaderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetScreenReaderResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScreenReaderResponse clone() => GetScreenReaderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScreenReaderResponse copyWith(void Function(GetScreenReaderResponse) updates) => super.copyWith((message) => updates(message as GetScreenReaderResponse)) as GetScreenReaderResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetScreenReaderResponse create() => GetScreenReaderResponse._();
  GetScreenReaderResponse createEmptyInstance() => create();
  static $pb.PbList<GetScreenReaderResponse> createRepeated() => $pb.PbList<GetScreenReaderResponse>();
  @$core.pragma('dart2js:noInline')
  static GetScreenReaderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScreenReaderResponse>(create);
  static GetScreenReaderResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetOveramplificationResponse extends $pb.GeneratedMessage {
  factory GetOveramplificationResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetOveramplificationResponse._() : super();
  factory GetOveramplificationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOveramplificationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOveramplificationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOveramplificationResponse clone() => GetOveramplificationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOveramplificationResponse copyWith(void Function(GetOveramplificationResponse) updates) => super.copyWith((message) => updates(message as GetOveramplificationResponse)) as GetOveramplificationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOveramplificationResponse create() => GetOveramplificationResponse._();
  GetOveramplificationResponse createEmptyInstance() => create();
  static $pb.PbList<GetOveramplificationResponse> createRepeated() => $pb.PbList<GetOveramplificationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetOveramplificationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOveramplificationResponse>(create);
  static GetOveramplificationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetVisualAlertsResponse extends $pb.GeneratedMessage {
  factory GetVisualAlertsResponse({
    $core.bool? enabled,
    FlashArea? area,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    if (area != null) {
      $result.area = area;
    }
    return $result;
  }
  GetVisualAlertsResponse._() : super();
  factory GetVisualAlertsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetVisualAlertsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetVisualAlertsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..e<FlashArea>(2, _omitFieldNames ? '' : 'area', $pb.PbFieldType.OE, defaultOrMaker: FlashArea.ENTIRE_SCREEN, valueOf: FlashArea.valueOf, enumValues: FlashArea.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetVisualAlertsResponse clone() => GetVisualAlertsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetVisualAlertsResponse copyWith(void Function(GetVisualAlertsResponse) updates) => super.copyWith((message) => updates(message as GetVisualAlertsResponse)) as GetVisualAlertsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetVisualAlertsResponse create() => GetVisualAlertsResponse._();
  GetVisualAlertsResponse createEmptyInstance() => create();
  static $pb.PbList<GetVisualAlertsResponse> createRepeated() => $pb.PbList<GetVisualAlertsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetVisualAlertsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetVisualAlertsResponse>(create);
  static GetVisualAlertsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);

  @$pb.TagNumber(2)
  FlashArea get area => $_getN(1);
  @$pb.TagNumber(2)
  set area(FlashArea v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasArea() => $_has(1);
  @$pb.TagNumber(2)
  void clearArea() => clearField(2);
}

class GetScreenKeyboardResponse extends $pb.GeneratedMessage {
  factory GetScreenKeyboardResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetScreenKeyboardResponse._() : super();
  factory GetScreenKeyboardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScreenKeyboardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetScreenKeyboardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScreenKeyboardResponse clone() => GetScreenKeyboardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScreenKeyboardResponse copyWith(void Function(GetScreenKeyboardResponse) updates) => super.copyWith((message) => updates(message as GetScreenKeyboardResponse)) as GetScreenKeyboardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetScreenKeyboardResponse create() => GetScreenKeyboardResponse._();
  GetScreenKeyboardResponse createEmptyInstance() => create();
  static $pb.PbList<GetScreenKeyboardResponse> createRepeated() => $pb.PbList<GetScreenKeyboardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetScreenKeyboardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScreenKeyboardResponse>(create);
  static GetScreenKeyboardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetEnableByKeyboardResponse extends $pb.GeneratedMessage {
  factory GetEnableByKeyboardResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetEnableByKeyboardResponse._() : super();
  factory GetEnableByKeyboardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEnableByKeyboardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEnableByKeyboardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEnableByKeyboardResponse clone() => GetEnableByKeyboardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEnableByKeyboardResponse copyWith(void Function(GetEnableByKeyboardResponse) updates) => super.copyWith((message) => updates(message as GetEnableByKeyboardResponse)) as GetEnableByKeyboardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEnableByKeyboardResponse create() => GetEnableByKeyboardResponse._();
  GetEnableByKeyboardResponse createEmptyInstance() => create();
  static $pb.PbList<GetEnableByKeyboardResponse> createRepeated() => $pb.PbList<GetEnableByKeyboardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetEnableByKeyboardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEnableByKeyboardResponse>(create);
  static GetEnableByKeyboardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetRepeatedKeysResponse extends $pb.GeneratedMessage {
  factory GetRepeatedKeysResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetRepeatedKeysResponse._() : super();
  factory GetRepeatedKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRepeatedKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRepeatedKeysResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRepeatedKeysResponse clone() => GetRepeatedKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRepeatedKeysResponse copyWith(void Function(GetRepeatedKeysResponse) updates) => super.copyWith((message) => updates(message as GetRepeatedKeysResponse)) as GetRepeatedKeysResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRepeatedKeysResponse create() => GetRepeatedKeysResponse._();
  GetRepeatedKeysResponse createEmptyInstance() => create();
  static $pb.PbList<GetRepeatedKeysResponse> createRepeated() => $pb.PbList<GetRepeatedKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRepeatedKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRepeatedKeysResponse>(create);
  static GetRepeatedKeysResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetStickyKeysResponse extends $pb.GeneratedMessage {
  factory GetStickyKeysResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetStickyKeysResponse._() : super();
  factory GetStickyKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStickyKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStickyKeysResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStickyKeysResponse clone() => GetStickyKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStickyKeysResponse copyWith(void Function(GetStickyKeysResponse) updates) => super.copyWith((message) => updates(message as GetStickyKeysResponse)) as GetStickyKeysResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStickyKeysResponse create() => GetStickyKeysResponse._();
  GetStickyKeysResponse createEmptyInstance() => create();
  static $pb.PbList<GetStickyKeysResponse> createRepeated() => $pb.PbList<GetStickyKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStickyKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStickyKeysResponse>(create);
  static GetStickyKeysResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetSlowKeysResponse extends $pb.GeneratedMessage {
  factory GetSlowKeysResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetSlowKeysResponse._() : super();
  factory GetSlowKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSlowKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSlowKeysResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSlowKeysResponse clone() => GetSlowKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSlowKeysResponse copyWith(void Function(GetSlowKeysResponse) updates) => super.copyWith((message) => updates(message as GetSlowKeysResponse)) as GetSlowKeysResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSlowKeysResponse create() => GetSlowKeysResponse._();
  GetSlowKeysResponse createEmptyInstance() => create();
  static $pb.PbList<GetSlowKeysResponse> createRepeated() => $pb.PbList<GetSlowKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSlowKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSlowKeysResponse>(create);
  static GetSlowKeysResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetBounceKeysResponse extends $pb.GeneratedMessage {
  factory GetBounceKeysResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetBounceKeysResponse._() : super();
  factory GetBounceKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBounceKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBounceKeysResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBounceKeysResponse clone() => GetBounceKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBounceKeysResponse copyWith(void Function(GetBounceKeysResponse) updates) => super.copyWith((message) => updates(message as GetBounceKeysResponse)) as GetBounceKeysResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBounceKeysResponse create() => GetBounceKeysResponse._();
  GetBounceKeysResponse createEmptyInstance() => create();
  static $pb.PbList<GetBounceKeysResponse> createRepeated() => $pb.PbList<GetBounceKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBounceKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBounceKeysResponse>(create);
  static GetBounceKeysResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetMouseKeysResponse extends $pb.GeneratedMessage {
  factory GetMouseKeysResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetMouseKeysResponse._() : super();
  factory GetMouseKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMouseKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMouseKeysResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMouseKeysResponse clone() => GetMouseKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMouseKeysResponse copyWith(void Function(GetMouseKeysResponse) updates) => super.copyWith((message) => updates(message as GetMouseKeysResponse)) as GetMouseKeysResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMouseKeysResponse create() => GetMouseKeysResponse._();
  GetMouseKeysResponse createEmptyInstance() => create();
  static $pb.PbList<GetMouseKeysResponse> createRepeated() => $pb.PbList<GetMouseKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMouseKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMouseKeysResponse>(create);
  static GetMouseKeysResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetLocationPointerResponse extends $pb.GeneratedMessage {
  factory GetLocationPointerResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetLocationPointerResponse._() : super();
  factory GetLocationPointerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocationPointerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLocationPointerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocationPointerResponse clone() => GetLocationPointerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocationPointerResponse copyWith(void Function(GetLocationPointerResponse) updates) => super.copyWith((message) => updates(message as GetLocationPointerResponse)) as GetLocationPointerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLocationPointerResponse create() => GetLocationPointerResponse._();
  GetLocationPointerResponse createEmptyInstance() => create();
  static $pb.PbList<GetLocationPointerResponse> createRepeated() => $pb.PbList<GetLocationPointerResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLocationPointerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocationPointerResponse>(create);
  static GetLocationPointerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetSimulatedSecondaryClicksResponse extends $pb.GeneratedMessage {
  factory GetSimulatedSecondaryClicksResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetSimulatedSecondaryClicksResponse._() : super();
  factory GetSimulatedSecondaryClicksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSimulatedSecondaryClicksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSimulatedSecondaryClicksResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSimulatedSecondaryClicksResponse clone() => GetSimulatedSecondaryClicksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSimulatedSecondaryClicksResponse copyWith(void Function(GetSimulatedSecondaryClicksResponse) updates) => super.copyWith((message) => updates(message as GetSimulatedSecondaryClicksResponse)) as GetSimulatedSecondaryClicksResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSimulatedSecondaryClicksResponse create() => GetSimulatedSecondaryClicksResponse._();
  GetSimulatedSecondaryClicksResponse createEmptyInstance() => create();
  static $pb.PbList<GetSimulatedSecondaryClicksResponse> createRepeated() => $pb.PbList<GetSimulatedSecondaryClicksResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSimulatedSecondaryClicksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSimulatedSecondaryClicksResponse>(create);
  static GetSimulatedSecondaryClicksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class GetHoverClicksResponse extends $pb.GeneratedMessage {
  factory GetHoverClicksResponse({
    $core.bool? enabled,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  GetHoverClicksResponse._() : super();
  factory GetHoverClicksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHoverClicksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetHoverClicksResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'accessibility'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHoverClicksResponse clone() => GetHoverClicksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHoverClicksResponse copyWith(void Function(GetHoverClicksResponse) updates) => super.copyWith((message) => updates(message as GetHoverClicksResponse)) as GetHoverClicksResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHoverClicksResponse create() => GetHoverClicksResponse._();
  GetHoverClicksResponse createEmptyInstance() => create();
  static $pb.PbList<GetHoverClicksResponse> createRepeated() => $pb.PbList<GetHoverClicksResponse>();
  @$core.pragma('dart2js:noInline')
  static GetHoverClicksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHoverClicksResponse>(create);
  static GetHoverClicksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

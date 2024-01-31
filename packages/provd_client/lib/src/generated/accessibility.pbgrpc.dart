//
//  Generated code. Do not modify.
//  source: accessibility.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'accessibility.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $0;

export 'accessibility.pb.dart';

@$pb.GrpcServiceName('accessibility.AccessibilityService')
class AccessibilityServiceClient extends $grpc.Client {
  static final _$getHighContrast = $grpc.ClientMethod<$0.Empty, $1.GetHighContrastResponse>(
      '/accessibility.AccessibilityService/GetHighContrast',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetHighContrastResponse.fromBuffer(value));
  static final _$enableHighContrast = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableHighContrast',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableHighContrast = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableHighContrast',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getReducedMotion = $grpc.ClientMethod<$0.Empty, $1.GetReducedMotionResponse>(
      '/accessibility.AccessibilityService/GetReducedMotion',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetReducedMotionResponse.fromBuffer(value));
  static final _$enableReducedMotion = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableReducedMotion',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableReducedMotion = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableReducedMotion',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getLargeText = $grpc.ClientMethod<$0.Empty, $1.GetLargeTextResponse>(
      '/accessibility.AccessibilityService/GetLargeText',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetLargeTextResponse.fromBuffer(value));
  static final _$enableLargeText = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableLargeText',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableLargeText = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableLargeText',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getCursorSize = $grpc.ClientMethod<$0.Empty, $1.GetCursorSizeResponse>(
      '/accessibility.AccessibilityService/GetCursorSize',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetCursorSizeResponse.fromBuffer(value));
  static final _$setCursorSize = $grpc.ClientMethod<$1.SetCursorSizeRequest, $0.Empty>(
      '/accessibility.AccessibilityService/SetCursorSize',
      ($1.SetCursorSizeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getSoundKeys = $grpc.ClientMethod<$0.Empty, $1.GetSoundKeysResponse>(
      '/accessibility.AccessibilityService/GetSoundKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetSoundKeysResponse.fromBuffer(value));
  static final _$enableSoundKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableSoundKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableSoundKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableSoundKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getOverlayScrollbars = $grpc.ClientMethod<$0.Empty, $1.GetOverlayScrollbarsResponse>(
      '/accessibility.AccessibilityService/GetOverlayScrollbars',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetOverlayScrollbarsResponse.fromBuffer(value));
  static final _$enableOverlayScrollbars = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableOverlayScrollbars',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableOverlayScrollbars = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableOverlayScrollbars',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getScreenReader = $grpc.ClientMethod<$0.Empty, $1.GetScreenReaderResponse>(
      '/accessibility.AccessibilityService/GetScreenReader',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetScreenReaderResponse.fromBuffer(value));
  static final _$enableScreenReader = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableScreenReader',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableScreenReader = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableScreenReader',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getOveramplification = $grpc.ClientMethod<$0.Empty, $1.GetOveramplificationResponse>(
      '/accessibility.AccessibilityService/GetOveramplification',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetOveramplificationResponse.fromBuffer(value));
  static final _$enableOveramplification = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableOveramplification',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableOveramplification = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableOveramplification',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getVisualAlerts = $grpc.ClientMethod<$0.Empty, $1.GetVisualAlertsResponse>(
      '/accessibility.AccessibilityService/GetVisualAlerts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetVisualAlertsResponse.fromBuffer(value));
  static final _$enableVisualAlerts = $grpc.ClientMethod<$1.EnableVisualAlertsRequest, $0.Empty>(
      '/accessibility.AccessibilityService/EnableVisualAlerts',
      ($1.EnableVisualAlertsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableVisualAlerts = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableVisualAlerts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getScreenKeyboard = $grpc.ClientMethod<$0.Empty, $1.GetScreenKeyboardResponse>(
      '/accessibility.AccessibilityService/GetScreenKeyboard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetScreenKeyboardResponse.fromBuffer(value));
  static final _$enableScreenKeyboard = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableScreenKeyboard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableScreenKeyboard = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableScreenKeyboard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getEnableByKeyboard = $grpc.ClientMethod<$0.Empty, $1.GetEnableByKeyboardResponse>(
      '/accessibility.AccessibilityService/GetEnableByKeyboard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetEnableByKeyboardResponse.fromBuffer(value));
  static final _$enableEnableByKeyboard = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableEnableByKeyboard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableEnableByKeyboard = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableEnableByKeyboard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getCursorBlinking = $grpc.ClientMethod<$0.Empty, $1.GetCursorBlinkingResponse>(
      '/accessibility.AccessibilityService/GetCursorBlinking',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetCursorBlinkingResponse.fromBuffer(value));
  static final _$enableCursorBlinking = $grpc.ClientMethod<$1.EnableCursorBlinkingRequest, $0.Empty>(
      '/accessibility.AccessibilityService/EnableCursorBlinking',
      ($1.EnableCursorBlinkingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableCursorBlinking = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableCursorBlinking',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getRepeatedKeys = $grpc.ClientMethod<$0.Empty, $1.GetRepeatedKeysResponse>(
      '/accessibility.AccessibilityService/GetRepeatedKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetRepeatedKeysResponse.fromBuffer(value));
  static final _$enableRepeatedKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableRepeatedKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableRepeatedKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableRepeatedKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getStickyKeys = $grpc.ClientMethod<$0.Empty, $1.GetStickyKeysResponse>(
      '/accessibility.AccessibilityService/GetStickyKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetStickyKeysResponse.fromBuffer(value));
  static final _$enableStickyKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableStickyKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableStickyKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableStickyKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getSlowKeys = $grpc.ClientMethod<$0.Empty, $1.GetSlowKeysResponse>(
      '/accessibility.AccessibilityService/GetSlowKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetSlowKeysResponse.fromBuffer(value));
  static final _$enableSlowKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableSlowKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableSlowKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableSlowKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getBounceKeys = $grpc.ClientMethod<$0.Empty, $1.GetBounceKeysResponse>(
      '/accessibility.AccessibilityService/GetBounceKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetBounceKeysResponse.fromBuffer(value));
  static final _$enableBounceKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableBounceKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableBounceKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableBounceKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getMouseKeys = $grpc.ClientMethod<$0.Empty, $1.GetMouseKeysResponse>(
      '/accessibility.AccessibilityService/GetMouseKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetMouseKeysResponse.fromBuffer(value));
  static final _$enableMouseKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableMouseKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableMouseKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableMouseKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getLocationPointer = $grpc.ClientMethod<$0.Empty, $1.GetLocationPointerResponse>(
      '/accessibility.AccessibilityService/GetLocationPointer',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetLocationPointerResponse.fromBuffer(value));
  static final _$enableLocationPointer = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableLocationPointer',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableLocationPointer = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableLocationPointer',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getDoubleClickDelay = $grpc.ClientMethod<$0.Empty, $1.GetDoubleClickDelayResponse>(
      '/accessibility.AccessibilityService/GetDoubleClickDelay',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetDoubleClickDelayResponse.fromBuffer(value));
  static final _$setDoubleClickDelay = $grpc.ClientMethod<$1.SetDoubleClickDelayRequest, $0.Empty>(
      '/accessibility.AccessibilityService/SetDoubleClickDelay',
      ($1.SetDoubleClickDelayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getSimulatedSecondaryClicks = $grpc.ClientMethod<$0.Empty, $1.GetSimulatedSecondaryClicksResponse>(
      '/accessibility.AccessibilityService/GetSimulatedSecondaryClicks',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetSimulatedSecondaryClicksResponse.fromBuffer(value));
  static final _$enableSimulatedSecondaryClicks = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableSimulatedSecondaryClicks',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableSimulatedSecondaryClicks = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableSimulatedSecondaryClicks',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getHoverClicks = $grpc.ClientMethod<$0.Empty, $1.GetHoverClicksResponse>(
      '/accessibility.AccessibilityService/GetHoverClicks',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetHoverClicksResponse.fromBuffer(value));
  static final _$enableHoverClicks = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableHoverClicks',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableHoverClicks = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableHoverClicks',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  AccessibilityServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.GetHighContrastResponse> getHighContrast($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHighContrast, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableHighContrast($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableHighContrast, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableHighContrast($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableHighContrast, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetReducedMotionResponse> getReducedMotion($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReducedMotion, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableReducedMotion($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableReducedMotion, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableReducedMotion($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableReducedMotion, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetLargeTextResponse> getLargeText($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLargeText, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableLargeText($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableLargeText, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableLargeText($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableLargeText, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCursorSizeResponse> getCursorSize($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCursorSize, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setCursorSize($1.SetCursorSizeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setCursorSize, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetSoundKeysResponse> getSoundKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSoundKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableSoundKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableSoundKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableSoundKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableSoundKeys, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetOverlayScrollbarsResponse> getOverlayScrollbars($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOverlayScrollbars, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableOverlayScrollbars($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableOverlayScrollbars, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableOverlayScrollbars($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableOverlayScrollbars, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetScreenReaderResponse> getScreenReader($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getScreenReader, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableScreenReader($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableScreenReader, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableScreenReader($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableScreenReader, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetOveramplificationResponse> getOveramplification($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOveramplification, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableOveramplification($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableOveramplification, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableOveramplification($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableOveramplification, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetVisualAlertsResponse> getVisualAlerts($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVisualAlerts, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableVisualAlerts($1.EnableVisualAlertsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableVisualAlerts, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableVisualAlerts($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableVisualAlerts, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetScreenKeyboardResponse> getScreenKeyboard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getScreenKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableScreenKeyboard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableScreenKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableScreenKeyboard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableScreenKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetEnableByKeyboardResponse> getEnableByKeyboard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEnableByKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableEnableByKeyboard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableEnableByKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableEnableByKeyboard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableEnableByKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCursorBlinkingResponse> getCursorBlinking($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCursorBlinking, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableCursorBlinking($1.EnableCursorBlinkingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableCursorBlinking, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableCursorBlinking($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableCursorBlinking, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetRepeatedKeysResponse> getRepeatedKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRepeatedKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableRepeatedKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableRepeatedKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableRepeatedKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableRepeatedKeys, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetStickyKeysResponse> getStickyKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStickyKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableStickyKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableStickyKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableStickyKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableStickyKeys, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetSlowKeysResponse> getSlowKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSlowKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableSlowKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableSlowKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableSlowKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableSlowKeys, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetBounceKeysResponse> getBounceKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBounceKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableBounceKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableBounceKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableBounceKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableBounceKeys, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetMouseKeysResponse> getMouseKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMouseKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableMouseKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableMouseKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableMouseKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableMouseKeys, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetLocationPointerResponse> getLocationPointer($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLocationPointer, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableLocationPointer($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableLocationPointer, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableLocationPointer($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableLocationPointer, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetDoubleClickDelayResponse> getDoubleClickDelay($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDoubleClickDelay, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setDoubleClickDelay($1.SetDoubleClickDelayRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setDoubleClickDelay, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetSimulatedSecondaryClicksResponse> getSimulatedSecondaryClicks($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSimulatedSecondaryClicks, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableSimulatedSecondaryClicks($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableSimulatedSecondaryClicks, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableSimulatedSecondaryClicks($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableSimulatedSecondaryClicks, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetHoverClicksResponse> getHoverClicks($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHoverClicks, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableHoverClicks($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableHoverClicks, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableHoverClicks($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableHoverClicks, request, options: options);
  }
}

@$pb.GrpcServiceName('accessibility.AccessibilityService')
abstract class AccessibilityServiceBase extends $grpc.Service {
  $core.String get $name => 'accessibility.AccessibilityService';

  AccessibilityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetHighContrastResponse>(
        'GetHighContrast',
        getHighContrast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetHighContrastResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableHighContrast',
        enableHighContrast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableHighContrast',
        disableHighContrast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetReducedMotionResponse>(
        'GetReducedMotion',
        getReducedMotion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetReducedMotionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableReducedMotion',
        enableReducedMotion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableReducedMotion',
        disableReducedMotion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetLargeTextResponse>(
        'GetLargeText',
        getLargeText_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetLargeTextResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableLargeText',
        enableLargeText_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableLargeText',
        disableLargeText_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetCursorSizeResponse>(
        'GetCursorSize',
        getCursorSize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetCursorSizeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SetCursorSizeRequest, $0.Empty>(
        'SetCursorSize',
        setCursorSize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SetCursorSizeRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetSoundKeysResponse>(
        'GetSoundKeys',
        getSoundKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetSoundKeysResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableSoundKeys',
        enableSoundKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableSoundKeys',
        disableSoundKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetOverlayScrollbarsResponse>(
        'GetOverlayScrollbars',
        getOverlayScrollbars_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetOverlayScrollbarsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableOverlayScrollbars',
        enableOverlayScrollbars_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableOverlayScrollbars',
        disableOverlayScrollbars_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetScreenReaderResponse>(
        'GetScreenReader',
        getScreenReader_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetScreenReaderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableScreenReader',
        enableScreenReader_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableScreenReader',
        disableScreenReader_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetOveramplificationResponse>(
        'GetOveramplification',
        getOveramplification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetOveramplificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableOveramplification',
        enableOveramplification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableOveramplification',
        disableOveramplification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetVisualAlertsResponse>(
        'GetVisualAlerts',
        getVisualAlerts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetVisualAlertsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EnableVisualAlertsRequest, $0.Empty>(
        'EnableVisualAlerts',
        enableVisualAlerts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EnableVisualAlertsRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableVisualAlerts',
        disableVisualAlerts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetScreenKeyboardResponse>(
        'GetScreenKeyboard',
        getScreenKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetScreenKeyboardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableScreenKeyboard',
        enableScreenKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableScreenKeyboard',
        disableScreenKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetEnableByKeyboardResponse>(
        'GetEnableByKeyboard',
        getEnableByKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetEnableByKeyboardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableEnableByKeyboard',
        enableEnableByKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableEnableByKeyboard',
        disableEnableByKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetCursorBlinkingResponse>(
        'GetCursorBlinking',
        getCursorBlinking_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetCursorBlinkingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EnableCursorBlinkingRequest, $0.Empty>(
        'EnableCursorBlinking',
        enableCursorBlinking_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EnableCursorBlinkingRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableCursorBlinking',
        disableCursorBlinking_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetRepeatedKeysResponse>(
        'GetRepeatedKeys',
        getRepeatedKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetRepeatedKeysResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableRepeatedKeys',
        enableRepeatedKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableRepeatedKeys',
        disableRepeatedKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetStickyKeysResponse>(
        'GetStickyKeys',
        getStickyKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetStickyKeysResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableStickyKeys',
        enableStickyKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableStickyKeys',
        disableStickyKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetSlowKeysResponse>(
        'GetSlowKeys',
        getSlowKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetSlowKeysResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableSlowKeys',
        enableSlowKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableSlowKeys',
        disableSlowKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetBounceKeysResponse>(
        'GetBounceKeys',
        getBounceKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetBounceKeysResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableBounceKeys',
        enableBounceKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableBounceKeys',
        disableBounceKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetMouseKeysResponse>(
        'GetMouseKeys',
        getMouseKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetMouseKeysResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableMouseKeys',
        enableMouseKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableMouseKeys',
        disableMouseKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetLocationPointerResponse>(
        'GetLocationPointer',
        getLocationPointer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetLocationPointerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableLocationPointer',
        enableLocationPointer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableLocationPointer',
        disableLocationPointer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetDoubleClickDelayResponse>(
        'GetDoubleClickDelay',
        getDoubleClickDelay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetDoubleClickDelayResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SetDoubleClickDelayRequest, $0.Empty>(
        'SetDoubleClickDelay',
        setDoubleClickDelay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SetDoubleClickDelayRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetSimulatedSecondaryClicksResponse>(
        'GetSimulatedSecondaryClicks',
        getSimulatedSecondaryClicks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetSimulatedSecondaryClicksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableSimulatedSecondaryClicks',
        enableSimulatedSecondaryClicks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableSimulatedSecondaryClicks',
        disableSimulatedSecondaryClicks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetHoverClicksResponse>(
        'GetHoverClicks',
        getHoverClicks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetHoverClicksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableHoverClicks',
        enableHoverClicks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableHoverClicks',
        disableHoverClicks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetHighContrastResponse> getHighContrast_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getHighContrast(call, await request);
  }

  $async.Future<$0.Empty> enableHighContrast_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableHighContrast(call, await request);
  }

  $async.Future<$0.Empty> disableHighContrast_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableHighContrast(call, await request);
  }

  $async.Future<$1.GetReducedMotionResponse> getReducedMotion_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getReducedMotion(call, await request);
  }

  $async.Future<$0.Empty> enableReducedMotion_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableReducedMotion(call, await request);
  }

  $async.Future<$0.Empty> disableReducedMotion_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableReducedMotion(call, await request);
  }

  $async.Future<$1.GetLargeTextResponse> getLargeText_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getLargeText(call, await request);
  }

  $async.Future<$0.Empty> enableLargeText_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableLargeText(call, await request);
  }

  $async.Future<$0.Empty> disableLargeText_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableLargeText(call, await request);
  }

  $async.Future<$1.GetCursorSizeResponse> getCursorSize_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getCursorSize(call, await request);
  }

  $async.Future<$0.Empty> setCursorSize_Pre($grpc.ServiceCall call, $async.Future<$1.SetCursorSizeRequest> request) async {
    return setCursorSize(call, await request);
  }

  $async.Future<$1.GetSoundKeysResponse> getSoundKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getSoundKeys(call, await request);
  }

  $async.Future<$0.Empty> enableSoundKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableSoundKeys(call, await request);
  }

  $async.Future<$0.Empty> disableSoundKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableSoundKeys(call, await request);
  }

  $async.Future<$1.GetOverlayScrollbarsResponse> getOverlayScrollbars_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getOverlayScrollbars(call, await request);
  }

  $async.Future<$0.Empty> enableOverlayScrollbars_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableOverlayScrollbars(call, await request);
  }

  $async.Future<$0.Empty> disableOverlayScrollbars_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableOverlayScrollbars(call, await request);
  }

  $async.Future<$1.GetScreenReaderResponse> getScreenReader_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getScreenReader(call, await request);
  }

  $async.Future<$0.Empty> enableScreenReader_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableScreenReader(call, await request);
  }

  $async.Future<$0.Empty> disableScreenReader_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableScreenReader(call, await request);
  }

  $async.Future<$1.GetOveramplificationResponse> getOveramplification_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getOveramplification(call, await request);
  }

  $async.Future<$0.Empty> enableOveramplification_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableOveramplification(call, await request);
  }

  $async.Future<$0.Empty> disableOveramplification_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableOveramplification(call, await request);
  }

  $async.Future<$1.GetVisualAlertsResponse> getVisualAlerts_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getVisualAlerts(call, await request);
  }

  $async.Future<$0.Empty> enableVisualAlerts_Pre($grpc.ServiceCall call, $async.Future<$1.EnableVisualAlertsRequest> request) async {
    return enableVisualAlerts(call, await request);
  }

  $async.Future<$0.Empty> disableVisualAlerts_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableVisualAlerts(call, await request);
  }

  $async.Future<$1.GetScreenKeyboardResponse> getScreenKeyboard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getScreenKeyboard(call, await request);
  }

  $async.Future<$0.Empty> enableScreenKeyboard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableScreenKeyboard(call, await request);
  }

  $async.Future<$0.Empty> disableScreenKeyboard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableScreenKeyboard(call, await request);
  }

  $async.Future<$1.GetEnableByKeyboardResponse> getEnableByKeyboard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getEnableByKeyboard(call, await request);
  }

  $async.Future<$0.Empty> enableEnableByKeyboard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableEnableByKeyboard(call, await request);
  }

  $async.Future<$0.Empty> disableEnableByKeyboard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableEnableByKeyboard(call, await request);
  }

  $async.Future<$1.GetCursorBlinkingResponse> getCursorBlinking_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getCursorBlinking(call, await request);
  }

  $async.Future<$0.Empty> enableCursorBlinking_Pre($grpc.ServiceCall call, $async.Future<$1.EnableCursorBlinkingRequest> request) async {
    return enableCursorBlinking(call, await request);
  }

  $async.Future<$0.Empty> disableCursorBlinking_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableCursorBlinking(call, await request);
  }

  $async.Future<$1.GetRepeatedKeysResponse> getRepeatedKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getRepeatedKeys(call, await request);
  }

  $async.Future<$0.Empty> enableRepeatedKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableRepeatedKeys(call, await request);
  }

  $async.Future<$0.Empty> disableRepeatedKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableRepeatedKeys(call, await request);
  }

  $async.Future<$1.GetStickyKeysResponse> getStickyKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getStickyKeys(call, await request);
  }

  $async.Future<$0.Empty> enableStickyKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableStickyKeys(call, await request);
  }

  $async.Future<$0.Empty> disableStickyKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableStickyKeys(call, await request);
  }

  $async.Future<$1.GetSlowKeysResponse> getSlowKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getSlowKeys(call, await request);
  }

  $async.Future<$0.Empty> enableSlowKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableSlowKeys(call, await request);
  }

  $async.Future<$0.Empty> disableSlowKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableSlowKeys(call, await request);
  }

  $async.Future<$1.GetBounceKeysResponse> getBounceKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getBounceKeys(call, await request);
  }

  $async.Future<$0.Empty> enableBounceKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableBounceKeys(call, await request);
  }

  $async.Future<$0.Empty> disableBounceKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableBounceKeys(call, await request);
  }

  $async.Future<$1.GetMouseKeysResponse> getMouseKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getMouseKeys(call, await request);
  }

  $async.Future<$0.Empty> enableMouseKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableMouseKeys(call, await request);
  }

  $async.Future<$0.Empty> disableMouseKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableMouseKeys(call, await request);
  }

  $async.Future<$1.GetLocationPointerResponse> getLocationPointer_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getLocationPointer(call, await request);
  }

  $async.Future<$0.Empty> enableLocationPointer_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableLocationPointer(call, await request);
  }

  $async.Future<$0.Empty> disableLocationPointer_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableLocationPointer(call, await request);
  }

  $async.Future<$1.GetDoubleClickDelayResponse> getDoubleClickDelay_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getDoubleClickDelay(call, await request);
  }

  $async.Future<$0.Empty> setDoubleClickDelay_Pre($grpc.ServiceCall call, $async.Future<$1.SetDoubleClickDelayRequest> request) async {
    return setDoubleClickDelay(call, await request);
  }

  $async.Future<$1.GetSimulatedSecondaryClicksResponse> getSimulatedSecondaryClicks_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getSimulatedSecondaryClicks(call, await request);
  }

  $async.Future<$0.Empty> enableSimulatedSecondaryClicks_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableSimulatedSecondaryClicks(call, await request);
  }

  $async.Future<$0.Empty> disableSimulatedSecondaryClicks_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableSimulatedSecondaryClicks(call, await request);
  }

  $async.Future<$1.GetHoverClicksResponse> getHoverClicks_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getHoverClicks(call, await request);
  }

  $async.Future<$0.Empty> enableHoverClicks_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableHoverClicks(call, await request);
  }

  $async.Future<$0.Empty> disableHoverClicks_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableHoverClicks(call, await request);
  }

  $async.Future<$1.GetHighContrastResponse> getHighContrast($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableHighContrast($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableHighContrast($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetReducedMotionResponse> getReducedMotion($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableReducedMotion($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableReducedMotion($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetLargeTextResponse> getLargeText($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableLargeText($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableLargeText($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetCursorSizeResponse> getCursorSize($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> setCursorSize($grpc.ServiceCall call, $1.SetCursorSizeRequest request);
  $async.Future<$1.GetSoundKeysResponse> getSoundKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableSoundKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableSoundKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetOverlayScrollbarsResponse> getOverlayScrollbars($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableOverlayScrollbars($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableOverlayScrollbars($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetScreenReaderResponse> getScreenReader($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableScreenReader($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableScreenReader($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetOveramplificationResponse> getOveramplification($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableOveramplification($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableOveramplification($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetVisualAlertsResponse> getVisualAlerts($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableVisualAlerts($grpc.ServiceCall call, $1.EnableVisualAlertsRequest request);
  $async.Future<$0.Empty> disableVisualAlerts($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetScreenKeyboardResponse> getScreenKeyboard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableScreenKeyboard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableScreenKeyboard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetEnableByKeyboardResponse> getEnableByKeyboard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableEnableByKeyboard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableEnableByKeyboard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetCursorBlinkingResponse> getCursorBlinking($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableCursorBlinking($grpc.ServiceCall call, $1.EnableCursorBlinkingRequest request);
  $async.Future<$0.Empty> disableCursorBlinking($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetRepeatedKeysResponse> getRepeatedKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableRepeatedKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableRepeatedKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetStickyKeysResponse> getStickyKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableStickyKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableStickyKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetSlowKeysResponse> getSlowKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableSlowKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableSlowKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetBounceKeysResponse> getBounceKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableBounceKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableBounceKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetMouseKeysResponse> getMouseKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableMouseKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableMouseKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetLocationPointerResponse> getLocationPointer($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableLocationPointer($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableLocationPointer($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetDoubleClickDelayResponse> getDoubleClickDelay($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> setDoubleClickDelay($grpc.ServiceCall call, $1.SetDoubleClickDelayRequest request);
  $async.Future<$1.GetSimulatedSecondaryClicksResponse> getSimulatedSecondaryClicks($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableSimulatedSecondaryClicks($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableSimulatedSecondaryClicks($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GetHoverClicksResponse> getHoverClicks($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableHoverClicks($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableHoverClicks($grpc.ServiceCall call, $0.Empty request);
}

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

import 'google/protobuf/empty.pb.dart' as $0;
import 'google/protobuf/wrappers.pb.dart' as $1;

export 'accessibility.pb.dart';

@$pb.GrpcServiceName('accessibility.AccessibilityService')
class AccessibilityServiceClient extends $grpc.Client {
  static final _$getHighContrast = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/accessibility.AccessibilityService/GetHighContrast',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$enableHighContrast = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableHighContrast',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableHighContrast = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableHighContrast',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getReducedMotion = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/accessibility.AccessibilityService/GetReducedMotion',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$enableReducedMotion = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableReducedMotion',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableReducedMotion = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableReducedMotion',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getLargeText = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/accessibility.AccessibilityService/GetLargeText',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$enableLargeText = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableLargeText',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableLargeText = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableLargeText',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getScreenReader = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/accessibility.AccessibilityService/GetScreenReader',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$enableScreenReader = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableScreenReader',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableScreenReader = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableScreenReader',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getVisualAlerts = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/accessibility.AccessibilityService/GetVisualAlerts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$enableVisualAlerts = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableVisualAlerts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableVisualAlerts = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableVisualAlerts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getScreenKeyboard = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/accessibility.AccessibilityService/GetScreenKeyboard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$enableScreenKeyboard = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableScreenKeyboard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableScreenKeyboard = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableScreenKeyboard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getStickyKeys = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/accessibility.AccessibilityService/GetStickyKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$enableStickyKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableStickyKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableStickyKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableStickyKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getSlowKeys = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/accessibility.AccessibilityService/GetSlowKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$enableSlowKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableSlowKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableSlowKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableSlowKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getMouseKeys = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/accessibility.AccessibilityService/GetMouseKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$enableMouseKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableMouseKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableMouseKeys = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableMouseKeys',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getDesktopZoom = $grpc.ClientMethod<$0.Empty, $1.BoolValue>(
      '/accessibility.AccessibilityService/GetDesktopZoom',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$enableDesktopZoom = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/EnableDesktopZoom',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$disableDesktopZoom = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/accessibility.AccessibilityService/DisableDesktopZoom',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  AccessibilityServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.BoolValue> getHighContrast($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHighContrast, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableHighContrast($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableHighContrast, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableHighContrast($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableHighContrast, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> getReducedMotion($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReducedMotion, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableReducedMotion($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableReducedMotion, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableReducedMotion($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableReducedMotion, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> getLargeText($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLargeText, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableLargeText($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableLargeText, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableLargeText($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableLargeText, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> getScreenReader($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getScreenReader, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableScreenReader($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableScreenReader, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableScreenReader($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableScreenReader, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> getVisualAlerts($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVisualAlerts, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableVisualAlerts($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableVisualAlerts, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableVisualAlerts($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableVisualAlerts, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> getScreenKeyboard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getScreenKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableScreenKeyboard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableScreenKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableScreenKeyboard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableScreenKeyboard, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> getStickyKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStickyKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableStickyKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableStickyKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableStickyKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableStickyKeys, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> getSlowKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSlowKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableSlowKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableSlowKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableSlowKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableSlowKeys, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> getMouseKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMouseKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableMouseKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableMouseKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableMouseKeys($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableMouseKeys, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> getDesktopZoom($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDesktopZoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> enableDesktopZoom($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableDesktopZoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disableDesktopZoom($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableDesktopZoom, request, options: options);
  }
}

@$pb.GrpcServiceName('accessibility.AccessibilityService')
abstract class AccessibilityServiceBase extends $grpc.Service {
  $core.String get $name => 'accessibility.AccessibilityService';

  AccessibilityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'GetHighContrast',
        getHighContrast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'GetReducedMotion',
        getReducedMotion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'GetLargeText',
        getLargeText_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'GetScreenReader',
        getScreenReader_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'GetVisualAlerts',
        getVisualAlerts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableVisualAlerts',
        enableVisualAlerts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableVisualAlerts',
        disableVisualAlerts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'GetScreenKeyboard',
        getScreenKeyboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'GetStickyKeys',
        getStickyKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'GetSlowKeys',
        getSlowKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'GetMouseKeys',
        getMouseKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BoolValue>(
        'GetDesktopZoom',
        getDesktopZoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'EnableDesktopZoom',
        enableDesktopZoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'DisableDesktopZoom',
        disableDesktopZoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.BoolValue> getHighContrast_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getHighContrast(call, await request);
  }

  $async.Future<$0.Empty> enableHighContrast_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableHighContrast(call, await request);
  }

  $async.Future<$0.Empty> disableHighContrast_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableHighContrast(call, await request);
  }

  $async.Future<$1.BoolValue> getReducedMotion_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getReducedMotion(call, await request);
  }

  $async.Future<$0.Empty> enableReducedMotion_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableReducedMotion(call, await request);
  }

  $async.Future<$0.Empty> disableReducedMotion_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableReducedMotion(call, await request);
  }

  $async.Future<$1.BoolValue> getLargeText_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getLargeText(call, await request);
  }

  $async.Future<$0.Empty> enableLargeText_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableLargeText(call, await request);
  }

  $async.Future<$0.Empty> disableLargeText_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableLargeText(call, await request);
  }

  $async.Future<$1.BoolValue> getScreenReader_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getScreenReader(call, await request);
  }

  $async.Future<$0.Empty> enableScreenReader_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableScreenReader(call, await request);
  }

  $async.Future<$0.Empty> disableScreenReader_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableScreenReader(call, await request);
  }

  $async.Future<$1.BoolValue> getVisualAlerts_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getVisualAlerts(call, await request);
  }

  $async.Future<$0.Empty> enableVisualAlerts_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableVisualAlerts(call, await request);
  }

  $async.Future<$0.Empty> disableVisualAlerts_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableVisualAlerts(call, await request);
  }

  $async.Future<$1.BoolValue> getScreenKeyboard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getScreenKeyboard(call, await request);
  }

  $async.Future<$0.Empty> enableScreenKeyboard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableScreenKeyboard(call, await request);
  }

  $async.Future<$0.Empty> disableScreenKeyboard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableScreenKeyboard(call, await request);
  }

  $async.Future<$1.BoolValue> getStickyKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getStickyKeys(call, await request);
  }

  $async.Future<$0.Empty> enableStickyKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableStickyKeys(call, await request);
  }

  $async.Future<$0.Empty> disableStickyKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableStickyKeys(call, await request);
  }

  $async.Future<$1.BoolValue> getSlowKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getSlowKeys(call, await request);
  }

  $async.Future<$0.Empty> enableSlowKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableSlowKeys(call, await request);
  }

  $async.Future<$0.Empty> disableSlowKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableSlowKeys(call, await request);
  }

  $async.Future<$1.BoolValue> getMouseKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getMouseKeys(call, await request);
  }

  $async.Future<$0.Empty> enableMouseKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableMouseKeys(call, await request);
  }

  $async.Future<$0.Empty> disableMouseKeys_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableMouseKeys(call, await request);
  }

  $async.Future<$1.BoolValue> getDesktopZoom_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getDesktopZoom(call, await request);
  }

  $async.Future<$0.Empty> enableDesktopZoom_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return enableDesktopZoom(call, await request);
  }

  $async.Future<$0.Empty> disableDesktopZoom_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return disableDesktopZoom(call, await request);
  }

  $async.Future<$1.BoolValue> getHighContrast($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableHighContrast($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableHighContrast($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BoolValue> getReducedMotion($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableReducedMotion($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableReducedMotion($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BoolValue> getLargeText($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableLargeText($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableLargeText($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BoolValue> getScreenReader($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableScreenReader($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableScreenReader($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BoolValue> getVisualAlerts($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableVisualAlerts($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableVisualAlerts($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BoolValue> getScreenKeyboard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableScreenKeyboard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableScreenKeyboard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BoolValue> getStickyKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableStickyKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableStickyKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BoolValue> getSlowKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableSlowKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableSlowKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BoolValue> getMouseKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableMouseKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableMouseKeys($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.BoolValue> getDesktopZoom($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> enableDesktopZoom($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disableDesktopZoom($grpc.ServiceCall call, $0.Empty request);
}

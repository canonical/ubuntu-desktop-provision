import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_bootstrap/services/landscape_service.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

part 'landscape_model.freezed.dart';
part 'landscape_model.g.dart';

@freezed
class LandscapeData with _$LandscapeData {
  factory LandscapeData({
    required String userCode,
    required bool isAttachedThroughMagicAttach,
    required bool isAttached,
    required bool isAttachedThroughManualAttach,
    required bool hasNoErrorWhenAttachingManually,
    required bool skipPro,
  }) = _LandscapeData;

  LandscapeData._();
}

@riverpod
class LandscapeDataModel extends _$LandscapeDataModel {
  @override
  LandscapeData build() {
    return LandscapeData(
      userCode: 'ABCD EFGH',
      isAttachedThroughMagicAttach: false,
      isAttached: true,
      isAttachedThroughManualAttach: false,
      hasNoErrorWhenAttachingManually: true,
      skipPro: false,
    );
  }

  void setSkipPro(bool value) {
    if (state.skipPro == value) return;
    state = state.copyWith(skipPro: value);
  }
  
  void setIsAttached(bool value) {
    if (state.isAttached == value) return;
    state = state.copyWith(isAttached: value);
  }

  Future<void> magicAttach() async {}

  Future<void> attachManuallyToken() async {}
}

@riverpod
class TokenNotifier extends _$TokenNotifier {
  @override
  String build() {
    return '';
  }

  void setToken(String value) {
    state = value;
  }
}

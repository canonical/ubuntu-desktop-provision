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
}

//   set isAttached(bool value) {
//     _isAttached = value;
//     notifyListeners();
//   }

//   final _token = ValueNotifier<String?>(null);

//   /// The token input from the user
//   String get token => _token.value ?? '';

//   // example of where we will use copyWith state...
//   void setToken(String value) {
//     _token.value = value;
//     notifyListeners();
//   }

//   // StreamSubscription<ProResponse>? _subscription;

//   Future<void> magicAttach() async {}

//   Future<void> attachManuallyToken() async {}
// }

//   // FIXME: will end up in the @freezed model, returend in the build method
//   String get userCode => _userCode;
//   // FIXME: return this default to ''
//   final String _userCode = 'ABCD EFGH';

//   bool get isAttachedThroughMagicAttach => _isAttachedThroughMagicAttach;
//   final bool _isAttachedThroughMagicAttach = false;

//   bool get isAttached => _isAttached;
//   // FIXME: return this default to false
//   bool _isAttached = true;

//   bool get isAttachedThroughManualAttach => _isAttachedThroughManualAttach;
//   final bool _isAttachedThroughManualAttach = false;

//   bool get hasNoErrorWhenAttachingManually => _hasNoErrorWhenAttachingManually;
//   final bool _hasNoErrorWhenAttachingManually = true;

//   bool get skipPro => _skipPro;
//   bool _skipPro = false;

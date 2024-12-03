import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/services/landscape_service.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final landscapeModelProvider = ChangeNotifierProvider(
  (ref) => LandscapeModel(
    landscapeService: getService<LandscapeService>(),
  ),
);

class LandscapeModel extends ChangeNotifier {
  LandscapeModel({
    required LandscapeService landscapeService,
  });

  String get userCode => _userCode;
  // FIXME: return this default to ''
  final String _userCode = 'ABCD EFGH';

  bool get isAttachedThroughMagicAttach => _isAttachedThroughMagicAttach;
  final bool _isAttachedThroughMagicAttach = false;

  bool get isAttached => _isAttached;
  // FIXME: return this default to false
  bool _isAttached = true;

  bool get isAttachedThroughManualAttach => _isAttachedThroughManualAttach;
  final bool _isAttachedThroughManualAttach = false;

  bool get hasNoErrorWhenAttachingManually => _hasNoErrorWhenAttachingManually;
  final bool _hasNoErrorWhenAttachingManually = true;

  bool get skipPro => _skipPro;
  bool _skipPro = false;

  set skipPro(bool value) {
    _skipPro = value;
    notifyListeners();
  }

  set isAttached(bool value) {
    _isAttached = value;
    notifyListeners();
  }

  final _token = ValueNotifier<String?>(null);

  /// The token input from the user
  String get token => _token.value ?? '';

  void setToken(String value) {
    _token.value = value;
    notifyListeners();
  }

  // StreamSubscription<ProResponse>? _subscription;

  Future<void> magicAttach() async {}

  Future<void> attachManuallyToken() async {}
}

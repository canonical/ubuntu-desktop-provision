import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final ubuntuProModelProvider = ChangeNotifierProvider(
  (ref) => UbuntuProModel(
    proService: getService<ProService>(),
  ),
);

class UbuntuProModel extends ChangeNotifier {
  UbuntuProModel({
    required ProService proService,
  }) : _proService = proService;
  final ProService _proService;

  String get userCode => _userCode;
  String _userCode = '';

  bool get isAttachedThroughMagicAttach => _isAttachedThroughMagicAttach;
  bool _isAttachedThroughMagicAttach = false;

  bool get isAttached => _isAttached;
  bool _isAttached = false;

  bool get isAttachedThroughManualAttach => _isAttachedThroughManualAttach;
  bool _isAttachedThroughManualAttach = false;

  bool get hasNoErrorWhenAttachingManually => _hasNoErrorWhenAttachingManually;
  bool _hasNoErrorWhenAttachingManually = true;

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

  StreamSubscription<ProResponse>? _subscription;

  Future<void> magicAttach() async {
    await _subscription?.cancel();
    _userCode = '';
    _subscription = _proService.proMagicAttach().listen(_handleResponse);
    notifyListeners();
  }

  Future<void> attachManuallyToken() async {
    await _subscription?.cancel();
    await _proService.proAttach(token);
    //_proService.
    notifyListeners();
  }

  void _handleResponse(ProResponse response) {
    if (response is ProResponseUserCode) {
      _userCode = response.userCode;
      notifyListeners();
    } else if (response is ProResponseSuccess) {
      _isAttachedThroughMagicAttach = true;
      _isAttached = true;
      notifyListeners();
    }
  }
}

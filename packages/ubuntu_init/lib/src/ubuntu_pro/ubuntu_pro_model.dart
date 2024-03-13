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

  bool get isAttached => _isAttached;
  bool _isAttached = false;

  StreamSubscription<ProResponse>? _subscription;

  Future<void> magicAttach() async {
    await _subscription?.cancel();
    _userCode = '';
    _subscription = _proService.proMagicAttach().listen(_handleResponse);
    notifyListeners();
  }

  void _handleResponse(ProResponse response) {
    if (response is ProResponseUserCode) {
      _userCode = response.userCode;
      notifyListeners();
    } else if (response is ProResponseSuccess) {
      _isAttached = true;
      notifyListeners();
    }
  }
}

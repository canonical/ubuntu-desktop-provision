import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/landscape/landscape_model.dart';
import 'package:ubuntu_bootstrap/pages/landscape/landscape_page.dart';

import 'test_landscape.mocks.dart';
export '../test_utils.dart';

@GenerateMocks([UbuntuProModel])
UbuntuProModel buildUbuntuProModel({
  bool? enabled,
  Stream<String>? collect,
  bool? isAttached,
  String? token,
  String? userCode,
  bool? skipPro,
}) {
  final model = MockUbuntuProModel();
  when(model.isAttachedThroughMagicAttach).thenReturn(true);
  when(model.isAttachedThroughManualAttach).thenReturn(true);
  when(model.hasNoErrorWhenAttachingManually).thenReturn(true);
  when(model.token).thenReturn(token ?? '');
  when(model.userCode).thenReturn(userCode ?? '1234');
  when(model.isAttached).thenReturn(isAttached ?? false);
  when(model.attachManuallyToken()).thenAnswer((_) async {
    model.isAttached = true;
    model.notifyListeners();
  });
  when(model.magicAttach()).thenAnswer((_) async {
    model.isAttached = true;
    model.notifyListeners();
  });
  when(model.skipPro).thenReturn(skipPro ?? true);
  return model;
}

Widget buildUbuntuProPage(UbuntuProModel model) {
  return ProviderScope(
    overrides: [ubuntuProModelProvider.overrideWith((_) => model)],
    child: UbuntuProPage(),
  );
}

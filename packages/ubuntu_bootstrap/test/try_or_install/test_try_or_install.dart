import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_model.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_page.dart';

import 'test_try_or_install.mocks.dart';

export '../test_utils.dart';
export 'test_try_or_install.mocks.dart';

const kTestReleastNoteUrl = 'https://wiki.ubuntu.com/foo/ReleaseNotes';

@GenerateMocks([TryOrInstallModel])
TryOrInstallModel buildWelcomeModel(
    {bool? isConnected, TryOrInstallOption? option}) {
  final model = MockTryOrInstallModel();
  when(model.isConnected).thenReturn(isConnected ?? false);
  when(model.option).thenReturn(option ?? TryOrInstallOption.none);
  when(model.releaseNotesURL(any)).thenReturn(kTestReleastNoteUrl);
  return model;
}

Widget buildWelcomePage(TryOrInstallModel model) {
  return ProviderScope(
    overrides: [
      tryOrInstallModelProvider.overrideWith((_) => model),
    ],
    child: const TryOrInstallPage(),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_direct_page.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:xdg_desktop_portal/xdg_desktop_portal.dart';

import '../test_utils.dart';
import 'test_autoinstall.mocks.dart';

@GenerateMocks([AutoinstallService])
MockAutoinstallService registerMockAutoinstallService({
  String? autoinstallContent,
}) {
  final service = MockAutoinstallService();
  when(service.getFileContent())
      .thenAnswer((_) async => autoinstallContent ?? '');
  registerMockService<AutoinstallService>(service);
  return service;
}

@GenerateMocks([XdgDesktopPortalClient, XdgFileChooserPortal])
MockXdgDesktopPortalClient registerMockXdgDesktopPortalClient({
  XdgFileChooserPortalOpenFileResult? result,
  Exception? exception,
}) {
  assert(
    (exception != null) != (result != null),
    'Provide either a result or an exception',
  );
  final mockFileChooser = MockXdgFileChooserPortal();
  if (exception != null) {
    when(
      mockFileChooser.openFile(
        title: argThat(isNotNull, named: 'title'),
        filters: anyNamed('filters'),
      ),
    ).thenThrow(exception);
  } else {
    when(
      mockFileChooser.openFile(
        title: argThat(isNotNull, named: 'title'),
        filters: anyNamed('filters'),
      ),
    ).thenAnswer(
      (_) => result != null ? Stream.value(result) : Stream.empty(),
    );
  }

  final service = MockXdgDesktopPortalClient();
  when(service.fileChooser).thenReturn(mockFileChooser);

  registerMockService<XdgDesktopPortalClient>(service);
  return service;
}

Widget buildAutoinstallDirectPage() {
  registerMockService<ThemeVariantService>(MockThemeVariantService());
  registerMockService<PageConfigService>(MockPageConfigService());
  return ProviderScope(
    child: const AutoinstallDirectPage(),
  );
}
// AutoinstallDirectModel buildAutoinstallModel({
//   AsyncValue<void>? state,
//   String? url,
//   bool autoinstall = false,
// }) {
//   final model = MockAutoinstallModel();
//   when(model.state).thenReturn(state ?? const AsyncValue<void>.data(null));
//   when(model.url).thenReturn(url ?? '');
//   when(model.autoinstall).thenReturn(autoinstall);
//   when(model.getFileContent()).thenAnswer((_) async => '');
//   return model;
// }

// Widget buildAutoinstallPage(AutoinstallDirectModel model) {
//   registerMockService<ThemeVariantService>(MockThemeVariantService());
//   registerMockService<PageConfigService>(MockPageConfigService());
//   return ProviderScope(
//     overrides: [
//       autoinstallDirectModelProvider.overrideWith((_) => model),
//     ],
//     child: const AutoinstallPage(),
//   );
// }

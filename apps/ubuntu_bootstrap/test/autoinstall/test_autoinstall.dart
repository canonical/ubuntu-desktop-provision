import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_direct_page.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_landscape_domain_page.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/src/network/connect_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:xdg_desktop_portal/xdg_desktop_portal.dart';

import '../test_utils.dart';
import 'test_autoinstall.mocks.dart';

Widget buildAutoinstallDirectPage() {
  registerMockService<ThemeVariantService>(MockThemeVariantService());
  registerMockService<PageConfigService>(MockPageConfigService());
  return ProviderScope(
    child: const AutoinstallDirectPage(),
  );
}

Widget buildLandscaepDomainPage({List<Override>? overrides}) {
  registerMockService<ThemeVariantService>(MockThemeVariantService());
  registerMockService<PageConfigService>(MockPageConfigService());
  registerMockService<NetworkService>(MockNetworkService());

  return ProviderScope(
    overrides: overrides ?? [],
    child: const LandscapeDomainPage(),
  );
}

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

@GenerateMocks([LandscapeBackendService])
MockLandscapeBackendService registerMockLandscapeService() {
  final service = MockLandscapeBackendService();
  when(service.attach('failure')).thenThrow(
    Exception('Mock threw expected exception'),
  );
  when(service.attach('error')).thenAnswer(
    (_) async => AttachResponse(status: AttachStatus.errorNotEnabled),
  );
  when(service.attach('success')).thenAnswer(
    (_) async => AttachResponse(status: AttachStatus.attachSuccess),
  );
  registerMockService<LandscapeBackendService>(service);
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

class FakeConnectModel extends ChangeNotifier implements ConnectModel {
  FakeConnectModel({required this.hasActiveConnection});

  @override
  bool get isDisposed => false;
  @override
  final bool hasActiveConnection;
  @override
  bool get canConnect => true;
  @override
  ConnectMode get connectMode => ConnectMode.none;
  @override
  bool get isConnected => hasActiveConnection;
  @override
  bool get isConnecting => false;
  @override
  bool get isEnabled => true;

  @override
  Stream<bool> get onAvailabilityChanged => const Stream.empty();
  @override
  Future<void> cleanup() async {}
  @override
  Future<void> connect() async {}
  @override
  Future<void> enable() async {}
  @override
  Future<void> init() async {}
  @override
  void onDeselected() {}
  @override
  void onSelected() {}
}

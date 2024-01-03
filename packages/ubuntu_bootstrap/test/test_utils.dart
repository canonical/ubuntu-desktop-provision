import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import '../../ubuntu_provision/test/test_utils.mocks.dart';

export '../../ubuntu_provision/test/test_utils.mocks.dart';
export 'test_utils.mocks.dart';

extension WidgetTesterX on WidgetTester {
  Future<void> pumpApp(WidgetBuilder builder) async {
    return pumpWidget(buildApp(builder));
  }

  Future<void> pumpContainer(String name, WidgetBuilder builder) async {
    return pumpWidget(
      Container(key: ValueKey(name), child: buildApp(builder)),
    );
  }

  Widget buildApp(WidgetBuilder builder) {
    view.devicePixelRatio = 1;
    view.physicalSize = const Size(960, 680);

    return MaterialApp(
      localizationsDelegates: GlobalUbuntuBootstrapLocalizations.delegates,
      theme: yaruLight,
      home: Wizard(
        routes: {
          '/': WizardRoute(
            builder: builder,
            onNext: (settings) => '/next',
          ),
          '/next': WizardRoute(
            builder: (_) => const Text('Next page'),
          ),
        },
      ),
    );
  }
}

@GenerateMocks([
  InstallerService,
  PostInstallService,
  RefreshService,
  StorageService,
])
class _Dummy {} // ignore: unused_element

/// Registers a mock [PageConfigService].
///
/// The [pages] argument will override the pages that are returned
/// (empty by default) if provided.
void setupMockPageConfig({Map<String, PageConfigEntry> pages = const {}}) {
  final pageConfigService = MockPageConfigService();
  registerMockService<PageConfigService>(pageConfigService);
  when(pageConfigService.pages).thenReturn(pages);
  when(pageConfigService.excludedPages).thenReturn([]);
  when(pageConfigService.includedPages).thenReturn(pages.keys.toList());
}

class MockBuildContext extends Mock implements BuildContext {}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

export '../../ubuntu_provision/test/test_utils.mocks.dart';
export 'test_utils.mocks.dart';

extension WidgetTesterX on WidgetTester {
  Future<void> pumpApp(WidgetBuilder builder) async {
    return pumpWidget(await buildApp(builder));
  }

  Future<void> pumpContainer(String name, WidgetBuilder builder) async {
    return pumpWidget(
      Container(key: ValueKey(name), child: await buildApp(builder)),
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

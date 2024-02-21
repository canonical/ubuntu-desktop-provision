import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_page.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/services.dart';

import '../test_utils.dart';

void main() {
  testWidgets('init', (tester) async {
    WidgetRef? ref;

    final pageConfig = MockPageConfigService();
    registerMockService<PageConfigService>(pageConfig);
    when(pageConfig.pages).thenReturn({});

    final installerService = MockInstallerService();
    registerMockService<InstallerService>(installerService);
    late final Future<void> future;

    await tester.pumpApp(
      (_) => ProviderScope(
        child: Consumer(builder: (context, aref, child) {
          ref = aref;
          future = const LoadingPage().load(context, ref!);
          return const LoadingPage();
        }),
      ),
    );
    expect(find.byType(LoadingPage), findsOneWidget);
    expect(ref, isNotNull);

    await tester.pump(const Duration(seconds: 3));
    await expectLater(future, completes);
  });
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_model.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_page.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/services.dart';

import 'test_loading.dart';

void main() {
  testWidgets('init', (tester) async {
    WidgetRef? ref;
    final pageConfig = MockPageConfigService();
    registerMockService<PageConfigService>(pageConfig);
    when(pageConfig.pages).thenReturn({});

    final model = buildLoadingModel(delay: const Duration(seconds: 3));
    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [loadingModelProvider.overrideWith((_) => model)],
        child: Consumer(builder: (context, aref, child) {
          ref = aref;
          return const LoadingPage();
        }),
      ),
    );
    expect(find.byType(LoadingPage), findsOneWidget);
    expect(ref, isNotNull);

    final future = LoadingPage.init(MockBuildContext(), ref!);
    await tester.pump(const Duration(seconds: 3));
    await expectLater(future, completes);
    verify(model.init()).called(1);
  });
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/storage_icon.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_test/ubuntu_test.dart';

import '../bitlocker/test_bitlocker.dart';

void main() {
  testWidgets('Windows 10', (tester) async {
    await tester.pumpWidget(const StorageIcon(name: 'Windows 10'));
    expect(find.svg('windows.svg'), findsOneWidget);
  });

  testWidgets('Windows 11', (tester) async {
    await tester.pumpWidget(const StorageIcon(name: 'Windows 11'));
    expect(find.svg('windows.svg'), findsOneWidget);
  });

  testWidgets('Windows Boot Manager', (tester) async {
    await tester.pumpWidget(const StorageIcon(name: 'Windows Boot Manager'));
    expect(find.svg('windows.svg'), findsOneWidget);
  });

  testWidgets('Ubuntu 22.04 LTS', (tester) async {
    await tester.pumpWidget(const StorageIcon(name: 'Ubuntu 22.04 LTS'));
    expect(find.svg('ubuntu.svg'), findsOneWidget);
  });

  testWidgets('Unknown', (tester) async {
    await tester.pumpWidget(const StorageIcon(name: 'Unknown'));
    expect(find.svg('block-device.svg'), findsOneWidget);
  });

  testWidgets('None', (tester) async {
    await tester.pumpWidget(const StorageIcon());
    expect(find.svg('folder.svg'), findsOneWidget);
  });

  testWidgets('Custom icon', (tester) async {
    final mockPageConfigService = MockPageConfigService();
    when(mockPageConfigService.pages).thenReturn({
      StorageSteps.guidedResize.name:
          const PageConfigEntry(image: 'assets/images/ubuntu_storage_icon.svg'),
    });

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          pageImagesProvider.overrideWithValue(
            PageImages.internal(
              mockPageConfigService,
              MockThemeVariantService(),
            ),
          ),
        ],
        child: const StorageIcon(useCustomIcon: true),
      ),
    );
    expect(find.svg('ubuntu_storage_icon.svg'), findsOneWidget);
  });
}

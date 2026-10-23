import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_model.dart';

void main() {
  test('selected option', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    var notifications = 0;
    container.listen(
      tryOrInstallModelProvider,
      (_, __) => notifications++,
    );

    final model = container.read(tryOrInstallModelProvider.notifier);

    expect(
      container.read(tryOrInstallModelProvider),
      TryOrInstallOption.installUbuntu,
    );
    model.selectOption(TryOrInstallOption.installUbuntu);
    expect(
      container.read(tryOrInstallModelProvider),
      TryOrInstallOption.installUbuntu,
    );
    expect(notifications, 0);

    model.selectOption(TryOrInstallOption.tryUbuntu);
    expect(
      container.read(tryOrInstallModelProvider),
      TryOrInstallOption.tryUbuntu,
    );
    expect(notifications, 1);
  });
}

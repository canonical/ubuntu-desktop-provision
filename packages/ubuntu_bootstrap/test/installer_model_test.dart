import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/installer/installer_model.dart';

void main() {
  test('applicationStatusProvider', () async {
    final statusController = StreamController<ApplicationStatus>();

    final container = ProviderContainer(overrides: [
      applicationStatusProvider.overrideWith((_) => statusController.stream),
    ]);

    ApplicationStatus? applicationStatus;
    container.listen(
      applicationStatusProvider,
      (_, newStatus) => applicationStatus = newStatus.value,
    );
    final state = container.read(applicationStatusProvider);

    expect(statusController.hasListener, isTrue);
    expect(state.isLoading, isTrue);
    expect(applicationStatus, isNull);

    statusController.add(fakeApplicationStatus(ApplicationState.DONE));
    await Future.delayed(Duration.zero);
    expect(applicationStatus, fakeApplicationStatus(ApplicationState.DONE));

    await statusController.close();
  });

  test('hasRouteProvider', () async {
    final container = ProviderContainer(overrides: [
      hasRouteProvider.overrideWith((_, route) => switch (route) {
            'a' => true,
            'b' => false,
            _ => false,
          }),
    ]);
    expect(container.read(hasRouteProvider('a')), isTrue);
    expect(container.read(hasRouteProvider('b')), isFalse);
  });
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/done/done_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'test_done.dart';

void main() async {
  test('build', () async {
    const productInfo = ProductInfo(name: 'Ubuntu', version: '24.04');
    registerMockDoneServices(
      productInfo: productInfo,
      provisioningMode: ProvisioningMode.coreDesktop,
    );
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final state = await container.read(doneModelProvider.future);
    expect(state.productInfo, productInfo);
    expect(state.provisioningMode, ProvisioningMode.coreDesktop);
  });

  test('reboot', () async {
    final session = registerMockDoneServices();
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await container.read(doneModelProvider.notifier).reboot();
    verify(session.reboot()).called(1);
  });
}

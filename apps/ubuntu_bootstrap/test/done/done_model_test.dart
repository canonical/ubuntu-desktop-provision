import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/done/done_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'test_done.dart';

void main() async {
  test('reboot', () async {
    final session = MockSessionService();
    final config = MockConfigService();
    when(config.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);
    final model = DoneModel(
      MockProductService(),
      session,
      config,
    );
    await model.reboot();
    verify(session.reboot()).called(1);
  });
}

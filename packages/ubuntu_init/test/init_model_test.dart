import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/init_model.dart';
import 'package:ubuntu_init/src/init_services.dart';
import 'package:ubuntu_provision/services.dart';

import 'init_model_test.mocks.dart';

@GenerateMocks([ArgResults, PageConfigService, IdentityService, GdmService])
void main() {
  test('configured page array', () async {
    final config = MockPageConfigService();
    when(config.excludedPages).thenReturn(['c']);

    final model = InitModel(pageConfig: config);
    await model.init();

    expect(model.hasRoute('a'), isTrue);
    expect(model.hasRoute('/a'), isTrue);

    expect(model.hasRoute('b'), isTrue);
    expect(model.hasRoute('/b'), isTrue);

    expect(model.hasRoute('c'), isFalse);
    expect(model.hasRoute('/c'), isFalse);
  });

  test('launch desktop session', () async {
    final config = MockPageConfigService();
    when(config.excludedPages).thenReturn([]);

    final identity = MockIdentityService();
    when(identity.getIdentity()).thenAnswer(
      (_) async => const Identity(
        username: 'username',
        password: 'password',
      ),
    );

    final gdm = MockGdmService();

    final model = InitModel(
      pageConfig: config,
      identityService: identity,
      gdmService: gdm,
    );
    await model.init();
    await model.launchDesktopSession();

    verify(gdm.init()).called(1);
    verify(gdm.launchSession('username', 'password')).called(1);
  });
}

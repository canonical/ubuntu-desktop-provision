import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/app/init_model.dart';
import 'package:ubuntu_init/services.dart';
import 'package:ubuntu_provision/services.dart';

import 'init_model_test.mocks.dart';

@GenerateMocks([ArgResults, PageConfigService, IdentityService, GdmService])
void main() {
  test('configured page array', () async {
    final config = MockPageConfigService();
    when(config.pages).thenReturn(
      {'a': const PageConfigEntry(), 'b': const PageConfigEntry()},
    );

    final model = InitModel(pageConfig: config);

    expect(model.hasRoute('a'), isTrue);
    expect(model.hasRoute('/a'), isTrue);

    expect(model.hasRoute('b'), isTrue);
    expect(model.hasRoute('/b'), isTrue);

    expect(model.hasRoute('c'), isFalse);
    expect(model.hasRoute('/c'), isFalse);
  });

  test('launch desktop session', () async {
    final config = MockPageConfigService();

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
    await model.launchDesktopSession();

    verify(gdm.launchSession('username', 'password')).called(1);
  });
}

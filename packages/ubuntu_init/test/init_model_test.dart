import 'package:args/args.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/init_model.dart';
import 'package:ubuntu_provision/services.dart';

import 'init_model_test.mocks.dart';

@GenerateMocks([ArgResults, ConfigService])
void main() {
  test('init', () async {
    final config = MockConfigService();
    when(config.get('routes')).thenAnswer((_) async => null);

    final args = MockArgResults();
    when(args['routes']).thenReturn(null);

    final model = InitModel(config: config, args: args);
    await model.init();
    verify(config.get('routes')).called(1);
    verify(args['routes']).called(1);
  });

  test('has route', () async {
    final config = MockConfigService();
    when(config.get('routes')).thenAnswer((_) async => ['a', '/b']);

    final model = InitModel(config: config);
    await model.init();

    expect(model.hasRoute('a'), isTrue);
    expect(model.hasRoute('/a'), isTrue);

    expect(model.hasRoute('b'), isTrue);
    expect(model.hasRoute('/b'), isTrue);

    expect(model.hasRoute('c'), isFalse);
    expect(model.hasRoute('/c'), isFalse);
  });
}

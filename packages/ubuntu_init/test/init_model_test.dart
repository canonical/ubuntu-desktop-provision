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
    when(config.get('pages')).thenAnswer((_) async => null);

    final args = MockArgResults();
    when(args['pages']).thenReturn(null);

    final model = InitModel(config: config, args: args);
    await model.init();
    verify(config.get('pages')).called(1);
    verify(args['pages']).called(1);
  });

  test('configured page array', () async {
    final config = MockConfigService();
    when(config.get('pages')).thenAnswer((_) async => ['a', '/b']);

    final model = InitModel(config: config);
    await model.init();

    expect(model.hasRoute('a'), isTrue);
    expect(model.hasRoute('/a'), isTrue);

    expect(model.hasRoute('b'), isTrue);
    expect(model.hasRoute('/b'), isTrue);

    expect(model.hasRoute('c'), isFalse);
    expect(model.hasRoute('/c'), isFalse);
  });

  test('configured page string', () async {
    final config = MockConfigService();
    when(config.get('pages')).thenAnswer((_) async => 'c, e');

    final model = InitModel(config: config);
    await model.init();

    expect(model.hasRoute('c'), isTrue);
    expect(model.hasRoute('d'), isFalse);
    expect(model.hasRoute('e'), isTrue);
  });
}

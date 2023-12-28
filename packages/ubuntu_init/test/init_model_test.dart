import 'package:args/args.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/init_model.dart';
import 'package:ubuntu_provision/services.dart';

import 'init_model_test.mocks.dart';

@GenerateMocks([ArgResults, PageConfigService])
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
}

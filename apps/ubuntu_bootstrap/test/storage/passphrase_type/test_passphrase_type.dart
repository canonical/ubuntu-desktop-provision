import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase_type/passphrase_type_model.dart';
import 'package:ubuntu_bootstrap/services/storage_service.dart';

import 'test_passphrase_type.mocks.dart';
export '../../test_utils.dart';
export 'test_passphrase_type.mocks.dart';

@GenerateMocks([PassphraseTypeModel])
PassphraseTypeModel buildPassphraseTypeModel({
  PassphraseType? passphraseType,
  bool useTpm = false,
}) {
  final model = MockPassphraseTypeModel();
  when(model.passphraseType)
      .thenReturn(passphraseType ?? PassphraseType.passphrase);
  when(model.init()).thenReturn(useTpm);
  return model;
}

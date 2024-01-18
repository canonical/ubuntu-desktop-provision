import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ubuntu_provision/src/locale/locale_model.dart';

export '../locale/locale_l10n.dart';
export '../locale/locale_model.dart';
export '../locale/locale_page.dart';

final localeProvider =
    Provider((ref) => ref.watch(localeModelProvider).selectedLocale);

import 'dart:ui';

/// Corrects known non-ISO territory metadata in localized language catalogs.
///
/// Swedish is cataloged as `sv_SV`, but `SV` is El Salvador and Sweden's ISO
/// 3166-1 alpha-2 code is `SE`. Ubuntu locale names and translated slides use
/// `sv_SE`.
Locale normalizeLocale(Locale locale) {
  if (locale.languageCode == 'sv' && locale.countryCode == 'SV') {
    return const Locale('sv', 'SE');
  }
  return locale;
}

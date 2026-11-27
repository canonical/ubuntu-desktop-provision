import 'package:flutter_localizations/flutter_localizations.dart'
    as legacy_localizations;
import 'package:material_ui/material_ui.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_wizard/src/wizard_theme.dart';
import 'package:yaru/yaru.dart';

class WizardApp extends StatelessWidget {
  const WizardApp({
    required this.localizationsDelegates,
    required this.supportedLocales,
    required this.home,
    super.key,
    this.flavor,
    this.theme,
    this.darkTheme,
    this.onGenerateTitle,
    this.locale,
  });

  final UbuntuFlavor? flavor;
  final ThemeData? theme;
  final ThemeData? darkTheme;
  final GenerateAppTitle? onGenerateTitle;
  final Locale? locale;
  final Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates;
  final Iterable<Locale> supportedLocales;
  final Widget home;

  @override
  Widget build(BuildContext context) {
    return YaruTheme(
      builder: (context, yaru, child) {
        final platformLocales =
            WidgetsBinding.instance.platformDispatcher.locales;
        final resolvedLocale = basicLocaleListResolution(
          locale == null ? platformLocales : [locale!],
          supportedLocales,
        );
        final legacyLocalizationsSupported = legacy_localizations
            .GlobalMaterialLocalizations.delegate
            .isSupported(resolvedLocale);
        final legacyMaterialLocalizationTypes = {
          legacy_localizations.GlobalMaterialLocalizations.delegate.type,
          legacy_localizations.GlobalCupertinoLocalizations.delegate.type,
        };
        final appLocalizations = [
          for (final delegate in localizationsDelegates)
            if (legacyLocalizationsSupported ||
                !legacyMaterialLocalizationTypes.contains(delegate.type))
              delegate,
          ...GlobalMaterialLocalizations.delegates,
        ];
        final compatibilityDelegates = [
          ...appLocalizations,
          for (final delegate
              in legacy_localizations.GlobalMaterialLocalizations.delegates)
            _FallbackLocalizationsDelegate(delegate),
        ];
        return MaterialApp(
          builder: (context, child) {
            // ignore: deprecated_member_use
            return MaterialUiCompatibilityBridge(
              delegates: compatibilityDelegates,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: child ?? const SizedBox.shrink(),
              ),
            );
          },
          locale: resolvedLocale,
          onGenerateTitle: (context) {
            final title = onGenerateTitle?.call(context) ?? '';
            YaruWindow.of(context).setTitle(title);
            return title;
          },
          theme: (theme ?? flavor?.theme ?? yaru.theme).customize(),
          darkTheme:
              (darkTheme ?? flavor?.darkTheme ?? yaru.darkTheme).customize(),
          highContrastTheme: yaruHighContrastLight.customize(
            highContrast: true,
          ),
          highContrastDarkTheme: yaruHighContrastDark.customize(
            highContrast: true,
          ),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: appLocalizations,
          supportedLocales: supportedLocales,
          home: _WizardBackground(child: home),
        );
      },
    );
  }
}

class _FallbackLocalizationsDelegate<T> extends LocalizationsDelegate<T> {
  const _FallbackLocalizationsDelegate(this.delegate);

  final LocalizationsDelegate<T> delegate;

  @override
  Type get type => delegate.type;

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<T> load(Locale locale) {
    final supportedLocale =
        delegate.isSupported(locale) ? locale : const Locale('en');
    return delegate.load(supportedLocale);
  }

  @override
  bool shouldReload(covariant _FallbackLocalizationsDelegate<T> old) =>
      delegate != old.delegate;
}

class _WizardBackground extends StatelessWidget {
  const _WizardBackground({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: Scaffold(
            appBar: YaruWindowTitleBar(
              title: SizedBox.shrink(),
              style: YaruTitleBarStyle.undecorated,
            ),
          ),
        ),
        Positioned.fill(child: child),
      ],
    );
  }
}

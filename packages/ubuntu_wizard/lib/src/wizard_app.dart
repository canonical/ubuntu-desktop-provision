import 'package:flutter/material.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'wizard_theme.dart';

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
        return MaterialApp(
          locale: locale,
          onGenerateTitle: (context) {
            final title = onGenerateTitle?.call(context) ?? '';
            YaruWindow.of(context).setTitle(title);
            return title;
          },
          theme: (theme ?? flavor?.theme ?? yaru.theme)?.customize(),
          darkTheme:
              (darkTheme ?? flavor?.darkTheme ?? yaru.darkTheme)?.customize(),
          highContrastTheme: yaruHighContrastLight.customize(),
          highContrastDarkTheme: yaruHighContrastDark.customize(),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: localizationsDelegates,
          supportedLocales: supportedLocales,
          home: _WizardBackground(child: home),
        );
      },
    );
  }
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

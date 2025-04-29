import 'package:flutter/material.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:yaru/yaru.dart';

extension WizardFlavorX on UbuntuFlavor {
  ThemeData? get theme => yaru?.theme;
  ThemeData? get darkTheme => yaru?.darkTheme;

  YaruVariant? get yaru => switch (this) {
        UbuntuFlavor.budgie => YaruVariant.ubuntuBudgieBlue,
        UbuntuFlavor.cinnamon => YaruVariant.ubuntuCinnamonBrown,
        UbuntuFlavor.kubuntu => YaruVariant.kubuntuBlue,
        UbuntuFlavor.lubuntu => YaruVariant.lubuntuBlue,
        UbuntuFlavor.mate => YaruVariant.ubuntuMateGreen,
        UbuntuFlavor.studio => YaruVariant.ubuntuStudioBlue,
        UbuntuFlavor.unity => YaruVariant.ubuntuUnityPurple,
        UbuntuFlavor.xubuntu => YaruVariant.xubuntuBlue,
        _ => null,
      };
}

extension WizardThemeDataX on ThemeData {
  ThemeData customize() {
    final errorColor = YaruColors.from(brightness).error;
    final mouseCursor = WidgetStateProperty.all(SystemMouseCursors.basic);
    return copyWith(
      colorScheme: colorScheme.copyWith(error: errorColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: elevatedButtonTheme.style!.copyWith(mouseCursor: mouseCursor),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: filledButtonTheme.style!.copyWith(mouseCursor: mouseCursor),
      ),
      floatingActionButtonTheme:
          floatingActionButtonTheme.copyWith(mouseCursor: mouseCursor),
      iconButtonTheme: IconButtonThemeData(
        style: iconButtonTheme.style!.copyWith(mouseCursor: mouseCursor),
      ),
      inputDecorationTheme: inputDecorationTheme.copyWith(
        floatingLabelStyle: WidgetStateTextStyle.resolveWith((states) {
          final textStyle = textTheme.bodyLarge ?? const TextStyle();
          if (states.contains(WidgetState.error)) {
            return textStyle.copyWith(color: errorColor);
          }
          if (states.contains(WidgetState.focused)) {
            return textStyle.copyWith(color: colorScheme.onSurface);
          }
          if (states.contains(WidgetState.disabled)) {
            return textStyle.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.38),
            );
          }
          return textStyle.copyWith(color: colorScheme.onSurfaceVariant);
        }),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.onSurface),
          borderRadius: BorderRadius.circular(kYaruButtonRadius),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errorColor),
          borderRadius: BorderRadius.circular(kYaruButtonRadius),
        ),
      ),
      listTileTheme: listTileTheme.copyWith(mouseCursor: mouseCursor),
      menuButtonTheme: MenuButtonThemeData(
        style: MenuItemButton.styleFrom(
          enabledMouseCursor: SystemMouseCursors.basic,
          disabledMouseCursor: SystemMouseCursors.basic,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: outlinedButtonTheme.style!.copyWith(mouseCursor: mouseCursor),
      ),
      popupMenuTheme: popupMenuTheme.copyWith(mouseCursor: mouseCursor),
      sliderTheme: sliderTheme.copyWith(
        mouseCursor: mouseCursor,
        valueIndicatorColor: colorScheme.inverseSurface,
        valueIndicatorStrokeColor: colorScheme.onInverseSurface,
        valueIndicatorTextStyle:
            textTheme.bodyMedium!.copyWith(color: colorScheme.onInverseSurface),
        valueIndicatorShape: const RectangularSliderValueIndicatorShape(),
      ),
      textButtonTheme: TextButtonThemeData(
        style: textButtonTheme.style!.copyWith(mouseCursor: mouseCursor),
      ),
      extensions: [
        ...extensions.values,
        YaruCheckboxThemeData(mouseCursor: mouseCursor),
        YaruPageIndicatorThemeData(mouseCursor: mouseCursor),
        YaruRadioThemeData(mouseCursor: mouseCursor),
        YaruSwitchThemeData(mouseCursor: mouseCursor),
        YaruTitleBarThemeData(
          backgroundColor: WidgetStatePropertyAll(colorScheme.surface),
        ),
        YaruToggleButtonThemeData(mouseCursor: mouseCursor),
      ],
    );
  }
}

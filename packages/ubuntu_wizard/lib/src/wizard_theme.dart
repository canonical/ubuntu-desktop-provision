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
  ThemeData _customizeCursor() {
    final mouseCursor = WidgetStateProperty.all(SystemMouseCursors.basic);
    return copyWith(
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
      ),
      textButtonTheme: TextButtonThemeData(
        style: textButtonTheme.style!.copyWith(mouseCursor: mouseCursor),
      ),
      extensions: [
        YaruCheckboxThemeData(mouseCursor: mouseCursor),
        YaruPageIndicatorThemeData(mouseCursor: mouseCursor),
        YaruRadioThemeData(mouseCursor: mouseCursor),
        YaruSwitchThemeData(mouseCursor: mouseCursor),
        YaruToggleButtonThemeData(mouseCursor: mouseCursor),
      ],
    );
  }

  ThemeData _customizeColors(bool highContrast) {
    final errorColor = YaruColors.from(brightness).error;
    return copyWith(
      colorScheme: colorScheme.copyWith(
        error: errorColor,
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
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errorColor),
        ),
        fillColor: colorScheme.surface,
        hoverColor: colorScheme.surface,
      ),
      sliderTheme: sliderTheme.copyWith(
        valueIndicatorColor: colorScheme.inverseSurface,
        valueIndicatorStrokeColor: colorScheme.onInverseSurface,
        valueIndicatorTextStyle:
            textTheme.bodyMedium!.copyWith(color: colorScheme.onInverseSurface),
      ),
      listTileTheme: highContrast
          ? listTileTheme.copyWith(
              textColor: colorScheme.onSurface,
            )
          : null,
      extensions: [
        ...extensions.values,
        YaruTitleBarThemeData(
          backgroundColor: WidgetStatePropertyAll(colorScheme.surface),
        ),
      ],
    );
  }

  ThemeData _customizeShapes() {
    return copyWith(
      inputDecorationTheme: inputDecorationTheme.copyWith(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kYaruButtonRadius),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kYaruButtonRadius),
        ),
      ),
      sliderTheme: sliderTheme.copyWith(
        valueIndicatorShape: const RectangularSliderValueIndicatorShape(),
      ),
    );
  }

  ThemeData customize({bool highContrast = false}) {
    return _customizeCursor()._customizeColors(highContrast)._customizeShapes();
  }
}

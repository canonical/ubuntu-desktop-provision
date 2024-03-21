import 'package:flutter/material.dart';
import 'package:ubuntu_bootstrap/l10n/ubuntu_bootstrap_localizations.dart';

class OnBatterySnackBar extends SnackBar {
  OnBatterySnackBar({super.key})
      : super(
          // TODO: Use shrinkWrap instead of width when it's available.
          // https://github.com/flutter/flutter/issues/113039
          width: 500,
          dismissDirection: DismissDirection.none,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(days: 1),
          showCloseIcon: true,
          content: Builder(
            builder: (context) {
              final theme = Theme.of(context);
              final lang = UbuntuBootstrapLocalizations.of(context);

              return Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: lang.warningLabel,
                      style: TextStyle(color: theme.colorScheme.error),
                    ),
                    const TextSpan(text: ' '),
                    TextSpan(text: lang.batteryWarning),
                  ],
                ),
              );
            },
          ),
        );
}

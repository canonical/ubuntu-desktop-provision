import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/widgets.dart';

/// This script creates copies of the English slides for each country code so
/// that they can be translated in weblate.
///
/// This unfortunately has to be run as an app instead of a script due to the
/// fact that dart scripts can't use dart:ui and therefore can't use the
/// `Locale` class.
void main() async {
  final controller = StreamController<String>();
  unawaited(createLocalizedSlides(controller));
  const primarySwatch = Colors.orange;
  final lightColorScheme = ColorScheme.fromSwatch(
    primarySwatch: primarySwatch,
  );
  final darkColorScheme = ColorScheme.fromSwatch(
    primarySwatch: primarySwatch,
    brightness: Brightness.dark,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: lightColorScheme),
      darkTheme: ThemeData.from(colorScheme: darkColorScheme),
      home: WizardPage(
        title: const YaruWindowTitleBar(
          title: Text('Create localized slide files'),
        ),
        contentPadding: EdgeInsets.zero,
        content: Scaffold(
          body: Center(
            child: Column(
              children: [
                Expanded(
                  child: LogView(
                    log: controller.stream,
                    padding: const EdgeInsets.all(10),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => exit(0),
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Future<void> createLocalizedSlides(StreamController<String> controller) async {
  final scriptDir = path.dirname(Platform.script.toFilePath());
  final languages = await loadLocalizedLanguages(supportedLocales);
  final countryCodes = languages
      .map((l) => '${l.locale.languageCode}_${l.locale.countryCode}')
      .toList()
    ..remove('en_US');

  for (var i = 1; i <= 9; i++) {
    final slideDir = path.join(scriptDir, 'assets', 'slides', '$i');
    if (await Directory(slideDir).exists()) {
      final sourceFile = File(path.join(slideDir, 'slide_en_US.html'));
      if (!await sourceFile.exists()) {
        continue;
      }
      for (final code in countryCodes) {
        final destinationFile = File(path.join(slideDir, 'slide_$code.html'));
        if (!(await destinationFile.exists())) {
          controller.add('Creating ${destinationFile.path}');
          await sourceFile.copy(destinationFile.path);
        } else {
          controller.add('${destinationFile.path} already exists.');
        }
      }
    }
  }
  controller.add('\nDone!');
  await controller.close();
}

import 'dart:io';

import '../subiquity_test.dart';

/// Cleans up the .subiquity directory to ensure a clean test environment.
Future<void> cleanUpSubiquity() async {
  // Ignore errors because the directory may not exist.
  try {
    Directory(await getSubiquityDataPath()).deleteSync(recursive: true);
  } on FileSystemException catch (_) {}
}

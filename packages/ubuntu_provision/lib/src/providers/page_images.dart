import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as path;
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

final pageImagesProvider =
    Provider((ref) => PageImages(getService<PageConfigService>()));

final _log = Logger('page_images');
final _darkModeSuffix = '_dark';

/// Pre-caches and holds images for all pages.
class PageImages {
  PageImages(this.pageConfigService);

  final PageConfigService pageConfigService;

  @visibleForTesting
  SvgFileLoader Function(
    File file, {
    SvgTheme? theme,
    ColorMapper? colorMapper,
  }) svgFileLoader = SvgFileLoader.new;

  @visibleForTesting
  final Map<String, Widget> images = {};

  /// Since extension methods can't be mocked this is a workaround to make
  /// [isDarkMode] mockable.
  @visibleForTesting
  bool Function(BuildContext context) isDarkMode =
      (context) => context.isDarkMode;

  Widget? get(String pageName, BuildContext context) {
    final image = images[pageName];
    if (image == null) {
      return null;
    }
    // TODO(Lukas): Add support for dark mode images
    return context.isDarkMode ? images[pageName] : images[pageName];
  }

  Future<void> preCache(BuildContext context) async {
    final loadFutures = <Future<void>>[];
    pageConfigService.pages.forEach((pageName, config) {
      final imagePath = config.image;
      if (imagePath == null) return;

      try {
        final isAsset = imagePath.startsWith('assets/') ||
            imagePath.startsWith('packages/');
        final isAbsolutPath = imagePath.startsWith('/');
        if (isAsset) {
          _loadAsset(imagePath, pageName, context);
        } else if (isAbsolutPath) {
          loadFutures.add(_loadFile(imagePath, pageName, context));
        } else {
          _log.error(
            'Error loading image for $pageName from $imagePath since it is '
            'neither an asset or absolute path.',
          );
        }
      } on Exception catch (e) {
        _log.error('Error loading image for $pageName from $imagePath: $e');
      }
    });

    await Future.wait(loadFutures);
  }

  Future<void> _loadFile(
    String imagePath,
    String pageName,
    BuildContext context,
  ) async {
    final file = File(imagePath);
    if (!await file.exists()) {
      _log.error(
        'Error loading image for $pageName from $imagePath: File does not exist.',
      );
      return;
    }
    final extension = path.extension(imagePath);
    if (extension == '.svg') {
      await svg.cache.putIfAbsent(
        imagePath,
        () => svgFileLoader(file).loadBytes(context),
      );
      images[pageName] = SvgPicture.file(file);
    } else {
      if (context.mounted) {
        await precacheImage(FileImage(file), context);
      }
      images[pageName] = Image.file(file);
    }
  }

  void _loadAsset(
    String imagePath,
    String pageName,
    BuildContext context,
  ) {
    final packageRegExp = RegExp(r'packages\/(.*?)\/');
    final match = packageRegExp.firstMatch(imagePath);
    final packageName = match?.group(1);

    final extension = path.extension(imagePath);
    if (extension == '.svg') {
      images[pageName] = SvgPicture.asset(imagePath, package: packageName);
    } else {
      images[pageName] = Image.asset(imagePath, package: packageName);
    }
  }
}

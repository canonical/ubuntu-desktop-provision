import 'package:file/file.dart';
import 'package:file/local.dart';
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

/// Pre-caches and holds images for all pages.
///
/// Do note that images that aren't SVG won't be fully precached, since
/// `precacheImage` requires the `BuildContext`, which we didn't want to pass
/// in here.
class PageImages {
  PageImages(this.pageConfigService, {@visibleForTesting FileSystem? fs})
      : _fs = fs ?? const LocalFileSystem();

  final PageConfigService pageConfigService;
  final FileSystem _fs;

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

  /// Gets the image for the given page name, remember that the [pageName]
  /// should be on the enum format. for example 'tryOrInstall`.
  Widget? get(String pageName, BuildContext context) {
    final image = images[pageName];
    if (image == null) {
      return null;
    }
    // TODO(Lukas): Add support for dark mode images
    return isDarkMode(context) ? images[pageName] : images[pageName];
  }

  Future<void> preCache() async {
    final loadFutures = <Future<void>>[];
    pageConfigService.pages.forEach((pageName, config) {
      final imageConfig = config.image;
      if (imageConfig == null) return;

      try {
        final isAsset = imageConfig.startsWith('assets/');
        if (isAsset) {
          _loadAsset(
            'packages/ubuntu_provision/$imageConfig',
            pageName,
          );
        } else {
          loadFutures.add(_loadFile(imageConfig, pageName));
        }
      } on Exception catch (e) {
        _log.error('Error loading image for $pageName from $imageConfig: $e');
      }
    });

    await Future.wait(loadFutures);
  }

  Future<void> _loadFile(
    String imageName,
    String pageName,
  ) async {
    final imagePath = '${ConfigService.whiteLabelDirectory}images/$imageName';
    final file = _fs.file(imagePath);
    if (!await file.exists()) {
      _log.error(
        'Error loading image for $pageName from $imagePath: File does not exist.',
      );
      return;
    }
    final extension = path.extension(imageName);
    if (extension == '.svg') {
      await svg.cache.putIfAbsent(
        imageName,
        () => svgFileLoader(file, theme: const SvgTheme()).loadBytes(null),
      );
      images[pageName] = SvgPicture.file(file);
    } else {
      images[pageName] = Image.file(file);
    }
  }

  void _loadAsset(
    String imagePath,
    String pageName,
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

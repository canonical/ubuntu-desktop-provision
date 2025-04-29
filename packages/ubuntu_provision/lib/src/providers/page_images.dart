import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as path;
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/theme.dart';

final pageImagesProvider = Provider((ref) {
  final brightness = ref.watch(brightnessProvider);
  final flavor = ref.watch(flavorProvider);
  return PageImages(brightness: brightness, flavor: flavor);
});

final _log = Logger('page_images');

/// Pre-caches and holds images for all pages.
///
/// Do note that images that aren't SVG won't be fully precached, since
/// `precacheImage` requires the `BuildContext`, which we didn't want to pass
/// in here.
class PageImages {
  factory PageImages({
    required Brightness brightness,
    required UbuntuFlavor flavor,
  }) {
    _instance
      .._brightness = brightness
      .._flavor = flavor;
    return _instance;
  }

  @visibleForTesting
  PageImages.internal(
    this.pageConfigService,
    this.themeVariantService, {
    this.filesystem = const LocalFileSystem(),
    Brightness brightness = Brightness.light,
    UbuntuFlavor flavor = UbuntuFlavor.ubuntu,
  })  : _brightness = brightness,
        _flavor = flavor;

  static final PageImages _instance = PageImages.internal(
    getService<PageConfigService>(),
    getService<ThemeVariantService>(),
  );

  final PageConfigService pageConfigService;
  final ThemeVariantService themeVariantService;
  final FileSystem filesystem;

  Brightness _brightness;
  bool get isDarkMode => _brightness == Brightness.dark;
  final String _darkModePrefix = 'dark_';
  UbuntuFlavor _flavor;

  @visibleForTesting
  final Map<String, Widget> images = {};

  /// Gets the image for the given page name, remember that the [pageName]
  /// should be on the enum format. for example 'tryOrInstall`.
  Widget? get(String pageName) {
    final image = images[pageName];
    if (image == null) {
      return null;
    }
    return isDarkMode
        ? images['$_darkModePrefix$pageName'] ?? images[pageName]
        : images[pageName];
  }

  Future<void> preCache() async {
    final loadFutures = <Future<void>>[];
    pageConfigService.pages.forEach((pageName, config) {
      final imageConfig = config.image;
      if (imageConfig == null) return;

      try {
        final isAsset = imageConfig.startsWith('assets/');
        if (isAsset) {
          loadFutures.add(
            _loadAsset(
              'packages/ubuntu_provision/$imageConfig',
              pageName,
            ).catchError((_) {
              throw _PageImageNotFoundException(
                'Could not read from $imageConfig',
              );
            }),
          );
        } else {
          loadFutures.add(_loadFile(imageConfig, pageName));
        }
        // ignore: avoid_catches_without_on_clauses
      } catch (e) {
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
    final file = filesystem.file(imagePath);
    if (!await file.exists()) {
      _log.error(
        'Error loading image for $pageName from $imagePath: File does not exist.',
      );
      return;
    }
    final extension = path.extension(imageName);
    if (extension == '.svg') {
      final svgContent = await file.readAsString();
      _loadSvgFromString(svgContent, pageName);
    } else {
      images[pageName] = Image.file(file);
    }
  }

  Future<void> _loadAsset(
    String imagePath,
    String pageName,
  ) async {
    final packageRegExp = RegExp('packages/(.*?)/');
    final match = packageRegExp.firstMatch(imagePath);
    final packageName = match?.group(1);
    final imageName = imagePath.split('/').last;
    final excludedFromColorMapping = [
      'mascot.svg',
      'try-or-install.svg',
      'logo-light.svg',
      'logo-dark.svg',
    ];

    final extension = path.extension(imagePath);
    if (extension == '.svg') {
      final svgContent = await rootBundle.loadString(imagePath);
      _loadSvgFromString(
        svgContent,
        pageName,
        !excludedFromColorMapping.contains(imageName),
      );
    } else {
      images[pageName] = Image.asset(imagePath, package: packageName);
    }
  }

  void _loadSvgFromString(
    String svgContent,
    String pageName, [
    bool mapColors = true,
  ]) {
    for (final darkMode in [false, if (_hasUniqueAccentColors) true]) {
      final accentColor = _accentColor(darkMode: darkMode);
      final image = SvgPicture(
        SvgStringLoader(
          svgContent,
          colorMapper: mapColors ? _AccentColorMapper(accentColor) : null,
        ),
      );

      images[darkMode ? '$_darkModePrefix$pageName' : pageName] = image;
    }
  }

  Color? _accentColor({bool darkMode = false}) => darkMode
      ? themeVariantService.themeVariant?.darkTheme?.primaryColor ??
          themeVariantService.themeVariant?.theme?.primaryColor ??
          _flavor.darkTheme?.primaryColor ??
          _flavor.theme?.primaryColor
      : themeVariantService.themeVariant?.theme?.primaryColor ??
          _flavor.theme?.primaryColor;

  bool get _hasUniqueAccentColors =>
      themeVariantService.themeVariant?.darkTheme?.primaryColor !=
      themeVariantService.themeVariant?.theme?.primaryColor;
}

class _AccentColorMapper extends ColorMapper {
  const _AccentColorMapper(this.accent);

  final Color? accent;

  final Color _baseColor = YaruColors.orange;

  @override
  Color substitute(
    String? id,
    String elementName,
    String attributeName,
    Color color,
  ) {
    if (accent == null) {
      return color;
    }
    final opacity = color.a;
    if (color.withValues(alpha: 1.0) == _baseColor) {
      return accent!.withValues(alpha: opacity);
    } else {
      return color;
    }
  }
}

class _PageImageNotFoundException implements Exception {
  _PageImageNotFoundException(this.message);

  final String message;

  @override
  String toString() => 'PageImageNotFoundException: $message';
}

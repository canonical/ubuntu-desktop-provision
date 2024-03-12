import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as path;
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru/theme.dart';

final pageImagesProvider = Provider((ref) {
  final brightness = ref.watch(brightnessProvider);
  return PageImages(brightness: brightness);
});

final _log = Logger('page_images');

/// Pre-caches and holds images for all pages.
///
/// Do note that images that aren't SVG won't be fully precached, since
/// `precacheImage` requires the `BuildContext`, which we didn't want to pass
/// in here.
class PageImages {
  factory PageImages({required Brightness brightness}) {
    _instance._brightness = brightness;
    return _instance;
  }

  @visibleForTesting
  PageImages.internal(
    this.pageConfigService,
    this.themeVariantService, {
    this.filesystem = const LocalFileSystem(),
    Brightness brightness = Brightness.light,
  }) : _brightness = brightness;

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

  @visibleForTesting
  SvgFileLoader Function(
    File file, {
    SvgTheme? theme,
    ColorMapper? colorMapper,
  }) svgFileLoader = SvgFileLoader.new;

  @visibleForTesting
  Future<String> Function(String imagePath) svgStringLoader =
      rootBundle.loadString;

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
            ),
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
    final file = filesystem.file(imagePath);
    if (!await file.exists()) {
      _log.error(
        'Error loading image for $pageName from $imagePath: File does not exist.',
      );
      return;
    }
    final extension = path.extension(imageName);
    if (extension == '.svg') {
      for (final darkMode in [false, if (_hasUniqueAccentColors) true]) {
        final bytes = await _loadSvg(imageName, file, darkMode: darkMode);
        images[darkMode ? '$_darkModePrefix$pageName' : pageName] =
            SvgPicture.memory(bytes.buffer.asUint8List());
      }
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

    final extension = path.extension(imagePath);
    if (extension == '.svg') {
      final svgContent = await svgStringLoader(imagePath);
      for (final darkMode in [false, if (_hasUniqueAccentColors) true]) {
        images[darkMode ? '$_darkModePrefix$pageName' : pageName] = SvgPicture(
          SvgStringLoader(
            svgContent,
            colorMapper: _AccentColorMapper(_accentColor(darkMode: darkMode)),
          ),
        );
      }
    } else {
      images[pageName] = Image.asset(imagePath, package: packageName);
    }
  }

  Future<ByteData> _loadSvg(
    String imageName,
    File file, {
    bool darkMode = false,
  }) {
    final accentColor = _accentColor(darkMode: darkMode);
    return svg.cache.putIfAbsent(
      imageName,
      () => svgFileLoader(
        file,
        colorMapper: _AccentColorMapper(accentColor),
      ).loadBytes(null),
    );
  }

  Color? _accentColor({bool darkMode = false}) => darkMode
      ? themeVariantService.themeVariant?.darkTheme?.primaryColor ??
          themeVariantService.themeVariant?.theme?.primaryColor
      : themeVariantService.themeVariant?.theme?.primaryColor;

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
    final opacity = color.opacity;
    if (color.withOpacity(1.0) == _baseColor) {
      return accent!.withOpacity(opacity);
    } else {
      return color;
    }
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:html/parser.dart' show parse;
import 'package:intl/intl.dart' hide TextDirection;
import 'package:intl/intl_standalone.dart';
import 'package:path/path.dart' as path;
import 'package:ubuntu_bootstrap/providers/slide_html.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

final slidesProvider = Provider(
  (ref) => SlidesModel(
    brightness: ref.watch(brightnessProvider),
    flavor: ref.watch(flavorProvider),
  ),
);

final _log = Logger('slides');

/// Pre-caches and holds the HTML slides.
class SlidesModel {
  factory SlidesModel({
    required Brightness brightness,
    required UbuntuFlavor flavor,
  }) =>
      _instance
        .._brightness = brightness
        .._flavor = flavor;

  @visibleForTesting
  SlidesModel.internal({
    required Brightness brightness,
    required UbuntuFlavor flavor,
  })  : _brightness = brightness,
        _flavor = flavor;

  static final SlidesModel _instance = SlidesModel.internal(
    flavor: UbuntuFlavor.ubuntu,
    brightness: Brightness.light,
  );

  Brightness _brightness;
  UbuntuFlavor _flavor;
  final List<SlideHtml> _slides = [];
  final List<SlideHtml> _slidesDark = [];

  UnmodifiableListView<SlideHtml> get slides => UnmodifiableListView(
        switch (_brightness) {
          Brightness.light => _slides,
          Brightness.dark => _slidesDark,
        },
      );

  Future<void> preCache() async {
    _slides.addAll(await _loadSlides(Brightness.light));
    _slidesDark.addAll(await _loadSlides(Brightness.dark));
  }

  Future<List<SlideHtml>> _loadSlides(Brightness brightness) async {
    final loadFutures = <Future<SlideHtml?>>[];
    while (true) {
      final index = loadFutures.length + 1;
      final slidePath = '${ConfigService.whiteLabelDirectory}slides/$index';
      final slideDirectory = Directory(slidePath);
      if (!await slideDirectory.exists()) {
        break;
      }
      loadFutures.add(_loadSlide(index, brightness));
    }

    if (loadFutures.isEmpty) {
      _log.info('No custom slides found, using default slides.');
      while (true) {
        final index = loadFutures.length + 1;
        final slideFuture = _loadSlide(index, brightness, fromAssets: true);
        if (await slideFuture == null) {
          break;
        }
        loadFutures.add(slideFuture);
      }
    }

    return (await Future.wait(loadFutures)).nonNulls.toList();
  }

  Future<SlideHtml?> _loadSlide(
    int index,
    Brightness brightness, {
    bool fromAssets = false,
  }) async {
    const defaultLocale = 'en_US';
    final locale = Intl.defaultLocale ?? await findSystemLocale();
    final locales = [locale, defaultLocale];
    for (final locale in locales) {
      final String content;
      if (fromAssets) {
        final slidePath = 'assets/slides/$index/slide_$locale.html';
        if (!await rootBundle.exists(slidePath)) {
          continue;
        }
        try {
          content = await rootBundle.loadString(slidePath);
        } on FlutterError catch (e) {
          _log.error(
            'Error loading slide index $index with locale $locale '
            'from asset $slidePath.\n$e',
          );
          continue;
        }
      } else {
        final slidePath =
            '${ConfigService.whiteLabelDirectory}slides/$index/slide_$locale.html';
        final file = File(slidePath);
        if (!await file.exists()) {
          _log.error(
            'Error loading slide index $index with locale $locale '
            'from $slidePath: File does not exist.',
          );
          continue;
        }
        content = await file.readAsString();
      }

      final flavorSpecificContent =
          content.replaceAll('{{ DISTRO }}', _flavor.displayName);

      final bundledHtml = await _replaceImages(
        flavorSpecificContent,
        index,
        brightness,
        fromAssets: fromAssets,
      );

      return SlideHtml(bundledHtml, index: index, locale: locale);
    }
    assert(true, 'No slides found for index $index');
    return null;
  }

  /// Replaces the image src attributes with base64 encoded images.
  Future<String> _replaceImages(
    String html,
    int index,
    Brightness brightness, {
    bool fromAssets = false,
  }) async {
    final document = parse(html);
    final imgElements = document.getElementsByTagName('img');
    for (final img in imgElements) {
      final src = img.attributes['src'];
      if (src == null) {
        continue;
      }
      final srcDark = src.replaceFirstMapped(
        // first group matches everything except the file extension, second group
        // matches the file extension
        RegExp(r'(.*)(\.[^\.]*)'),
        (m) => '${m[1]}-dark${m[2]}',
      );

      final Uint8List imageBytes;
      final fileExtension = path.extension(src);
      if (fromAssets) {
        final basePath = 'assets/slides/$index/';
        final String imagePath;
        if (brightness == Brightness.dark &&
            await rootBundle.exists(basePath + srcDark)) {
          imagePath = basePath + srcDark;
        } else {
          imagePath = basePath + src;
        }
        try {
          final data = await rootBundle.load(imagePath);
          imageBytes = data.buffer.asUint8List();
        } on FlutterError catch (e) {
          _log.error('Error loading image in slide from $imagePath\n$e');
          continue;
        }
      } else {
        final baseImagePath =
            '${ConfigService.whiteLabelDirectory}slides/$index/';
        final File imageFile;
        if (brightness == Brightness.dark &&
            await File(baseImagePath + srcDark).exists()) {
          imageFile = File(baseImagePath + srcDark);
        } else {
          imageFile = File(baseImagePath + src);
        }
        if (!await imageFile.exists()) {
          _log.error(
            'Error loading image $src from $imageFile: File does not exist.',
          );
          continue;
        }
        imageBytes = await imageFile.readAsBytes();
      }

      final mimeType =
          fileExtension == '.svg' ? 'svg+xml' : fileExtension.substring(1);
      final base64Image = base64Encode(imageBytes);
      img.attributes['src'] = 'data:image/$mimeType;base64,$base64Image';
    }
    return document.outerHtml;
  }
}

extension on AssetBundle {
  Future<bool> exists(String assetName) async {
    final assetManifest = await AssetManifest.loadFromAssetBundle(rootBundle);
    final assets = assetManifest.listAssets();
    return assets.contains(assetName);
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:html/parser.dart' show parse;
import 'package:intl/intl.dart' hide TextDirection;
import 'package:intl/intl_standalone.dart';
import 'package:path/path.dart' as path;
import 'package:ubuntu_bootstrap/slides/slide_html.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

final slidesProvider = Provider(
  (ref) => SlidesModel(flavorName: ref.watch(flavorProvider).displayName),
);

final _log = Logger('slides');

/// Pre-caches and holds the HTML slides.
class SlidesModel {
  SlidesModel({required this.flavorName});

  final String flavorName;
  final List<SlideHtml> slides = [];

  SlideHtml? get(int index) => slides[index];

  Future<void> preCache() async {
    final loadFutures = <Future<void>>[];
    while (true) {
      final index = loadFutures.length + 1;
      final slidePath = '${ConfigService.whiteLabelDirectory}slides/$index';
      final slideDirectory = Directory(slidePath);
      if (!await slideDirectory.exists()) {
        break;
      }
      loadFutures.add(_loadSlide(index));
    }

    if (loadFutures.isEmpty) {
      _log.info('No custom slides found, using default slides.');
      while (true) {
        final index = loadFutures.length + 1;
        final slideFuture = _loadSlide(index, fromAssets: true);
        if (await slideFuture == null) {
          break;
        }
        loadFutures.add(slideFuture);
      }
    }

    slides.addAll((await Future.wait(loadFutures)).whereType());
  }

  Future<SlideHtml?> _loadSlide(int index, {bool fromAssets = false}) async {
    const defaultLocale = 'en_US';
    final locale = Intl.defaultLocale ?? await findSystemLocale();
    final locales = [locale, defaultLocale];
    for (final locale in locales) {
      final String content;
      if (fromAssets) {
        final slidePath = 'assets/slides/$index/slide_$locale.html';
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
          content.replaceAll('{{ DISTRO }}', flavorName);

      final bundledHtml = await _replaceImages(
        flavorSpecificContent,
        index,
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
    int index, {
    bool fromAssets = false,
  }) async {
    final document = parse(html);
    final imgElements = document.getElementsByTagName('img');
    for (final img in imgElements) {
      final src = img.attributes['src'];
      if (src == null) {
        continue;
      }

      final Uint8List imageBytes;
      final fileExtension = path.extension(src);
      if (fromAssets) {
        final imagePath = 'assets/slides/$index/$src';
        try {
          final data = await rootBundle.load(imagePath);
          imageBytes = data.buffer.asUint8List();
        } on FlutterError catch (e) {
          _log.error('Error loading image in slide from $imagePath\n$e');
          continue;
        }
      } else {
        final imageFile = File(
          '${ConfigService.whiteLabelDirectory}slides/$index/$src',
        );
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

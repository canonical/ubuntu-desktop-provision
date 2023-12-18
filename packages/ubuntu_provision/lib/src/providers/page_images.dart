import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as path;
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final pageImagesProvider =
    Provider((ref) => PageImages(getService<PageConfigService>()));

final _log = Logger('page_images');

/// Pre-caches and holds images for all pages.
class PageImages {
  PageImages(this.pageConfigService);

  final PageConfigService pageConfigService;

  final Map<String, Widget> _images = {};

  Widget get(String pageName) =>
      _images[pageName] ?? const Text('PLACEHOLDER, REPLACE WITH DEFAULT');

  Future<void> preCache(BuildContext context) async {
    final loadFutures = <Future<void>>[];
    pageConfigService.pages.forEach((pageName, config) {
      final imagePath = config.image;
      if (imagePath == null) return;

      try {
        final file = File(imagePath);
        final extension = path.extension(imagePath);
        if (extension == '.svg') {
          loadFutures.add(
            svg.cache.putIfAbsent(
              imagePath,
              () => SvgFileLoader(file).loadBytes(context),
            ),
          );
          _images[pageName] = SvgPicture.file(file);
        } else {
          loadFutures.add(precacheImage(FileImage(file), context));
          _images[pageName] = Image.file(file);
        }
      } on Exception catch (e) {
        _log.error('Error loading image for $pageName from $imagePath: $e');
      }
    });

    await Future.wait(loadFutures);
  }
}

import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final welcomeModelProvider = Provider(
  (ref) => WelcomeModel(getService<ProductService>()),
);

class WelcomeModel extends ChangeNotifier {
  WelcomeModel(this._product);

  final ProductService _product;

  Future<bool> init() async => true;

  ProductInfo get productInfo => _product.getProductInfo();

  String releaseNotesURL(Locale locale) {
    return _product.getReleaseNotesURL(locale.languageCode);
  }
}

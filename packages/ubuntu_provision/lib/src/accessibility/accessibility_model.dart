import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

final _log = Logger('accessibility');

final accessibilityModelProvider = ChangeNotifierProvider(
  (_) => AccessibilityModel(
    product: getService<ProductService>(),
  ),
);

/// Implements the business logic of the accessibility page.
class AccessibilityModel extends SafeChangeNotifier
    with PropertyStreamNotifier {
  /// Creates the model with the given client.
  AccessibilityModel({required this.product}) {
    addPropertyListener('Connectivity', notifyListeners);
  }

  final ProductService product;

  String get distroName => product.getProductInfo().name;
}

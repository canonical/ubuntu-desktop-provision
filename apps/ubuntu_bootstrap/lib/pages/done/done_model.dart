import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/services.dart';

final doneModelProvider = ChangeNotifierProvider(
  (_) => DoneModel(
    getService<ProductService>(),
    getService<SessionService>(),
    getService<ConfigService>(),
  ),
);

class DoneModel extends SafeChangeNotifier {
  DoneModel(
    this._product,
    this._session,
    this._config,
  );

  final ProductService _product;
  final SessionService _session;
  final ConfigService _config;

  late final ProvisioningMode _provisioningMode;

  ProvisioningMode get provisioningMode => _provisioningMode;
  ProductInfo get productInfo => _product.getProductInfo();

  Future<void> init() async {
    _provisioningMode = await _config.provisioningMode;
  }

  Future<void> reboot() => _session.reboot();
}

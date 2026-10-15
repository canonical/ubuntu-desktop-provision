import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/services.dart';

part 'done_model.freezed.dart';
part 'done_model.g.dart';

@freezed
abstract class DoneState with _$DoneState {
  factory DoneState({
    required ProvisioningMode provisioningMode,
    required ProductInfo productInfo,
  }) = _DoneState;
}

@Riverpod(keepAlive: true)
class DoneModel extends _$DoneModel {
  @override
  Future<DoneState> build() async {
    return DoneState(
      provisioningMode: await getService<ConfigService>().provisioningMode,
      productInfo: getService<ProductService>().getProductInfo(),
    );
  }

  Future<void> reboot() => getService<SessionService>().reboot();
}

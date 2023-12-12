import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_provision/src/network/connect_model.dart';
import 'package:ubuntu_provision/src/network/network_device.dart';
import 'package:ubuntu_provision/src/network/wifi_model.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

final hiddenWifiModelProvider = ChangeNotifierProvider((_) =>
    HiddenWifiModel(getService<NetworkService>(), getService<UdevService>()));

class HiddenWifiModel extends NetworkDeviceModel<WifiDevice> {
  HiddenWifiModel(super.service, [super.udev]);

  @override
  bool get canConnect => _ssid.isNotEmpty && !isConnected;

  @override
  bool get isConnected =>
      (selectedDevice?.isActive ?? false) &&
      selectedDevice?.activeAccessPoint?.name == ssid;

  @override
  bool get hasActiveConnection => false;

  @override
  bool get isConnecting => selectedDevice?.isConnecting ?? false;

  @override
  bool get isEnabled => service.wirelessEnabled;

  @override
  ConnectMode get connectMode => ConnectMode.hiddenWifi;

  @override
  Future<NetworkManagerActiveConnection> connect() async {
    final wifi = service.getWifiSettings(ssid: _ssid);
    return service.addAndActivateConnection(
      connection: wifi,
      device: selectedDevice!.device,
    );
  }

  String _ssid = '';
  String get ssid => _ssid;
  void setSsid(String ssid) {
    if (_ssid == ssid) return;
    _ssid = ssid;
    notifyListeners();
  }

  @override
  Future<void> enable() async {}

  @override
  void onDeselected() {}

  @override
  void onSelected() {}

  @override
  List<NetworkManagerDevice> getDevices() => service.wirelessDevices;

  @override
  WifiDevice createDevice(NetworkManagerDevice device) {
    return WifiDevice(device, udev);
  }

  @override
  WifiDevice? findActiveDevice() {
    return devices.firstWhereOrNull((device) {
      return device.isAvailable && !device.isUnmanaged;
    });
  }
}

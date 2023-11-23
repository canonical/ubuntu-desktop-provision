import 'package:dartx/dartx.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_provision/services.dart';

class InstallerService {
  InstallerService(this._client, {ConfigService? config, List<String>? pages})
      : _config = config,
        _pages = pages?.map((r) => r.removePrefix('/')).toList();

  List<String>? _pages;
  final SubiquityClient _client;
  final ConfigService? _config;

  Future<void> init() async {
    await _client.setVariant(Variant.DESKTOP);
    final status =
        await monitorStatus().firstWhere((s) => s?.isLoading == false);
    if (status?.interactive == true) {
      // Use the default values for a number of endpoints that aren't used in
      // the bootstrap stage, or for which a UI page isn't implemented yet.
      await _client.markConfigured([
        'active_directory',
        'identity',
        'mirror',
        'proxy',
        'ssh',
        'snaplist',
        'timezone',
        'ubuntu_pro',
      ]);
    }
  }

  Future<void> load() async {
    await monitorStatus().firstWhere((s) => s?.isLoading == false);
    _pages ??=
        await _client.getInteractiveSections() ?? await _config?.getPages();
  }

  Future<void> start() => _client.confirm('/dev/tty1');

  Stream<ApplicationStatus?> monitorStatus() => _client.monitorStatus();

  bool hasRoute(String route) {
    return _pages?.contains(route.removePrefix('/')) ?? true;
  }
}

extension ApplicationStatusX on ApplicationStatus {
  bool get isLoading => isStartingUp || isWaitingAutoinstall;
  bool get isStartingUp => state.index <= ApplicationState.EARLY_COMMANDS.index;
  bool get isWaitingAutoinstall =>
      interactive == false && state == ApplicationState.WAITING;
  bool get isInstalling =>
      state.index >= ApplicationState.RUNNING.index &&
      state.index < ApplicationState.DONE.index;
}

extension on ConfigService {
  Future<List<String>?> getPages() async {
    final value = await get('pages');
    return (value is List ? value.cast<String>() : value?.toString().split(','))
        ?.map((p) => p.trim())
        .toList();
  }
}

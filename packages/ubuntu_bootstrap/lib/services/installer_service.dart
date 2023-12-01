import 'package:dartx/dartx.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';

final _log = Logger('installer_service');

class InstallerService {
  InstallerService(this._client, {PageConfigService? pageConfig})
      : _pageConfig = pageConfig;

  final SubiquityClient _client;
  final PageConfigService? _pageConfig;
  List<String>? _excludedPages;
  List<String>? _subiquityPages;

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
    _subiquityPages = await _client.getInteractiveSections();
    _excludedPages = _pageConfig?.pages.entries
        .whereNot((e) => e.value.visible)
        .map((e) => e.key)
        .toList();

    if ((_subiquityPages?.isNotEmpty ?? false) &&
        (_excludedPages?.isNotEmpty ?? false)) {
      final requiredExcludedPages =
          _excludedPages!.where(_subiquityPages!.contains);
      _log.info(
          '$requiredExcludedPages are required by subiquity and cannot be excluded!');
      _excludedPages!.removeWhere(requiredExcludedPages.contains);
    }
  }

  Future<void> start() => _client.confirm('/dev/tty1');

  Stream<ApplicationStatus?> monitorStatus() => _client.monitorStatus();

  bool hasRoute(String route) {
    if (_subiquityPages?.isNotEmpty ?? false) {
      return _subiquityPages!.contains(route.removePrefix('/'));
    }
    return !(_excludedPages?.contains(route.removePrefix('/')) ?? false);
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

import 'package:collection/collection.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/installer/installation_step.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';

final _log = Logger('installer_service');

class InstallerService {
  InstallerService(this._client, {required this.pageConfig});

  final SubiquityClient _client;
  final PageConfigService pageConfig;
  late Set<String> _pages;

  Future<void> init() async {
    await _client.setVariant(Variant.DESKTOP);
    final status =
        await monitorStatus().firstWhere((s) => s?.isLoading == false);
    if (status?.interactive ?? false) {
      // Use the default values for a number of endpoints that aren't used in
      // the bootstrap stage, or for which a UI page isn't implemented yet.
      await _client.markConfigured([
        'mirror',
        'proxy',
        'ssh',
        'snaplist',
        'ubuntu_pro',
      ]);
    }
  }

  Future<void> load() async {
    await monitorStatus().firstWhere((s) => s?.isLoading == false);

    final subiquityPages = await _getSubiquityPages();
    if (subiquityPages.isNotEmpty) {
      _log.info('Showing only pages requested by subiquity: $subiquityPages');
      _pages = subiquityPages;
    } else {
      _pages = pageConfig.pages.keys.toSet();
      if (pageConfig.isOem) {
        _pages.remove('identity');
        _pages.remove('timezone');
        await _client.markConfigured(['identity', 'timezone']);
      }
    }
  }

  Future<void> start() => _client.confirm('/dev/tty1');

  Stream<ApplicationStatus?> monitorStatus() => _client.monitorStatus();

  /// Gives back whether the [route] should be shown in the installer.
  /// If subiquity gives back interactive pages then it will only show those
  /// pages, otherwise it will show all pages according to the config.
  bool hasRoute(String route) {
    return _pages.contains(route.replaceFirst('/', ''));
  }

  Future<Set<String>> _getSubiquityPages() async =>
      (await _client.getInteractiveSections())
          ?.map(
            (section) => switch (section) {
              // Sections that match the page names
              final page
                  when [
                    'locale',
                    'keyboard',
                    'network',
                    'storage',
                    'identity',
                    'timezone',
                  ].contains(page) =>
                page,
              // Sections that don't match the page names
              'refresh-installer' => InstallationStep.refresh.name,
              'source' => InstallationStep.sourceSelection.name,
              'codecs' || 'drivers' => InstallationStep.codecsAndDrivers.name,
              _ => 'unknown',
            },
          )
          .whereNot((page) => page == 'unknown')
          .toSet() ??
      {};
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

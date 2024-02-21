import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';

final _log = Logger('installer_service');

class InstallerService {
  InstallerService(this._client, {required this.pageConfig});

  final SubiquityClient _client;
  final PageConfigService pageConfig;
  late final Set<String> _excludedPages;
  late final Set<String>? _subiquityPages;
  bool _isLoaded = false;

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
    if (_isLoaded) {
      _log.warning(
        'InstallerService tried to run load a second time, this should not happen.',
      );
      return;
    }
    _isLoaded = true;
    await monitorStatus().firstWhere((s) => s?.isLoading == false);
    _subiquityPages = (await _client.getInteractiveSections())?.toSet();
    final oemPages = {'eula'};
    final requiredPages = _subiquityPages ?? (pageConfig.isOem ? oemPages : {});

    _excludedPages = pageConfig.excludedPages.toSet();
    if (pageConfig.isOem) {
      _excludedPages.add('identity');
    }

    final excludedRequiredPages = _excludedPages.intersection(requiredPages);
    if (excludedRequiredPages.isNotEmpty) {
      _log.info('$excludedRequiredPages are required and cannot be excluded!');
      _excludedPages.removeAll(excludedRequiredPages);
    }
  }

  Future<void> start() => _client.confirm('/dev/tty1');

  Stream<ApplicationStatus?> monitorStatus() => _client.monitorStatus();

  /// Gives back whether the [route] should be shown in the installer.
  /// If subiquity gives back interactive pages then it will only show those
  /// pages, otherwise it will show all pages according to the config.
  bool hasRoute(String route) {
    if (_subiquityPages?.isNotEmpty ?? false) {
      return _subiquityPages!.contains(route.replaceFirst('/', ''));
    }
    return !_excludedPages.contains(route.replaceFirst('/', ''));
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

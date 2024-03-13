import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';

final _log = Logger('installer_service');

class InstallerService {
  InstallerService(this._client, {required this.pageConfig});

  final SubiquityClient _client;
  final PageConfigService pageConfig;
  late Set<String> _pages;
  Set<String>? _subiquityPages;

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
    _subiquityPages = (await _client.getInteractiveSections())?.toSet();
    final oemPages = {'eula'};
    final requiredPages = _subiquityPages ?? (pageConfig.isOem ? oemPages : {});

    _pages = pageConfig.pages.keys.toSet();
    if (pageConfig.isOem) {
      _pages.remove('identity');
      _pages.remove('timezone');
      await _client.markConfigured(['identity', 'timezone']);
    }

    final excludedRequiredPages = requiredPages.toSet()..removeAll(_pages);
    if (excludedRequiredPages.isNotEmpty) {
      _log.warning(
        '$excludedRequiredPages are required and cannot be excluded!',
      );
      _pages.addAll(excludedRequiredPages);
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
    return _pages.contains(route.replaceFirst('/', ''));
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

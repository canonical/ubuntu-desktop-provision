// ignore_for_file: avoid_types_on_closure_parameters

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'endpoint.dart';
import 'status_monitor.dart';
import 'types.dart';

final _log = Logger('subiquity_client');

const _kMaxResponseLogLength = 1200;

String _formatResponseLog(String method, String response) {
  var formatted = response;
  if (response.length > _kMaxResponseLogLength) {
    formatted = '${response.substring(0, _kMaxResponseLogLength)}...';
  }
  return '==> $method $formatted';
}

// TODO(Lukas): Rename enums to dart style.
// ignore: constant_identifier_names
enum Variant { SERVER, DESKTOP, WSL_SETUP, WSL_CONFIGURATION }

extension VariantString on Variant {
  static Variant fromString(String value) {
    return Variant.values.firstWhere((v) => value == v.toVariantString());
  }

  String toVariantString() => name.toLowerCase();
}

class SubiquityException implements Exception {
  const SubiquityException(this.method, this.statusCode, this.message);
  final String method;
  final int statusCode;
  final String message;

  @override
  String toString() => '$method returned error $statusCode\n$message';
}

class SubiquityClient {
  final _client = HttpClient();
  final _ready = Completer();
  Endpoint? _endpoint;

  void open(Endpoint endpoint) {
    _log.info('Opening socket to $endpoint');
    _endpoint = endpoint;
    _client.connectionFactory = (uri, proxyHost, proxyPort) async {
      return Socket.startConnect(endpoint.address, endpoint.port);
    };
    _ready.complete();
  }

  Future<void> close() async {
    _log.info('Closing socket to $_endpoint');
    _client.close();
  }

  Future<R> _receive<R, V>(
    String method,
    HttpClientRequest request, [
    R Function(V)? decode,
    String Function(String, String) formatResponseLog = _formatResponseLog,
  ]) async {
    final response = await request.close();
    final str = await response.transform(utf8.decoder).join();
    if (response.statusCode != 200) {
      throw SubiquityException(method, response.statusCode, str);
    }
    _log.debug(() => formatResponseLog(method, str));
    final json = jsonDecode(str);
    return decode?.call(json as V) ?? json as R;
  }

  Future<HttpClientRequest> _openUrl(
    String method,
    String path, [
    Map<String, dynamic>? queryParameters,
  ]) async {
    await _ready.future;
    final url = Uri.http(_endpoint!.authority, path, queryParameters);
    _log.debug('$method $url');
    final request = await _client.openUrl(method, url);
    request.headers.contentType =
        ContentType('application', 'json', charset: 'utf-8');
    return request;
  }

  Future<List<String>?> getInteractiveSections() async {
    final request = await _openUrl('GET', 'meta/interactive_sections');
    return _receive(
      'getInteractiveSections()',
      request,
      (List<Object?>? values) => values?.cast<String>(),
    );
  }

  Future<Variant> getVariant() async {
    final request = await _openUrl('GET', 'meta/client_variant');
    return _receive('variant()', request, VariantString.fromString);
  }

  Future<void> setVariant(Variant variant) async {
    final params = {'variant': jsonEncode(variant.toVariantString())};
    final request = await _openUrl('POST', 'meta/client_variant', params);
    await _receive('setVariant($variant)', request);
  }

  Future<SourceSelectionAndSetting> getSource() async {
    final request = await _openUrl('GET', 'source');
    return _receive('source()', request, SourceSelectionAndSetting.fromJson);
  }

  Future<void> setSource(String sourceId, {bool searchDrivers = false}) async {
    final params = {
      'source_id': jsonEncode(sourceId),
      'search_drivers': '$searchDrivers'
    };
    final request = await _openUrl('POST', 'source', params);
    await _receive('setSource($sourceId)', request);
  }

  Future<String> getLocale() async {
    final request = await _openUrl('GET', 'locale');
    return _receive('locale()', request);
  }

  Future<void> setLocale(String locale) async {
    final request = await _openUrl('POST', 'locale');
    request.write(jsonEncode(locale));
    await _receive('setLocale($locale)', request);
  }

  Future<KeyboardSetup> getKeyboard() async {
    final request = await _openUrl('GET', 'keyboard');
    return _receive('keyboard()', request, KeyboardSetup.fromJson);
  }

  Future<void> setKeyboard(KeyboardSetting setting) async {
    final request = await _openUrl('POST', 'keyboard');
    request.write(jsonEncode(setting.toJson()));
    await _receive('setKeyboard($setting)', request);
  }

  Future<void> setInputSource(KeyboardSetting setting, {String? user}) async {
    final params = {if (user != null) 'user': jsonEncode(user)};
    final request = await _openUrl('POST', 'keyboard/input_source', params);
    request.write(jsonEncode(setting.toJson()));
    await _receive('setInputSource($setting)', request);
  }

  Future<String> getProxy() async {
    final request = await _openUrl('GET', 'proxy');
    return _receive('proxy()', request);
  }

  Future<void> setProxy(String proxy) async {
    final request = await _openUrl('POST', 'proxy');
    request.write(jsonEncode(proxy));
    await _receive('setProxy($proxy)', request);
  }

  Future<MirrorGet> getMirror() async {
    final request = await _openUrl('GET', 'mirror');
    return _receive('mirror()', request, MirrorGet.fromJson);
  }

  Future<MirrorPostResponse> setMirror(MirrorPost? mirror) async {
    final request = await _openUrl('POST', 'mirror');
    request.write(jsonEncode(mirror?.toJson()));
    return _receive(
        'setMirror($mirror)', request, MirrorPostResponse.values.byName);
  }

  Future<bool> hasNetwork() async {
    final request = await _openUrl('GET', 'network/has_network');
    return _receive('hasNetwork()', request);
  }

  Future<IdentityData> getIdentity() async {
    final request = await _openUrl('GET', 'identity');
    return _receive('identity()', request, IdentityData.fromJson);
  }

  Future<void> setIdentity(IdentityData identity) async {
    final request = await _openUrl('POST', 'identity');
    request.write(jsonEncode(identity.toJson()));
    await _receive('setIdentity($identity)', request);
  }

  Future<UsernameValidation> validateUsername(String username) async {
    final params = {'username': jsonEncode(username)};
    final request = await _openUrl('GET', 'identity/validate_username', params);
    return _receive('identity/validate_username()', request,
        UsernameValidation.values.byName);
  }

  Future<TimeZoneInfo> getTimezone() async {
    final request = await _openUrl('GET', 'timezone');
    return _receive('timezone()', request, TimeZoneInfo.fromJson);
  }

  Future<void> setTimezone(String timezone) async {
    final params = {'tz': jsonEncode(timezone)};
    final request = await _openUrl('POST', 'timezone', params);
    await _receive('setTimezone($timezone)', request);
  }

  /// Get the installer state.
  Future<ApplicationStatus> getStatus({ApplicationState? current}) async {
    late ApplicationStatus status;
    if (current != null) {
      final params = {'cur': jsonEncode(current.name)};
      final request = await _openUrl('GET', 'meta/status', params);
      status = await _receive(
          'status(${current.name})', request, ApplicationStatus.fromJson);
    } else {
      final request = await _openUrl('GET', 'meta/status');
      status = await _receive('status()', request, ApplicationStatus.fromJson);
    }
    _log.info('state: ${current?.name} => ${status.state.name}');
    return status;
  }

  /// Monitor status changes.
  Stream<ApplicationStatus?> monitorStatus() async* {
    await _ready.future;
    final monitor = SubiquityStatusMonitor();
    try {
      await monitor.start(_endpoint!);
      yield monitor.status;
      yield* monitor.onStatusChanged;
    } finally {
      await monitor.stop();
    }
  }

  /// Mark the controllers for endpoint_names as configured.
  Future<void> markConfigured(List<String> endpointNames) async {
    final params = {'endpoint_names': jsonEncode(endpointNames)};
    final request = await _openUrl('POST', 'meta/mark_configured', params);
    await _receive('markConfigured($endpointNames)', request);
  }

  /// Confirm that the installation should proceed.
  Future<void> confirm(String tty) async {
    final params = {'tty': jsonEncode(tty)};
    final request = await _openUrl('POST', 'meta/confirm', params);
    await _receive('confirm($tty)', request);
  }

  /// Returns whether RST is turned on.
  Future<bool> hasRst() async {
    final request = await _openUrl('GET', 'storage/has_rst');
    return _receive('hasRst()', request);
  }

  /// Returns whether any disks contain BitLocker partitions.
  Future<bool> hasBitLocker() async {
    final request = await _openUrl('GET', 'storage/has_bitlocker');
    return _receive(
      'hasBitLocker()',
      request,
      (List<Object?> disks) => disks.isNotEmpty,
    );
  }

  Future<GuidedStorageResponseV2> getGuidedStorageV2({bool wait = true}) async {
    final params = {'wait': jsonEncode(wait)};
    final request = await _openUrl('GET', 'storage/v2/guided', params);
    return _receive(
        'getGuidedStorageV2($wait)', request, GuidedStorageResponseV2.fromJson);
  }

  Future<GuidedStorageResponseV2> setGuidedStorageV2(
      GuidedChoiceV2 choice) async {
    final request = await _openUrl('POST', 'storage/v2/guided');
    request.write(jsonEncode(choice.toJson()));

    String? hidePassword(String? password) {
      return password == null ? null : '*' * password.length;
    }

    String hidePasswordRequest(GuidedChoiceV2 choice) {
      return jsonEncode(
        choice.copyWith(password: hidePassword(choice.password)).toJson(),
      );
    }

    String hidePasswordResponse(String method, String response) {
      final guided = GuidedStorageResponseV2.fromJson(
        jsonDecode(response) as Map<String, Object?>,
      );
      final json = jsonEncode(guided.copyWith(
        configured: guided.configured?.copyWith(
          password: hidePassword(guided.configured?.password),
        ),
      ));
      return _formatResponseLog(method, json);
    }

    return _receive(
      'setGuidedStorageV2(${hidePasswordRequest(choice)})',
      request,
      GuidedStorageResponseV2.fromJson,
      hidePasswordResponse,
    );
  }

  Future<StorageResponseV2> getOriginalStorageV2() async {
    final request = await _openUrl('GET', 'storage/v2/orig_config');
    return _receive(
        'getOriginalStorageV2()', request, StorageResponseV2.fromJson);
  }

  Future<StorageResponseV2> getStorageV2({bool wait = true}) async {
    final params = {'wait': jsonEncode(wait)};
    final request = await _openUrl('GET', 'storage/v2', params);
    return _receive('getStorageV2()', request, StorageResponseV2.fromJson);
  }

  Future<StorageResponseV2> setStorageV2() async {
    final request = await _openUrl('POST', 'storage/v2');
    return _receive('setStorageV2()', request, StorageResponseV2.fromJson);
  }

  Future<StorageResponseV2> resetStorageV2() async {
    final request = await _openUrl('POST', 'storage/v2/reset');
    return _receive('resetStorageV2()', request, StorageResponseV2.fromJson);
  }

  Future<StorageResponseV2> addPartitionV2(
      Disk disk, Gap gap, Partition partition) async {
    final request = await _openUrl('POST', 'storage/v2/add_partition');
    request.write(jsonEncode(<String, dynamic>{
      'disk_id': disk.id,
      'gap': gap.toJson(),
      'partition': partition.toJson(),
    }));
    return _receive('addPartition(${disk.id}, $partition)', request,
        StorageResponseV2.fromJson);
  }

  Future<StorageResponseV2> editPartitionV2(
      Disk disk, Partition partition) async {
    final request = await _openUrl('POST', 'storage/v2/edit_partition');
    request.write(jsonEncode(<String, dynamic>{
      'disk_id': disk.id,
      'partition': partition.toJson(),
    }));
    return _receive('editPartition(${disk.id}, $partition)', request,
        StorageResponseV2.fromJson);
  }

  Future<StorageResponseV2> deletePartitionV2(
      Disk disk, Partition partition) async {
    final request = await _openUrl('POST', 'storage/v2/delete_partition');
    request.write(jsonEncode(<String, dynamic>{
      'disk_id': disk.id,
      'partition': partition.toJson(),
    }));
    return _receive('deletePartition(${disk.id}, $partition)', request,
        StorageResponseV2.fromJson);
  }

  Future<StorageResponseV2> addBootPartitionV2(Disk disk) async {
    final params = {'disk_id': jsonEncode(disk.id)};
    final request =
        await _openUrl('POST', 'storage/v2/add_boot_partition', params);
    return _receive(
        'addBootPartitionV2(${disk.id})', request, StorageResponseV2.fromJson);
  }

  Future<StorageResponseV2> reformatDiskV2(Disk disk) async {
    final request = await _openUrl('POST', 'storage/v2/reformat_disk');
    request.write(jsonEncode({'disk_id': disk.id}));
    return _receive(
        'reformatDiskV2(${disk.id})', request, StorageResponseV2.fromJson);
  }

  Future<void> reboot({bool immediate = false}) async {
    final params = {
      'mode': jsonEncode('REBOOT'),
      'immediate': jsonEncode(immediate),
    };
    final request = await _openUrl('POST', 'shutdown', params);
    try {
      await request.close();
    } on HttpException catch (_) {}
  }

  Future<void> shutdown({bool immediate = false}) async {
    final params = {
      'mode': jsonEncode('POWEROFF'),
      'immediate': jsonEncode(immediate),
    };
    final request = await _openUrl('POST', 'shutdown', params);
    try {
      await request.close();
    } on HttpException catch (_) {}
  }

  Future<WSLSetupOptions> wslSetupOptions() async {
    final request = await _openUrl('GET', 'wslsetupoptions');
    return _receive('wslsetupoptions()', request, WSLSetupOptions.fromJson);
  }

  Future<void> setWslSetupOptions(WSLSetupOptions options) async {
    final request = await _openUrl('POST', 'wslsetupoptions');
    request.write(jsonEncode(options.toJson()));
    return _receive('setWslSetupOptions($options)', request);
  }

  Future<WSLConfigurationBase> wslConfigurationBase() async {
    final request = await _openUrl('GET', 'wslconfbase');
    return _receive('wslconfbase()', request, WSLConfigurationBase.fromJson);
  }

  Future<void> setWslConfigurationBase(WSLConfigurationBase conf) async {
    final request = await _openUrl('POST', 'wslconfbase');
    request.write(jsonEncode(conf.toJson()));
    await _receive('setWslconfbase($conf)', request);
  }

  Future<WSLConfigurationAdvanced> wslConfigurationAdvanced() async {
    final request = await _openUrl('GET', 'wslconfadvanced');
    return _receive(
        'wslconfadvanced()', request, WSLConfigurationAdvanced.fromJson);
  }

  Future<void> setWslConfigurationAdvanced(
      WSLConfigurationAdvanced conf) async {
    final request = await _openUrl('POST', 'wslconfadvanced');
    request.write(jsonEncode(conf.toJson()));
    await _receive('setWslconfadvanced($conf)', request);
  }

  Future<AnyStep> getKeyboardStep([String step = '0']) async {
    final params = {'index': jsonEncode(step)};
    final request = await _openUrl('GET', 'keyboard/steps', params);
    return _receive('getKeyboardStep($step)', request, AnyStep.fromJson);
  }

  Future<DriversResponse> getDrivers() async {
    final request = await _openUrl('GET', 'drivers');
    return _receive('getDrivers()', request, DriversResponse.fromJson);
  }

  Future<void> setDrivers({required bool install}) async {
    final request = await _openUrl('POST', 'drivers');
    request.write(jsonEncode(<String, dynamic>{'install': install}));
    await _receive('setDrivers($install)', request);
  }

  Future<CodecsData> getCodecs() async {
    final request = await _openUrl('GET', 'codecs');
    return _receive('getCodecs()', request, CodecsData.fromJson);
  }

  Future<void> setCodecs({required bool install}) async {
    final request = await _openUrl('POST', 'codecs');
    request.write(jsonEncode(<String, dynamic>{'install': install}));
    await _receive('setCodecs($install)', request);
  }

  Future<RefreshStatus> checkRefresh({bool wait = true}) async {
    final params = {'wait': jsonEncode(wait)};
    final request = await _openUrl('GET', 'refresh', params);
    return _receive('checkRefresh()', request, RefreshStatus.fromJson);
  }

  Future<String> startRefresh() async {
    final request = await _openUrl('POST', 'refresh');
    return _receive('startRefresh()', request);
  }

  Future<Change> getRefreshProgress(String changeId) async {
    final params = {'change_id': jsonEncode(changeId)};
    final request = await _openUrl('GET', 'refresh/progress', params);
    return _receive('getRefreshProgress($changeId)', request, Change.fromJson);
  }

  Future<bool> hasActiveDirectorySupport() async {
    final request = await _openUrl('GET', 'active_directory/has_support');
    return _receive('hasActiveDirectorySupport()', request);
  }

  Future<AdConnectionInfo> getActiveDirectory() async {
    final request = await _openUrl('GET', 'active_directory');
    return _receive(
      'getActiveDirectory()',
      request,
      (json) {
        if (json == null || json is! Map<String, dynamic>) {
          json = <String, dynamic>{};
        }
        return AdConnectionInfo.fromJson(json);
      },
      (method, response) {
        if (response.isEmpty) {
          throw Exception('Received empty response');
        }
        var decodedJson = jsonDecode(response);
        if (decodedJson == null || decodedJson is! Map<String, dynamic>) {
          decodedJson = <String, dynamic>{};
        }
        return _formatResponseLog(
          method,
          AdConnectionInfo.fromJson(decodedJson).hidePassword().toString(),
        );
      },
    );
  }

  Future<void> setActiveDirectory(AdConnectionInfo info) async {
    final request = await _openUrl('POST', 'active_directory');
    request.write(jsonEncode(info.toJson()));
    return _receive('setActiveDirectory(${info.hidePassword()})', request);
  }

  Future<List<AdDomainNameValidation>> checkActiveDirectoryDomainName(
      String domain) async {
    final request =
        await _openUrl('POST', 'active_directory/check_domain_name');
    request.write(jsonEncode(domain));
    return _receive(
      'checkActiveDirectoryDomainName($domain)',
      request,
      (List<Object?> values) => values
          .cast<String>()
          .map(AdDomainNameValidation.values.byName)
          .toList(),
    );
  }

  Future<AdDomainNameValidation> pingActiveDirectoryDomainController(
      String domain) async {
    final request =
        await _openUrl('POST', 'active_directory/ping_domain_controller');
    request.write(jsonEncode(domain));
    return _receive('pingActiveDirectoryDomainController($domain)', request,
        AdDomainNameValidation.values.byName);
  }

  Future<AdAdminNameValidation> checkActiveDirectoryAdminName(
      String admin) async {
    final request = await _openUrl('POST', 'active_directory/check_admin_name');
    request.write(jsonEncode(admin));
    return _receive(
      'checkActiveDirectoryAdminName($admin)',
      request,
      AdAdminNameValidation.values.byName,
    );
  }

  Future<AdPasswordValidation> checkActiveDirectoryPassword(
      String password) async {
    final request = await _openUrl('POST', 'active_directory/check_password');
    request.write(jsonEncode(password));
    return _receive(
      'checkActiveDirectoryPassword(${password.hide()})',
      request,
      AdPasswordValidation.values.byName,
    );
  }

  Future<AdJoinResult> getActiveDirectoryJoinResult({bool wait = true}) async {
    final params = {'wait': jsonEncode(wait)};
    final request =
        await _openUrl('GET', 'active_directory/join_result', params);
    return _receive('getActiveDirectoryJoinResult($wait)', request,
        AdJoinResult.values.byName);
  }
}

extension on String {
  String hide() => '*' * length;
}

extension on AdConnectionInfo {
  AdConnectionInfo hidePassword() => copyWith(password: password.hide());
}

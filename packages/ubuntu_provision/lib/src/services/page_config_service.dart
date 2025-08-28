import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

part 'page_config_service.freezed.dart';
part 'page_config_service.g.dart';

final _log = Logger('page');
const _tryOrInstallName = 'tryOrInstall';

class PageConfigService {
  PageConfigService({
    ConfigService? config,
    this.includeTryOrInstall = false,
    this.allowedToHide = const [],
  }) : _config = config;

  final ConfigService? _config;
  final Map<String, PageConfigEntry> pages = {};
  final bool includeTryOrInstall;
  final Iterable<String> allowedToHide;
  late final ProvisioningMode mode;
  bool get isOem => mode == ProvisioningMode.oem;

  Set<String> _excludedPages(Map<String, PageConfigEntry> pages) {
    return pages.entries
        .where((e) => !e.value.visible && allowedToHide.contains(e.key))
        .map((e) => e.key)
        .toSet();
  }

  Future<void> load() async {
    final pageConfig = PageConfig.fromJson({
      'pages': await _config!.get<Map<String, dynamic>>('pages') ??
          <String, dynamic>{},
    });
    mode = await _config!.provisioningMode;
    final configuredPages = Map.of(pageConfig.pages);
    final excludedPages = _excludedPages(configuredPages);
    configuredPages.removeWhere((key, value) => excludedPages.contains(key));
    for (final key in configuredPages.keys) {
      final page = configuredPages[key]!;
      if (!page.visible) {
        _log.warning('Page $key is not allowed to be hidden');
        configuredPages[key] = page.copyWith(visible: true);
      }
    }

    if (isOem) {
      configuredPages['eula'] = const PageConfigEntry();
    }

    if (includeTryOrInstall) {
      configuredPages[_tryOrInstallName] =
          configuredPages[_tryOrInstallName]?.copyWith(visible: true) ??
              const PageConfigEntry();
    } else {
      configuredPages.remove(_tryOrInstallName);
    }
    pages.addAll(configuredPages);
  }
}

@freezed
abstract class PageConfigEntry with _$PageConfigEntry {
  const factory PageConfigEntry({
    String? image,
    String? imageDark,
    @Default(true) bool visible,
  }) = _PageConfigEntry;
  factory PageConfigEntry.fromJson(Map<String, dynamic> json) =>
      _$PageConfigEntryFromJson(json);
}

@freezed
abstract class PageConfig with _$PageConfig {
  const factory PageConfig({
    @Default({}) @PageConfigEntryConverter() Map<String, PageConfigEntry> pages,
  }) = _PageConfig;
  factory PageConfig.fromJson(Map<String, dynamic> json) =>
      _$PageConfigFromJson(json);
}

class PageConfigEntryConverter
    extends JsonConverter<Map<String, PageConfigEntry>, Map<String, dynamic>> {
  const PageConfigEntryConverter();

  @override
  Map<String, PageConfigEntry> fromJson(Map<String, dynamic> json) {
    final pages = <String, PageConfigEntry>{};
    for (final entry in json.entries) {
      final camelCaseKey = entry.key.toCamelCase;
      if (entry.value is Map<String, dynamic>) {
        pages[camelCaseKey] =
            PageConfigEntry.fromJson(entry.value as Map<String, dynamic>);
      } else if (entry.value == null) {
        pages[camelCaseKey] = const PageConfigEntry();
      } else {
        _log.error(
          'Invalid page config entry for ${entry.key}: ${entry.value}',
        );
        continue;
      }
    }
    return pages;
  }

  @override
  // ignore: avoid_renaming_method_parameters
  Map<String, dynamic> toJson(Map<String, PageConfigEntry> pages) {
    final objects = <String, dynamic>{};
    for (final entry in pages.entries) {
      final kebabCaseKey = entry.key.toKebabCase;
      if (entry.value.image != null) {
        objects[kebabCaseKey] = entry.value.toJson();
      } else {
        objects[kebabCaseKey] = entry.value.visible;
      }
    }
    return objects;
  }
}

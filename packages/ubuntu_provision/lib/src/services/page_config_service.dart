import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

part 'page_config_service.freezed.dart';
part 'page_config_service.g.dart';

final _log = Logger('page');
const _tryOrInstallName = 'tryOrInstall';

class PageConfigService {
  PageConfigService({ConfigService? config, this.includeTryOrInstall = false})
      : _config = config;

  final ConfigService? _config;
  final Map<String, PageConfigEntry> pages = {};
  final bool includeTryOrInstall;
  late final ProvisioningMode mode;
  bool get isOem => mode == ProvisioningMode.oem;

  List<String> get excludedPages =>
      pages.entries.whereNot((e) => e.value.visible).map((e) => e.key).toList();

  Future<void> load() async {
    final pageConfig = PageConfig.fromJson({
      'pages': await _config!.get<Map<String, dynamic>>('pages') ??
          <String, dynamic>{},
    });
    mode = await _config!.provisioningMode;

    pages.addAll(pageConfig.pages);

    if (isOem) {
      pages['identity'] = const PageConfigEntry(visible: false);
      pages['eula'] = const PageConfigEntry();
    }

    if (includeTryOrInstall) {
      pages[_tryOrInstallName] =
          pageConfig.pages[_tryOrInstallName]?.copyWith(visible: true) ??
              const PageConfigEntry();
    } else {
      pages[_tryOrInstallName] = const PageConfigEntry(visible: false);
    }
  }
}

@freezed
class PageConfigEntry with _$PageConfigEntry {
  const factory PageConfigEntry({
    String? image,
    @Default(true) bool visible,
  }) = _PageConfigEntry;
  factory PageConfigEntry.fromJson(Map<String, dynamic> json) =>
      _$PageConfigEntryFromJson(json);
}

@freezed
class PageConfig with _$PageConfig {
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
            PageConfigEntry.fromJson(entry.value as Map<String, dynamic>)
                // TODO: remove to re-enable the 'visible' setting in the config
                .copyWith(visible: true);
      } else if (entry.value == null) {
        pages[camelCaseKey] = const PageConfigEntry();
      } else {
        _log.error(
            'Invalid page config entry for ${entry.key}: ${entry.value}');
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

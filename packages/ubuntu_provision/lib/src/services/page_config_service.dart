import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:yaml/yaml.dart';

part 'page_config_service.freezed.dart';
part 'page_config_service.g.dart';

final _log = Logger('page');
const _tryOrInstallName = 'try-or-install';

class PageConfigService {
  PageConfigService({ConfigService? config, this.includeTryOrInstall = false})
      : _config = config;

  final ConfigService? _config;
  final Map<String, PageConfigEntry> pages = {};
  final bool includeTryOrInstall;

  List<String> get excludedPages => pages.entries
      .whereNot((e) =>
          e.value.visible ||
          (includeTryOrInstall && e.key == _tryOrInstallName))
      .map((e) => e.key)
      .toList();

  Future<void> load() async {
    final pageConfig = PageConfig.fromJson({
      'pages': Map<String, dynamic>.from(
        (await _config!.get<YamlMap>('pages'))?.value.cast() ?? {},
      )
    });

    if (includeTryOrInstall) {
      pages[_tryOrInstallName] =
          pageConfig.pages[_tryOrInstallName]?.copyWith(visible: true) ??
              const PageConfigEntry();
    }
    pages.addAll(pageConfig.pages);
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
      // TODO: Remove boolean values directly after page name
      if (entry.value is bool) {
        pages[entry.key] = PageConfigEntry(visible: entry.value as bool);
      } else if (entry.value is Map<String, dynamic>) {
        pages[entry.key] =
            PageConfigEntry.fromJson(entry.value as Map<String, dynamic>);
      } else if (entry.value is YamlMap) {
        pages[entry.key] =
            PageConfigEntry.fromJson((entry.value as YamlMap).cast());
      } else if (entry.value == null) {
        pages[entry.key] = const PageConfigEntry();
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
      if (entry.value.image != null) {
        objects[entry.key] = entry.value.toJson();
      } else {
        objects[entry.key] = entry.value.visible;
      }
    }
    return objects;
  }
}

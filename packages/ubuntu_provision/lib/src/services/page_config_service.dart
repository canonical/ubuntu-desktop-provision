import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaml/yaml.dart';

import '../../services.dart';

part 'page_config_service.freezed.dart';
part 'page_config_service.g.dart';

final _log = Logger('page');

@freezed
class PageConfigEntry with _$PageConfigEntry {
  const factory PageConfigEntry({
    String? image,
    String? title,
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
  Map<String, PageConfigEntry> fromJson(Map<String, dynamic> objects) {
    final pages = <String, PageConfigEntry>{};
    for (final entry in objects.entries) {
      if (entry.value is bool) {
        pages[entry.key] = PageConfigEntry(visible: entry.value as bool);
      } else if (entry.value is Map<String, dynamic>) {
        pages[entry.key] =
            PageConfigEntry.fromJson(entry.value as Map<String, dynamic>);
      } else if (entry.value is YamlMap) {
        pages[entry.key] =
            PageConfigEntry.fromJson((entry.value as YamlMap).cast());
      } else {
        _log.error(
            'Invalid page config entry for ${entry.key}: ${entry.value}');
        continue;
      }
    }
    return pages;
  }

  @override
  Map<String, dynamic> toJson(Map<String, PageConfigEntry> pages) {
    final objects = <String, dynamic>{};
    for (final entry in pages.entries) {
      if (entry.value.image != null || entry.value.title != null) {
        objects[entry.key] = entry.value.toJson();
      } else {
        objects[entry.key] = (entry.value.visible);
      }
    }
    return objects;
  }
}

class PageConfigService {
  PageConfigService({ConfigService? config}) : _config = config;

  final ConfigService? _config;
  final Map<String, PageConfigEntry> pages = {};

  Set<String> get excludedPages =>
      pages.entries.whereNot((e) => e.value.visible).map((e) => e.key).toSet();

  Future<void> load() async {
    final pageConfig = PageConfig.fromJson({
      'pages': Map<String, dynamic>.from(
        (await _config!.get<YamlMap>('pages'))?.value.cast() ?? {},
      )
    });
    pages.addAll(pageConfig.pages);
  }
}

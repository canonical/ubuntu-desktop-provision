// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_config_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageConfigEntry _$PageConfigEntryFromJson(Map<String, dynamic> json) =>
    _PageConfigEntry(
      image: json['image'] as String?,
      visible: json['visible'] as bool? ?? true,
    );

Map<String, dynamic> _$PageConfigEntryToJson(_PageConfigEntry instance) =>
    <String, dynamic>{
      'image': instance.image,
      'visible': instance.visible,
    };

_PageConfig _$PageConfigFromJson(Map<String, dynamic> json) => _PageConfig(
      pages: json['pages'] == null
          ? const {}
          : const PageConfigEntryConverter()
              .fromJson(json['pages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageConfigToJson(_PageConfig instance) =>
    <String, dynamic>{
      'pages': const PageConfigEntryConverter().toJson(instance.pages),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_config_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageConfigEntryImpl _$$PageConfigEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$PageConfigEntryImpl(
      image: json['image'] as String?,
      title: json['title'] as String?,
      visible: json['visible'] as bool? ?? true,
    );

Map<String, dynamic> _$$PageConfigEntryImplToJson(
        _$PageConfigEntryImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'visible': instance.visible,
    };

_$PageConfigImpl _$$PageConfigImplFromJson(Map<String, dynamic> json) =>
    _$PageConfigImpl(
      pages: json['pages'] == null
          ? const {}
          : const PageConfigEntryConverter()
              .fromJson(json['pages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PageConfigImplToJson(_$PageConfigImpl instance) =>
    <String, dynamic>{
      'pages': const PageConfigEntryConverter().toJson(instance.pages),
    };

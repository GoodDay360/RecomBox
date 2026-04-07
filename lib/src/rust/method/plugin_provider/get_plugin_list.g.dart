// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_plugin_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PluginInfo _$PluginInfoFromJson(Map<String, dynamic> json) => _PluginInfo(
      name: json['name'] as String,
      repoUrl: json['repoUrl'] as String,
      iconUrl: json['iconUrl'] as String,
    );

Map<String, dynamic> _$PluginInfoToJson(_PluginInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'repoUrl': instance.repoUrl,
      'iconUrl': instance.iconUrl,
    };

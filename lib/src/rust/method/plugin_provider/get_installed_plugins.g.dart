// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_installed_plugins.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InstalledPluginInfo _$InstalledPluginInfoFromJson(Map<String, dynamic> json) =>
    _InstalledPluginInfo(
      pluginName: json['pluginName'] as String,
      pluginRepoUrl: json['pluginRepoUrl'] as String,
      pluginIconUrl: json['pluginIconUrl'] as String,
      pluginPath: json['pluginPath'] as String,
      pluginVersion: json['pluginVersion'] as String,
    );

Map<String, dynamic> _$InstalledPluginInfoToJson(
        _InstalledPluginInfo instance) =>
    <String, dynamic>{
      'pluginName': instance.pluginName,
      'pluginRepoUrl': instance.pluginRepoUrl,
      'pluginIconUrl': instance.pluginIconUrl,
      'pluginPath': instance.pluginPath,
      'pluginVersion': instance.pluginVersion,
    };

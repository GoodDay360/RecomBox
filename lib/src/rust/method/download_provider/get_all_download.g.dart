// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_download.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllDownloadItemKey _$AllDownloadItemKeyFromJson(Map<String, dynamic> json) =>
    _AllDownloadItemKey(
      source: json['source'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$AllDownloadItemKeyToJson(_AllDownloadItemKey instance) =>
    <String, dynamic>{
      'source': instance.source,
      'id': instance.id,
    };

_AllDownloadItemValue _$AllDownloadItemValueFromJson(
        Map<String, dynamic> json) =>
    _AllDownloadItemValue(
      seasonIndex: BigInt.parse(json['seasonIndex'] as String),
      episodeIndex: BigInt.parse(json['episodeIndex'] as String),
    );

Map<String, dynamic> _$AllDownloadItemValueToJson(
        _AllDownloadItemValue instance) =>
    <String, dynamic>{
      'seasonIndex': instance.seasonIndex.toString(),
      'episodeIndex': instance.episodeIndex.toString(),
    };

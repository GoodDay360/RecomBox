// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchContentInfo _$SearchContentInfoFromJson(Map<String, dynamic> json) =>
    _SearchContentInfo(
      source: json['source'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      year: json['year'] as String,
      rank: json['rank'] == null ? null : BigInt.parse(json['rank'] as String),
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$SearchContentInfoToJson(_SearchContentInfo instance) =>
    <String, dynamic>{
      'source': instance.source,
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'rank': instance.rank?.toString(),
      'thumbnailUrl': instance.thumbnailUrl,
    };

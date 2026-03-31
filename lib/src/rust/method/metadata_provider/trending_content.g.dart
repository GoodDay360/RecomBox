// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrendingContentInfo _$TrendingContentInfoFromJson(Map<String, dynamic> json) =>
    _TrendingContentInfo(
      source: json['source'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      year: json['year'] as String,
      rating: (json['rating'] as num).toDouble(),
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$TrendingContentInfoToJson(
        _TrendingContentInfo instance) =>
    <String, dynamic>{
      'source': instance.source,
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'rating': instance.rating,
      'thumbnailUrl': instance.thumbnailUrl,
    };

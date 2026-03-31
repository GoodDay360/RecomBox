// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeaturedContentInfo _$FeaturedContentInfoFromJson(Map<String, dynamic> json) =>
    _FeaturedContentInfo(
      source: json['source'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      contextual: (json['contextual'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      shortDescription: json['shortDescription'] as String,
      bannerUrl: json['bannerUrl'] as String,
    );

Map<String, dynamic> _$FeaturedContentInfoToJson(
        _FeaturedContentInfo instance) =>
    <String, dynamic>{
      'source': instance.source,
      'id': instance.id,
      'title': instance.title,
      'contextual': instance.contextual,
      'shortDescription': instance.shortDescription,
      'bannerUrl': instance.bannerUrl,
    };

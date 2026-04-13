// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_torrents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TorrentInfo _$TorrentInfoFromJson(Map<String, dynamic> json) => _TorrentInfo(
      title: json['title'] as String,
      torrentUrl: json['torrentUrl'] as String,
    );

Map<String, dynamic> _$TorrentInfoToJson(_TorrentInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'torrentUrl': instance.torrentUrl,
    };

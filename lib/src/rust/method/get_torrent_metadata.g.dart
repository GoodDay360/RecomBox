// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_torrent_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FileInfo _$FileInfoFromJson(Map<String, dynamic> json) => _FileInfo(
      id: BigInt.parse(json['id'] as String),
      path: json['path'] as String?,
      length: json['length'] == null
          ? null
          : BigInt.parse(json['length'] as String),
      sha1: json['sha1'] as String?,
    );

Map<String, dynamic> _$FileInfoToJson(_FileInfo instance) => <String, dynamic>{
      'id': instance.id.toString(),
      'path': instance.path,
      'length': instance.length?.toString(),
      'sha1': instance.sha1,
    };

_TorrentMetadata _$TorrentMetadataFromJson(Map<String, dynamic> json) =>
    _TorrentMetadata(
      name: json['name'] as String?,
      length: json['length'] == null
          ? null
          : BigInt.parse(json['length'] as String),
      files: (json['files'] as List<dynamic>)
          .map((e) => FileInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TorrentMetadataToJson(_TorrentMetadata instance) =>
    <String, dynamic>{
      'name': instance.name,
      'length': instance.length?.toString(),
      'files': instance.files,
    };

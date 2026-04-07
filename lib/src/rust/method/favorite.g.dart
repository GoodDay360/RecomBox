// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryMap _$CategoryMapFromJson(Map<String, dynamic> json) => _CategoryMap(
      field0: (json['field0'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$CategoryMapToJson(_CategoryMap instance) =>
    <String, dynamic>{
      'field0': instance.field0.map((k, e) => MapEntry(k.toString(), e)),
    };

_CategoryOrderMap _$CategoryOrderMapFromJson(Map<String, dynamic> json) =>
    _CategoryOrderMap(
      field0: (json['field0'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$CategoryOrderMapToJson(_CategoryOrderMap instance) =>
    <String, dynamic>{
      'field0':
          instance.field0.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

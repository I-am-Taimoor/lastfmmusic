// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      albummatches: json['albummatches'] == null
          ? null
          : Albums.fromJson(json['albummatches'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'albummatches': instance.albummatches,
    };

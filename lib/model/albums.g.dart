// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albums.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Albums _$$_AlbumsFromJson(Map<String, dynamic> json) => _$_Albums(
      album: (json['album'] as List<dynamic>?)
          ?.map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AlbumsToJson(_$_Albums instance) => <String, dynamic>{
      'album': instance.album,
    };

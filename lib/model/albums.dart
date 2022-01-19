import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lastfmmusic/model/album.dart';

part 'albums.freezed.dart';
part 'albums.g.dart';

@freezed
class Albums with _$Albums {
  factory Albums({
    List<Album>? album,
  }) = _Albums;

  factory Albums.fromJson(Map<String, dynamic> json) => _$AlbumsFromJson(json);
}

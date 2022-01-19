import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lastfmmusic/model/album_image.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album {
  factory Album({
    String? name,
    String? artist,
    String? url,
    List<AlbumImage>? image,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

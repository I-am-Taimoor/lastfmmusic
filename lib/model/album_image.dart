import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_image.freezed.dart';
part 'album_image.g.dart';

@freezed
class AlbumImage with _$AlbumImage {
  factory AlbumImage({
    String? text,
    String? size,
  }) = _AlbumImage;

  factory AlbumImage.fromJson(Map<String, dynamic> json) =>
      _$AlbumImageFromJson(json);
}
